import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/web_view_payment_bloc/web_view_payment_bloc.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

enum WebViewPaymentResult { success, failure }

@RoutePage()
class WebViewPaymentScreen extends StatefulWidget implements AutoRouteWrapper {
  const WebViewPaymentScreen({
    super.key,
    required this.url,
    this.webViewSettings,
  });

  final String url;
  final InAppWebViewSettings? webViewSettings;

  @override
  State<WebViewPaymentScreen> createState() => _WebViewPaymentScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<WebViewPaymentBloc>(
      create: (context) => GetIt.I.get(),
      child: this,
    );
  }
}

class _WebViewPaymentScreenState extends State<WebViewPaymentScreen> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;

  InAppWebViewSettings get _defaultWebViewSettings => InAppWebViewSettings();

  @override
  Widget build(BuildContext context) {
    final effectiveWebViewSettings =
        widget.webViewSettings ?? _defaultWebViewSettings;

    return SrBlocBuilder<WebViewPaymentBloc, WebViewPaymentState,
        WebViewPaymentSr>(
      onSR: (context, sr) => switch (sr) {
        OnSuccessPaymentSr() =>
          Navigator.pop(context, WebViewPaymentResult.success),
        OnFailurePaymentSr() =>
          Navigator.pop(context, WebViewPaymentResult.failure),
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: const AutoLeadingButton(),
          ),
          body: SafeArea(
            child: InAppWebView(
              key: webViewKey,
              initialUrlRequest: URLRequest(url: WebUri(widget.url)),
              initialSettings: effectiveWebViewSettings,
              onWebViewCreated: (controller) async {
                webViewController = controller;
                if (!kIsWeb &&
                    defaultTargetPlatform == TargetPlatform.android) {
                  await controller.startSafeBrowsing();
                }
              },
              shouldOverrideUrlLoading:
                  context.read<WebViewPaymentBloc>().shouldOverrideUrlLoading,
            ),
          ),
        );
      },
    );
  }
}
