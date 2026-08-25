part of 'onboarding_bloc.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState() = _OnboardingState;
}

@freezed
abstract class OnboardingSr with _$OnboardingSr {
  const factory OnboardingSr.showOnboarding() = _ShowOnboardingSr;
}
