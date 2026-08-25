import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/services/geocoder_service.dart';
import 'package:sosedifedi/data/services/static_files_service.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

abstract class CityRepository {
  Future<void> init();

  Future<DefaultResponse<List<City>>> getCityList();

  Future<DefaultResponse<Country>> getCountry();

  Future<DefaultResponse<Store?>> storeById(String storeId);

  Future<DefaultResponse<Store?>> storeByFridgeId(String fridgeId);

  Future<DefaultResponse<({Store store, CoffeeMachine coffeeMachine})?>>
      storeAndCoffeeMachineById(String fridgeId);

  Future<void> saveCity(City city);

  Future<String?> getSavedCityId();

  bool hasCity();

  City? getSelectedCity();

  Stream<City?> get selectedCityStream;

  Future<DefaultResponse<City?>> getUserCityAndCountry({
    required double lat,
    required double lng,
  });

  void dispose() {}
}

const _kStoreNameKey = 'storeNameKey';

@Singleton(as: CityRepository)
class CityRepositoryImpl extends CityRepository {
  CityRepositoryImpl({
    required this.sharedPreferences,
    required this.staticFilesService,
    required this.geocoderService,
  });

  @protected
  final StaticFilesService staticFilesService;
  @protected
  final SharedPreferences sharedPreferences;
  @protected
  final GeocoderService geocoderService;

  @override
  Stream<City?> get selectedCityStream => _subject.stream;

  @override
  City? getSelectedCity() => _subject.valueOrNull;

  @override
  bool hasCity() => true;

  final _subject = BehaviorSubject<City?>();

  @override
  Future<void> init() async {
    try {
      final response = await getCityList();
      if (response.hasError) {
        return;
      }
      final savedCityId = await getSavedCityId();
      final city = response.result.firstWhereOrNull((element) => element.id == savedCityId) ??
          response.result.firstOrNull;
      _subject.add(city);
      if (city != null && savedCityId == null) {
        sharedPreferences.setString(_kStoreNameKey, city.id);
      }
    } catch (_) {}
  }

  @override
  Future<DefaultResponse<List<City>>> getCityList() async {
    final response = await staticFilesService.getStores();
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(response.result.entries
        .expand<City>((entry) => entry.value.cityList)
        .toList());
  }

  @override
  Future<DefaultResponse<Country>> getCountry() async {
    try {
      final response = await staticFilesService.getStores();
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result.values.first);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<String?> getSavedCityId() {
    return Future.value(sharedPreferences.getString(_kStoreNameKey));
  }

  @override
  Future<void> saveCity(City city) {
    _subject.add(city);
    return sharedPreferences.setString(_kStoreNameKey, city.id);
  }

  @override
  Future<DefaultResponse<Store?>> storeById(String storeId) async {
    try {
      final response = await getCityList();
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final result = await compute(
        _getStoreById,
        (
          response.result,
          storeId,
        ),
      );
      return ApiResponse.success(result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<Store?>> storeByFridgeId(String fridgeId) async {
    try {
      final response = await getCityList();
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final result = await compute(
        _getStoreByFridgeId,
        (
          response.result,
          fridgeId,
        ),
      );
      return ApiResponse.success(result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<City?>> getUserCityAndCountry({
    required double lat,
    required double lng,
  }) async {
    try {
      final countryResponse = await getCityList();
      if (countryResponse.hasError) {
        return ApiResponse.error(countryResponse.error);
      }
      final list = countryResponse.result;

      final geocoderResponse = await geocoderService.reverseGeocode(
        lat: lat,
        lng: lng,
      );
      if (geocoderResponse.hasError) {
        return ApiResponse.error(geocoderResponse.error);
      }
      final data = geocoderResponse.result;

      return ApiResponse.success(
        list.firstWhereOrNull(
          (element) =>
              element.name.toLowerCase() ==
              data.cityName?.trim().toLowerCase(),
        ),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<({Store store, CoffeeMachine coffeeMachine})?>>
      storeAndCoffeeMachineById(String fridgeId) async {
    try {
      final response = await getCityList();
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final result = await compute(
        _getStoreByCoffeeMachineId,
        (
          response.result,
          fridgeId,
        ),
      );
      return ApiResponse.success(result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  void dispose() {
    _subject.close();
  }
}

Store? _getStoreById(
  (List<City> cities, String storeId) message,
) {
  for (final city in message.$1) {
    for (final store in city.storeList) {
      if (store.id == message.$2) {
        return store;
      }
    }
  }
  return null;
}

Store? _getStoreByFridgeId(
  (List<City> cities, String fridgeId) message,
) {
  for (final city in message.$1) {
    for (final store in city.storeList) {
      if (store.fridge[message.$2] != null) {
        return store;
      }
    }
  }
  return null;
}

({Store store, CoffeeMachine coffeeMachine})? _getStoreByCoffeeMachineId(
  (List<City> cities, String fridgeId) message,
) {
  for (final city in message.$1) {
    for (final store in city.storeList) {
      if (store.coffeeMachine[message.$2] != null) {
        return (store: store, coffeeMachine: store.coffeeMachine[message.$2]!);
      }
    }
  }
  return null;
}
