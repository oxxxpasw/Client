part of 'fridge_qr_scanner_bloc.dart';

@freezed
abstract class FridgeQrScannerState with _$FridgeQrScannerState {
  const factory FridgeQrScannerState({
    @Default(FridgeQrScannerStatus.ready) FridgeQrScannerStatus status,
    @Default(FridgeScanQrBanner.openFridge) FridgeScanQrBanner banner,
    @Default(0) int fridgeTimerSecondsLeft,
    @Default(false) bool storeListOpened,
  }) = _FridgeQrScannerState;
}

enum FridgeQrScannerStatus { ready, loading }

enum FridgeScanQrBanner {
  openFridge,
  waitOpenFridge,
  fridgeOpened,
}

@freezed
abstract class FridgeQrScannerSr with _$FridgeQrScannerSr {
  const factory FridgeQrScannerSr.fridgeScanned() = _FridgeScannedSr;
  const factory FridgeQrScannerSr.error(String message) = _ErrorSr;

  const factory FridgeQrScannerSr.userBanned() = _UserBannedSr;

  const factory FridgeQrScannerSr.openStore({
    Store? store,
    String? fridgeId,
    BarcodeCapture? barcode,
  }) = _OpenStoreSr;

  const factory FridgeQrScannerSr.openCoffeeMachine({
    required Store store,
    required CoffeeMachine coffeeMachine,
  }) = _OpenCoffeeMachineSr;

  const factory FridgeQrScannerSr.showQrScannerOnboarding() =
      _ShowQrScannerOnboardingSr;

  const factory FridgeQrScannerSr.restoreCart() = _RestoreCartSr;

  const factory FridgeQrScannerSr.showStoreList([BarcodeCapture? barcode]) =
      _FridgeQrScannerShowStoreListSr;
}
