import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

/// Сущность для описания вычислений, которые могут идти двумя путями [Error] или [Result]
/// Классически используется для обработки ошибок, обычная левая часть выступает в качестве ошибки, а правая в качестве результата
@freezed
abstract class ApiResponse<Error, Result> with _$ApiResponse<Error, Result> {
  bool get hasError => this is _ApiResponseError<Error, Result>;

  bool get isSuccess => this is _ApiResponseSuccess<Error, Result>;

  /// Представляет левую часть класса [Either], которая по соглашению является "Ошибкой"
  Error get error => (this as _ApiResponseError<Error, Result>).error;

  /// Представляет правую часть класса [Either], которая по соглашению является "Успехом"
  Result get result => (this as _ApiResponseSuccess<Error, Result>).result;

  const ApiResponse._();

  const factory ApiResponse.error(Error error) = _ApiResponseError;

  const factory ApiResponse.success(Result result) = _ApiResponseSuccess;
}

typedef DefaultResponse<T>
    = ApiResponse<CommonResponseError<DefaultApiError>, T>;
