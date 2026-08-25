part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;

  const factory AuthEvent.phoneConfirmPressed(Phone phone) =
      _PhoneConfirmPressed;

  const factory AuthEvent.codeConfirmPressed(String code) = _CodeConfirmPressed;

  const factory AuthEvent.resendCodePressed() = _ResendCodePressed;

  const factory AuthEvent.timerTick(Timer timer) = _TimerTick;

  const factory AuthEvent.withoutAuthPressed() = _WithoutAuthPressed;

  const factory AuthEvent.skipAuth() = _SkipAuth;

  const factory AuthEvent.onUserAgreementPressed() = _OnUserAgreementPressed;

  const factory AuthEvent.onPrivacyPolicyPressed() = _OnPrivacyPolicyPressed;
}
