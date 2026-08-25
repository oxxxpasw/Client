import 'package:bloc_test/bloc_test.dart';
import 'package:sosedifedi/data/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/data/repository/order_history_repository.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/domain/bloc/order_list_bloc.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockOrderHistoryRepository extends Mock
    implements OrderHistoryRepository {}

class MockAnalystService extends Mock implements AnalystService {}

class FakeAcceptedOrder extends Fake implements AcceptedOrder {}

void main() {
  group('OrderListBloc', () {
    late OrderHistoryRepository orderHistoryRepository;
    late AnalystService analystService;
    late OrderListBloc orderListBloc;

    setUp(() {
      orderHistoryRepository = MockOrderHistoryRepository();
      analystService = MockAnalystService();
      orderListBloc = OrderListBloc(
        orderHistoryInteractor: orderHistoryRepository,
        analystService: analystService,
      );
    });

    tearDown(() {
      orderListBloc.close();
    });

    test('Начальное состояние должно быть OrderListInitState', () {
      expect(orderListBloc.state, isA<OrderListInitState>());
    });

    blocTest<OrderListBloc, OrderListState>(
      'Эмитит OrderListLoadingState и OrderListReadyState когда loadData завершается успешно',
      build: () {
        final orders = [
          FakeAcceptedOrder(),
          FakeAcceptedOrder(),
        ];
        when(() => orderHistoryRepository.orderList())
            .thenAnswer((_) async => ApiResponse.success(orders));
        return orderListBloc;
      },
      act: (bloc) => bloc.loadData(),
      expect: () => [
        isA<OrderListLoadingState>(),
        isA<OrderListReadyState>(),
      ],
      verify: (bloc) {
        expect(bloc.orders.length, 2);
      },
    );

    blocTest<OrderListBloc, OrderListState>(
      'Эмитит OrderListLoadingState и OrderListEmptyState когда loadData завершается успешно, но результат пустой',
      build: () {
        when(() => orderHistoryRepository.orderList())
            .thenAnswer((_) async => const ApiResponse.success([]));
        return orderListBloc;
      },
      act: (bloc) => bloc.loadData(),
      expect: () => [
        isA<OrderListLoadingState>(),
        isA<OrderListEmptyState>(),
      ],
    );

    blocTest<OrderListBloc, OrderListState>(
      'Эмитит OrderListLoadingState и OrderListErrorState когда orderHistoryRepository.orderList возвращает ApiResponse.error',
      build: () {
        when(() => orderHistoryRepository.orderList()).thenAnswer((_) async =>
            ApiResponse.error(CommonResponseError.undefinedError(Exception())));
        return orderListBloc;
      },
      act: (bloc) => bloc.loadData(),
      expect: () => [
        isA<OrderListLoadingState>(),
        isA<OrderListErrorState>(),
      ],
    );

    blocTest<OrderListBloc, OrderListState>(
      'Эмитит OrderListLoadingState и OrderListErrorState когда orderHistoryRepository.orderList выбрасывает ошибку',
      build: () {
        when(() => orderHistoryRepository.orderList()).thenThrow(Exception());
        when(() => analystService.error(any(), any())).thenReturn(null);
        return orderListBloc;
      },
      act: (bloc) => bloc.loadData(),
      expect: () => [
        isA<OrderListLoadingState>(),
        isA<OrderListErrorState>(),
      ],
      verify: (bloc) {
        verify(() => analystService.error(any(), any())).called(1);
      },
    );
  });
}
