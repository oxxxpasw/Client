part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    Phone? phone,
    @Default(true) bool codeValid,
    Stream<int>? retryTime,
    @Default(AuthStatus.init) AuthStatus status,
  }) = _AuthState;
}

enum AuthStatus {
  init,
  loading,
  ready,
}

@freezed
abstract class AuthSr with _$AuthSr {
  const factory AuthSr.loading() = AuthentionLoadingSr;

  const factory AuthSr.ready() = AuthentionReadySr;

  const factory AuthSr.codeSent() = CodeSentSr;

  const factory AuthSr.authenticated() = AuthenticatedSr;

  const factory AuthSr.error(String error) = AuthentionErrorSr;

  const factory AuthSr.withoutAuth() = _WithoutAuthSr;
}
