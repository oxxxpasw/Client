part of 'cart_search_bloc.dart';

@freezed
abstract class CartSearchState with _$CartSearchState {
  const factory CartSearchState({
    @Default(CartSearchStatus.init) CartSearchStatus status,
    @Default([]) List<Product> searchResult,
    @Default({}) Map<Product, double> productsToAddToCart,
  }) = _Ready;
}

enum CartSearchStatus {
  init,
  loading,
  ready,
}

@freezed
abstract class CartSearchSr with _$CartSearchSr {
  const factory CartSearchSr.error(String error) = _CartSearchSr;

  const factory CartSearchSr.addToCart(Map<Product, double> products) =
      _AddToCartSr;

  const factory CartSearchSr.showWeightProductMessage() =
      _ShowWeightProductMessageSr;
}
