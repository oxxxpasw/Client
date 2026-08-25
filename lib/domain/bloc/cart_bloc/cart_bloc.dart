import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/repository/assortment_repository.dart';
import 'package:sosedifedi/data/repository/barcode_parser_repository/barcode_parser_repository.dart';
import 'package:sosedifedi/data/repository/barcode_repository.dart';
import 'package:sosedifedi/data/repository/cart_repository/cart_repository.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/data/repository/fridge_repository.dart';
import 'package:sosedifedi/data/repository/payment_repository.dart';
import 'package:sosedifedi/data/repository/remote_config_repository.dart';
import 'package:sosedifedi/data/repository/unpaid_orders_repository.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/domain/interactor/order_interactor.dart';
import 'package:sosedifedi/domain/models/barcode/barcode.dart';
import 'package:sosedifedi/domain/models/cart/cart_model.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/domain/models/payment/payment.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/event_transformer.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

const _kUnfinishedPurchaseOnboardingKey =
    'CartBloc_UnfinishedPurchaseOnboardingKey';

@injectable
class CartBloc extends SrBloc<CartEvent, CartState, CartSr> {
  CartBloc({
    required this.cartRepository,
    required this.assortmentRepository,
    required this.barcodeRepository,
    required this.remoteConfigRepository,
    required this.orderInteractor,
    required this.paymentRepository,
    required this.analystService,
    required this.cityRepository,
    required this.prefs,
    required this.unpaidOrdersRepository,
    required this.barcodeParserRepository,
    required this.fridgeRepository,
  }) : super(const CartState()) {
    on<_OnInitCart>(_onInitCart);
    on<_OnDecrementPressed>(_decrementProduct);
    on<_OnIncrementPressed>(_incrementProduct);
    on<_OnDeletePressed>(_removeProductFromCart);
    on<_OnCartUpdate>(_listenCart);
    on<_OnCartUpdateError>(_listenError);
    on<_OnUseBonusesChange>(
      _updatePrice,
      transformer: throttle(
        const Duration(seconds: 1),
      ),
    );
    on<_OnDetectQR>(
      _onDetectQR,
      transformer: throttle(
        const Duration(seconds: 3),
      ),
    );
    on<_OnInputQR>(
      _onInputQR,
      transformer: throttle(
        const Duration(seconds: 1),
      ),
    );
    on<_OnCreateOrder>(
      _onCreateOrder,
      transformer: throttle(
        const Duration(seconds: 3),
      ),
    );
    on<_OnReset>(_onReset);
    on<_OnCancelOrderPressed>(_onCancelOrderPressed);
    on<_OnSuccessPayment>(_onSuccessPayment);

    on<_OnFailurePayment>(_onFailurePayment);
    on<_OnSbpBankOpen>(_onSbpBankOpen);
    on<_OnUnfinishedPurchaseOnboardingComplete>(
        _onUnfinishedPurchaseOnboardingComplete);
    on<_OnAddMultipleProducts>(
      _onAddMultipleProducts,
    );

    on<_OnStoreListButtonPressed>(_onStoreListButtonPressed);
    on<_OnChangePaymentTypePressed>(_onChangePaymentTypePressed);
    on<_OnPaymentTypeChanged>(_onPaymentTypeChanged);
    on<_OnPaymentTypeSelected>(_onPaymentTypeSelected);
    on<_AddExpiredBarcode>(_addExpiredBarcode);
    on<_OnReopenFridge>(_onReopenFridge);
  }

  @protected
  final CartRepository cartRepository;
  @protected
  final AssortmentRepository assortmentRepository;
  @protected
  final BarcodeRepository barcodeRepository;
  @protected
  final RemoteConfigRepository remoteConfigRepository;
  @protected
  final OrderInteractor orderInteractor;
  @protected
  final PaymentRepository paymentRepository;
  @protected
  final AnalystService analystService;
  @protected
  final CityRepository cityRepository;
  @protected
  final SharedPreferences prefs;
  @protected
  final UnpaidOrdersRepository unpaidOrdersRepository;
  @protected
  final BarcodeParserRepository barcodeParserRepository;
  @protected
  final FridgeRepository fridgeRepository;

