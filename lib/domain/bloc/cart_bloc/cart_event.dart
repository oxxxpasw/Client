part of 'cart_bloc.dart';

@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.initCart({
    Store? store,
    String? fridgeId,
    CoffeeMachine? coffeeMachine,
    @Default(false) bool shouldRestoreCart,
    BarcodeCapture? barcode,
  }) = _OnInitCart;

  const factory CartEvent.onDecrementPressed({
    required CartItem product,
  }) = _OnDecrementPressed;

  const factory CartEvent.onIncrementPressed({
    required CartItem product,
  }) = _OnIncrementPressed;

  const factory CartEvent.onDeletePressed({
    required CartItem product,
  }) = _OnDeletePressed;

  const factory CartEvent.onDetectQR({
    required BarcodeCapture barcode,
  }) = _OnDetectQR;

  const factory CartEvent.onInputQR({
    required String barcode,
  }) = _OnInputQR;

  const factory CartEvent.onCartUpdate({
    required Cart? cart,
  }) = _OnCartUpdate;

  const factory CartEvent.onCartUpdateError({
    required Object error,
  }) = _OnCartUpdateError;

  const factory CartEvent.onCreateOrder() = _OnCreateOrder;

  const factory CartEvent.onUseBonusesChange({
    required bool useBonuses,
  }) = _OnUseBonusesChange;

  const factory CartEvent.onReset() = _OnReset;

  const factory CartEvent.onCancelOrderPressed() = _OnCancelOrderPressed;

  const factory CartEvent.onSbpBankOpen() = _OnSbpBankOpen;

  const factory CartEvent.onSuccessPayment() = _OnSuccessPayment;

  const factory CartEvent.onFailurePayment() = _OnFailurePayment;

  const factory CartEvent.onUnfinishedPurchaseOnboardingComplete() =
      _OnUnfinishedPurchaseOnboardingComplete;

  const factory CartEvent.onAddMultipleProducts(Map<Product, double> products) =
      _OnAddMultipleProducts;

  const factory CartEvent.onStoreListButtonPressed() =
      _OnStoreListButtonPressed;

  const factory CartEvent.onChangePaymentTypePressed() =
      _OnChangePaymentTypePressed;

  const factory CartEvent.onPaymentTypeChanged(PaymentType? paymentType) =
      _OnPaymentTypeChanged;

  const factory CartEvent.onPaymentTypeSelected(PaymentType? paymentType) =
      _OnPaymentTypeSelected;

  const factory CartEvent.addExpiredBarcode(RawBarcode barcode) =
      _AddExpiredBarcode;

  const factory CartEvent.onReopenOpenFridge(fridgeId) = _OnReopenFridge;
}
