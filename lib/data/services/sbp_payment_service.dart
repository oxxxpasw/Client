import 'package:sosedifedi/data/const/injectable_names.dart';
import 'package:sosedifedi/data/models/sbp_response/sbp_response.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class SbpPaymentService {
  Future<DefaultResponse<SbpResponse>> getBankList();
}

@Singleton(as: SbpPaymentService)
class SbpPaymentServiceImpl extends SbpPaymentService {
  SbpPaymentServiceImpl(
    @Named(InjectableNames.sbpClient) this._dioJsonRpc,
    @Named(InjectableNames.sbpClient) this._dioJsonRpcErrorHandler,
  );

  final Dio _dioJsonRpc;
  final DioErrorHandler<DefaultApiError> _dioJsonRpcErrorHandler;

  @override
  Future<DefaultResponse<SbpResponse>> getBankList() async {
    try {
      var response = await _dioJsonRpcErrorHandler.processRequest<Response>(
        () => _dioJsonRpc.get(
          'proxyapp/c2bmembers.json',
        ),
      );

      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        SbpResponse.fromJson(response.result.data),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
