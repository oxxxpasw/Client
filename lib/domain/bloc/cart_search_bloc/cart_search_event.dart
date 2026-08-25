part of 'cart_search_bloc.dart';

@freezed
abstract class CartSearchEvent with _$CartSearchEvent {
  const factory CartSearchEvent.onSearch(String value) = _OnSearch;

  const factory CartSearchEvent.onProductDecrement(Product product) =
      _OnProductDecrement;

  const factory CartSearchEvent.onProductIncrement(Product product) =
      _OnProductIncrement;

  const factory CartSearchEvent.onNextButtonPressed() = _OnNextButtonPressed;
}
