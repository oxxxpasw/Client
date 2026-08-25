part of 'order_history_bloc.dart';

@freezed
abstract class OrderHistoryState with _$OrderHistoryState {
  const factory OrderHistoryState({
    @Default(OrderHistoryStatus.init) OrderHistoryStatus status,
    @Default([]) List<AcceptedOrder> acceptedOrders,
  }) = _OrderHistoryState;
}

@freezed
sealed class OrderHistorySr with _$OrderHistorySr {
  const factory OrderHistorySr.error(String error) = OrderHistoryErrorSr;

  const factory OrderHistorySr.selected(AcceptedOrder order) =
      OrderHistorySelectedSr;
}

enum OrderHistoryStatus {
  init,
  loading,
  ready,
}
