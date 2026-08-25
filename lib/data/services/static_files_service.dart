import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/const/injectable_names.dart';
import 'package:sosedifedi/data/models/barcode_template_response/barcode_template_response.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/models/update/update.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

enum RequestType {
  get,
  post,
}

abstract class StaticFilesService {
  Future<DefaultResponse<Map<String, Country>>> getStores();

  Future<DefaultResponse<Updates>> getUpdates();

  Future<DefaultResponse<BarcodeTemplatesResponse>> getBarcodeTemplates();
}

@Singleton(as: StaticFilesService)
class StaticFilesServiceImpl implements StaticFilesService {
  StaticFilesServiceImpl(
    @Named(InjectableNames.staticFilesClient) this.dio,
    @Named(InjectableNames.staticFilesClient) this.dioErrorHandler,
    @Named(InjectableNames.staticFilesClient) this.cacheOptions,
  );

  @protected
  final Dio dio;
  @protected
  final DioErrorHandler<DefaultApiError> dioErrorHandler;
  @protected
  final CacheOptions cacheOptions;

  @override
  Future<DefaultResponse<Map<String, Country>>> getStores() async {
    try {
      var response = await dioErrorHandler.processRequest<Response>(
        () => dio.get(
          'stores.json',
          options: cacheOptions
              .copyWith(
                policy: CachePolicy.forceCache,
                maxStale: const Duration(
                  minutes: 5,
                ),
              )
              .toOptions(),
        ),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
          Map.fromEntries((response.result.data as List).map((e) {
        try {
          return MapEntry<String, Country>(e['id'], Country.fromJson(e));
        } catch (e) {
          return null;
        }
      }).whereType<MapEntry<String, Country>>()));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<Updates>> getUpdates() async {
    try {
      var response = await dioErrorHandler.processRequest<Response>(
        () => dio.get(
          'versions.json',
        ),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(Updates.fromJson(response.result.data));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<BarcodeTemplatesResponse>>
      getBarcodeTemplates() async {
    try {
      var response = await dioErrorHandler.processRequest<Response>(
        () => dio.get(
          'TemplatesBarcode.json',
        ),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        BarcodeTemplatesResponse.fromJson(response.result.data),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
