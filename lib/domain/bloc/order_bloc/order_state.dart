part of 'order_bloc.dart';

enum OrderCreateStatus { init, ready, sending, submit }

@Freezed(equal: false)
abstract class OrderState with _$OrderState {
  @Assert('order != null || status == OrderCreateStatus.init')
  const factory OrderState({
    OrderModel? order,
    @Default(OrderCreateStatus.init) OrderCreateStatus status,
    @Default(false) bool isValid,
  }) = _OrderState;
}

@freezed
abstract class OrderSr with _$OrderSr {
  const OrderSr._();

  const factory OrderSr.loading() = OrderLoadingSr;

  const factory OrderSr.needUserData() = OrderNeedUserDataSr;

  const factory OrderSr.needOrderData({
    required OrderModel order,
  }) = NeedOrderDataSr;

  const factory OrderSr.submit({
    required OrderModel order,
    PaymentResponse? payment,
  }) = OrderSubmitSr;

  const factory OrderSr.processPayment(
    Uri paymentUrl, {
    @Default(false) bool isSBP,
  }) = OrderProcessPaymentSr;

  const factory OrderSr.error(String error) = OrderErrorSr;
}
