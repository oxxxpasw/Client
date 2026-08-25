import 'package:sosedifedi/data/models/geocoder_models/geocoder_models.dart';
import 'package:sosedifedi/data/services/geocoder_service.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:injectable/injectable.dart';

abstract class GeocoderRepository {
  Future<DefaultResponse<GeocoderLocation>> reverseGeocode({
    required double lat,
    required double lng,
  });
}

@Singleton(as: GeocoderRepository)
class GeocoderRepositoryImpl extends GeocoderRepository {
  GeocoderRepositoryImpl({
    required this.geocoderService,
  });

  final GeocoderService geocoderService;

  @override
  Future<DefaultResponse<GeocoderLocation>> reverseGeocode({
    required double lat,
    required double lng,
  }) async {
    try {
      final response = await geocoderService.reverseGeocode(lat: lat, lng: lng);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
