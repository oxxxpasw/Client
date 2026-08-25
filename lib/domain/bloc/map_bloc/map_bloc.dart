import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/data/repository/geocoder_repository.dart';
import 'package:sosedifedi/data/repository/location_repository.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'map_bloc.freezed.dart';
part 'map_state.dart';

@injectable
class MapBloc extends SrCubit<MapState, MapSr> {
  MapBloc({
    required this.cityRepository,
    required this.geocoderRepository,
    required this.locationHelper,
  }) : super(const MapState()) {
    _subscription = cityRepository.selectedCityStream.listen(_loadData);
    final initialCity = cityRepository.getSelectedCity();
    if (initialCity != null) {
      _loadData(initialCity);
    }
  }

  @protected
  final CityRepository cityRepository;
  @protected
  final GeocoderRepository geocoderRepository;
  @protected
  final LocationRepository locationHelper;

  StreamSubscription<City?>? _subscription;

  final _userPositionCompleter = Completer<Location?>();

  void updateUserPosition(Location? position) {
    if (_userPositionCompleter.isCompleted) {
      return;
    }
    _userPositionCompleter.complete(position);
  }

  Future<void> _loadData(City? city) async {
    try {
      unawaited(_navigateToInitPosition(city));
      unawaited(_checkUserCity());
      emit(
        state.copyWith(
          selectedCity: city,
        ),
      );
    } catch (e, stack) {
      addSr(MapSr.error(
          ErrorMessages.getMessage(CommonResponseError.undefinedError(e))));
      addError(e, stack);
    }
  }

  Future<void> _navigateToInitPosition(City? city) async {
    CameraPosition? cameraOptions;
    try {
      emit(
        state.copyWith(status: MapStateStatus.loading),
      );
      if (state.status == MapStateStatus.init) {
        try {
          final userLocation = await locationHelper
              .getUserLatLng()
              .timeout(const Duration(seconds: 2));

          if (userLocation.isSuccess && userLocation.result != null) {
            cameraOptions = CameraPosition(
              target: Point(
                latitude: userLocation.result!.lat,
                longitude: userLocation.result!.lng,
              ),
              zoom: 13,
            );
            return;
          }
        } catch (_) {}
      }

      if (city?.coordinates case final ({double lat, double lng}) coordinates) {
        cameraOptions = CameraPosition(
          target: Point(
            latitude: coordinates.lat,
            longitude: coordinates.lng,
          ),
          zoom: 11,
        );
        return;
      }
    } catch (e, stack) {
      addError(e, stack);
    } finally {
      emit(
        state.copyWith(
          status: MapStateStatus.ready,
        ),
      );
      addSr(
        MapSr.setCameraToInitPosition(
          options: cameraOptions,
        ),
      );
    }
  }

  Future<void> _checkUserCity() async {
    try {
      if (state.status != MapStateStatus.init) {
        return;
      }
      final userLocation = await locationHelper.getUserLatLng();
      if (userLocation.hasError || userLocation.result == null) {
        return;
      }

      final userCityResponse = await cityRepository.getUserCityAndCountry(
        lat: userLocation.result!.lat,
        lng: userLocation.result!.lng,
      );
      if (userCityResponse.hasError || userCityResponse.result == null) {
        return;
      }

      final newCity = userCityResponse.result!;

      if (cityRepository.getSelectedCity() != newCity) {
        addSr(MapSr.showChangeCityDialog(newCity));
      }
    } catch (e, stack) {
      addError(e, stack);
    }
  }

  Future<void> changeCity(City city) => cityRepository.saveCity(city);

  void changeStore(Store? store) {
    emit(
      state.copyWith(
        selectedStore: store,
      ),
    );
  }

  void showStoreList() => addSr(
        MapSr.showStoreList(
          state.selectedCity?.storeList ?? [],
        ),
      );

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
