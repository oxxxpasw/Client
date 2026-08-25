import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/data/repository/geocoder_repository.dart';
import 'package:sosedifedi/data/repository/location_repository.dart';
import 'package:sosedifedi/presentation/router/guards/city_guard.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'city_list_bloc.freezed.dart';
part 'city_list_state.dart';

@injectable
class CityListBloc extends SrCubit<CityListState, CityListSr> {
  CityListBloc({
    required this.cityRepository,
    required this.geocoderRepository,
    required this.cityGuard,
    required this.locationHelper,
  }) : super(const CityListState());

  @protected
  final CityRepository cityRepository;
  @protected
  final GeocoderRepository geocoderRepository;
  @protected
  final CityGuard cityGuard;
  @protected
  final LocationRepository locationHelper;

  Future<void> loadData() async {
    emit(state.copyWith(status: CityListStatus.loading));
    final result = await Future.wait([
      cityRepository.getCityList(),
      cityRepository.getSavedCityId(),
    ]);
    final listResponse = result[0] as DefaultResponse<List<City>>;
    final selectedId = result[1] as String?;

    if (listResponse.hasError) {
      addSr(CityListSr.error(ErrorMessages.getMessage(listResponse.error)));
      return;
    }

    final list = listResponse.result;

    var selected = list.firstWhereOrNull((city) => city.id == selectedId);

    if (selected == null) {
      final userLocation = await locationHelper.getUserLatLng();

      if (userLocation.isSuccess && userLocation.result != null) {
        final userCityResponse = await cityRepository.getUserCityAndCountry(
          lat: userLocation.result!.lat,
          lng: userLocation.result!.lng,
        );
        if (userCityResponse.hasError) {
          addError(userCityResponse.error);
        } else {
          selected = userCityResponse.result;
        }
      }
    }

    emit(
      state.copyWith(
        status: CityListStatus.ready,
        cities: list,
        selected: selected,
      ),
    );
  }

  void resetSearch() {
    emit(
      state.copyWith(
        searchResult: null,
      ),
    );
  }

  void search(String? value) {
    assert(state.cities != null);
    if (value == null || value.length < 2) {
      emit(
        state.copyWith(
          searchResult: null,
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        searchResult: state.cities!
            .where((element) =>
                element.name.toLowerCase().contains(value.toLowerCase()))
            .toList(),
      ),
    );
  }

  Future<void> setCity(City city) async {
    await cityRepository.saveCity(city);
    addSr(const CityListSr.selected());
  }

  Future<void> skip() async {
    await cityGuard.skipCityChoose();
    addSr(const CityListSr.selected());
  }
}
