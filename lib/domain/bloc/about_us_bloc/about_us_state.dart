part of 'about_us_bloc.dart';

@freezed
abstract class AboutUsState with _$AboutUsState {
  const factory AboutUsState({
    @Default(AboutUsStatus.init) AboutUsStatus status,
    Promotion? data,
  }) = _AboutUsState;
}

@freezed
abstract class AboutUsSr with _$AboutUsSr {
  const factory AboutUsSr.error(String error) = _ErrorSr;
}

enum AboutUsStatus {
  init,
  loading,
  ready,
}
