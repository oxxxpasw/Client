part of 'review_bloc.dart';

@freezed
abstract class ReviewState with _$ReviewState {
  const factory ReviewState({
    @Default(ReviewStateStatus.init) ReviewStateStatus status,
    Store? store,
    AcceptedOrder? order,
    Product? product,
  }) = _ReviewState;
}

enum ReviewStateStatus {
  init,
  ready,
  loading,
}

@freezed
sealed class ReviewSr with _$ReviewSr {
  const factory ReviewSr.success() = ReviewSuccessSr;
  const factory ReviewSr.error(String message) = ReviewErrorSr;
}
