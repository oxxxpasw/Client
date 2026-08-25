import 'package:sosedifedi/data/entities/cart/cart.dart';
import 'package:sosedifedi/data/mappers/cart_mapper.dart';
import 'package:sosedifedi/data/models/assortment/assortment_interactor.dart';
import 'package:sosedifedi/data/models/auth_data/auth_data.dart';
import 'package:sosedifedi/data/models/cart_model/cart_model.dart';
import 'package:sosedifedi/data/models/point/point.dart';
import 'package:sosedifedi/data/models/product/product.dart';
import 'package:sosedifedi/data/models/user/user.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/repository/cart_repository/cart_repository.dart';
import 'package:sosedifedi/data/repository/point_repository.dart';
import 'package:sosedifedi/data/services/cart_service.dart';
import 'package:sosedifedi/data/services/wp_service.dart';
import 'package:sosedifedi/objectbox.g.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_data/auth_test_data.dart';
import 'point_repository_test.dart';

class MockWPService extends Mock implements WPService {}

class MockAuthRepository extends Mock implements AuthRepository {}

class MockCartMapper extends Mock implements CartMapper {}

class MockPointRepository extends Mock implements PointRepository {}

class FakeProduct extends Fake implements Product {}

class FakeProductEntity extends Fake implements ProductEntity {}

class MockUser extends Mock implements User {}

class MockCartEntity extends Mock implements CartEntity {}

class FakePoint extends Fake implements Point {}

class FakeCartModel extends Fake implements CartModel {}

class FakeAssortment extends Fake implements Assortment {}

class FakeAuthData extends Fake implements AuthData {
  @override
  User user = MockUser();
}

class FakePointData extends Fake implements PointData {}

