import 'package:sosedifedi/data/const/injectable_names.dart';
import 'package:sosedifedi/data/services/remote_config_service.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RemoteConfigModule {
  RemoteConfigModule();

  @releaseEnv
  @debugEnv
  @singleton
  RemoteConfigService remoteConfigService(
    @Named(InjectableNames.staticFilesClient) Dio dio,
    @Named(InjectableNames.staticFilesClient)
        DioErrorHandler<DefaultApiError> dioErrorHandler,
  ) =>
      RemoteConfigServiceImpl(dio, dioErrorHandler);

  @testEnv
  @singleton
  RemoteConfigService remoteConfigTestService(
    @Named(InjectableNames.staticFilesClient) Dio dio,
    @Named(InjectableNames.staticFilesClient)
        DioErrorHandler<DefaultApiError> dioErrorHandler,
  ) =>
      RemoteConfigServiceTestImpl();
}
