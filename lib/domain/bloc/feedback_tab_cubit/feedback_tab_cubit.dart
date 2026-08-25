import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/auth_data/auth_data.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/domain/bloc/feedback_cubit/feedback_cubit.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'feedback_tab_state.dart';
part 'feedback_tab_cubit.freezed.dart';

@injectable
class FeedbackTabCubit extends SrCubit<FeedbackTabState, FeedbackTabSr> {
  FeedbackTabCubit({
    required this.authRepository,
  }) : super(const FeedbackTabState()) {
    _subscription = authRepository.tokenStream.listen(_onAuthEvent);
  }

  @protected
  final AuthRepository authRepository;

  StreamSubscription<AuthData?>? _subscription;

  void _onAuthEvent(AuthData? data) {
    emit(
      state.copyWith(
        status: data != null
            ? FeedbackTabStatus.authorized
            : FeedbackTabStatus.unauthorized,
      ),
    );
  }

  void onFeedbackButtonPressed(FeedbackType type) {
    addSr(FeedbackTabSr.openFeedbackScreen(type));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
