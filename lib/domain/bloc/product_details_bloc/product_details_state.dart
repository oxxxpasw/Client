part of 'product_details_bloc.dart';

@freezed
abstract class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState({
    @Default(ProductDetailsStateStatus.loading)
    ProductDetailsStateStatus status,
    Product? product,
  }) = _ProductDetailsState;
}

@freezed
abstract class ProductDetailsSr with _$ProductDetailsSr {
  const factory ProductDetailsSr.error(String error) = _ErrorSr;

  const factory ProductDetailsSr.added() = _AddedSr;
}

enum ProductDetailsStateStatus {
  loading,
  ready,
}
