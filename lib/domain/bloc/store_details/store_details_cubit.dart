import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/bonus_details_by_store/bonus_details_by_store.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/repository/customer_account_repository.dart';

part 'store_details_state.dart';
part 'store_details_cubit.freezed.dart';

@injectable
class StoreDetailsCubit extends Cubit<StoreDetailsState> {
  StoreDetailsCubit({
    required this.customerRepository,
    @factoryParam required this.store,
  }) : super(const StoreDetailsState());

  @protected
  final CustomerAccountRepository customerRepository;
  @protected
  final Store store;

  Future<void> loadData() async {
    emit(
      state.copyWith(
        status: StoreDetailsStateStatus.loading,
        store: store,
      ),
    );

    final response =
        await customerRepository.getAccountBonusesByStore(storeId: store.id);

    emit(
      state.copyWith(
        status: StoreDetailsStateStatus.ready,
      ),
    );

    if (response.isSuccess) {
      emit(
        state.copyWith(
          bonusDetails: response.result,
        ),
      );
    }
  }
}
