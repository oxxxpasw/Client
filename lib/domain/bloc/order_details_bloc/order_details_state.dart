part of 'order_details_bloc.dart';

@freezed
abstract class OrderDetailsState with _$OrderDetailsState {
  const factory OrderDetailsState({
    @Default(OrderDetailsStatus.init) OrderDetailsStatus status,
    AcceptedOrder? order,
    @Default(false) bool isUnpaidOrder,
    PaymentType? paymentType,
  }) = _OrderDetailsState;
}

@freezed
abstract class OrderDetailsSr with _$OrderDetailsSr {
  const factory OrderDetailsSr.error(String error) = _ErrorSr;

  const factory OrderDetailsSr.receiptNotReady() = _ReceiptNotReadySr;

  const factory OrderDetailsSr.processPayment(
    Payment payment,
    String storeId,
  ) = ProcessPaymentSr;

  const factory OrderDetailsSr.showPaymentTypeList({
    PaymentType? selected,
    required String storeId,
  }) = ShowPaymentTypeList;

  const factory OrderDetailsSr.showCreateReview(AcceptedOrder order) =
      ShowCreateReview;
}

enum OrderDetailsStatus {
  init,
  loading,
  creatingPayment,
  ready,
}
