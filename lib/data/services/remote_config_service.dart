import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sosedifedi/data/models/config/config.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

typedef ConfigResponse = Response<Map<String, dynamic>>;

abstract class RemoteConfigService {
  Future<DefaultResponse<AppConfig>> getConfig();
}

class RemoteConfigServiceImpl extends RemoteConfigService {
  RemoteConfigServiceImpl(
    this.dio,
    this.dioErrorHandler,
  );

  @protected
  final Dio dio;
  @protected
  late final DioErrorHandler<DefaultApiError> dioErrorHandler;

  @override
  Future<DefaultResponse<AppConfig>> getConfig() async {
    try {
      final response = await dioErrorHandler
          .processRequest<ConfigResponse>(() => dio.get('config.json'));
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(AppConfig.fromJson(response.result.data!));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}

class RemoteConfigServiceTestImpl extends RemoteConfigService {
  @override
  Future<DefaultResponse<AppConfig>> getConfig() {
    return SynchronousFuture(const ApiResponse.success(AppConfig()));
  }
}
