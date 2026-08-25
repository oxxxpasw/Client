import 'package:sosedifedi/data/const/injectable_names.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FridgeService {
  Future<DefaultResponse<void>> openFridge(String fridgeId, String token);
}

@Singleton(as: FridgeService)
class FridgeServiceImpl extends FridgeService {
  FridgeServiceImpl({
    @Named(InjectableNames.fridgeApiClient) required this.dio,
    @Named(InjectableNames.fridgeApiClient) required this.handler,
  });

  @protected
  final Dio dio;
  @protected
  final DioErrorHandler<DefaultApiError> handler;

  @override
  Future<DefaultResponse<void>> openFridge(
      String fridgeId, String token) async {
    try {
      final response = await handler.processRequest<Response>(
        () => dio.post(
          'v1/device/$fridgeId/open',
          options: Options(
            headers: {'Authorization': 'Bearer $token'},
          ),
        ),
        true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return const ApiResponse.success(null);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
