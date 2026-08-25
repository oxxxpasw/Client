part of 'cart_bloc.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState({
    @Default(CartStateStatus.init) CartStateStatus status,
    @Default(ScannerStatus.ready) ScannerStatus scannerStatus,
    @Default([]) List<CartItem> products,
    double? bonusesToSpent,
    @Default(0.0) double orderPrice,
    @Default('BYN') String currencySymbol,
    @Default(false) bool canUseBonuses,
    @Default(false) bool validToOrder,
    @Default(false) bool validToChoosePayment,
    @Default(false) bool useBonuses,
    @Default(false) bool isCartRestored,
    PaymentType? paymentType,
    @Default(false) bool hasPaymentType,
    Store? store,
    String? fridgeId,
    @Default(false) bool isFullBonusPayment,
    @Default(true) bool canChangeBonuses,
  }) = _CartState;
}

enum CartStateStatus {
  init,
  loading,
  ready,
  updating,
  orderSending,
}

enum ScannerStatus {
  ready,
  loading,
}

@freezed
sealed class CartSr with _$CartSr {
  const factory CartSr.newProductAdded([Product? product]) = NewProductAddedSr;

  const factory CartSr.storeNotSelected() = StoreNotSelected;

  const factory CartSr.error(String error) = ErrorSr;

  const factory CartSr.submit({
    required OrderModel order,
  }) = SubmitSr;

  const factory CartSr.cancelPayment() = CancelPaymentSr;

  const factory CartSr.processPayment(
    Payment payment,
    String storeId,
  ) = ProcessPaymentSr;

  const factory CartSr.barcodeNotFound() = BarcodeNotFoundSr;

  const factory CartSr.showUnfinishedPurchaseOnboarding() =
      ShowUnfinishedPurchaseOnboarding;

  const factory CartSr.showStoreList() = _ShowStoreListSr;

  const factory CartSr.showPaymentTypeList({
    PaymentType? selected,
    required String storeId,
  }) = _ShowPaymentTypeList;

  const factory CartSr.showExpiredBarcodeAdding(RawBarcode barcode) =
      _ShowExpiredBarcodeAddingSr;
}