  StreamSubscription<Cart?>? _subscription;

  Timer? _timer;

  Cart? _cart;

  OrderModel? _order;

  // bool _shouldCancelOrder = true;

  Future<void> _onInitCart(_OnInitCart event, Emitter<CartState> emit) async {
    _subscription?.cancel();

    final shouldRestoreCart = event.shouldRestoreCart;

    emit(
      CartState(
        store: event.store,
        status: CartStateStatus.init,
      ),
    );
    _cart = null;

    //Если микромаркет не выбран и корзина не восстанавливается из памяти,
    //то пропускаем инициализацию, пока не будет выбран микромаркет
    if (event.store == null && !shouldRestoreCart) return;

    emit(
      state.copyWith(
        status: CartStateStatus.loading,
        isCartRestored: shouldRestoreCart,
      ),
    );

    await cartRepository.initCart(
      createNewCart: !shouldRestoreCart,
      store: event.store,
      fridgeId: event.fridgeId,
    );

    _subscription = cartRepository.productsStream.listen(
      (cart) => add(CartEvent.onCartUpdate(cart: cart)),
      onError: (error) => add(
        CartEvent.onCartUpdateError(error: error),
      ),
    );
    unawaited(_checkUnfinishedPurchaseOnboarding());

    if (event.barcode != null) {
      add(CartEvent.onDetectQR(barcode: event.barcode!));
    }
  }

  Future<void> _checkUnfinishedPurchaseOnboarding() async {
    // try {
    //   final savedValue =
    //       prefs.getBool(_kUnfinishedPurchaseOnboardingKey) ?? false;
    //   if (!state.isCartRestored || savedValue) {
    //     return;
    //   }
    //   addSr(const CartSr.showUnfinishedPurchaseOnboarding());
    // } catch (_) {}
  }

  Future<void> _listenCart(_OnCartUpdate event, Emitter<CartState> emit) async {
    if (event.cart == null) {
      return;
    }
    final cart = event.cart!;

    final products = [
      ...cart.products.reversed,
      ...cart.unavailableProducts.reversed,
    ];

    emit(
      state.copyWith(
        store: cart.store,
        products: products,
        orderPrice: cart.summ,
        canUseBonuses: cart.canUseBonuses,
        useBonuses: cart.useBonuses,
        status: state.status != CartStateStatus.orderSending
            ? CartStateStatus.ready
            : CartStateStatus.orderSending,
        fridgeId: cart.fridgeId,
        bonusesToSpent: cart.bonusesToSpent,
        currencySymbol:
            cart.products.firstOrNull?.product.currencySymbol ?? 'BYN',
      ),
    );
    _validateCart(emit);
    analystService.cartChange(cartBefore: _cart, cartAfter: cart);
    _cart = event.cart;
  }

  void _listenError(_OnCartUpdateError event, Emitter<CartState> emit) {
    if (state.status == CartStateStatus.updating) {
      emit(
        state.copyWith(
          status: CartStateStatus.ready,
        ),
      );
    }
    final error = event.error;
    addError(error);
    addSr(
      CartSr.error(
        error is CommonResponseError
            ? ErrorMessages.getMessage(error)
            : ErrorMessages.undefinedError,
      ),
    );
  }

  void _decrementProduct(
      _OnDecrementPressed event, Emitter<CartState> emit) async {
    try {
      emit(state.copyWith(status: CartStateStatus.updating));
      await cartRepository.decrementProduct(event.product.id!);
    } catch (e) {
      addSr(CartSr.error(ErrorMessages.undefinedError));
      addError(e, e is Error ? e.stackTrace : null);
    }
  }

