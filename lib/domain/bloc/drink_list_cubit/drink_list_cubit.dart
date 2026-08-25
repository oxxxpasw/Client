import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/repository/assortment_repository.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'drink_list_state.dart';
part 'drink_list_cubit.freezed.dart';

@injectable
class DrinkListCubit extends SrCubit<DrinkListState, DrinkListSr> {
  DrinkListCubit({
    required this.assortmentRepository,
    @factoryParam required this.storeFile,
  }) : super(const DrinkListState());

  @protected
  final AssortmentRepository assortmentRepository;
  @protected
  final String storeFile;

  Future<void> loadData() async {
    emit(state.copyWith(status: DrinkListStatus.loading));
    final response = await assortmentRepository.getProductGroups(
      assortmentFile: storeFile,
    );

    if (response.hasError) {
      return addError(response.error);
    }
    final groups = response.result;

    emit(
      state.copyWith(
        status: DrinkListStatus.ready,
        drinks:
            groups.expand<Product>((group) => group.products ?? []).toList(),
      ),
    );
  }

  void selectDrink(Product drink) {
    emit(state.copyWith(selectedDrink: drink));
  }

  void confirmSelection() {
    emit(state.copyWith(
      isSelectionConfirmed: true,
    ));
    addSr(DrinkListSr.selectionConfirmed(state.selectedDrink!));
  }
}
