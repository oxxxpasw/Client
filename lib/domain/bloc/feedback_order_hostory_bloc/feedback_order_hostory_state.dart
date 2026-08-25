part of 'feedback_order_hostory_bloc.dart';

@freezed
abstract class FeedbackOrderHistoryState with _$FeedbackOrderHistoryState {
  const factory FeedbackOrderHistoryState({
    @Default(FeedbackOrderHistoryStatus.init) FeedbackOrderHistoryStatus status,
    @Default([]) List<AcceptedOrder> acceptedOrders,
  }) = _FeedbackOrderHistoryState;
}

@freezed
sealed class FeedbackOrderHistorySr with _$FeedbackOrderHistorySr {
  const factory FeedbackOrderHistorySr.error(String error) =
      FeedbackOrderHistoryErrorSr;

  const factory FeedbackOrderHistorySr.selected(AcceptedOrder order) =
      FeedbackOrderHistorySelectedSr;
}

enum FeedbackOrderHistoryStatus {
  init,
  loading,
  ready,
}
