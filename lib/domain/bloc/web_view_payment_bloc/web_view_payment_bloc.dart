import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'web_view_payment_bloc.freezed.dart';
part 'web_view_payment_state.dart';

@injectable
class WebViewPaymentBloc
    extends SrCubit<WebViewPaymentState, WebViewPaymentSr> {
  WebViewPaymentBloc({
    required this.appEnvironment,
  }) : super(const WebViewPaymentState());

  @protected
  final AppEnvironment appEnvironment;

  Future<NavigationActionPolicy> shouldOverrideUrlLoading(
      InAppWebViewController controller,
      NavigationAction navigationAction) async {
    final redirectUrls = appEnvironment.paymentRedirectUrl;

    final url = navigationAction.request.url;

    if (url != null) {
      final urlString = url.toString();
      if (urlString.contains(redirectUrls.successUrl)) {
        addSr(const WebViewPaymentSr.success());
        return NavigationActionPolicy.CANCEL;
      }
      if (urlString.contains(redirectUrls.failureUrl)) {
        addSr(const WebViewPaymentSr.failure());
        return NavigationActionPolicy.CANCEL;
      }
    }
    return NavigationActionPolicy.ALLOW;
  }
}
