import 'package:sosedifedi/data/models/category/category.dart';
import 'package:sosedifedi/data/repository/categories_repository.dart';
import 'package:sosedifedi/data/services/wp_service.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockWPService extends Mock implements WPService {}

void main() {
  late CategoriesRepository categoriesRepository;
  late WPService wpService;

  setUp(() {
    wpService = MockWPService();
    categoriesRepository = CategoriesRepository(wpService: wpService);
  });
  group('CategoriesRepository', () {
    group('getCategories', () {
      test(
        'should return List<CategoryTreeItem> when ApiResponse is success',
        () async {
          // ARRANGE
          const DefaultResponse<List<CategoryTreeItem>> fakeResult =
              ApiResponse.success([
            CategoryTreeItem(subCats: [], labelKey: 'cat1', count: null, id: 1),
            CategoryTreeItem(subCats: [], labelKey: 'cat2', count: null, id: 2),
          ]);
          when(() => wpService.categoryList())
              .thenAnswer((_) async => fakeResult);
          // ACT
          final result = await categoriesRepository.getCategories();
          // ASSERT
          expect(result, isA<List<CategoryTreeItem>>());
          expect(result.length, 2);
        },
      );

      test(
        'should return List<CategoryTreeItem> even if response is empty list when ApiResponse is success',
        () async {
          // ARRANGE
          const DefaultResponse<List<CategoryTreeItem>> fakeResult =
              ApiResponse.success([]);
          when(() => wpService.categoryList())
              .thenAnswer((_) async => fakeResult);
          // ACT
          final result = await categoriesRepository.getCategories();
          // ASSERT
          expect(result, isA<List<CategoryTreeItem>>());
          expect(result.length, 0);
        },
      );

      test(
        'should throw Exception when Client return an DefaultApiError',
        () async {
          final fakeError = CommonResponseError<DefaultApiError>.undefinedError(
              Exception('testException'));
          // ARRANGE
          final DefaultResponse<List<CategoryTreeItem>> fakeResult =
              ApiResponse.error(fakeError);
          when(() => wpService.categoryList())
              .thenAnswer((_) async => fakeResult);
          // ASSERT
          expect(
            () async => await categoriesRepository.getCategories(),
            throwsA(
              isA<Exception>(),
            ),
          );
        },
      );
    });
  });
}
