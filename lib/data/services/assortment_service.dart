import 'package:sosedifedi/data/const/injectable_names.dart';
import 'package:sosedifedi/data/models/assortment_response/assortment_response.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:sosedifedi/utils/request_methods.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

typedef ProductServiceResponse<T> = Future<DefaultResponse<T>>;

abstract class AssortmentService {
  ProductServiceResponse<AssortmentResponse> getAssortment(
    String assortmentFile, {
    bool refresh,
  });
}

@Singleton(as: AssortmentService)
class AssortmentServiceImpl extends AssortmentService {
  AssortmentServiceImpl({
    @Named(InjectableNames.staticFilesClient) required this.dio,
    @Named(InjectableNames.staticFilesClient) required this.errorHandler,
  });

  @protected
  final Dio dio;
  @protected
  final DioErrorHandler<DefaultApiError> errorHandler;

  @override
  ProductServiceResponse<AssortmentResponse> getAssortment(
    String assortmentFile, {
    bool refresh = false,
  }) async {
    try {
      final safeFile = (assortmentFile.isEmpty || assortmentFile == 'null')
          ? 'catalog.json'
          : assortmentFile;
      final route =
          '/${safeFile.contains('City') ? 'cities' : 'stores'}/$safeFile';
      var response = await _request(
        route: route,
      );
      if (response.hasError) {
        response = await _request(route: '/stores/catalog.json');
        if (response.hasError) {
          response = await _request(route: '/catalog.json');
        }
      }
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(AssortmentResponse.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  Future<ApiResponse<CommonResponseError<DefaultApiError>, dynamic>> _request({
    required String route,
    RequestType requestType = RequestType.get,
    Map<String, dynamic>? data,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await errorHandler.processRequest<Response>(
        () => dio.request(
          route,
          data: data,
          options: Options(
            headers: headers,
            method: requestType.method,
          ),
        ),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result.data);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
