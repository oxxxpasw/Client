import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

typedef Location = ({double lat, double lng});

abstract class LocationRepository {
  Future<bool> checkLocationEnabled();

  Future<DefaultResponse<Location?>> getUserLatLng();

  double calculateDistanceInKM(
    Location start,
    Location end,
  );
}

const _kMaxLocationWaitDuration = Duration(seconds: 15);

@Singleton(as: LocationRepository)
class LocationRepositoryImpl extends LocationRepository {
  bool permissionRequested = false;

  @override
  Future<bool> checkLocationEnabled() async {
    try {
      var serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return false;
      }
      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.deniedForever ||
          (permission == LocationPermission.denied && permissionRequested)) {
        return false;
      }
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        permissionRequested = true;
        if (permission == LocationPermission.denied) {
          return false;
        }
      }
      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<DefaultResponse<Location?>> getUserLatLng() async {
    try {
      final enabled = await checkLocationEnabled();

      if (enabled) {
        final completer = Completer<DefaultResponse<Location?>>();
        Geolocator.getCurrentPosition().then(
          (location) {
            if (completer.isCompleted) {
              return;
            }
            completer.complete(ApiResponse.success(
              (
                lat: location.latitude,
                lng: location.longitude,
              ),
            ));
          },
        );
        Future.delayed(_kMaxLocationWaitDuration).then(
          (_) {
            if (completer.isCompleted) {
              return;
            }
            completer.complete(const ApiResponse.success(null));
          },
        );
        return completer.future;
      }
      return const ApiResponse.success(null);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  double calculateDistanceInKM(
    Location start,
    Location end,
  ) {
    return Geolocator.distanceBetween(
          start.lat,
          start.lng,
          end.lat,
          end.lng,
        ) /
        1000;
  }
}
