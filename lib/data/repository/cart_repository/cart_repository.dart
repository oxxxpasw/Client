import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sosedifedi/data/mappers/assortment_mapper.dart';
import 'package:sosedifedi/data/mappers/cart_mapper.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/models/user/user.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/data/services/assortment_service.dart';
import 'package:sosedifedi/data/services/cart_service.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_response/customer_api_response.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_service.dart';
import 'package:sosedifedi/domain/models/barcode/barcode.dart';
import 'package:sosedifedi/domain/models/cart/cart_model.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/utils/cart_utils.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:synchronized/synchronized.dart';
import 'package:uuid/uuid.dart';

part 'cart_repository.freezed.dart';
part 'cart_repository_data.dart';

abstract class CartRepository {
  Stream<int> get countStream;

  Stream<Cart?> get productsStream;

  Future<void> initCart({
    bool createNewCart = false,
    Store? store,
    CoffeeMachine? coffeeMachine,
    String? fridgeId,
  });

  Future<Cart?> getCart({bool refresh = false});

  Future<void> updateCart();

  Future<void> addToCart({
    required Product product,
    double? amount,
    BarcodeData? barcode,
  });

  Future<void> emptyCart();

  Future<void> decrementProduct(int productUniqueId);

  Future<void> removeProductFromCart(int productUniqueId);

  Future<void> incrementProduct(int productUniqueId);

  Future<void> updateProduct(int productUniqueId, Product product);

  Future<void> changeBonusesUsage(bool useBonuses);

  Future<void> deleteCart();

  bool hasUnfinishedPurchase();

  Future<void> addAllToCart(
    List<({Product product, double? amount, BarcodeData? barcode})> products,
  );

  void dispose();
}

@Singleton(as: CartRepository)
class CartRepositoryImpl extends CartRepository {
  CartRepositoryImpl({
    required this.assortmentService,
    required this.cartMapper,
    required this.assortmentMapper,
    required this.customerApiService,
    required this.cartService,
    required this.productMergerLocal,
    required this.productMergerDB,
    required this.cityRepository,
    required this.analystService,
    required this.authRepository,
  }) {
    _subscription = authRepository.tokenStream
        .map((data) => data?.user)
        .listen(_onUserChanged);
  }

  @protected
  final AssortmentService assortmentService;
  @protected
  final CustomerApiService customerApiService;
  @protected
  final CartMapper cartMapper;
  @protected
  final AssortmentMapper assortmentMapper;
  @protected
  final CartService cartService;
  @protected
  final ProductMergerDB productMergerDB;
  @protected
  final ProductMergerLocal productMergerLocal;
  @protected
  final CityRepository cityRepository;
  @protected
  final AnalystService analystService;
  @protected
  final AuthRepository authRepository;

  final Lock _cartLock = Lock();

  User? get _user => authRepository.authData?.user;
  CartData2? _data;

  StreamSubscription<User?>? _subscription;

  @override
  Stream<Cart?> get productsStream => _externalCartSubject;
  final _externalCartSubject = BehaviorSubject<Cart?>();

  @override
  Stream<int> get countStream =>
      productsStream.map((event) => event?.products.length ?? 0);

  Future<void> _onUserChanged(_) => initCart();

