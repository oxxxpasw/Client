part of 'point_list_bloc.dart';

@freezed
abstract class StoreItem with _$StoreItem {
  const factory StoreItem({
    required Store store,
    double? distance,
  }) = _StoreItem;
}

@freezed
abstract class PointListState with _$PointListState {
  @Assert('status != PointListStatus.ready || points != null')
  const factory PointListState({
    List<StoreItem>? points,
    @Default(PointListStatus.init) PointListStatus status,
  }) = _PointListState;
}

enum PointListStatus {
  init,
  loading,
  ready,
}

@freezed
sealed class PointListSr with _$PointListSr {
  const factory PointListSr.error(String error) = ErrorSr;

  const factory PointListSr.selected(Store store) = PointListSelectedSr;
}
