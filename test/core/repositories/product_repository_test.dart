import 'package:sosedifedi/data/models/category/category.dart';
import 'package:sosedifedi/data/models/product/product.dart';
import 'package:sosedifedi/data/models/short_product/short_product.dart';
import 'package:sosedifedi/data/repository/product_repository.dart';
import 'package:sosedifedi/data/services/wp_service.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_data/product_test_data.dart';

class MockWPService extends Mock implements WPService {}

class FakeShortProduct extends Fake implements ShortProduct {}

class FakeCategoryWithProducts extends Fake implements CategoryWithProducts {}

class FakeProduct extends Fake implements Product {}

void main() {
  late ProductRepositoryImpl repo;
  late WPService mockWpService;

  setUp(() {
    mockWpService = MockWPService();
    repo = ProductRepositoryImpl(mockWpService);
  });

  group('getProduct', () {
    test('should call productInfo method and return response', () async {
      const testId = 1;
      final product = FakeProduct();
      when(() => mockWpService.productInfo(
              itemId: testId, assortmentFileId: ProductTestData.assortmentFile))
          .thenAnswer((_) async => ApiResponse.success(product));

      final result =
          await repo.getProduct(testId, ProductTestData.assortmentFile);
      verify(() => mockWpService.productInfo(
          itemId: testId,
          assortmentFileId: ProductTestData.assortmentFile)).called(1);
      expect(result.isSuccess, isTrue);
      expect(result._result, product);
    });
  });

  group('getProductForSelfService', () {
    test('should call productInfoForSelfService method and return response',
        () async {
      const testId = 1;
      final product = FakeProduct();
      when(() => mockWpService.productInfoForSelfService(
              itemId: testId, assortmentFileId: ProductTestData.assortmentFile))
          .thenAnswer((_) async => ApiResponse.success(product));

      final result = await repo.getProductForSelfService(
          testId, ProductTestData.assortmentFile);
      verify(() => mockWpService.productInfoForSelfService(
          itemId: testId,
          assortmentFileId: ProductTestData.assortmentFile)).called(1);
      expect(result.isSuccess, isTrue);
      expect(result._result, product);
    });
  });

  group('getProducts', () {
    test('should call productList method and return success response',
        () async {
      final response = [FakeShortProduct(), FakeShortProduct()];

      when(() => mockWpService.productList(
              assortmentFile: ProductTestData.assortmentFile))
          .thenAnswer((_) async => ApiResponse.success(response));

      final result = await repo.getProducts(ProductTestData.assortmentFile);

      verify(() => mockWpService.productList(
          assortmentFile: ProductTestData.assortmentFile)).called(1);
      expect(result.isSuccess, isTrue);
      expect(result._result, equals(response));
    });

    test('should call productList method and return error response', () async {
      final error = CommonResponseError<DefaultApiError>.undefinedError(
          Exception('testError'));
      when(() => mockWpService.productList(
              assortmentFile: ProductTestData.assortmentFile))
          .thenAnswer((_) async => ApiResponse.error(error));

      final result = await repo.getProducts(ProductTestData.assortmentFile);

      verify(() => mockWpService.productList(
          assortmentFile: ProductTestData.assortmentFile)).called(1);
      expect(result.hasError, isTrue);
      expect(result.error, equals(error));
    });
  });

  group('getProductsForSelfService', () {
    test(
        'should call productListForSelfService method and return success response',
        () async {
      final response = [FakeShortProduct(), FakeShortProduct()];

      when(() => mockWpService.productListForSelfService(
              assortmentFile: ProductTestData.assortmentFile))
          .thenAnswer((_) async => ApiResponse.success(response));

      final result =
          await repo.getProductsForSelfService(ProductTestData.assortmentFile);

      expect(result.isSuccess, isTrue);
      expect(result._result, equals(response));
    });

    test(
        'should call productListForSelfService method and return error response',
        () async {
      final error = CommonResponseError<DefaultApiError>.undefinedError(
          Exception('testError'));
      when(() => mockWpService.productListForSelfService(
              assortmentFile: ProductTestData.assortmentFile))
          .thenAnswer((_) async => ApiResponse.error(error));

      final result =
          await repo.getProductsForSelfService(ProductTestData.assortmentFile);

      verify(() => mockWpService.productListForSelfService(
          assortmentFile: ProductTestData.assortmentFile)).called(1);
      expect(result.hasError, isTrue);
      expect(result.error, equals(error));
    });
  });

  group('getProductsGroupByCategory', () {
    test(
        'should call productList and categoryList methods and return success response',
        () async {
      when(() =>
          mockWpService.productList(
              assortmentFile: ProductTestData.assortmentFile)).thenAnswer(
          (_) async => const ApiResponse.success(ProductTestData.productList));
      when(() => mockWpService.categoryList()).thenAnswer((_) async =>
          const ApiResponse.success(ProductTestData.categoryItems));

      final result =
          await repo.getProductsGroupByCategory(ProductTestData.assortmentFile);

      verify(() => mockWpService.productList(
          assortmentFile: ProductTestData.assortmentFile)).called(1);
      verify(() => mockWpService.categoryList()).called(1);
      expect(result.isSuccess, isTrue);
      expect(result._result, equals(ProductTestData.categoryWithProducts));
    });

    test(
        'should call productList and categoryList methods and return error response (product list)',
        () async {
      final error = CommonResponseError<DefaultApiError>.undefinedError(
          Exception('testError'));
      when(() => mockWpService.productList(
              assortmentFile: ProductTestData.assortmentFile))
          .thenAnswer((_) async => ApiResponse.error(error));
      when(() => mockWpService.categoryList()).thenAnswer((_) async =>
          const ApiResponse.success(ProductTestData.categoryItems));

      final result =
          await repo.getProductsGroupByCategory(ProductTestData.assortmentFile);

      verify(() => mockWpService.productList(
          assortmentFile: ProductTestData.assortmentFile)).called(1);
      verify(() => mockWpService.categoryList()).called(1);
      expect(result.hasError, isTrue);
      expect(result.error, equals(error));
    });

    test(
        'should call productList and categoryList methods and return error response (category list)',
        () async {
      final error = CommonResponseError<DefaultApiError>.undefinedError(
          Exception('testError'));
      when(() =>
          mockWpService.productList(
              assortmentFile: ProductTestData.assortmentFile)).thenAnswer(
          (_) async => const ApiResponse.success(ProductTestData.productList));
      when(() => mockWpService.categoryList())
          .thenAnswer((_) async => ApiResponse.error(error));

      final result =
          await repo.getProductsGroupByCategory(ProductTestData.assortmentFile);
      verify(() => mockWpService.productList(
          assortmentFile: ProductTestData.assortmentFile)).called(1);
      verify(() => mockWpService.categoryList()).called(1);
      expect(result.hasError, isTrue);
      expect(result.error, equals(error));
    });
  });

  group('getProductsForSelfServiceGroupByCategory', () {
    test(
        'should call productList and categoryList methods and return success response',
        () async {
      when(() =>
          mockWpService.productListForSelfService(
              assortmentFile: ProductTestData.assortmentFile)).thenAnswer(
          (_) async => const ApiResponse.success(ProductTestData.productList));
      when(() => mockWpService.categoryList()).thenAnswer((_) async =>
          const ApiResponse.success(ProductTestData.categoryItems));

      final result = await repo.getProductsForSelfServiceGroupByCategory(
          ProductTestData.assortmentFile);

      verify(() => mockWpService.productListForSelfService(
          assortmentFile: ProductTestData.assortmentFile)).called(1);
      verify(() => mockWpService.categoryList()).called(1);
      expect(result.isSuccess, isTrue);
      expect(result._result, equals(ProductTestData.categoryWithProducts));
    });

    test(
        'should call productList and categoryList methods and return error response (product list)',
        () async {
      final error = CommonResponseError<DefaultApiError>.undefinedError(
          Exception('testError'));
      when(() => mockWpService.productListForSelfService(
              assortmentFile: ProductTestData.assortmentFile))
          .thenAnswer((_) async => ApiResponse.error(error));
      when(() => mockWpService.categoryList()).thenAnswer((_) async =>
          const ApiResponse.success(ProductTestData.categoryItems));

      final result = await repo.getProductsForSelfServiceGroupByCategory(
          ProductTestData.assortmentFile);

      verify(() => mockWpService.productListForSelfService(
          assortmentFile: ProductTestData.assortmentFile)).called(1);
      verify(() => mockWpService.categoryList()).called(1);
      expect(result.hasError, isTrue);
      expect(result.error, equals(error));
    });

    test(
        'should call productList and categoryList methods and return error response (category list)',
        () async {
      final error = CommonResponseError<DefaultApiError>.undefinedError(
          Exception('testError'));
      when(() =>
          mockWpService.productListForSelfService(
              assortmentFile: ProductTestData.assortmentFile)).thenAnswer(
          (_) async => const ApiResponse.success(ProductTestData.productList));
      when(() => mockWpService.categoryList())
          .thenAnswer((_) async => ApiResponse.error(error));

      final result = await repo.getProductsForSelfServiceGroupByCategory(
          ProductTestData.assortmentFile);
      verify(() => mockWpService.productListForSelfService(
          assortmentFile: ProductTestData.assortmentFile)).called(1);
      verify(() => mockWpService.categoryList()).called(1);
      expect(result.hasError, isTrue);
      expect(result.error, equals(error));
    });
  });
}