  Future<void> _cartTransaction(
          FutureOr<CartData2?> Function(CartData2?) callback) =>
      _cartLock.synchronized(
        () async {
          final currentCartData2 = _data;

          try {
            var newCartData2 = await callback(currentCartData2?.copyWith());

            _data = newCartData2;

            if (newCartData2 == null) {
              _externalCartSubject.add(null);
              return;
            }

            var data = CartData(
              products: newCartData2.products,
              user: newCartData2.user,
              store: newCartData2.store,
              fridgeId: newCartData2.fridgeId,
              coffeeMachineId: newCartData2.coffeeMachine?.id,
              useBonuses: newCartData2.useBonuses,
            );

            data = _calculatePriceCard(data);

            final store = newCartData2.store;

            if (store == null) {
              _externalCartSubject.addError(
                const CommonResponseError.storeNotSelected(),
              );
              return;
            }

            final purchaseResponse = await _getPurchase(
              cart: data,
              token: data.user?.token,
            );

            if (purchaseResponse != null && purchaseResponse.isSuccess) {
              final purchase = purchaseResponse.result;
              data = data.copyWith(
                bonusesCanSpent: purchase.bonusesCanSpent,
                useBonuses: purchase.bonusesCanSpent != 0,
                purchase: purchase,
              );
            } else {
              data = data.copyWith(
                bonusesCanSpent: 0,
                useBonuses: false,
              );
            }

            final response = await customerApiService.getDiscountPurchase(
              request: cartMapper.toCustomerApiRequest(
                cart: data,
                token: data.user?.token,
              ),
              bonusesToSpent:
                  data.bonusesCanSpent! > 0 ? data.bonusesCanSpent : null,
            );

            if (response.hasError) {
              _externalCartSubject.addError(response.error);
              return;
            }

            final purchase = response.result;

            assert(data.products.length == purchase.positions.length);

            final bonusesCanSpend = purchase.discountLog
                    .firstWhereOrNull((e) => e.type == DiscountLogType.bonuses)
                    ?.discountValue ??
                0.0;

            final useBonuses = bonusesCanSpend != 0;

            data = data.copyWith(
              products: _mergeProductsWithPositions(
                data.products,
                purchase,
                useBonuses,
              ).toList(),
              summ: purchase.summ,
              summWithoutDiscount: purchase.summWithoutDiscount,
              canUseBonuses: purchase.totalBonuses > 0 || useBonuses,
              bonusesCanSpent: bonusesCanSpend,
            );

            await cartService.saveCart(
              items: cartMapper.productsToCartItem(data.products),
              userId: data.user?.userId,
              storeId: store.id,
              fridgeId: data.fridgeId,
            );

            _externalCartSubject.add(
              _mapCardDataToCard(
                data,
              ),
            );
          } catch (e) {
            _externalCartSubject
                .addError(CommonResponseError.undefinedError(e));
          }
        },
      );

  Iterable<CartItem> _mergeProductsWithPositions(
    List<CartItem> items,
    Purchase cartResponse,
    bool useBonuses,
  ) sync* {
    final positions = cartResponse.positions;
    final discountLog = cartResponse.discountLog;
    for (int i = 0; i < items.length; i++) {
      final position = positions[i];
      yield items[i].copyWith(
        summ: position.summ,
        summWithoutDiscount: position.summWithoutDiscount,
        hasDiscount:
            (useBonuses && position.summ != position.summWithoutDiscount) ||
                discountLog.any(
                  (element) =>
                      element.line?.lineNumber == positions[i].lineNumber,
                ),
      );
    }
  }

  CartData _calculatePriceCard(CartData data) {
    double productFinalPrice(Product product, double amount) {
      double finalModifierPrice = product.modifierGroups.fold<double>(
        0.0,
        (previousValue, element) => previousValue += element.modifierPrice,
      );

      return ((product.price + finalModifierPrice) * amount)
          .asFixed(2, RoundBound.closest);
    }

    final List<CartItem> products = [];

    for (final item in data.products) {
      final productSum = productFinalPrice(item.product, item.amount);

      products.add(
        item.copyWith(
          summ: productSum,
          summWithoutDiscount: productSum,
        ),
      );
    }

    final cartSum = products.fold(
      0.0,
      (previousValue, element) =>
          previousValue + (element.summWithoutDiscount ?? 0.0),
    );

    return data.copyWith(
      products: products,
      summ: cartSum,
      summWithoutDiscount: cartSum,
    );
  }

  Cart _mapCardDataToCard(CartData data) {
    return Cart(
      store: data.store!,
      products: data.products,
      unavailableProducts: [],
      userId: data.user?.userId,
      id: data.id,
      summ: data.summ!,
      summWithoutDiscount: data.summWithoutDiscount!,
      canUseBonuses: data.canUseBonuses,
      fridgeId: data.fridgeId,
      coffeeMachineId: data.coffeeMachineId,
      useBonuses: data.useBonuses,
      bonusesToSpent: data.bonusesCanSpent,
      purchase: data.purchase,
    );
  }

