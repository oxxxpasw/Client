part of 'feedback_tab_cubit.dart';

@freezed
abstract class FeedbackTabState with _$FeedbackTabState {
  const factory FeedbackTabState({
    @Default(FeedbackTabStatus.init) FeedbackTabStatus status,
  }) = _FeedbackTabState;
}

@freezed
sealed class FeedbackTabSr with _$FeedbackTabSr {
  const factory FeedbackTabSr.openFeedbackScreen(FeedbackType type) =
      FeedbackTabOpenFeedbackScreenSr;
}

enum FeedbackTabStatus {
  init,
  loading,
  authorized,
  unauthorized,
}
