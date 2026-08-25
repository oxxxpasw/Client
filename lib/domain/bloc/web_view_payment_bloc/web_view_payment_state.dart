part of 'web_view_payment_bloc.dart';

@freezed
abstract class WebViewPaymentState with _$WebViewPaymentState {
  const factory WebViewPaymentState() = _WebViewPaymentState;
}

@freezed
sealed class WebViewPaymentSr with _$WebViewPaymentSr {
  const factory WebViewPaymentSr.success() = OnSuccessPaymentSr;

  const factory WebViewPaymentSr.failure() = OnFailurePaymentSr;
}
