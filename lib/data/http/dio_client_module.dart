import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/const/injectable_names.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';

import 'dio_client_creator.dart';

/// Модуль поставляющий зависимости, связанные с [Dio]

@module
abstract class DioClientModule {
  @releaseEnv
  @debugEnv
  @singleton
  DioClientCreator dioClientCreator(AppEnvironment appEnvironment) =>
      DioClientCreatorImpl(appEnvironment);

  @testEnv
  @singleton
  DioClientCreator dioTestClientCreator(AppEnvironment appEnvironment) =>
      DioTestClientCreatorImpl(appEnvironment);

  @Named(InjectableNames.authServiceClient)
  @singleton
  Dio makeDioAuthServiceClient(DioClientCreator dioClientCreator) =>
      dioClientCreator.makeDioJsonRpcClient();

  @Named(InjectableNames.customerApiClient)
  @singleton
  Dio makeDioCustomerApiClient(DioClientCreator dioClientCreator) =>
      dioClientCreator.makeDioCustomerApiClient();

  @Named(InjectableNames.staticFilesClient)
  @singleton
  Dio makeStaticFilesClientClient(
    DioClientCreator dioClientCreator,
    @Named(InjectableNames.staticFilesClient) CacheOptions cacheOptions,
  ) =>
      dioClientCreator.makeDioStaticFilesClient()
        ..interceptors.add(
          DioCacheInterceptor(
            options: cacheOptions,
          ),
        );

  @Named(InjectableNames.staticFilesClient)
  @singleton
  CacheOptions makeStaticFilesCacheOptions(DioClientCreator dioClientCreator) =>
      CacheOptions(
        store: MemCacheStore(maxSize: 10485760, maxEntrySize: 1048576),
      );

  @Named(InjectableNames.sbpClient)
  @singleton
  Dio makeDioSbpClient(DioClientCreator dioClientCreator) =>
      dioClientCreator.makeDioSbpClient();

  @Named(InjectableNames.paymentServiceClient)
  @singleton
  Dio makeDioPaymentClient(DioClientCreator dioClientCreator) =>
      dioClientCreator.makeDioPaymentClient();

  @Named(InjectableNames.orderServiceClient)
  @singleton
  Dio makeDioOrderClient(DioClientCreator dioClientCreator) =>
      dioClientCreator.makeDioOrderClient();

  @Named(InjectableNames.geocoderClient)
  @singleton
  Dio makeDioGeocoderClient(DioClientCreator dioClientCreator) =>
      dioClientCreator.makeDioGeocoderClient();

  @Named(InjectableNames.fridgeApiClient)
  @singleton
  Dio makeDioFridgeApiClient(DioClientCreator dioClientCreator) =>
      dioClientCreator.makeFridgeApiClient();

  @Named(InjectableNames.fileDownloaderClient)
  @lazySingleton
  Dio makeDioFileDownloaderClient(DioClientCreator dioClientCreator) =>
      dioClientCreator.makeFileDownloaderClient();

  @releaseEnv
  @debugEnv
  @Named(InjectableNames.authServiceClient)
  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioJsonRpcErrorHandler() =>
      DioErrorHandlerImpl<DefaultApiError>(
        connectivity: Connectivity(),
        parseJsonApiError: (value) async {
          Map<String, dynamic> result = value!['result'][0];
          if (result['code'] != 0) {
            return DefaultApiError(
              msg: LocaleKeys.messages_error_authError.tr(),
              code: result['code']?.toString() ?? '999',
            );
          }
          return null;
        },
      );

  @releaseEnv
  @debugEnv
  @Named(InjectableNames.customerApiClient)
  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioCustomerApiClientHandler() =>
      DioErrorHandlerImpl(
        connectivity: Connectivity(),
        parseJsonApiError: (value) async {
          if (value['error'] != null) {
            final error = value['error'];
            return DefaultApiError(
              msg: error['message'] ?? '',
              code: error['code']?.toString() ?? '999',
            );
          }
          final result = value['result'];
          if (result != null &&
              result is Map<String, dynamic> &&
              result['error'] != null) {
            final error = result['error'];
            return DefaultApiError(
              msg: error['message'],
              code: error['code']?.toString() ?? '999',
            );
          }
          return null;
        },
      );