  Future<DefaultResponse<CustomerApiPurchase>?> _getPurchase({
    required CartData cart,
    String? token,
  }) async {
    final request = cartMapper.toCustomerApiRequest(
      cart: cart,
      token: token,
    );

    if (!cart.useBonuses) {
      return null;
    }

    final response = await customerApiService.createPurchase(request: request);
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(response.result);
  }

  @override
  Future<void> initCart({
    bool createNewCart = false,
    Store? store,
    CoffeeMachine? coffeeMachine,
    String? fridgeId,
  }) =>
      _cartTransaction(
        (data) async {
          if (createNewCart) {
            await cartService.deleteAllCartsByUserId(_user?.userId);
            return CartData2(
              products: [],
              store: store,
              user: _user,
              fridgeId: fridgeId,
              coffeeMachine: coffeeMachine,
            );
          }
          return _getCartFromDB(_user, store);
        },
      );

  @override
  Future<Cart?> getCart({bool refresh = false}) async {
    if (refresh) {
      await _updateCart();
    }
    return productsStream.first;
  }

  Future<void> _updateCart() => _cartTransaction(
        (data) async {
          final result = await _getCart(data?.user, data);
          return result;
        },
      );

  Future<CartData2?> _getCart(User? user, CartData2? cart) async {
    final store = cart?.store;
    if (store == null) {
      return null;
    }

    final menuFileName =
        cart?.coffeeMachine?.menuFileName ?? store.menuFileName;

    final List<Future> productFutureList = [];
    final productsResponse =
        await assortmentService.getAssortment(menuFileName, refresh: true);
    if (productsResponse.isSuccess &&
        cart != null &&
        cart.products.isNotEmpty) {
      final assortment =
          assortmentMapper.getProductsList(assortment: productsResponse.result);
      for (int i = 0; i < cart.products.length; ++i) {
        productFutureList.add(
          productMergerLocal.merge(cart.products[i], assortment),
        );
      }
    }
    final productList = await Future.wait(productFutureList);
    final products = productList.whereType<CartItem>().toList();

    return cart != null
        ? cart.copyWith(
            products: products,
            user: user,
            store: store,
          )
        : CartData2(
            products: products,
            user: user,
            id: 0,
            store: store,
          );
  }

  Future<CartData2?> _getCartFromDB(User? user, Store? newStore) async {
    final cartEntity = await cartService.getCart(user?.userId);
    Store store;
    if (newStore != null) {
      store = newStore;
    } else {
      if (cartEntity.storeId == null) {
        return null;
      }
      final storeResponse = await cityRepository.storeById(cartEntity.storeId!);
      if (storeResponse.hasError || storeResponse.result == null) {
        return null;
      }
      store = storeResponse.result!;
    }
    final List<Future> productFutureList = [];
    final productsResponse = await assortmentService
        .getAssortment(store.menuFileName, refresh: true);
    if (productsResponse.isSuccess) {
      final assortment =
          assortmentMapper.getProductsList(assortment: productsResponse.result);
      for (int i = 0; i < cartEntity.products.length; ++i) {
        productFutureList.add(
          productMergerDB.merge(cartEntity.products.elementAt(i), assortment),
        );
      }
    }
    final productList = await Future.wait(productFutureList);
    final products = productList.whereType<CartItem>().toList();

    final fridgeId =
        cartEntity.fridgeId != null && store.fridge[cartEntity.fridgeId] != null
            ? cartEntity.fridgeId
            : null;

    return CartData2(
      products: products,
      user: user,
      id: cartEntity.id,
      fridgeId: fridgeId,
      store: store,
    );
  }

  @override
  Future<void> addToCart({
    required Product product,
    double? amount,
    BarcodeData? barcode,
  }) =>
      _cartTransaction(
        (cart) async {
          if (cart == null) {
            return null;
          }
          return _addToCart(
            cart: cart,
            product: product,
            amount: amount,
            barcode: barcode,
          );
        },
      );

