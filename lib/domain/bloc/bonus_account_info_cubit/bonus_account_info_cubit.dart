import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/account_transaction/account_transaction.dart';
import 'package:sosedifedi/data/repository/customer_account_repository.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'bonus_account_info_state.dart';
part 'bonus_account_info_cubit.freezed.dart';

@injectable
class BonusAccountInfoCubit
    extends SrCubit<BonusAccountInfoState, BonusAccountInfoSr> {
  BonusAccountInfoCubit({
    required this.customerRepository,
    @factoryParam required this.programId,
  }) : super(const BonusAccountInfoState());

  @protected
  final CustomerAccountRepository customerRepository;
  @protected
  final String programId;

  Future<void> loadData() async {
    emit(state.copyWith(status: BonusAccountInfoStateStatus.loading));

    final response =
        await customerRepository.getAccountTransactions(programId: programId);

    if (response.hasError) {
      addError(response.error);
      addSr(BonusAccountInfoSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    emit(state.copyWith(
      status: BonusAccountInfoStateStatus.ready,
      transactions: response.result,
    ));
  }
}
