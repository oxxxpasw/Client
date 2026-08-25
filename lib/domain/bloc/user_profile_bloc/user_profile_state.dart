part of 'user_profile_bloc.dart';

@freezed
abstract class UserProfileState with _$UserProfileState {
  const factory UserProfileState({
    @Default(UserProfileStatus.init) UserProfileStatus status,
    @Default(false) bool isAuthorized,
  }) = _UserProfileState;
}

enum UserProfileStatus {
  init,
  loading,
  ready,
}
