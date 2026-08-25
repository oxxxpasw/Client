import 'dart:async';
import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retry/retry.dart';

export './messages/messages.dart';
export './messages/messenger.dart';
export 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';

typedef ParseJsonApiError<DE> = Future<DE?> Function(dynamic);
typedef MakeRequest<T> = Future<T> Function();

abstract class DioErrorHandler<DE> {
  Future<ApiResponse<CommonResponseError<DE>, T>> processRequest<T>(
      MakeRequest<T> makeRequest,
      [bool test]);
}

class DioErrorHandlerImpl<DE> implements DioErrorHandler<DE> {
  /// Количество попыток перевыполнения запроса
  static const defaultMaxAttemptsCount = 3;

  /// Коды ошибок при которых требуется перевыполнение запроса (без bad request)
  static const retryStatusCodesWithoutBadReq = [
    _HttpStatus.notFound,
    _HttpStatus.forbidden,
    _HttpStatus.unauthorized,
    _HttpStatus.unsupportedMediaType,
  ];

  /// Базовый список кодов ошибок при которых требуется перевыполнение запроса
  static const defaultRetryStatusCodes = [
    ...retryStatusCodesWithoutBadReq,
    _HttpStatus.badRequest,
  ];

  /// Список кодов ошибок, обозначающих неизвестное поведение сервера - [CommonResponseError.undefinedError]
  static const defaultUndefinedErrorCodes = [
    _HttpStatus.internalServerError,
    _HttpStatus.notImplemented,
    _HttpStatus.badGateway,
    _HttpStatus.serviceUnavailable,
  ];

  @protected
  final Connectivity connectivity;
  @protected
  final List<int> retryStatusCodes;
  @protected
  final List<int> undefinedErrorCodes;
  final int maxAttemptsCount;
  @protected
  ParseJsonApiError<DE> parseJsonApiError;

  DioErrorHandlerImpl({
    required this.connectivity,
    required this.parseJsonApiError,
    this.maxAttemptsCount = defaultMaxAttemptsCount,
    this.retryStatusCodes = retryStatusCodesWithoutBadReq,
    this.undefinedErrorCodes = defaultUndefinedErrorCodes,
  });

  @override
  Future<ApiResponse<CommonResponseError<DE>, T>> processRequest<T>(
      MakeRequest<T> makeRequest,
      [bool test = false]) async {
    final resultConnectivity = await connectivity.checkConnectivity();
    if (resultConnectivity == ConnectivityResult.none) {
      return const ApiResponse.error(CommonResponseError.noNetwork());
    }

    try {
      final response = await retry(
        makeRequest,
        maxAttempts: maxAttemptsCount,
        retryIf: (exception) => _retryPolicy(
          exception: exception,
          retryStatusCodes: retryStatusCodes,
        ),
      );
      if (test) {
        final apiError = response is Response
            ? await parseJsonApiError(response.data)
            : await parseJsonApiError(response);
        if (apiError != null) {
          return ApiResponse.error(CommonResponseError.customError(apiError));
        }
      }
      return ApiResponse.success(response);
    } on DioException catch (e) {
      return ApiResponse.error(await _processDioError(e));
    } on Exception catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  //Политика повторных запросов
  FutureOr<bool> _retryPolicy({
    required Exception exception,
    required List<int> retryStatusCodes,
  }) {
    if (exception is! DioException) return false;
    if (exception.type == DioExceptionType.cancel) return false;
    final response = exception.response;
    if (response == null) {
      return true;
    }

    return retryStatusCodes.contains(response.statusCode);
  }

  Future<CommonResponseError<DE>> _processDioError(DioException e) async {
    final responseData = e.response?.data;
    final statusCode = e.response?.statusCode;

    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.sendTimeout ||
        statusCode == _HttpStatus.networkConnectTimeoutError) {
      return const CommonResponseError.noNetwork();
    }

    if (statusCode == _HttpStatus.unauthorized) {
      return const CommonResponseError.unAuthorized();
    }

    if (statusCode == _HttpStatus.tooManyRequests) {
      return const CommonResponseError.tooManyRequests();
    }

    if (undefinedErrorCodes.contains(statusCode)) {
      return CommonResponseError.undefinedError(e);
    }

    Object? errorJson;
    if (responseData is String) {
      try {
        errorJson = jsonDecode(responseData);
      } on FormatException {}
    } else if (responseData is Map<String, dynamic>) {
      errorJson = responseData;
    }

    try {
      final apiError = await parseJsonApiError(errorJson);
      if (apiError != null) {
        return CommonResponseError.customError(apiError);
      }
      // ignore: avoid_catching_errors
    } on TypeError catch (_) {}

    return CommonResponseError.undefinedError(e);
  }
}

class _HttpStatus {
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int unsupportedMediaType = 415;
  static const int internalServerError = 500;
  static const int notImplemented = 501;
  static const int badGateway = 502;
  static const int serviceUnavailable = 503;

  static const int networkConnectTimeoutError = 599;
  static const int tooManyRequests = 429;
}

Future<ApiResponse<CommonResponseError<DE>, R>> handleResponse<R, T, DE>(
  FutureOr<ApiResponse<CommonResponseError<DE>, T>> response,
  R Function(T) mapper,
) async {
  try {
    final data = await response;
    if (data.hasError) {
      return ApiResponse.error(data.error);
    }
    return ApiResponse.success(mapper(data.result));
  } catch (e) {
    return ApiResponse.error(CommonResponseError.undefinedError(e));
  }
}
