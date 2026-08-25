part of 'products_bloc.dart';

@freezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState({
    List<Group>? categoryWithProducts,
    List<Product>? searchResult,
    @Default(ProductsStateStatus.init) ProductsStateStatus status,
  }) = _ProductsState;
}

enum ProductsStateStatus { init, loading, error, ready }

@freezed
abstract class ProductsSr with _$ProductsSr {
  const factory ProductsSr.error(String error) = ProductsSrError;
}
