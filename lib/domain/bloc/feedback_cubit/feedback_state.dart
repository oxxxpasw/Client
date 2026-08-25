part of 'feedback_cubit.dart';

enum FeedbackType {
  purchase,
  store,
}

@freezed
abstract class FeedbackState with _$FeedbackState {
  const factory FeedbackState({
    required FeedbackType type,
    @Default(FeedbackStateStatus.init) FeedbackStateStatus status,
  }) = _FeedbackState;
}

@freezed
sealed class FeedbackSr with _$FeedbackSr {
  const factory FeedbackSr.showFormForStore(Store store) =
      FeedbackShowFormForStoreSr;

  const factory FeedbackSr.showFormForPurchase(AcceptedOrder order) =
      FeedbackShowFormForPurchaseSr;

  const factory FeedbackSr.showStoreList() = FeedbackShowStoreListSr;

  const factory FeedbackSr.showOrderList() = FeedbackShowOrderListSr;

  const factory FeedbackSr.showQrScanner() = FeedbackShowQrScannerSr;

  const factory FeedbackSr.success() = FeedbackSuccessSr;

  const factory FeedbackSr.error(String error) = FeedbackErrorSr;
}

enum FeedbackStateStatus {
  init,
  ready,
}
