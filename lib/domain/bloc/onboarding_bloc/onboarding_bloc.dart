import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'onboarding_bloc.freezed.dart';
part 'onboarding_state.dart';

const _kOnboardingKey = 'OnboardingBloc_OnboardingKey';

@injectable
class OnboardingBloc extends SrCubit<OnboardingState, OnboardingSr> {
  OnboardingBloc({
    required this.prefers,
  }) : super(const OnboardingState());

  @protected
  final SharedPreferences prefers;

  Future<void> init() async {
    return;
    if (prefers.getBool(_kOnboardingKey) ?? false) {
      return;
    }
    addSr(const OnboardingSr.showOnboarding());
  }

  Future<bool> onboardingComplete() => prefers.setBool(_kOnboardingKey, true);
}
