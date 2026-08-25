import 'package:sosedifedi/data/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/repository/order_history_repository.dart';
import 'package:sosedifedi/data/services/wp_service.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_data/auth_test_data.dart';
import '../test_data/order_test_data.dart';

class MockWPService extends Mock implements WPService {}

class MockAuthRepository extends Mock implements AuthRepository {}

class FakeAcceptedOrder extends Fake implements AcceptedOrder {}

void main() {
  late OrderHistoryRepositoryImpl orderHistoryRepository;
  late MockWPService mockWPService;
  late MockAuthRepository mockAuthRepository;

  setUpAll(() {
    registerFallbackValue(FakeAcceptedOrder());
  });

  setUp(() {
    mockWPService = MockWPService();
    mockAuthRepository = MockAuthRepository();
    orderHistoryRepository = OrderHistoryRepositoryImpl(
      wpService: mockWPService,
      authRepository: mockAuthRepository,
    );
  });

  group('orderById', () {
    test('orderById returns correct response', () async {
      final acceptedOrder = FakeAcceptedOrder();

      when(() => mockAuthRepository.token)
          .thenAnswer((_) async => AuthTestData.token);
      when(() => mockWPService.orderById(
              token: AuthTestData.token, id: OrderTestData.orderId))
          .thenAnswer((_) async => ApiResponse.success(acceptedOrder));

      final result =
          await orderHistoryRepository.orderById(OrderTestData.orderId);

      verify(() => mockAuthRepository.token).called(1);
      verify(() => mockWPService.orderById(
          token: AuthTestData.token, id: OrderTestData.orderId)).called(1);
      expect(result._result, equals(acceptedOrder));
    });

    test('orderById returns error if token is null', () async {
      when(() => mockAuthRepository.token).thenAnswer((_) async => null);

      final result = await orderHistoryRepository.orderById(1);

      verify(() => mockAuthRepository.token).called(1);
      expect(result.error,
          const CommonResponseError<DefaultApiError>.unAuthorized());
    });
  });

  group('orderList', () {
    test('orderList returns correct response', () async {
      final acceptedOrders = [FakeAcceptedOrder(), FakeAcceptedOrder()];
      when(() => mockAuthRepository.token)
          .thenAnswer((_) async => AuthTestData.token);
      when(() => mockWPService.orderList(token: AuthTestData.token))
          .thenAnswer((_) async => ApiResponse.success(acceptedOrders));
      final result = await orderHistoryRepository.orderList();
      verify(() => mockAuthRepository.token).called(1);
      verify(() => mockWPService.orderList(token: AuthTestData.token))
          .called(1);
      expect(result._result, equals(acceptedOrders));
    });

    test('orderList returns error if token is null', () async {
      when(() => mockAuthRepository.token).thenAnswer((_) async => null);

      final result = await orderHistoryRepository.orderList();

      verify(() => mockAuthRepository.token).called(1);
      expect(result.error,
          const CommonResponseError<DefaultApiError>.unAuthorized());
    });
  });
}
