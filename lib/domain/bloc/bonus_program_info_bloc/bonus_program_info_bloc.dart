import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/bonus_card/bonus_card_model/bonus_card_model.dart';
import 'package:sosedifedi/data/repository/customer_account_repository.dart';
import 'package:sosedifedi/domain/models/customer_account_model/customer_account_model.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'bonus_program_info_bloc.freezed.dart';
part 'bonus_program_info_state.dart';

@injectable
class BonusProgramInfoBloc
    extends SrCubit<BonusProgramInfoState, BonusProgramInfoSr> {
  BonusProgramInfoBloc({
    required this.customerAccountRepository,
  }) : super(const BonusProgramInfoState()) {
    _subscription = customerAccountRepository.customerAccount
        .listen(_onEvent, onError: _onError);
  }

  @protected
  final CustomerAccountRepository customerAccountRepository;
  StreamSubscription? _subscription;

  Future<void> _onEvent(CustomerAccountModel? customerAccount) async {
    emit(
      state.copyWith(
        bonusCards: customerAccount?.cards ?? [],
        status: BonusProgramInfoStatus.ready,
      ),
    );
  }

  Future<void> _onError(Object error) async {
    addError(error);
    addSr(
      BonusProgramInfoSr.error(
        error is CommonResponseError
            ? ErrorMessages.getMessage(error)
            : ErrorMessages.undefinedError,
      ),
    );
  }

  Future<void> refresh() => customerAccountRepository.refreshCustomerAccount();

  void onAccountPressed(BonusProgramAccount account) {
    if (account.comment?.isEmpty ?? true) {
      return;
    }
    addSr(BonusProgramInfoSr.showAccountDetails(account));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
