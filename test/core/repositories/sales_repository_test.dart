import 'package:sosedifedi/data/models/sale/sale.dart';
import 'package:sosedifedi/data/repository/sales_repository.dart';
import 'package:sosedifedi/data/services/wp_service.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockWPService extends Mock implements WPService {}

void main() {
  late SalesRepository salesRepository;
  late WPService wpService;

  setUp(() {
    wpService = MockWPService();
    salesRepository = SalesRepository(wpService);
  });
  group('SalesRepository', () {
    group('getSales', () {
      test(
        'should return List<Sale> when ApiResponse is success',
        () async {
          // ARRANGE
          final DefaultResponse<List<Sale>> fakeResult = ApiResponse.success([
            Sale('sale1', 'description1', ['img1, img2']),
            Sale('sale1', 'description1', ['img1, img2']),
          ]);
          when(() => wpService.getSales()).thenAnswer((_) async => fakeResult);
          // ACT
          final result = await salesRepository.getSales();
          // ASSERT
          expect(result.isSuccess, isTrue);
          expect(result._result, isA<List<Sale>>());
          expect(result._result.length, 2);
        },
      );

      test(
        'should return List<Sale> even if response is empty list when ApiResponse is success',
        () async {
          // ARRANGE
          const DefaultResponse<List<Sale>> fakeResult =
              ApiResponse.success([]);
          when(() => wpService.getSales()).thenAnswer((_) async => fakeResult);
          // ACT
          final result = await salesRepository.getSales();
          // ASSERT
          expect(result.isSuccess, isTrue);
          expect(result._result, isA<List<Sale>>());
          expect(result._result.length, 0);
        },
      );

      test(
        'should return DefaultApiError when Client return an DefaultApiError',
        () async {
          final fakeError = CommonResponseError<DefaultApiError>.undefinedError(
              Exception('testException'));
          // ARRANGE
          final DefaultResponse<List<Sale>> fakeResult =
              ApiResponse.error(fakeError);
          when(() => wpService.getSales()).thenAnswer((_) async => fakeResult);
          // ACT
          final result = await salesRepository.getSales();
          // ASSERT
          expect(result.hasError, isTrue);
          expect(result.error, equals(fakeError));
        },
      );
    });
  });
}
