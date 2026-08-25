part of 'last_purchase_bloc.dart';

@freezed
abstract class LastPurchaseState with _$LastPurchaseState {
  const LastPurchaseState._();

  const factory LastPurchaseState({
    UnfinishedPurchase? unfinishedPurchase,
    AcceptedOrder? unpaidOrder,
    @Default(false) bool showFeedbackBanner,
  }) = _LastPurchaseState;

  bool get hasPurchase => unfinishedPurchase != null || unpaidOrder != null;
}

@freezed
sealed class LastPurchaseSr with _$LastPurchaseSr {
  const factory LastPurchaseSr.openUnpaidOrderDetails() =
      OpenUnpaidOrderDetailsSr;

  const factory LastPurchaseSr.openFridgeQrScanner() = OpenFridgeQrScanner;
}

@freezed
sealed class UnfinishedPurchase with _$UnfinishedPurchase {
  const factory UnfinishedPurchase({
    @Default(false) bool hasProducts,
    @Default(0.0) summ,
    @Default("BYN") currencySymbol,
  }) = _UnfinishedPurchase;
}