  void _incrementProduct(
      _OnIncrementPressed event, Emitter<CartState> emit) async {
    try {
      emit(state.copyWith(status: CartStateStatus.updating));
      await cartRepository.incrementProduct(event.product.id!);
    } catch (e) {
      addSr(CartSr.error(ErrorMessages.undefinedError));
      addError(e, e is Error ? e.stackTrace : null);
    }
  }

  void _removeProductFromCart(
      _OnDeletePressed event, Emitter<CartState> emit) async {
    try {
      emit(state.copyWith(status: CartStateStatus.updating));
      await cartRepository.removeProductFromCart(event.product.id!);
    } catch (e) {
      addSr(CartSr.error(ErrorMessages.undefinedError));
      addError(e, e is Error ? e.stackTrace : null);
    }
  }

  Future<void> _onDetectQR(_OnDetectQR event, Emitter<CartState> emit) async {
    if (state.scannerStatus != ScannerStatus.ready) {
      return;
    }
    final data = event.barcode.barcodes.firstOrNull;

    if (data == null || data.format == BarcodeFormat.qrCode) {
      return;
    }

    await _addProductByBarcode(
      rawBarcode: RawBarcode(
        rawValue: data.rawValue!,
        format: data.format,
      ),
      emit: emit,
    );
    analystService.qrScanned(data.rawValue);
  }

  void _onInputQR(_OnInputQR event, Emitter<CartState> emit) async {
    if (state.scannerStatus != ScannerStatus.ready) {
      return;
    }
    if (event.barcode.isEmpty) {
      return;
    }

    await _addProductByBarcode(
      rawBarcode: RawBarcode(
        rawValue: event.barcode,
      ),
      emit: emit,
    );
    analystService.qrScanned(event.barcode);
  }

  Future<void> _addProductByBarcode({
    required RawBarcode rawBarcode,
    required Emitter<CartState> emit,
    bool skipExpirationCheck = false,
  }) async {
    try {
      if (state.store == null) {
        addSr(const CartSr.storeNotSelected());
        return;
      }
      emit(state.copyWith(scannerStatus: ScannerStatus.loading));

      final barcodeResponse = await barcodeParserRepository.parse(rawBarcode);

      if (barcodeResponse.hasError) {
        addError(barcodeResponse.error);
        return addSr(
          CartSr.error(ErrorMessages.getMessage(barcodeResponse.error)),
        );
      }

      final Future<DefaultResponse<Product?>> productResponseFuture;

      final barcodeData = barcodeResponse.result;

      if (barcodeData == null) {
        addError('No pattern found: ${rawBarcode.rawValue}');
        return addSr(CartSr.error(ErrorMessages.invalidBarcode));
      }

      //Проверка на срок годности
      if (!skipExpirationCheck && barcodeData.isExpired) {
        addSr(CartSr.showExpiredBarcodeAdding(rawBarcode));
        return;
      }

      final sku = barcodeData.getComponent<SKUComponent>()?.value;

      final barcode = barcodeData.getComponent<GtinComponent>()?.value;

      if (sku != null) {
        productResponseFuture = _getProductBySKU(sku);
      } else if (barcode != null) {
        productResponseFuture = _getProductByStaticBarcode(barcode);
      } else {
        addError('Invalid barcode: ${rawBarcode.rawValue}');
        return addSr(CartSr.error(ErrorMessages.invalidBarcode));
      }

      final response = await productResponseFuture;

      if (response.hasError) {
        addSr(CartSr.error(ErrorMessages.getMessage(response.error)));
        addError(response.error);
        return;
      }
      if (response.result == null) {
        addSr(CartSr.error(ErrorMessages.productNotFound));
        return;
      }
      final product = response.result!;
      await cartRepository.addToCart(product: product, barcode: barcodeData);
      addSr(CartSr.newProductAdded(product));
      analystService.addToCart(product, ProductSource.search);
    } catch (e, stack) {
      addSr(CartSr.error(ErrorMessages.undefinedError));
      addError(e, stack);
    } finally {
      emit(state.copyWith(scannerStatus: ScannerStatus.ready));
    }
  }

