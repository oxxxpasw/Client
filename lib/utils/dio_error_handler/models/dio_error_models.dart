import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_error_models.freezed.dart';
part 'dio_error_models.g.dart';

/// Общий вид ошибки возвращаемой на запрос
@freezed
abstract class CommonResponseError<Custom> with _$CommonResponseError<Custom> {
  bool get isNoNetwork => this is _NoNetwork;

  bool get isUnAuthorized => this is _UnAuthorized;

  bool get isTooManyRequests => this is _TooManyRequests;

  bool get isCustomError => this is _CustomError<Custom>;

  bool get isUndefinedError => this is _UndefinedError;

  Custom? get safeCustom => this is _CustomError<Custom>
      ? (this as _CustomError<Custom>).customError
      : null;

  const CommonResponseError._();

  ///Во время запроса отсутствовал интернет
  const factory CommonResponseError.noNetwork() = _NoNetwork<Custom>;

  ///Не авторизован
  const factory CommonResponseError.unAuthorized() = _UnAuthorized<Custom>;

  ///Авторизован, но не заполнены пользовательские данные
  const factory CommonResponseError.unconfirmed() = _Unconfirmed<Custom>;

  ///Ошибка превышения количество запросов
  const factory CommonResponseError.tooManyRequests() =
      _TooManyRequests<Custom>;

  /// Обработана ошибка [CustomError]
  const factory CommonResponseError.customError(Custom customError) =
      _CustomError<Custom>;

  /// Неизвестная ошибка
  const factory CommonResponseError.undefinedError(Object? errorObject) =
      _UndefinedError<Custom>;

  const factory CommonResponseError.storeNotSelected() =
      _StoreNotSelected<Custom>;
}

@freezed
abstract class DefaultApiError with _$DefaultApiError {
  const factory DefaultApiError({
    required String msg,
    required String code,
  }) = _DefaultApiError;

  factory DefaultApiError.fromJson(Map<String, dynamic> json) =>
      _$DefaultApiErrorFromJson(json);
}