  @testEnv
  @releaseEnv
  @debugEnv
  @Named(InjectableNames.staticFilesClient)
  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioStaticFilesErrorHandler() =>
      DioErrorHandlerImpl<DefaultApiError>(
        connectivity: Connectivity(),
        parseJsonApiError: (json) async {
          return null;
        },
      );

  @Named(InjectableNames.sbpClient)
  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioSbpClientHandler() =>
      DioErrorHandlerImpl(
        connectivity: Connectivity(),
        parseJsonApiError: (value) => SynchronousFuture(null),
      );

  @Named(InjectableNames.paymentServiceClient)
  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioPaymentErrorHandler() =>
      DioErrorHandlerImpl<DefaultApiError>(
        connectivity: Connectivity(),
        parseJsonApiError: (json) async {
          if (json?['error'] != null) {
            return DefaultApiError(
              code: json['error']['code'].toString(),
              msg: json['error']['message'],
            );
          }
          return null;
        },
      );

  @Named(InjectableNames.orderServiceClient)
  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioOrderErrorHandler() =>
      DioErrorHandlerImpl<DefaultApiError>(
        connectivity: Connectivity(),
        parseJsonApiError: (json) async {
          if (json != null && json?['code'] != null && json?['code'] != 0) {
            return DefaultApiError(
              code: json['code'].toString(),
              msg: json['text'],
            );
          }
          return null;
        },
      );

  @Named(InjectableNames.geocoderClient)
  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioGeocoderErrorHandler() =>
      DioErrorHandlerImpl<DefaultApiError>(
        connectivity: Connectivity(),
        parseJsonApiError: (json) async {
          if (json?['message'] != null) {
            return DefaultApiError(
              code: '999',
              msg: json['message'],
            );
          }
          return null;
        },
      );

  @Named(InjectableNames.fridgeApiClient)
  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioFridgeApiErrorHandler() =>
      DioErrorHandlerImpl<DefaultApiError>(
        connectivity: Connectivity(),
        parseJsonApiError: (json) async {
          if (json?['status'] != 'OK') {
            return DefaultApiError(
              code: '999',
              msg: json?['message'],
            );
          }
          return null;
        },
      );

  @Named(InjectableNames.fileDownloaderClient)
  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioFileDownloaderErrorHandler() =>
      DioErrorHandlerImpl<DefaultApiError>(
        connectivity: Connectivity(),
        parseJsonApiError: (json) => Future.value(null),
      );

  @testEnv
  @Named(InjectableNames.authServiceClient)
  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioJsonRpcErrorTestHandler() =>
      DioErrorHandlerImpl<DefaultApiError>(
        connectivity: TestConnectivity(),
        parseJsonApiError: (value) async {
          Map<String, dynamic> result = value!['result'][0];
          if (result['code'] != 0) {
            return DefaultApiError(
                msg: result['msg'], code: result['code']?.toString() ?? '999');
          }
          return null;
        },
      );

  @testEnv
  @Named(InjectableNames.customerApiClient)
  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioCustomerApiClientTestHandler() =>
      DioErrorHandlerImpl(
        connectivity: TestConnectivity(),
        parseJsonApiError: (value) async {
          Map<String, dynamic> result = value!['result'][0];
          if (result['error'] != null) {
            return DefaultApiError(
              msg: result['message'],
              code: result['code']?.toString() ?? '999',
            );
          }
          return null;
        },
      );
}

class TestConnectivity implements Connectivity {
  @override
  Future<List<ConnectivityResult>> checkConnectivity() {
    return SynchronousFuture(const [ConnectivityResult.wifi]);
  }

  @override
  Stream<List<ConnectivityResult>> get onConnectivityChanged =>
      const Stream.empty();
}