  Future<void> _onAddMultipleProducts(
      _OnAddMultipleProducts event, Emitter<CartState> emit) async {
    try {
      emit(state.copyWith(status: CartStateStatus.updating));
      if (state.store == null) {
        addSr(const CartSr.storeNotSelected());
        return;
      }
      try {
        await cartRepository.addAllToCart(
          event.products.entries
              .map(
                (e) => (product: e.key, amount: e.value, barcode: null),
              )
              .toList(),
        );
        for (final product in event.products.entries) {
          analystService.addToCart(product.key, ProductSource.search);
        }
      } catch (_) {}
      addSr(CartSr.newProductAdded(event.products.entries.firstOrNull?.key));
    } catch (e, stack) {
      addSr(CartSr.error(ErrorMessages.undefinedError));
      addError(e, stack);
    }
  }

  Future<DefaultResponse<Product?>> _getProductByStaticBarcode(
      String barcode) async {
    final response = await assortmentRepository.getProductByBarcode(
      barcode: barcode,
      assortmentFile: state.store?.menuFileName,
    );
    if (response.hasError) {
      return response;
    }
    return response;
  }

  Future<DefaultResponse<Product?>> _getProductBySKU(int sku) async {
    final response = await assortmentRepository.getProductBySKU(
      sku: sku,
      assortmentFile: state.store?.menuFileName,
    );
    if (response.hasError) {
      return response;
    }
    if (response.result == null) {
      return assortmentRepository.getProductBySKU(
        sku: sku,
        assortmentFile: cityRepository.getSelectedCity()?.menuFileName,
      );
    }
    return response;
  }

  Future<void> _onCreateOrder(
      _OnCreateOrder event, Emitter<CartState> emit) async {
    if (state.status == CartStateStatus.orderSending) {
      return;
    }

    if (state.paymentType == null) {
      return addSr(
        CartSr.showPaymentTypeList(storeId: state.store!.id),
      );
    }

    return _createOrder(emit, state.paymentType!);
  }

  Future<void> _onPaymentTypeSelected(
    _OnPaymentTypeSelected event,
    Emitter<CartState> emit,
  ) async {
    if (state.status == CartStateStatus.orderSending) {
      return;
    }
    return _createOrder(emit, event.paymentType);
  }

  Future<void> _onPaymentTypeChanged(
    _OnPaymentTypeChanged event,
    Emitter<CartState> emit,
  ) async {
    if (state.status == CartStateStatus.orderSending) {
      return;
    }

    emit(
      state.copyWith(
        paymentType: event.paymentType,
      ),
    );
    _validateCart(emit);
  }

  void _validateCart(Emitter<CartState> emit) {
    final isFullBonusPayment = state.orderPrice == 0.0 && state.useBonuses;

    final isSumValid = state.orderPrice > 0.0 || isFullBonusPayment;

    final isPaymentTypeValid = state.paymentType != null || isFullBonusPayment;

    final isProductsValid = state.products.isNotEmpty;

    emit(
      state.copyWith(
        validToOrder: isSumValid && isProductsValid && isPaymentTypeValid,
        validToChoosePayment: isProductsValid,
        isFullBonusPayment: isFullBonusPayment,
      ),
    );
  }

