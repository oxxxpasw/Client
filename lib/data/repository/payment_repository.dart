import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/mappers/payment_mapper.dart';
import 'package:sosedifedi/data/models/payment_model/payment_model.dart';
import 'package:sosedifedi/data/models/payment_request/payment_request.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/services/apple_pay_service.dart';
import 'package:sosedifedi/data/services/payment_service.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/domain/models/payment/payment.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

abstract class PaymentRepository {
  Future<DefaultResponse<Payment>> processAcceptedOrderPayment({
    required AcceptedOrder order,
    required PaymentType paymentType,
    String? successUrl,
    String? failureUrl,
    String? token,
  });

  Future<DefaultResponse<Payment>> processOrderPayment({
    required OrderModel order,
    String? successUrl,
    String? failureUrl,
    String? token,
  });

  Future<DefaultResponse<List<PaymentType>>> getPaymentTypes({
    String? systemId,
  });

  Future<DefaultResponse<PaymentStatusResponse?>> getPaymentStatus(
    String paymentId, {
    String? systemId,
  });

  Future<DefaultResponse<Uri>> linkCard({
    required String systemId,
    required RegisterCardPaymentType type,
  });

  Future<DefaultResponse<void>> deactivateCard({
    required String systemId,
    required LinkedCardPaymentType type,
  });
}

@Singleton(as: PaymentRepository)
class PaymentRepositoryImpl extends PaymentRepository {
  PaymentRepositoryImpl({
    required this.paymentService,
    required this.paymentMapper,
    required this.authRepository,
    required this.applePayService,
  });

  @protected
  final PaymentService paymentService;
  @protected
  final PaymentMapper paymentMapper;
  @protected
  final AuthRepository authRepository;
  @protected
  final ApplePayService applePayService;

  @override
  Future<DefaultResponse<Payment>> processAcceptedOrderPayment({
    required AcceptedOrder order,
    required PaymentType paymentType,
    String? successUrl,
    String? failureUrl,
    String? token,
  }) async {
    try {
      final response = await _processPayment(
        paymentMapper.mapToPaymentResponse(
          order: order,
          paymentType: paymentType,
          successUrl: successUrl,
          failureUrl: failureUrl,
          token: token,
        ),
        paymentType,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return ApiResponse.success(response.result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<Payment>> processOrderPayment({
    required OrderModel order,
    String? successUrl,
    String? failureUrl,
    String? token,
  }) async {
    try {
      final response = await _processPayment(
        paymentMapper.mapToPaymentResponse2(
          order: order,
          successUrl: successUrl,
          failureUrl: failureUrl,
          token: token,
        ),
        order.paymentType,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return ApiResponse.success(response.result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<PaymentType>>> getPaymentTypes({
    String? systemId,
  }) async {
    final token = await authRepository.token;
    if (token == null) {
      return Future.error(const CommonResponseError.unAuthorized());
    }
    return paymentService.getPaymentTypes(
      systemId: systemId,
      token: token,
    );
  }

  @override
  Future<DefaultResponse<PaymentStatusResponse?>> getPaymentStatus(
    String paymentId, {
    String? systemId,
  }) async {
    return paymentService.getPaymentStatus(
      paymentId,
      systemId: systemId,
    );
  }

  @override
  Future<DefaultResponse<Uri>> linkCard({
    required String systemId,
    required RegisterCardPaymentType type,
  }) async {
    try {
      final token = await authRepository.token;
      if (token == null) {
        return Future.error(const CommonResponseError.unAuthorized());
      }
      final response = await paymentService.linkCard(
        paymentMapper.mapToLinkCardRequest(
          subId: systemId,
          type: type,
          token: token,
        ),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final result = response.result;

      if (result.status != 'SUCCESS') {
        return ApiResponse.error(
          CommonResponseError.customError(
            DefaultApiError(msg: result.message ?? '', code: '999'),
          ),
        );
      }
      return ApiResponse.success(result.data!);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<void>> deactivateCard({
    required String systemId,
    required LinkedCardPaymentType type,
  }) async {
    try {
      final token = await authRepository.token;
      if (token == null) {
        return Future.error(const CommonResponseError.unAuthorized());
      }
      final response = await paymentService.deactivateCard(
        paymentMapper.mapToDeactivateCardRequest(
          subId: systemId,
          type: type,
          token: token,
        ),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final result = response.result;

      if (result.status != 'SUCCESS') {
        return ApiResponse.error(
          CommonResponseError.customError(
            DefaultApiError(msg: result.message ?? '', code: '999'),
          ),
        );
      }
      return const ApiResponse.success(null);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  Future<DefaultResponse<Payment>> _processPayment(
    PaymentRequest request,
    PaymentType? type,
  ) async {
    DefaultResponse<PaymentResponse> response;
    if (request.amount == 0.0) {
      response = await _processExtPayment(request);
    } else {
      response = await _processRegularPayment(request, type!);
    }

    if (response.hasError) {
      return ApiResponse.error(response.error);
    }

    return ApiResponse.success(
      paymentMapper.mapFromPaymentResponse(response.result),
    );
  }

  Future<DefaultResponse<PaymentResponse>> _processRegularPayment(
    PaymentRequest request,
    PaymentType type,
  ) async {
    if (type is ApplePayPaymentType) {
      final applePayResult = await applePayService.pay(request.amount);
      if (applePayResult.hasError) {
        return ApiResponse.error(applePayResult.error);
      }
      request = request.copyWith.paymentData(
        applePayToken: applePayResult.result.token,
      );
    }
    final response = await paymentService.processPayment(request);
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }

    return ApiResponse.success(response.result);
  }

  Future<DefaultResponse<PaymentResponse>> _processExtPayment(
    PaymentRequest request,
  ) async {
    final response = await paymentService.processExternalSystemPayment(request);
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }

    var result = response.result;

    if (result.paymentRequest.type == null) {
      result = result.copyWith.paymentRequest(
        type: PaymentMethod.fullBonuses,
      );
    }

    return ApiResponse.success(result);
  }
}
