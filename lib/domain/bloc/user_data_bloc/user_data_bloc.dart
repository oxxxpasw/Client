import 'dart:async';

import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/domain/models/user_data/user_data.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_data_bloc.freezed.dart';
part 'user_data_state.dart';

@injectable
class UserDataBloc extends SrCubit<UserDataState, UserDataSr> {
  UserDataBloc({
    required this.authRepository,
  }) : super(const UserDataState());

  @protected
  AuthRepository authRepository;

  Future<void> loadData() async {
    emit(
      state.copyWith(
        status: UserDataStatus.loading,
      ),
    );
    final response = await authRepository.getUserData();
    if (response.hasError) {
      return response.error.maybeMap<void>(
        orElse: () {
          addError(response.error);
          addSr(UserDataSr.error(ErrorMessages.getMessage(response.error)));
        },
        customError: (error) {
          //Если возвращает "user not found", пользователя нужно разавторизовать
          if (error.customError.code == '338') {
            unawaited(logout());
            return;
          }
          addError(response.error);
          addSr(UserDataSr.error(ErrorMessages.getMessage(response.error)));
        },
      );
    }
    emit(
      state.copyWith(
        userData: response.result,
        status: UserDataStatus.ready,
      ),
    );
  }

  Future<void> updateUserData(UserData userData) async {
    emit(state.copyWith(status: UserDataStatus.sending));
    if (state.userData?.birthDay != null) {
      userData = userData.copyWith(
        birthDay: null,
      );
    }
    final response = await authRepository.updateUserData(userData);
    if (response.hasError) {
      addError(response.error);
      addSr(UserDataSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    addSr(const UserDataSr.success());
  }

  Future<void> deleteAccount() async {
    authRepository.deleteAccount();
    addSr(const UserDataSr.logout());
  }

  Future<void> logout() async {
    authRepository.logout();
    addSr(const UserDataSr.logout());
  }
}
