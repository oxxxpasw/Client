import 'package:sosedifedi/data/mappers/order_mapper.dart';
import 'package:sosedifedi/data/models/order/order_response/order_response.dart';
import 'package:sosedifedi/data/repository/order_repository.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/data/services/wp_service.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_data/auth_test_data.dart';
import '../test_data/order_test_data.dart';

class MockWPService extends Mock implements WPService {}

class MockOrderModelMapper extends Mock implements OrderModelMapper {}

class MockAnalystService extends Mock implements AnalystService {}

class FakeOrderModel extends Fake implements OrderModel {}

class FakeOrderResponse extends Fake implements OrderResponse {}

main() {
  late OrderRepository orderRepository;
  late OrderModelMapper orderModelMapper;
  late WPService wpService;
  late AnalystService analystService;
  setUpAll(() {
    registerFallbackValue(FakeOrderModel());
    registerFallbackValue(FakeOrderResponse());
  });

  setUp(() {
    orderModelMapper = MockOrderModelMapper();
    analystService = MockAnalystService();
    wpService = MockWPService();
    orderRepository = OrderRepository(
      wpService: wpService,
      analystService: analystService,
      orderModelMapper: orderModelMapper,
    );
  });
  group('OrderRepository', () {
    group('createOrder', () {
      test('should return order ID when ApiResponse is success', () async {
        final model = FakeOrderModel();
        final response = FakeOrderResponse();
        final token = AuthTestData.token;
        when(() => analystService.createOrder(response))
            .thenAnswer((_) => SynchronousFuture(null));
        when(() => orderModelMapper.mapToOrderResponse(model, token))
            .thenReturn(response);
        when(
          () => wpService.createOrder(response, token),
        ).thenAnswer(
          (_) async => const ApiResponse.success(OrderTestData.orderId),
        );
        final result = await orderRepository.createOrder(model, token);

        expect(result.isSuccess, isTrue);
        expect(result.result, equals(OrderTestData.orderId));
        verify(() => analystService.createOrder(response)).called(1);
      });

      test('should return DefaultApiError when ApiResponse has error',
          () async {
        final model = FakeOrderModel();
        final response = FakeOrderResponse();
        final token = AuthTestData.token;
        when(() => analystService.createOrder(response))
            .thenAnswer((_) => SynchronousFuture(null));
        when(() => orderModelMapper.mapToOrderResponse(model, token))
            .thenReturn(response);
        when(
          () => wpService.createOrder(response, token),
        ).thenAnswer(
          (_) async => ApiResponse.error(
            CommonResponseError.undefinedError(
              Exception('testException'),
            ),
          ),
        );
        final result = await orderRepository.createOrder(model, token);

        expect(result.hasError, isTrue);
        verify(() => analystService.createOrder(response)).called(1);
      });
    });
  });
}
