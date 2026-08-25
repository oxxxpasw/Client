import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/domain/models/phone/phone.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/router/guards/auth_guard.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/launch_url/launch_url_in_web_view.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends SrBloc<AuthEvent, AuthState, AuthSr> {
  AuthBloc({
    required AuthRepository authRepository,
    required this.analystService,
    required this.authGuard,
    required this.appEnvironment,
  })  : _authRepository = authRepository,
        super(const AuthState()) {
    on<_Started>(
      _init,
    );
    on<_ResendCodePressed>(
      _reSendCode,
      transformer: throttle(
        const Duration(
          seconds: 1,
        ),
      ),
    );
    on<_PhoneConfirmPressed>(
      _submitPhone,
      transformer: throttle(
        const Duration(
          seconds: 1,
        ),
      ),
    );
    on<_CodeConfirmPressed>(
      _submitCode,
      transformer: throttle(
        const Duration(
          seconds: 1,
        ),
      ),
    );
    on<_TimerTick>(_handleTimeout);

    on<_WithoutAuthPressed>(
      (event, emit) => addSr(const AuthSr.withoutAuth()),
      transformer: throttle(
        const Duration(
          seconds: 1,
        ),
      ),
    );

    on<_SkipAuth>(
      _skipAuth,
    );

    on<_OnUserAgreementPressed>(
      _onUserAgreementPressed,
    );

    on<_OnPrivacyPolicyPressed>(
      _onPrivacyPolicyPressed,
    );
  }

  final AuthRepository _authRepository;
  @protected
  final AnalystService analystService;
  @protected
  final AuthGuard authGuard;
  @protected
  final AppEnvironment appEnvironment;

  Timer? _timer;
  final _retrySubject = BehaviorSubject<int>();

  Stream<int> get _retryStream => _retrySubject.stream;
  final int _sendCodeTimeOut = 60;

  _init(_Started event, Emitter<AuthState> emit) async {
    addSr(const AuthSr.loading());
    _retrySubject.sink.add(_sendCodeTimeOut);
    emit(
      state.copyWith(
        retryTime: _retryStream,
        status: AuthStatus.ready,
      ),
    );
    final token = await _authRepository.checkToken();
    if (token != null) {
      addSr(const AuthSr.authenticated());
      return;
    }
    addSr(const AuthSr.ready());
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }

  EventTransformer<T> throttle<T>(Duration duration) {
    return (events, mapper) => events.throttleTime(duration).flatMap(mapper);
  }

  _reSendCode(_ResendCodePressed event, Emitter<AuthState> emit) async {
    try {
      final phone = state.phone?.e164;
      if (phone == null) {
        return;
      }
      final result = await _authRepository.submitPhone(phone);
      if (result.hasError) {
        addSr(AuthSr.error(ErrorMessages.getMessage(result.error)));
        addError(result.error);
        return;
      }
      _scheduleTimeout();
    } catch (e) {
      addSr(AuthSr.error(e.toString()));
      addError(e, e is Error ? e.stackTrace : null);
    }
  }

  Future<void> _submitPhone(
      _PhoneConfirmPressed event, Emitter<AuthState> emit) async {
    try {
      emit(
        state.copyWith(
          phone: event.phone,
          status: AuthStatus.loading,
        ),
      );
      final phone = event.phone.e164;
      if (phone == null) {
        return;
      }
      final result = await _authRepository.submitPhone(phone);
      if (result.hasError) {
        addSr(AuthSr.error(ErrorMessages.getMessage(result.error)));
        addError(result.error);
        return;
      }
      _scheduleTimeout();
      addSr(const AuthSr.codeSent());
    } catch (e) {
      addSr(AuthSr.error(e.toString()));
      addError(e, e is Error ? e.stackTrace : null);
    } finally {
      emit(
        state.copyWith(
          status: AuthStatus.ready,
        ),
      );
    }
  }

  Future<void> _submitCode(
      _CodeConfirmPressed event, Emitter<AuthState> emit) async {
    try {
      final phone = state.phone?.e164;
      if (phone == null || event.code.length != 4) {
        return;
      }
      emit(
        state.copyWith(
          status: AuthStatus.loading,
        ),
      );
      final response = await _authRepository.submitCode(
        phone,
        event.code,
      );
      if (response.hasError) {
        //Api возвращает код 230 когда код не найден.
        if (response.error.safeCustom != null &&
            response.error.safeCustom!.code == '230') {
          emit(state.copyWith(
            codeValid: false,
            status: AuthStatus.ready,
          ));
          return;
        }
        addSr(AuthSr.error(ErrorMessages.getMessage(response.error)));
        addError(response.error);
        return;
      }
      await _authRepository.saveTempToken();
      addSr(const AuthSr.authenticated());
      analystService.auth(
        phone: state.phone?.e164,
        success: true,
      );
    } catch (e) {
      analystService.auth(
        phone: state.phone?.e164,
        success: false,
        message: e.toString(),
      );
      emit(state.copyWith(
        codeValid: false,
        status: AuthStatus.ready,
      ));
      addSr(AuthSr.error(e.toString()));
      addError(e, e is Error ? e.stackTrace : null);
    }
  }

  void _scheduleTimeout() {
    _timer?.cancel();
    _retrySubject.sink.add(_sendCodeTimeOut);
    _timer = Timer.periodic(
        const Duration(seconds: 1), (timer) => add(AuthEvent.timerTick(timer)));
  }

  void _handleTimeout(_TimerTick event, Emitter<AuthState> emit) {
    _retrySubject.sink.add(_sendCodeTimeOut - event.timer.tick);
    if (_retrySubject.value < 0) {
      event.timer.cancel();
      _retrySubject.sink.add(0);
    }
  }

  Future<void> _skipAuth(
    _SkipAuth event,
    Emitter<AuthState> emit,
  ) async {
    if (await authGuard.skipAuth()) {
      addSr(const AuthSr.authenticated());
    }
  }

  Future<void> _onUserAgreementPressed(
    _OnUserAgreementPressed event,
    Emitter<AuthState> emit,
  ) =>
      launchUrlInBrowser(appEnvironment.legalInfo.userAgreementUrl);

  Future<void> _onPrivacyPolicyPressed(
    _OnPrivacyPolicyPressed event,
    Emitter<AuthState> emit,
  ) =>
      launchUrlInBrowser(appEnvironment.legalInfo.privacyPolicyUrl);

  @override
  Future<void> close() async {
    super.close();
    _timer?.cancel();
    _retrySubject.close();
  }
}
