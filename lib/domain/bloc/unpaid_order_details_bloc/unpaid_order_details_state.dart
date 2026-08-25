part of 'unpaid_order_details_bloc.dart';

@freezed
abstract class UnpaidOrderDetailsState with _$UnpaidOrderDetailsState {
  const factory UnpaidOrderDetailsState({
    @Default(UnpaidOrderDetailsStatus.init) UnpaidOrderDetailsStatus status,
    AcceptedOrder? order,
    PaymentType? paymentType,
  }) = _UnpaidOrderDetailsState;
}

@freezed
sealed class UnpaidOrderDetailsSr with _$UnpaidOrderDetailsSr {
  const factory UnpaidOrderDetailsSr.error(String error) = ErrorSr;

  const factory UnpaidOrderDetailsSr.processPayment(
    Payment payment,
    String storeId,
  ) = ProcessPaymentSr;

  const factory UnpaidOrderDetailsSr.successPayment() = SuccessPaymentSr;

  const factory UnpaidOrderDetailsSr.orderCanceled() = OrderCanceledSr;

  const factory UnpaidOrderDetailsSr.showOnboarding() = ShowOnboardingSr;

  const factory UnpaidOrderDetailsSr.exit() = ExitSr;

  const factory UnpaidOrderDetailsSr.showPaymentTypeList({
    PaymentType? selected,
    required String storeId,
  }) = ShowPaymentTypeList;
}

enum UnpaidOrderDetailsStatus {
  init,
  loading,
  creatingPayment,
  ready,
}
