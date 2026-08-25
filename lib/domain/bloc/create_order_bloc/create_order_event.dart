part of 'create_order_bloc.dart';

@freezed
abstract class CreateOrderEvent with _$CreateOrderEvent {
  const factory CreateOrderEvent.init() = _Init;

  const factory CreateOrderEvent.nextPagePressed() = _NextPagePressed;

  const factory CreateOrderEvent.scanAgainPressed() = _ScanAgainPressed;

  const factory CreateOrderEvent.processPaymentPressed(PaymentType type) =
      _ProcessPaymentPressed;

  const factory CreateOrderEvent.successPayment(
    Payment payment,
    String storeId,
  ) = _SuccessPayment;

  const factory CreateOrderEvent.errorPayment() = _ErrorPayment;
}