  @override
  Future<void> addAllToCart(
    List<({Product product, double? amount, BarcodeData? barcode})> products,
  ) =>
      _cartTransaction(
        (cart) async {
          if (cart == null) {
            return null;
          }
          for (final item in products) {
            cart = _addToCart(
              cart: cart!,
              product: item.product,
              amount: item.amount,
              barcode: item.barcode,
            );
          }
          return cart;
        },
      );

  CartData2 _addToCart({
    required CartData2 cart,
    required Product product,
    double? amount,
    BarcodeData? barcode,
  }) {
    assert(amount != null || barcode != null);

    double getWeightFromBarcode(BarcodeData barcode) {
      final weightG = barcode.getComponent<WeightGComponent>()?.value;
      final weightKG = barcode.getComponent<WeightKGComponent>()?.value;

      double result = 0.0;

      if (weightG != null) {
        result += weightG / 1000;
      } else if (weightKG != null) {
        result += weightKG;
      }

      return result;
    }

    if (product.weight) {
      if (barcode == null) {
        throw Exception('Barcode is null');
      }
      amount = getWeightFromBarcode(barcode);
    }

    if (amount == null || amount <= 0.0) {
      amount = 1.0;
    }

    int index = cart.products
        .indexWhere((element) => element.product.hash == product.hash);
    var products = List.of(cart.products);

    if (index == -1 || product.weight) {
      final item = CartItem(
        id: const Uuid().v4().hashCode,
        product: product,
        amount: amount,
        barcodes: barcode != null ? [barcode] : [],
      );
      products = [
        ...products,
        item,
      ];
      index = products.length - 1;
    } else {
      products[index] = products[index].copyWith(
        amount: products[index].amount + amount,
      );
    }
    cart = cart.copyWith(products: products);
    return cart;
  }

  @override
  Future<void> emptyCart() => _cartTransaction(
        (cart) => Future.value(cart?.copyWith(products: [])),
      );

  @override
  Future<void> decrementProduct(int productUniqueId) => _cartTransaction(
        (cart) async {
          if (cart == null) {
            return null;
          }
          final productList = List.of(cart.products);
          final index = productList
              .indexWhere((element) => element.id == productUniqueId);
          if (index != -1) {
            final product = productList[index];
            if (product.amount <= 1) {
              productList.removeAt(index);
            } else {
              productList[index] = productList[index].copyWith(
                amount: productList[index].amount - 1,
                barcodes: productList[index].barcodes.isNotEmpty
                    ? productList[index].barcodes.sublist(1)
                    : [],
              );
            }
          }
          return cart.copyWith(products: productList);
        },
      );

  @override
  Future<void> removeProductFromCart(int productUniqueId) => _cartTransaction(
        (cart) async {
          if (cart == null) {
            return null;
          }
          final productList = List.of(cart.products);
          final index = productList
              .indexWhere((element) => element.id == productUniqueId);
          if (index != -1) {
            productList.removeAt(index);
          }
          return cart.copyWith(products: productList);
        },
      );

  @override
  Future<void> updateProduct(int productUniqueId, Product product) =>
      _cartTransaction(
        (cart) async {
          if (cart == null) {
            return null;
          }
          final productList = List.of(cart.products);
          final index = productList
              .indexWhere((element) => element.id == productUniqueId);
          if (index != -1) {
            productList[index] = productList[index].copyWith(
              product: product,
            );
          }
          return cart.copyWith(products: productList);
        },
      );

  @override
  Future<void> incrementProduct(int productUniqueId) => _cartTransaction(
        (cart) async {
          if (cart == null) {
            return null;
          }
          final productList = List.of(cart.products);
          final index = productList
              .indexWhere((element) => element.id == productUniqueId);
          if (index != -1) {
            productList[index] = productList[index].copyWith(
              amount: productList[index].amount + 1,
            );
          }
          return cart.copyWith(products: productList);
        },
      );

  @override
  Future<void> changeBonusesUsage(bool useBonuses) => _cartTransaction(
        (cart) => cart?.copyWith(
          useBonuses: useBonuses,
        ),
      );

  @override
  void dispose() {
    _externalCartSubject.close();
    _subscription?.cancel();
  }

  @override
  Future<void> updateCart() => _updateCart();