  Future<void> _createOrder(
    Emitter<CartState> emit,
    PaymentType? paymentType, [
    isCoffee = false,
  ]) async {
    try {
      emit(
        state.copyWith(
          status: CartStateStatus.orderSending,
        ),
      );
      if (_order == null) {
        final response = await orderInteractor.initOrder(
          store: state.store!,
          paymentType: paymentType,
          isCoffee: isCoffee,
        );
        if (response.hasError) {
          emit(state.copyWith(status: CartStateStatus.ready));
          addSr(CartSr.error(ErrorMessages.getMessage(response.error)));
          addError(response.error);
          return;
        }
        _order = response.result;
      } else {
        _order = _order?.copyWith(
          paymentType: paymentType,
          payment: null,
        );
      }

      var order = _order;
      if (order == null || !order.isValid()) {
        emit(state.copyWith(status: CartStateStatus.ready));
        addSr(CartSr.error(ErrorMessages.undefinedError));
        addError('Order not valid');
        return;
      }
      final orderResponse = await orderInteractor.createOrder(order);
      if (orderResponse.hasError) {
        emit(state.copyWith(status: CartStateStatus.ready));
        addSr(CartSr.error(ErrorMessages.getMessage(orderResponse.error)));
        addError(orderResponse.error);
        return;
      }
      _order = order = orderResponse.result;
      _processPayment(order);
      emit(state.copyWith(canChangeBonuses: false));
      unawaited(_removeCart());
      unawaited(analystService.createOrder(order));
    } catch (e) {
      addSr(CartSr.error(ErrorMessages.undefinedError));
      addError(e, e is Error ? e.stackTrace : null);
    }
  }

  _processPayment(OrderModel order) {
    assert(order.externalId != null && order.payment != null);
    analystService.processPayment(paymentType: order.paymentType);
    final payment = order.payment!;

    // _shouldCancelOrder = switch (payment) {
    //   SbpPayment() => false,
    //   _ => true,
    // };

    // if (payment.isCashPayment) {
    //   addSr(
    //     CartSr.submit(
    //       order: order,
    //     ),
    //   );
    //   return;
    // }

    addSr(
      CartSr.processPayment(
        payment,
        order.store.id,
      ),
    );
  }

  void _onSuccessPayment(_OnSuccessPayment event, Emitter<CartState> emit) {
    final order = _order;
    if (order == null || isClosed) {
      return;
    }
    assert(order.externalId != null);
    emit(state.copyWith(status: CartStateStatus.ready));
    addSr(
      CartSr.submit(
        order: order,
      ),
    );
    _order = null;
  }

  void _onFailurePayment(_OnFailurePayment event, Emitter<CartState> emit) {
    // if (!_shouldCancelOrder) {
    //   return;
    // }
    emit(state.copyWith(status: CartStateStatus.ready));
    addSr(const CartSr.cancelPayment());
    _order = null;
    unawaited(unpaidOrdersRepository.refreshUnpaidOrder());
  }

  void _onSbpBankOpen(_OnSbpBankOpen event, Emitter<CartState> emit) {
    // _shouldCancelOrder = true;
    // unawaited(_removeCart());
  }

  Future<void> _onCancelOrderPressed(
          _OnCancelOrderPressed event, Emitter<CartState> emit) =>
      _removeCart();

  _updatePrice(_OnUseBonusesChange event, Emitter<CartState> emit) async {
    if (_order != null) return;
    emit(state.copyWith(status: CartStateStatus.updating));
    await cartRepository.changeBonusesUsage(event.useBonuses);
  }

  void _onReset(_OnReset event, Emitter<CartState> emit) =>
      emit(const CartState());

  Future<void> _removeCart() async {
    try {
      await cartRepository.deleteCart();
    } catch (e) {
      addError(e);
    }
  }

  Future<bool> _onUnfinishedPurchaseOnboardingComplete(
          _OnUnfinishedPurchaseOnboardingComplete event,
          Emitter<CartState> emit) =>
      prefs.setBool(_kUnfinishedPurchaseOnboardingKey, true);

  void _onStoreListButtonPressed(
    _OnStoreListButtonPressed event,
    Emitter<CartState> emit,
  ) {
    addSr(const CartSr.showStoreList());
  }

