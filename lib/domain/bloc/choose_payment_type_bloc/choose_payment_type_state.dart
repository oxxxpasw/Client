part of 'choose_payment_type_bloc.dart';

@freezed
abstract class ChoosePaymentTypeState with _$ChoosePaymentTypeState {
  @Assert('status != ChoosePaymentTypeStatus.ready || paymentTypes != null')
  const factory ChoosePaymentTypeState({
    @Default(ChoosePaymentTypeStatus.init) ChoosePaymentTypeStatus status,
    List<PaymentType>? paymentTypes,
    PaymentType? selectedPaymentType,
    @Default(true) bool enabled,
  }) = _ChoosePaymentTypeState;
}

@freezed
sealed class ChoosePaymentTypeSr with _$ChoosePaymentTypeSr {
  const factory ChoosePaymentTypeSr.error(String error) =
      ChoosePaymentTypeErrorSr;

  const factory ChoosePaymentTypeSr.select(PaymentType? type) =
      ChoosePaymentTypeSelectSr;

  const factory ChoosePaymentTypeSr.changed(PaymentType? type) =
      ChoosePaymentTypeChangedSr;

  const factory ChoosePaymentTypeSr.openRegisterCard(Uri url) =
      ChoosePaymentTypeOpenRegisterCardSr;

  const factory ChoosePaymentTypeSr.cardDeactivated() =
      ChoosePaymentTypeCardDeactivatedSr;
}

enum ChoosePaymentTypeStatus {
  init,
  loading,
  ready,
}
