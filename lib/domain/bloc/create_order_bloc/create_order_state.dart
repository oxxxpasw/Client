part of 'create_order_bloc.dart';

@freezed
abstract class CreateOrderState with _$CreateOrderState {
  const factory CreateOrderState({
    required int pageIndex,
    required int pageCount,
  }) = _CreateOrderState;
}

@freezed
sealed class CreateOrderSr with _$CreateOrderSr {
  const factory CreateOrderSr.openDrinkListPage() =
      CreateOrderOpenDrinkListPage;

  const factory CreateOrderSr.openScanner() = CreateOrderOpenScannerPage;

  const factory CreateOrderSr.openCart() = CreateOrderOpenCartPage;

  const factory CreateOrderSr.openPaymentTypeList() =
      CreateOrderOpenPaymentTypeList;

  const factory CreateOrderSr.processPayment(
    Payment payment,
    String storeId,
  ) = CreateOrderProcessPaymentSr;

  const factory CreateOrderSr.waitPayment(
    Payment payment,
    String storeId,
  ) = CreateOrderWaitPaymentSr;

  const factory CreateOrderSr.openCoffeeProcessing() =
      CreateOrderOpenCoffeeProcessingSr;

  const factory CreateOrderSr.openSuccessPage() = CreateOrderOpenSuccessSr;
}
