import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/repository/location_repository.dart';

Future<Location> getUserLocation() async {
  final repository = GetIt.I.get<LocationRepository>();
  final enabled = await repository.checkLocationEnabled();
  if (!enabled) {
    throw UserLocationNotEnabledException();
  }
  final response = await repository.getUserLatLng();
  if (response.hasError || response.result == null) {
    throw UserLocationLayerNotExistException();
  }
  return response.result!;
}

class UserLocationNotEnabledException implements Exception {
  String? get message => 'User location not enabled';

  UserLocationNotEnabledException();

  @override
  String toString() => 'UserLocationNotEnabledException';
}

class UserLocationLayerNotExistException implements Exception {
  String? get message => 'User location layer not exist';

  UserLocationLayerNotExistException();

  @override
  String toString() => 'UserLocationLayerNotExistException';
}