void main() {
  late WPService wpService;
  late CartService cartService;
  late AuthRepository authRepository;
  late CartMapper cartMapper;
  late PointRepository pointRepository;
  CartEntity? cartEntity;
  setUpAll(() {
    registerFallbackValue(FakePointData());
    registerFallbackValue(FakeProductEntity());
    registerFallbackValue(MockCartEntity());
    registerFallbackValue(FakeCartModel());
    registerFallbackValue(FakeAssortment());
  });

  setUp(() async {
    wpService = MockWPService();
    cartService = MockCartService();
    authRepository = MockAuthRepository();
    cartMapper = MockCartMapper();
    pointRepository = MockPointRepository();
  });

  group('CartRepositoryImpl', () {
    late CartRepositoryImpl cartRepository;
    late List<Product> expectedProducts;
    setUp(() async {
      cartRepository = CartRepositoryImpl(
        assortmentService: wpService,
        cartService: cartService,
        authRepository: authRepository,
        cartMapper: cartMapper,
        storesRepository: pointRepository,
      );
      cartEntity = MockCartEntity();
      when(() => cartEntity!.products).thenAnswer((_) => ToMany<ProductEntity>()
        ..addAll([
          ProductEntity(
            id: 1,
            groupId: 1,
            labelKey: 'name1',
            price: 1.0,
            status: 'instock',
            currencySymbol: 'currencySymbol',
            amount: 1,
            isOnePlusOne: false,
            type: 'default_product',
          ),
          ProductEntity(
            id: 2,
            groupId: 2,
            labelKey: 'name2',
            price: 1.0,
            status: 'instock',
            currencySymbol: 'currencySymbol',
            amount: 1,
            isOnePlusOne: false,
            type: 'default_product',
          ),
        ]));
      expectedProducts = [
        Product(
          id: 1,
          labelKey: 'name1',
          price: 1.0,
          uniqueId: 1,
          status: StockStatus.inStock,
        ),
        Product(
          id: 2,
          labelKey: 'name2',
          price: 1.0,
          uniqueId: 2,
          status: StockStatus.inStock,
        ),
      ];

      when(() => cartEntity!.userId)
          .thenReturn(AuthTestData.authData.user.userId);
      when(() => cartEntity!.id).thenReturn(1);
      when(() => cartService.getCart(AuthTestData.authData.user.userId))
          .thenAnswer((_) => cartEntity!);
      when(() => cartService.saveCart(any()))
          .thenAnswer((inv) => Future.value(inv.positionalArguments.first));

      when(() => authRepository.authData).thenReturn(AuthTestData.authData);
      when(() => cartMapper.mapToCartEntity(any(), any()))
          .thenReturn(cartEntity!);
      when(() => pointRepository.getStores()).thenAnswer(
          (invocation) => Future.value(PointData(points: [FakePoint()])));
      when(() => wpService.productInfo(
              itemId: any(named: 'itemId'),
              assortmentFileId: any(named: 'assortmentFileId')))
          .thenAnswer((invocation) async => ApiResponse.success(
                expectedProducts.firstWhere((element) =>
                    element.id == invocation.namedArguments[#itemId]),
              ));
    });
    tearDown(() {
      cartRepository.dispose();
    });
    group('cartStream', () {
      test(
          'productsStream должен создать новое событие при подписке и при добавлении нового события в _cartSubject',
          () async {
        final expectedCart = CartModel(
          products: expectedProducts,
          userId: AuthTestData.authData.user.userId,
          id: 1,
        );

        expect(
          cartRepository.productsStream.map((cart) => cart.toString()),
          emitsInOrder(
            [equals(expectedCart.toString()), equals(expectedCart.toString())],
          ),
        );
        await Future.delayed(Duration.zero);
        await cartRepository.getCart(true);
      });
    });
    group('countStream', () {
      test(
          'countStream должен создать новое событие при подписке  и при добавлении новго события в _cartSubject',
          () async {
        when(() => cartService.getCartCount(any()))
            .thenAnswer((invocation) async => 3);
        expect(
            cartRepository.countStream, emitsInOrder([equals(3), equals(2)]));
        await Future.delayed(Duration.zero);
        await cartRepository.getCart(true);
      });
    });
    group('getCart', () {
      test('Должен успешно возращать содержимое корзины', () async {
        cartRepository = CartRepositoryImpl(
          assortmentService: wpService,
          cartService: cartService,
          authRepository: authRepository,
          cartMapper: cartMapper,
          storesRepository: pointRepository,
        );
        final expectedProducts = [
          Product(id: 1, labelKey: 'name1', price: 1.0, uniqueId: 1),
          Product(id: 2, labelKey: 'name2', price: 1.0, uniqueId: 2),
        ];
        final expectedCart = CartModel(
          products: expectedProducts,
          userId: AuthTestData.authData.user.userId,
          id: 1,
        );
        when(() => authRepository.authData).thenReturn(AuthTestData.authData);
        when(() => pointRepository.getStores()).thenAnswer(
            (invocation) => Future.value(PointData(points: [FakePoint()])));
        when(() => wpService.productInfo(
                itemId: any(named: 'itemId'),
                assortmentFileId: any(named: 'assortmentFileId')))
            .thenAnswer((invocation) async => ApiResponse.success(
                  expectedProducts.firstWhere((element) =>
                      element.id == invocation.namedArguments[#itemId]),
                ));

        final actualCart = await cartRepository.getCart();
        expect(actualCart.toString(), equals(expectedCart.toString()));
      });

      test('Должен перезагружать содержимое корзины когда refresh=true',
          () async {
        final expectedProducts = [
          Product(
            id: 1,
            labelKey: 'name1',
            price: 10.0,
            uniqueId: 1,
            status: StockStatus.inStock,
          ),
          Product(
            id: 2,
            labelKey: 'name2',
            price: 10.0,
            uniqueId: 2,
            status: StockStatus.inStock,
          ),
        ];
        final expectedCart = CartModel(
          products: expectedProducts,
          userId: AuthTestData.authData.user.userId,
          id: 1,
        );
        when(() => wpService.productInfo(
            itemId: any(named: 'itemId'),
            assortmentFileId: any(named: 'assortmentFileId'))).thenAnswer(
          (invocation) async => ApiResponse.success(
            expectedProducts.firstWhere(
                (element) => element.id == invocation.namedArguments[#itemId]),
          ),
        );

        final actualCart = await cartRepository.getCart(true);

        expect(actualCart.toString(), equals(expectedCart.toString()));
      });
    });
    group('addToCart', () {
      test('Должен добавить товар в корзину', () async {
        final products = [
          ...expectedProducts,
          Product(
            id: 3,
            labelKey: 'name3',
            price: 1.0,
            uniqueId: 3,
            status: StockStatus.inStock,
          ),
        ];
        when(() => wpService.productInfo(
                itemId: any(named: 'itemId'),
                assortmentFileId: any(named: 'assortmentFileId')))
            .thenAnswer((invocation) async => ApiResponse.success(
                  products.firstWhere((element) =>
                      element.id == invocation.namedArguments[#itemId]),
                ));

        expect(
            cartRepository.productsStream.map((event) => event.products.length),
            emitsInOrder([equals(2), equals(2), equals(3)]));

        final actual = await cartRepository.addToCart(products.last);
        expect(actual, equals(3));
      });

      test('Должен увеличить кол-во товара, если он уже в корзине', () async {
        expect(
            cartRepository.productsStream
                .map((event) => event.products.last.amount),
            emitsInOrder([equals(1), equals(1), equals(1), equals(2)]));

        expect(
            cartRepository.productsStream.map((event) => event.products.length),
            emitsInOrder([equals(2), equals(2), equals(2)]));

        final actual = await cartRepository.addToCart(expectedProducts.last);
        expect(actual, equals(2));
      });

      test('Должен вернуть 0 при ошибке', () async {
        final expectedProducts = [
          Product(
            id: 1,
            labelKey: 'name1',
            price: 1.0,
            uniqueId: 1,
            status: StockStatus.inStock,
          ),
          Product(
            id: 2,
            labelKey: 'name2',
            price: 1.0,
            uniqueId: 2,
            status: StockStatus.inStock,
          ),
          Product(
            id: 3,
            labelKey: 'name3',
            price: 1.0,
            uniqueId: 3,
            status: StockStatus.inStock,
          ),
        ];

        when(() => authRepository.authData).thenReturn(AuthTestData.authData);
        when(() => cartMapper.mapToCartEntity(any(), any()))
            .thenReturn(cartEntity!);
        when(() => pointRepository.getStores()).thenAnswer(
            (invocation) => Future.value(PointData(points: [FakePoint()])));
        when(() => wpService.productInfo(
                itemId: any(named: 'itemId'),
                assortmentFileId: any(named: 'assortmentFileId')))
            .thenAnswer((invocation) async => ApiResponse.success(
                  expectedProducts.firstWhere((element) =>
                      element.id == invocation.namedArguments[#itemId]),
                ));
        when(() => cartService.saveCart(any())).thenThrow(Exception());

        final actual = await cartRepository.addToCart(expectedProducts.last);

        expect(actual, equals(0));
      });
    });

    group('incrementProduct', () {
      test('Должен увеличить кол-во товара на 1 единицу', () async {
        expect(
            cartRepository.productsStream
                .map((event) => event.products.last.amount),
            emitsInOrder([equals(1), equals(2)]));

        await Future.delayed(Duration.zero);

        final actual =
            await cartRepository.incrementProduct(expectedProducts.last.id);

        expect(actual, equals(2));
      });
    });

    group('emptyCart', () {
      test('Должен очистить корзину', () async {
        expect(
            cartRepository.productsStream.map((event) => event.products.length),
            emitsInOrder([equals(2), equals(0)]));

        await Future.delayed(Duration.zero);

        when(() => cartService.saveCart(any()))
            .thenAnswer((inv) async => inv.positionalArguments.first);

        final result = await cartRepository.emptyCart();

        expect(result, isTrue);
        verify(() => cartService.saveCart(any())).called(1);
        final captured =
            verify(() => cartMapper.mapToCartEntity(captureAny(), any()))
                .captured;
        expect((captured.last as CartModel).products.length, equals(0));
      });
    });
    group('decrementProduct', () {
      test('Должен уменьшить кол-во товара на 1 единицу', () async {
        when(() => cartEntity!.products)
            .thenAnswer((_) => ToMany<ProductEntity>()
              ..addAll([
                ProductEntity(
                  id: 1,
                  groupId: 1,
                  labelKey: 'name1',
                  price: 1.0,
                  status: 'instock',
                  currencySymbol: 'currencySymbol',
                  amount: 1,
                  isOnePlusOne: false,
                  type: 'default_product',
                ),
                ProductEntity(
                  id: 2,
                  groupId: 2,
                  labelKey: 'name2',
                  price: 1.0,
                  status: 'instock',
                  currencySymbol: 'currencySymbol',
                  amount: 2,
                  isOnePlusOne: false,
                  type: 'default_product',
                ),
              ]));

        expect(
            cartRepository.productsStream
                .map((event) => event.products.last.amount),
            emitsInOrder([equals(2), equals(1)]));

        await Future.delayed(Duration.zero);

        final actual =
            await cartRepository.decrementProduct(expectedProducts.last.id);

        expect(actual, equals(2));
      });
      test('Должен убрать товар из корзины, если кол-во товара равно 1',
          () async {
        expect(
            cartRepository.productsStream.map((event) => event.products.length),
            emitsInOrder([equals(2), equals(1)]));

        await Future.delayed(Duration.zero);

        final actual =
            await cartRepository.decrementProduct(expectedProducts.last.id);

        expect(actual, equals(1));
      });
    });
    group('removeProductFromCart', () {
      test('Должен удалить товар из корзины', () async {
        expect(
            cartRepository.productsStream
                .map((event) => event.products.map((e) => e.uniqueId)),
            emitsInOrder([
              equals([1, 2]),
              equals([1])
            ]));

        await Future.delayed(Duration.zero);

        when(() => cartService.saveCart(any()))
            .thenAnswer((inv) async => inv.positionalArguments.first);

        final result = await cartRepository
            .removeProductFromCart(expectedProducts.last.uniqueId!);

        expect(result, isTrue);
        verify(() => cartService.saveCart(any())).called(1);
      });
    });
    group('compareCartItems', () {
      test('Товары с одинаковой ценой и модификаторами должны быть равны',
          () async {
        final product1 =
            Product(id: 1, labelKey: 'product1', price: 100, amount: 10);
        final product2 =
            Product(id: 1, labelKey: 'product2', price: 1, amount: 1);
        expect(cartRepository.compareCartItems(product1, product2), isTrue);
      });
      test('Товары с разным id должны быть не равны', () async {
        final product1 =
            Product(id: 1, labelKey: 'product1', price: 100, amount: 10);
        final product2 =
            Product(id: 2, labelKey: 'product2', price: 1, amount: 1);
        expect(cartRepository.compareCartItems(product1, product2), isFalse);
      });
      test('Товары с разными модификаторами должны быть не равны', () async {
        final product1 =
            Product(id: 1, labelKey: 'product1', price: 100, amount: 10);
        final product2 = Product(
            id: 1,
            labelKey: 'product2',
            price: 1,
            amount: 1,
            modifierGroups: [
              Modifier(
                  id: 3,
                  labelKey: 'modifier',
                  modifierGroups: [],
                  selectedModifiers: [])
            ]);
        expect(cartRepository.compareCartItems(product1, product2), isFalse);
      });
    });
    group('compareModifiers', () {
      test(
          'Списоки модификаторов с одинаковой ценой и модификаторами должны быть равны',
          () async {
        final modifier1 = Modifier(
            id: 3,
            labelKey: 'modifier1',
            modifierGroups: [],
            selectedModifiers: []);
        final modifier2 = Modifier(
            id: 3,
            labelKey: 'modifier2',
            modifierGroups: [],
            selectedModifiers: []);
        expect(
            cartRepository.compareModifiers([modifier1], [modifier2]), isTrue);
      });
      test('Списоки с разным кол-вом модификаторов не должны быть равны',
          () async {
        final modifier1 = Modifier(
            id: 3,
            labelKey: 'modifier1',
            modifierGroups: [],
            selectedModifiers: []);
        final modifier2 = Modifier(
            id: 3,
            labelKey: 'modifier2',
            modifierGroups: [],
            selectedModifiers: []);
        final modifier3 = Modifier(
            id: 4,
            labelKey: 'modifier3',
            modifierGroups: [],
            selectedModifiers: []);
        expect(
            cartRepository
                .compareModifiers([modifier1], [modifier2, modifier3]),
            isFalse);
      });
      test('Списоки с разными модификаторами не должны быть равны', () async {
        const option = Option(id: 4, labelKey: 'name');
        final modifier1 = Modifier(
            id: 3,
            labelKey: 'modifier1',
            modifierGroups: [],
            selectedModifiers: []);
        final modifier2 = Modifier(
            id: 3,
            labelKey: 'modifier2',
            modifierGroups: [option],
            selectedModifiers: [option]);
        expect(
            cartRepository.compareModifiers([modifier1], [modifier2]), isFalse);
      });
    });
    group('compareOptions', () {
      test(
          'Списоки опций с одинаковой ценой и модификаторами должны быть равны',
          () async {
        const option1 = Option(id: 4, labelKey: 'name1');
        const option2 = Option(id: 4, labelKey: 'name2');
        expect(cartRepository.compareOptions([option1], [option2]), isTrue);
      });
      test('Списоки с разным кол-вом опций не должны быть равны', () async {
        const option1 = Option(id: 4, labelKey: 'name1');
        const option2 = Option(id: 5, labelKey: 'name2');
        expect(cartRepository.compareOptions([option1], [option2]), isFalse);
      });
      test('Списоки с разными опциями не должны быть равны', () async {
        const option1 = Option(id: 4, labelKey: 'name1');
        const option2 = Option(id: 4, labelKey: 'name2');
        const option3 = Option(id: 5, labelKey: 'name3');
        expect(cartRepository.compareOptions([option1], [option2, option3]),
            isFalse);
      });
    });
  });

  group('CartRepositorySelfImpl', () {
    late CartRepositorySelfImpl cartRepository;
    late List<Product> expectedProducts;
    setUp(() async {
      cartRepository = CartRepositorySelfImpl(
        assortmentService: wpService,
        authRepository: authRepository,
        cartMapper: cartMapper,
      );
      cartRepository.assortmentFileId = 'fileId';
      expectedProducts = [
        Product(
          id: 1,
          labelKey: 'name1',
          price: 1.0,
          uniqueId: 1,
          status: StockStatus.inStock,
        ),
        Product(
          id: 2,
          labelKey: 'name2',
          price: 1.0,
          uniqueId: 2,
          status: StockStatus.inStock,
        ),
      ];

      when(() => authRepository.authData).thenReturn(AuthTestData.authData);
      when(() => wpService.getAssortForPoint('fileId')).thenAnswer(
          (invocation) async => ApiResponse.success(FakeAssortment()));
      when(() => wpService.productInfoForSelfService(
            itemId: any(named: 'itemId'),
            assortmentFileId: any(named: 'assortmentFileId'),
            assortmentFile: any(named: 'assortmentFile'),
          )).thenAnswer((invocation) async => ApiResponse.success(
            expectedProducts.firstWhere(
                (element) => element.id == invocation.namedArguments[#itemId]),
          ));
      await cartRepository.addToCart(expectedProducts[0]);
      await cartRepository.addToCart(expectedProducts[1]);
    });
    tearDown(() {
      cartRepository.dispose();
    });
    group('cartStream', () {
      test(
          'productsStream должен создать новое событие при подписке и при добавлении нового события в _cartSubject',
          () async {
        final expectedCart = CartModel(
          products: expectedProducts,
          userId: AuthTestData.authData.user.userId,
          id: 1,
        );

        expect(
          cartRepository.productsStream.map((cart) => cart.toString()),
          emitsInOrder(
            [equals(expectedCart.toString()), equals(expectedCart.toString())],
          ),
        );
        await Future.delayed(Duration.zero);
        await cartRepository.getCart(true);
      });
    });
    group('countStream', () {
      test(
          'countStream должен создать новое событие при подписке  и при добавлении новго события в _cartSubject',
          () async {
        when(() => cartService.getCartCount(any()))
            .thenAnswer((invocation) async => 3);
        expect(
            cartRepository.countStream, emitsInOrder([equals(3), equals(2)]));
        await Future.delayed(Duration.zero);
        await cartRepository.getCart(true);
      });
    });
    group('getCart', () {
      test('Должен успешно возращать содержимое корзины', () async {
        cartRepository = CartRepositorySelfImpl(
          assortmentService: wpService,
          authRepository: authRepository,
          cartMapper: cartMapper,
        );
        final products = [
          Product(id: 1, labelKey: 'name1', price: 1.0, uniqueId: 1),
          Product(id: 2, labelKey: 'name2', price: 1.0, uniqueId: 2),
        ];
        const expectedCart = CartModel(
          products: [],
          id: 0,
        );
        when(() => wpService.productInfo(
                itemId: any(named: 'itemId'),
                assortmentFileId: any(named: 'assortmentFileId')))
            .thenAnswer((invocation) async => ApiResponse.success(
                  products.firstWhere((element) =>
                      element.id == invocation.namedArguments[#itemId]),
                ));

        final actualCart = await cartRepository.getCart();
        expect(actualCart.toString(), equals(expectedCart.toString()));
      });

      test('Должен перезагружать содержимое корзины когда refresh=true',
          () async {
        final expectedProducts = [
          Product(
            id: 1,
            labelKey: 'name1',
            price: 10.0,
            uniqueId: 1,
            status: StockStatus.inStock,
          ),
          Product(
            id: 2,
            labelKey: 'name2',
            price: 10.0,
            uniqueId: 2,
            status: StockStatus.inStock,
          ),
        ];
        final expectedCart = CartModel(
          products: expectedProducts,
          id: 0,
        );
        when(() => wpService.productInfoForSelfService(
              itemId: any(named: 'itemId'),
              assortmentFileId: any(named: 'assortmentFileId'),
              assortmentFile: any(named: 'assortmentFile'),
            )).thenAnswer((invocation) async => ApiResponse.success(
              expectedProducts.firstWhere((element) =>
                  element.id == invocation.namedArguments[#itemId]),
            ));

        final actualCart = await cartRepository.getCart(true);

        expect(actualCart.toString(), equals(expectedCart.toString()));
      });
    });
    group('addToCart', () {
      test('Должен добавить товар в корзину', () async {
        final products = [
          ...expectedProducts,
          Product(
            id: 3,
            labelKey: 'name3',
            price: 1.0,
            uniqueId: 3,
            status: StockStatus.inStock,
          ),
        ];
        when(() => wpService.productInfoForSelfService(
              itemId: any(named: 'itemId'),
              assortmentFileId: any(named: 'assortmentFileId'),
              assortmentFile: any(named: 'assortmentFile'),
            )).thenAnswer((invocation) async => ApiResponse.success(
              products.firstWhere((element) =>
                  element.id == invocation.namedArguments[#itemId]),
            ));

        expect(
            cartRepository.productsStream.map((event) => event.products.length),
            emits(equals(3)));

        final actual = await cartRepository.addToCart(products.last);
        expect(actual, equals(3));
      });

      test('Должен увеличить кол-во товара, если он уже в корзине', () async {
        expect(
            cartRepository.productsStream
                .map((event) => event.products.last.amount),
            emits(equals(2)));

        expect(
            cartRepository.productsStream.map((event) => event.products.length),
            emits(equals(2)));

        final actual = await cartRepository.addToCart(expectedProducts.last);
        expect(actual, equals(2));
      });
    });

    group('incrementProduct', () {
      test('Должен увеличить кол-во товара на 1 единицу', () async {
        expect(
            cartRepository.productsStream
                .map((event) => event.products.last.amount),
            emits(equals(2)));

        await Future.delayed(Duration.zero);
        final product = (await cartRepository.getCart()).products.last;

        final actual = await cartRepository.incrementProduct(product.uniqueId!);

        expect(actual, equals(2));
      });
    });

    group('emptyCart', () {
      test('Должен очистить корзину', () async {
        expect(
            cartRepository.productsStream.map((event) => event.products.length),
            emits(equals(0)));

        await Future.delayed(Duration.zero);

        when(() => cartService.saveCart(any()))
            .thenAnswer((inv) async => inv.positionalArguments.first);

        final result = await cartRepository.emptyCart();

        expect(result, isTrue);
      });
    });
    group('decrementProduct', () {
      test('Должен уменьшить кол-во товара на 1 единицу', () async {
        when(() => cartEntity!.products)
            .thenAnswer((_) => ToMany<ProductEntity>()
              ..addAll([
                ProductEntity(
                  id: 1,
                  groupId: 1,
                  labelKey: 'name1',
                  price: 1.0,
                  status: 'instock',
                  currencySymbol: 'currencySymbol',
                  amount: 1,
                  isOnePlusOne: false,
                  type: 'default_product',
                ),
                ProductEntity(
                  id: 2,
                  groupId: 2,
                  labelKey: 'name2',
                  price: 1.0,
                  status: 'instock',
                  currencySymbol: 'currencySymbol',
                  amount: 2,
                  isOnePlusOne: false,
                  type: 'default_product',
                ),
              ]));

        expect(
            cartRepository.productsStream
                .map((event) => event.products.last.amount),
            emits(equals(1)));

        await Future.delayed(Duration.zero);
        final product = (await cartRepository.getCart()).products.last;
        final actual = await cartRepository.decrementProduct(product.uniqueId!);

        expect(actual, equals(1));
      });
      test('Должен убрать товар из корзины, если кол-во товара равно 1',
          () async {
        expect(
            cartRepository.productsStream.map((event) => event.products.length),
            emits(equals(1)));

        await Future.delayed(Duration.zero);

        final product = (await cartRepository.getCart()).products.last;
        final actual = await cartRepository.decrementProduct(product.uniqueId!);

        expect(actual, equals(1));
      });
    });
    group('removeProductFromCart', () {
      test('Должен удалить товар из корзины', () async {
        expect(
            cartRepository.productsStream.map((event) => event.products.length),
            emits(equals(1)));

        await Future.delayed(Duration.zero);

        when(() => cartService.saveCart(any()))
            .thenAnswer((inv) async => inv.positionalArguments.first);

        final product = (await cartRepository.getCart()).products.last;
        final result =
            await cartRepository.removeProductFromCart(product.uniqueId!);

        expect(result, isTrue);
      });
    });
    group('compareCartItems', () {
      test('Товары с одинаковой ценой и модификаторами должны быть равны',
          () async {
        final product1 =
            Product(id: 1, labelKey: 'product1', price: 100, amount: 10);
        final product2 =
            Product(id: 1, labelKey: 'product2', price: 1, amount: 1);
        expect(cartRepository.compareCartItems(product1, product2), isTrue);
      });
      test('Товары с разным id должны быть не равны', () async {
        final product1 =
            Product(id: 1, labelKey: 'product1', price: 100, amount: 10);
        final product2 =
            Product(id: 2, labelKey: 'product2', price: 1, amount: 1);
        expect(cartRepository.compareCartItems(product1, product2), isFalse);
      });
      test('Товары с разными модификаторами должны быть не равны', () async {
        final product1 =
            Product(id: 1, labelKey: 'product1', price: 100, amount: 10);
        final product2 = Product(
            id: 1,
            labelKey: 'product2',
            price: 1,
            amount: 1,
            modifierGroups: [
              Modifier(
                  id: 3,
                  labelKey: 'modifier',
                  modifierGroups: [],
                  selectedModifiers: [])
            ]);
        expect(cartRepository.compareCartItems(product1, product2), isFalse);
      });
    });
    group('compareModifiers', () {
      test(
          'Списоки модификаторов с одинаковой ценой и модификаторами должны быть равны',
          () async {
        final modifier1 = Modifier(
            id: 3,
            labelKey: 'modifier1',
            modifierGroups: [],
            selectedModifiers: []);
        final modifier2 = Modifier(
            id: 3,
            labelKey: 'modifier2',
            modifierGroups: [],
            selectedModifiers: []);
        expect(
            cartRepository.compareModifiers([modifier1], [modifier2]), isTrue);
      });
      test('Списоки с разным кол-вом модификаторов не должны быть равны',
          () async {
        final modifier1 = Modifier(
            id: 3,
            labelKey: 'modifier1',
            modifierGroups: [],
            selectedModifiers: []);
        final modifier2 = Modifier(
            id: 3,
            labelKey: 'modifier2',
            modifierGroups: [],
            selectedModifiers: []);
        final modifier3 = Modifier(
            id: 4,
            labelKey: 'modifier3',
            modifierGroups: [],
            selectedModifiers: []);
        expect(
            cartRepository
                .compareModifiers([modifier1], [modifier2, modifier3]),
            isFalse);
      });
      test('Списоки с разными модификаторами не должны быть равны', () async {
        const option = Option(id: 4, labelKey: 'name');
        final modifier1 = Modifier(
            id: 3,
            labelKey: 'modifier1',
            modifierGroups: [],
            selectedModifiers: []);
        final modifier2 = Modifier(
            id: 3,
            labelKey: 'modifier2',
            modifierGroups: [option],
            selectedModifiers: [option]);
        expect(
            cartRepository.compareModifiers([modifier1], [modifier2]), isFalse);
      });
    });
    group('compareOptions', () {
      test(
          'Списоки опций с одинаковой ценой и модификаторами должны быть равны',
          () async {
        const option1 = Option(id: 4, labelKey: 'name1');
        const option2 = Option(id: 4, labelKey: 'name2');
        expect(cartRepository.compareOptions([option1], [option2]), isTrue);
      });
      test('Списоки с разным кол-вом опций не должны быть равны', () async {
        const option1 = Option(id: 4, labelKey: 'name1');
        const option2 = Option(id: 5, labelKey: 'name2');
        expect(cartRepository.compareOptions([option1], [option2]), isFalse);
      });
      test('Списоки с разными опциями не должны быть равны', () async {
        const option1 = Option(id: 4, labelKey: 'name1');
        const option2 = Option(id: 4, labelKey: 'name2');
        const option3 = Option(id: 5, labelKey: 'name3');
        expect(cartRepository.compareOptions([option1], [option2, option3]),
            isFalse);
      });
    });
  });
}
