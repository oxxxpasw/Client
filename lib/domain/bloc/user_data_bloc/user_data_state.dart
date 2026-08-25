part of 'user_data_bloc.dart';

@freezed
abstract class UserDataState with _$UserDataState {
  @Assert(
      '(status != UserDataStatus.ready && status != UserDataStatus.sending) || userData != null')
  const factory UserDataState({
    @Default(UserDataStatus.init) UserDataStatus status,
    UserData? userData,
  }) = _UserDataState;
}

@freezed
abstract class UserDataSr with _$UserDataSr {
  const factory UserDataSr.error(String error) = _ErrorSr;

  const factory UserDataSr.success() = _SuccessSr;

  const factory UserDataSr.logout() = _LogoutSr;
}

enum UserDataStatus {
  init,
  loading,
  ready,
  sending,
}
