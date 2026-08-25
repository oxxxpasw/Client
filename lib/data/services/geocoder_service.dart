import 'package:sosedifedi/data/const/injectable_names.dart';
import 'package:sosedifedi/data/models/geocoder_models/geocoder_models.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

abstract class GeocoderService {
  Future<DefaultResponse<GeocoderLocation>> reverseGeocode({
    required double lat,
    required double lng,
  });
}

@Singleton(as: GeocoderService)
class GeocoderServiceImpl extends GeocoderService {
  GeocoderServiceImpl({
    @Named(InjectableNames.geocoderClient) required this.dio,
    @Named(InjectableNames.geocoderClient) required this.dioErrorHandler,
    required this.appEnvironment,
  });

  @protected
  final Dio dio;
  @protected
  final DioErrorHandler<DefaultApiError> dioErrorHandler;
  @protected
  final AppEnvironment appEnvironment;

  @override
  Future<DefaultResponse<GeocoderLocation>> reverseGeocode({
    required double lat,
    required double lng,
  }) async {
    try {
      final response =
          await dioErrorHandler.processRequest<Response<Map<String, dynamic>>>(
        () => dio.get(
          '',
          queryParameters: {
            'geocode': '$lng,$lat',
            'format': 'json',
            'lang': 'ru_RU',
            'results': 1,
            'kind': 'locality',
            'apikey': appEnvironment.geocoderApiKey,
          },
        ),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final featureMember = response.result
          .data!['response']['GeoObjectCollection']['featureMember'] as List;
      final geoObject =
          featureMember.first['GeoObject'] as Map<String, dynamic>;
      final pos = (geoObject['Point']['pos'] as String).split(' ');
      return ApiResponse.success(
        GeocoderLocation(
          cityName: geoObject['name'] as String?,
          center: pos.map((e) => double.parse(e)).toList(),
        ),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
