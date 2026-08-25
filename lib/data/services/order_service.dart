import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/const/injectable_names.dart';
import 'package:sosedifedi/data/models/create_order_response/create_order_response.dart';
import 'package:sosedifedi/data/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/data/models/order/order_response/order_response.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:sosedifedi/utils/request_methods.dart';

typedef OrderServiceResponse<T> = Future<DefaultResponse<T>>;

abstract class OrderService {
  OrderServiceResponse<List<AcceptedOrderResponse>> orderList({
    required String token,
  });

  OrderServiceResponse<AcceptedOrderResponse> orderById({
    required String token,
    required String id,
  });

  OrderServiceResponse<CreateOrderResponse> createOrder({
    required OrderResponse order,
    required String token,
  });

  OrderServiceResponse<AcceptedOrderResponse?> getLastUnpaidOrder({
    required String token,
  });

  OrderServiceResponse<void> cancelOrder({
    required String token,
    required String id,
  });
}

@Singleton(as: OrderService)
class OrderServiceImpl implements OrderService {
  OrderServiceImpl(
    @Named(InjectableNames.orderServiceClient) this._dio,
    @Named(InjectableNames.orderServiceClient) this._dioErrorHandler,
    this._appEnvironment,
  );

  final Dio _dio;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;
  final AppEnvironment _appEnvironment;

  @override
  Future<DefaultResponse<CreateOrderResponse>> createOrder({
    required OrderResponse order,
    required String token,
  }) async {
    try {
      final orderJson = order.toJson(true);
      orderJson['token'] = token;

      final response = await _request(
        route: 'handlers/subqueue/${_appEnvironment.integrationId}',
        requestType: RequestType.post,
        data: orderJson,
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(CreateOrderResponse.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  OrderServiceResponse<AcceptedOrderResponse> orderById({
    required String token,
    required String id,
  }) async {
    try {
      final response = await _request(
        route: 'api/user/orders/$id',
        requestType: RequestType.get,
        headers: {'Authorization': 'Bearer $token'},
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
          AcceptedOrderResponse.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  OrderServiceResponse<List<AcceptedOrderResponse>> orderList({
    required String token,
  }) async {
    try {
      final response = await _request(
        route: 'api/user/orders',
        requestType: RequestType.get,
        headers: {'Authorization': 'Bearer $token'},
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final result = <AcceptedOrderResponse>[];
      for (final item in (response.result as List)) {
        try {
          result.add(AcceptedOrderResponse.fromJson(item));
        } catch (_) {}
      }
      return ApiResponse.success(result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  OrderServiceResponse<AcceptedOrderResponse?> getLastUnpaidOrder({
    required String token,
  }) async {
    try {
      final response = await _request(
        route: '/api/orders/unpaid',
        requestType: RequestType.get,
        headers: {'Authorization': 'Bearer $token'},
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final data = response.result as List;
      if (data.isEmpty) {
        return const ApiResponse.success(null);
      }

      return ApiResponse.success(
        AcceptedOrderResponse.fromJson(data.first),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  OrderServiceResponse<void> cancelOrder(
      {required String token, required String id}) async {
    try {
      final response = await _request(
          route: '/api/orders/$id/status',
          requestType: RequestType.post,
          headers: {
            'Authorization': 'Bearer $token'
          },
          data: {
            'status': 'cancel',
          });
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return const ApiResponse.success(null);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  Future<ApiResponse<CommonResponseError<DefaultApiError>, dynamic>> _request({
    required String route,
    RequestType? requestType = RequestType.get,
    Map<String, dynamic>? data,
    Map<String, String>? headers,
  }) async {
    try {
      late ApiResponse<CommonResponseError<DefaultApiError>, dynamic> response;
      switch (requestType) {
        case RequestType.post:
          response = await _dioErrorHandler.processRequest(
            () => _dio.post(
              route,
              data: data,
              options: Options(headers: {
                Headers.contentTypeHeader: 'application/json',
                ...?headers,
              }),
            ),
          );
          break;
        case RequestType.get:
        default:
          response = await _dioErrorHandler.processRequest(
            () => _dio.get(route, options: Options(headers: headers)),
          );
      }
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result.data['result']);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
