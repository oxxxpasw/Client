part of 'product_map_bloc.dart';

@freezed
abstract class StoreItem with _$StoreItem {
  const factory StoreItem({
    required Store store,
    double? distance,
  }) = _StoreItem;
}

@freezed
abstract class ProductMapState with _$ProductMapState {
  const ProductMapState._();

  const factory ProductMapState({
    List<StoreItem>? stores,
    List<StoreItem>? searchResult,
    @Default(ProductMapStateStatus.loading) ProductMapStateStatus status,
  }) = _ProductMapState;
}

enum ProductMapStateStatus {
  loading,
  ready,
}

@freezed
abstract class ProductMapSr with _$ProductMapSr {
  const factory ProductMapSr.error(String error) = _ErrorSr;

  const factory ProductMapSr.submit() = _SubmitSr;

  const factory ProductMapSr.setCameraToInitPosition(List<Store>? stores) =
      _SetCameraToInitPositionSr;
}
