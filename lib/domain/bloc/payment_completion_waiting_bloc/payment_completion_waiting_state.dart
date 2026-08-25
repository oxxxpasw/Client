part of 'payment_completion_waiting_bloc.dart';

@freezed
abstract class PaymentCompletionWaitingState with _$PaymentCompletionWaitingState {
  const factory PaymentCompletionWaitingState() =
      _PaymentCompletionWaitingState;
}

@freezed
sealed class PaymentCompletionWaitingSr with _$PaymentCompletionWaitingSr {
  const factory PaymentCompletionWaitingSr.error(String error) =
      PaymentCompletionWaitingErrorSr;

  const factory PaymentCompletionWaitingSr.success() =
      PaymentCompletionWaitingSuccessr;

  const factory PaymentCompletionWaitingSr.failed() =
      PaymentCompletionWaitingFailedSr;
}
