import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:easy_localization/easy_localization.dart';

abstract class ErrorMessages {
  ErrorMessages._();

  static String getMessage(CommonResponseError error) {
    return error.map(
      unAuthorized: (_) => unAuthorized,
      tooManyRequests: (_) => tooManyRequests,
      noNetwork: (_) => noNetwork,
      undefinedError: (_) => undefinedError,
      customError: (value) {
        final error = value.customError;
        if (error is DefaultApiError) {
          return error.msg;
        }
        return error.toString();
      },
      unconfirmed: (_) => unconfirmed,
      storeNotSelected: (_) => pointNotSelected,
    );
  }

  static String get unAuthorized => tr(LocaleKeys.messages_error_unAuthorized);

  static String get tooManyRequests =>
      tr(LocaleKeys.messages_error_tooManyRequests);

  static String get noNetwork => tr(LocaleKeys.messages_error_noNetwork);

  static String get undefinedError =>
      tr(LocaleKeys.messages_error_undefinedError);

  static String get unconfirmed => tr(LocaleKeys.messages_error_unconfirmed);

  static String get qrScanUndefinedError =>
      tr(LocaleKeys.messages_error_qrScanUndefinedError);

  static String get minOrderPriseErrorMessage =>
      tr(LocaleKeys.messages_error_minOrderPriseErrorMessage);

  static String get preOrderDisabled =>
      tr(LocaleKeys.messages_error_preOrderDisabled);

  static String get pointNotSelected =>
      tr(LocaleKeys.messages_error_pointNotSelected);

  static String get orderError => tr(LocaleKeys.messages_error_orderError);

  static String get orderOfferError =>
      tr(LocaleKeys.messages_error_orderOfferError);

  static String get productNotFound =>
      tr(LocaleKeys.messages_error_productNotFound);

  static String get fridgeNotFound =>
      tr(LocaleKeys.messages_error_fridgeNotFound);

  static String get expiredProduct =>
      tr(LocaleKeys.messages_error_expiredProduct);

  static String get invalidBarcode =>
      tr(LocaleKeys.messages_error_invalidBarcode);
}

enum MessageType {
  success,
  error,
  warning,
  message,
}