  void _onChangePaymentTypePressed(
    _OnChangePaymentTypePressed event,
    Emitter<CartState> emit,
  ) {
    if (state.store == null) {
      return;
    }
    emit(
      state.copyWith(
        status: CartStateStatus.ready,
      ),
    );
    addSr(
      CartSr.showPaymentTypeList(
        storeId: state.store!.id,
      ),
    );
  }

  Future<void> _addExpiredBarcode(
    _AddExpiredBarcode event,
    Emitter<CartState> emit,
  ) =>
      _addProductByBarcode(
        rawBarcode: event.barcode,
        emit: emit,
        skipExpirationCheck: true,
      );

  Future<void> _onReopenFridge(
    _OnReopenFridge event,
    Emitter<CartState> emit,
  ) =>
      fridgeRepository.openFridge(event.fridgeId);

  @override
  Future<void> close() {
    _timer?.cancel();
    _subscription?.cancel();
    return super.close();
  }
}

@injectable
class CoffeeCartBloc extends CartBloc {
  CoffeeCartBloc({
    required CartRepositoryCoffeeImpl cartRepository,
    required super.assortmentRepository,
    required super.barcodeRepository,
    required super.remoteConfigRepository,
    required OrderInteractorCoffeeImpl orderInteractor,
    required super.paymentRepository,
    required super.analystService,
    required super.cityRepository,
    required super.prefs,
    required super.unpaidOrdersRepository,
    required super.barcodeParserRepository,
    required super.fridgeRepository,
  }) : super(
          cartRepository: cartRepository,
          orderInteractor: orderInteractor,
        );

  @override
  Future<void> _onInitCart(_OnInitCart event, Emitter<CartState> emit) async {
    _subscription?.cancel();

    emit(
      CartState(
        store: event.store,
        status: CartStateStatus.init,
      ),
    );
    _cart = null;

    //Если микромаркет не выбран и корзина не восстанавливается из памяти,
    //то пропускаем инициализацию, пока не будет выбран микромаркет
    if (event.store == null) return;

    emit(
      state.copyWith(
        status: CartStateStatus.loading,
        isCartRestored: false,
      ),
    );

    await cartRepository.initCart(
      createNewCart: true,
      store: event.store,
      fridgeId: event.fridgeId,
      coffeeMachine: event.coffeeMachine,
    );

    _subscription = cartRepository.productsStream.listen(
      (cart) => add(CartEvent.onCartUpdate(cart: cart)),
      onError: (error) => add(
        CartEvent.onCartUpdateError(error: error),
      ),
    );
  }

  @override
  void _incrementProduct(_OnIncrementPressed event, Emitter<CartState> emit) {
    throw UnimplementedError();
  }

  @override
  void _decrementProduct(_OnDecrementPressed event, Emitter<CartState> emit) {
    throw UnimplementedError();
  }

  @override
  void _removeProductFromCart(_OnDeletePressed event, Emitter<CartState> emit) {
    throw UnimplementedError();
  }

  @override
  Future<void> _addProductByBarcode({
    required RawBarcode rawBarcode,
    required Emitter<CartState> emit,
    bool skipExpirationCheck = false,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> _addExpiredBarcode(
      _AddExpiredBarcode event, Emitter<CartState> emit) {
    throw UnimplementedError();
  }

  @override
  Future<void> _onAddMultipleProducts(
    _OnAddMultipleProducts event,
    Emitter<CartState> emit,
  ) async {
    await cartRepository.emptyCart();
    return super._onAddMultipleProducts(event, emit);
  }

  @override
  Future<void> _onPaymentTypeSelected(
    _OnPaymentTypeSelected event,
    Emitter<CartState> emit,
  ) async {
    if (state.status == CartStateStatus.orderSending) {
      return;
    }

    return _createOrder(emit, event.paymentType, true);
  }

  @override
  Future<void> close() {
    cartRepository.deleteCart();
    return super.close();
  }
}
