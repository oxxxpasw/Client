import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/const/injectable_names.dart';
import 'package:sosedifedi/data/models/deactivate_card/deactivate_card.dart';
import 'package:sosedifedi/data/models/link_card/link_card.dart';
import 'package:sosedifedi/data/models/payment_model/payment_model.dart'
    show PaymentStatusResponse, PaymentResponse;
import 'package:sosedifedi/data/models/payment_request/payment_request.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:sosedifedi/utils/request_methods.dart';
import 'package:uuid/uuid.dart';

abstract class PaymentService {
  Future<DefaultResponse<PaymentResponse>> processPayment(
    PaymentRequest request,
  );

  Future<DefaultResponse<PaymentResponse>> processExternalSystemPayment(
    PaymentRequest request,
  );

  Future<DefaultResponse<PaymentStatusResponse?>> getPaymentStatus(
    String paymentId, {
    String? systemId,
  });

  Future<DefaultResponse<List<PaymentType>>> getPaymentTypes({
    String? systemId,
    String? token,
  });

  Future<DefaultResponse<LinkCardResponse>> linkCard(LinkCardRequest request);

  Future<DefaultResponse<DeactivateCardResponse>> deactivateCard(
    DeactivateCardRequest request,
  );
}

@Singleton(as: PaymentService)
class PaymentServiceImpl extends PaymentService {
  PaymentServiceImpl({
    @Named(InjectableNames.paymentServiceClient) required this.dio,
    @Named(InjectableNames.paymentServiceClient) required this.errorHandler,
    required this.appEnvironment,
  });

  @protected
  final Dio dio;
  @protected
  final DioErrorHandler<DefaultApiError> errorHandler;
  @protected
  final AppEnvironment appEnvironment;

  @override
  Future<DefaultResponse<PaymentStatusResponse?>> getPaymentStatus(
    String paymentId, {
    String? systemId,
  }) async {
    try {
      final response = await _request(
        method: 'getPaymentStatus',
        data: {
          'payment_request_id': paymentId,
        },
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
          PaymentStatusResponse.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<PaymentType>>> getPaymentTypes({
    String? systemId,
    String? token,
  }) async {
    try {
      final response = await _request(
        method: 'getAvailablePaymentSystemsWithRegisteredCards',
        data: {
          'sub_id': systemId,
          'token': token,
        },
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      Iterable<PaymentType> parse() sync* {
        for (final e in response.result as Iterable) {
          try {
            yield PaymentType.fromJson(e);
          } catch (_) {}
        }
      }

      return ApiResponse.success(parse().toList());
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<PaymentResponse>> processPayment(
    PaymentRequest request,
  ) async {
    try {
      final response = await _request(
        method: 'processSinglePayment',
        data: request.toJson(),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(PaymentResponse.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<LinkCardResponse>> linkCard(
    LinkCardRequest request,
  ) async {
    try {
      final response = await _request(
        method: 'linkCard',
        data: request.toJson(),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        LinkCardResponse.fromJson(response.result),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<DeactivateCardResponse>> deactivateCard(
      DeactivateCardRequest request) async {
    try {
      final response = await _request(
        method: 'deactivateCard',
        data: request.toJson(),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        DeactivateCardResponse.fromJson(response.result),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  Future<ApiResponse<CommonResponseError<DefaultApiError>, dynamic>> _request({
    required String method,
    Map<String, dynamic>? data,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await errorHandler.processRequest<Response>(
        () => dio.request(
          '',
          data: {
            'jsonrpc': '2.0',
            'method': method,
            'params': {
              'system_id': appEnvironment.systemId,
              ...?data,
            },
            'id': const Uuid().v4(),
          },
          options: Options(
            headers: headers,
            method: RequestType.post.method,
          ),
        ),
        true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result.data['result']);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<PaymentResponse>> processExternalSystemPayment(
    PaymentRequest request,
  ) async {
    final requestMap = request.toJson();
    try {
      final response = await _request(
        method: 'processExternalSystemPayment',
        data: requestMap,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(PaymentResponse.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
