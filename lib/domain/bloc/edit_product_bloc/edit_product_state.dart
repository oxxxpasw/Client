part of 'edit_product_bloc.dart';

@freezed
abstract class EditProductState with _$EditProductState {
  const factory EditProductState({
    @Default(EditProductStateStatus.loading) EditProductStateStatus status,
    Group? group,
    Product? product,
  }) = _EditProductState;
}

@freezed
abstract class EditProductSr with _$EditProductSr {
  const factory EditProductSr.error(String error) = _ErrorSr;

  const factory EditProductSr.added() = _AddedSr;
}

enum EditProductStateStatus {
  loading,
  ready,
}
