part of 'map_bloc.dart';

@freezed
abstract class MapState with _$MapState {
  const MapState._();

  const factory MapState({
    Store? selectedStore,
    City? selectedCity,
    @Default(MapStateStatus.init) MapStateStatus status,
  }) = _MapState;
}

enum MapStateStatus {
  init,
  loading,
  ready,
}

@freezed
sealed class MapSr with _$MapSr {
  const factory MapSr.error(String error) = MapErrorSr;

  const factory MapSr.submit() = _SubmitSr;

  const factory MapSr.setCameraToInitPosition({CameraPosition? options}) =
      MapSetCameraToInitPositionSr;

  const factory MapSr.showChangeCityDialog(City newCity) =
      MapShowChangeCityDialogSr;

  const factory MapSr.showStoreList(List<Store> stores) = MapShowStoreListSr;
}
