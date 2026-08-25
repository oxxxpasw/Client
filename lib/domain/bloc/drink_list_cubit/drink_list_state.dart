part of 'drink_list_cubit.dart';

@freezed
abstract class DrinkListState with _$DrinkListState {
  const factory DrinkListState({
    @Default(DrinkListStatus.initial) DrinkListStatus status,
    List<Product>? drinks,
    Product? selectedDrink,
    @Default(false) bool isSelectionConfirmed,
  }) = _DrinkListState;
}

@freezed
sealed class DrinkListSr with _$DrinkListSr {
  const factory DrinkListSr.selectionConfirmed(Product drink) =
      DrinkListSelectionConfirmedSr;
}

enum DrinkListStatus {
  initial,
  loading,
  ready,
  error,
}
