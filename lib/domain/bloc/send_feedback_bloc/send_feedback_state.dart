part of 'send_feedback_bloc.dart';

@freezed
abstract class SendFeedbackState with _$SendFeedbackState {
  const factory SendFeedbackState() = _SendFeedbackState;
}

@freezed
sealed class SendFeedbackSr with _$SendFeedbackSr {
  const factory SendFeedbackSr.success() = SendFeedbackSuccessSr;
}
