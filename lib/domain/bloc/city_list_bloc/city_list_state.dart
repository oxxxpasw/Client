part of 'city_list_bloc.dart';

@freezed
abstract class CityListState with _$CityListState {
  @Assert('status != CityListStatus.ready || cities != null')
  const factory CityListState({
    @Default(CityListStatus.init) CityListStatus status,
    List<City>? cities,
    List<City>? searchResult,
    City? selected,
  }) = _CityListState;
}

@freezed
sealed class CityListSr with _$CityListSr {
  const factory CityListSr.error(String message) = CityListErrorSr;

  const factory CityListSr.selected() = CityListSelectedSr;
}

enum CityListStatus {
  init,
  loading,
  ready,
}
