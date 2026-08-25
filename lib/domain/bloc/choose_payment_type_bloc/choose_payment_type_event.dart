part of 'choose_payment_type_bloc.dart';

@freezed
abstract class ChoosePaymentTypeEvent with _$ChoosePaymentTypeEvent {
  const factory ChoosePaymentTypeEvent.init() = _Init;

  const factory ChoosePaymentTypeEvent.paymentTypePressed(
    PaymentType type,
  ) = _PaymentTypePressed;

  const factory ChoosePaymentTypeEvent.submitPressed() = _SubmitPressed;

  const factory ChoosePaymentTypeEvent.setStatus(bool enabled) = _SetStatus;

  const factory ChoosePaymentTypeEvent.deactivateCardPressed(
    LinkedCardPaymentType type,
  ) = _DeactivateCardPressed;
}
