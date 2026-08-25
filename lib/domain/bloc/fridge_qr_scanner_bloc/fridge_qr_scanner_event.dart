part of 'fridge_qr_scanner_bloc.dart';

@freezed
abstract class FridgeQrScannerEvent with _$FridgeQrScannerEvent {
  const factory FridgeQrScannerEvent.onInit() = _OnInit;

  const factory FridgeQrScannerEvent.onScanQr(BarcodeCapture data) = OnScanQr;

  const factory FridgeQrScannerEvent.onOpenFridge(String fridgeId) =
      OnOpenFridge;

  const factory FridgeQrScannerEvent.onReopenOpenFridge([String? fridgeId]) =
      OnReopenOpenFridge;

  const factory FridgeQrScannerEvent.onFridgeTimerTick({
    required int secondsLeft,
  }) = _OnFridgeTimerTick;

  const factory FridgeQrScannerEvent.onHaveProductsPressed() =
      _OnHaveProductsPressed;

  const factory FridgeQrScannerEvent.onCartOpened() = _OnCartOpened;

  const factory FridgeQrScannerEvent.onQrScannerOnboardingComplete() =
      _OnQrScannerOnboardingComplete;

  const factory FridgeQrScannerEvent.storeSelected({
    Store? store,
    BarcodeCapture? barcode,
  }) = _FridgeQrScannerStoreSelected;
}