  @override
  Future<void> deleteCart() => _cartTransaction(
        (data) async {
          unawaited(cartService.deleteAllCartsByUserId(data?.user?.userId));
          return null;
        },
      );

  @override
  bool hasUnfinishedPurchase() => _externalCartSubject.valueOrNull != null;
}

@singleton
class CartRepositoryCoffeeImpl extends CartRepositoryImpl {
  CartRepositoryCoffeeImpl({
    required super.assortmentService,
    required super.cartMapper,
    required super.assortmentMapper,
    required super.customerApiService,
    required super.cartService,
    required super.productMergerLocal,
    required super.productMergerDB,
    required super.cityRepository,
    required super.analystService,
    required super.authRepository,
  });

  @override
  bool hasUnfinishedPurchase() => false;

  @override
  Future<CartData2?> _getCartFromDB(User? user, Store? newStore) =>
      Future.value(null);

  @override
  Future<void> initCart({
    bool createNewCart = false,
    Store? store,
    CoffeeMachine? coffeeMachine,
    String? fridgeId,
  }) =>
      _cartTransaction(
        (data) async {
          return CartData2(
            products: [],
            store: store,
            user: _user,
            fridgeId: fridgeId,
            coffeeMachine: coffeeMachine,
          );
        },
      );

  @override
  Future<void> _cartTransaction(
          FutureOr<CartData2?> Function(CartData2?) callback) =>
      _cartLock.synchronized(
        () async {
          final currentCartData2 = _data;

          try {
            var newCartData2 = await callback(currentCartData2?.copyWith());

            _data = newCartData2;

            if (newCartData2 == null) {
              _externalCartSubject.add(null);
              return;
            }

            var data = CartData(
              products: newCartData2.products,
              user: newCartData2.user,
              store: newCartData2.store,
              fridgeId: newCartData2.fridgeId,
              coffeeMachineId: newCartData2.coffeeMachine?.id,
              useBonuses: newCartData2.useBonuses,
            );

            data = _calculatePriceCard(data);

            final store = newCartData2.store;

            if (store == null) {
              _externalCartSubject.addError(
                const CommonResponseError.storeNotSelected(),
              );
              return;
            }

            final purchaseResponse = await _getPurchase(
              cart: data,
              token: data.user?.token,
            );

            if (purchaseResponse != null && purchaseResponse.isSuccess) {
              final purchase = purchaseResponse.result;
              data = data.copyWith(
                bonusesCanSpent: purchase.bonusesCanSpent,
                useBonuses: purchase.bonusesCanSpent != 0,
                purchase: purchase,
              );
            } else {
              data = data.copyWith(
                bonusesCanSpent: 0,
                useBonuses: false,
              );
            }

            final response = await customerApiService.getDiscountPurchase(
              request: cartMapper.toCustomerApiRequest(
                cart: data,
                token: data.user?.token,
              ),
              bonusesToSpent: data.bonusesCanSpent! > 0
                  ? data.bonusesCanSpent?.toDouble()
                  : null,
            );

            if (response.hasError) {
              _externalCartSubject.addError(response.error);
              return;
            }

            final purchase = response.result;

            assert(data.products.length == purchase.positions.length);

            final bonusesCanSpend = purchase.discountLog
                    .firstWhereOrNull((e) => e.type == DiscountLogType.bonuses)
                    ?.discountValue ??
                0;

            final useBonuses = bonusesCanSpend != 0;

            data = data.copyWith(
              products: _mergeProductsWithPositions(
                data.products,
                purchase,
                useBonuses,
              ).toList(),
              summ: purchase.summ,
              summWithoutDiscount: purchase.summWithoutDiscount,
              canUseBonuses: purchase.totalBonuses > 0 || useBonuses,
              bonusesCanSpent: bonusesCanSpend,
            );

            _externalCartSubject.add(
              _mapCardDataToCard(
                data,
              ),
            );
          } catch (e) {
            _externalCartSubject
                .addError(CommonResponseError.undefinedError(e));
          }
        },
      );
  @override
  Future<void> deleteCart() => _cartTransaction(
        (data) async {
          return null;
        },
      );
}
