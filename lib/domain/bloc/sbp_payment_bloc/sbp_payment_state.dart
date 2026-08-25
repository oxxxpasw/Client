part of 'sbp_payment_bloc.dart';

@freezed
abstract class SBPPaymentState with _$SBPPaymentState {
  @Assert(
      'status == SBPPaymentStateStatus.init || status == SBPPaymentStateStatus.loading || availableBanks != null')
  const factory SBPPaymentState({
    @Default(SBPPaymentStateStatus.init) SBPPaymentStateStatus status,
    @Default(false) bool isRedirected,
    List<SbpBank>? availableBanks,
  }) = _SBPPaymentState;
}

enum SBPPaymentStateStatus {
  init,
  loading,
  ready,
  wait,
}

@freezed
abstract class SBPPaymentSr with _$SBPPaymentSr {
  const factory SBPPaymentSr.error(String error) = _ErrorSr;

  const factory SBPPaymentSr.successPayment() = _SuccessSBPPaymentSr;

  const factory SBPPaymentSr.failedPayment() = _FailedSBPPaymentSr;

  const factory SBPPaymentSr.bankOpened() = _BankOpenedSr;

  const factory SBPPaymentSr.bankAppNotInstalled() = _BankAppNotInstalled;
}
