part of 'splash_bloc.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.init() = SplashInitState;

  const factory SplashState.loading() = SplashLoadingState;
}

@freezed
sealed class SplashSr with _$SplashSr {
  const factory SplashSr.ready({
    String? initialDeepLink,
  }) = ReadySr;

  const factory SplashSr.error(String error) = ErrorSr;

  const factory SplashSr.needUpdate() = NeedUpdateSr;
}
