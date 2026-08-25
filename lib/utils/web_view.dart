import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

typedef UrlChangeCallBack = void Function(Uri? url);

class MyInAppBrowser extends InAppBrowser {
  VoidCallback? _onCloseCallBack;
  UrlChangeCallBack? _onUrlChangeCallBack;

  @override
  Future onLoadStart(url) async {
    _onUrlChangeCallBack?.call(url);
  }

  @override
  void onExit() {
    _onCloseCallBack?.call();
  }

  void onCloseCallback(VoidCallback onClose) {
    _onCloseCallBack = onClose;
  }

  void onUrlChangeCallBack(UrlChangeCallBack onUrlChange) {
    _onUrlChangeCallBack = onUrlChange;
  }

  @override
  Future<ServerTrustAuthResponse?>? onReceivedServerTrustAuthRequest(
      challenge) async {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return ServerTrustAuthResponse(
          action: ServerTrustAuthResponseAction.PROCEED);
    }
    return null;
  }
}

enum PaymentBrowserStatus {
  none,
  success,
  failure,
}

class UncompletedPaymentException implements Exception {
  @override
  String toString() => 'UncompletedPaymentException';
}

class PaymentBrowser extends InAppBrowser {
  final String? successUrl;
  final String? failureUrl;

  Completer<PaymentBrowserStatus>? _completer;

  bool get _canComplete => _completer != null && !_completer!.isCompleted;

  PaymentBrowserStatus _status = PaymentBrowserStatus.none;

  PaymentBrowser({
    this.successUrl,
    this.failureUrl,
  });

  InAppBrowserSettings _getSettingsFromTheme(ThemeData? theme) =>
      InAppBrowserSettings(
        toolbarTopBackgroundColor: Colors.white,
        // hideUrlBar: true,
        // toolbarTopBackgroundColor:
        //     theme?.colorScheme.surface ?? const Color(0xFFFFFFFF),
        // toolbarBottomTranslucent: false,
        // toolbarTopTranslucent: false,
        // toolbarBottomBackgroundColor:
        //     theme?.colorScheme.surface ?? const Color(0xFFFFFFFF),
      );

  InAppWebViewSettings get _defaultWebViewSettings => InAppWebViewSettings();

  Future<PaymentBrowserStatus> openPayment({
    required URLRequest request,
    InAppBrowserSettings? browserSettings,
    InAppWebViewSettings? webViewSettings,
    ThemeData? theme,
  }) async {
    if (_canComplete) {
      throw UncompletedPaymentException();
    }
    _status = PaymentBrowserStatus.none;
    _completer = Completer<PaymentBrowserStatus>();

    final effectiveBrowserSettings =
        browserSettings ?? _getSettingsFromTheme(theme);

    final effectiveWebViewSettings = webViewSettings ?? _defaultWebViewSettings;

    unawaited(
      openUrlRequest(
        urlRequest: request,
        settings: InAppBrowserClassSettings(
          browserSettings: effectiveBrowserSettings,
          webViewSettings: effectiveWebViewSettings,
        ),
      ),
    );
    return _completer!.future;
  }

  @override
  void onExit() {
    if (_canComplete) {
      _completer!.complete(_status);
    }
  }

  @override
  void onLoadStart(WebUri? url) {
    final urlString = url.toString();
    if (successUrl != null && urlString.contains(successUrl!)) {
      _status = PaymentBrowserStatus.success;
      unawaited(close());
    }
    if (failureUrl != null && urlString.contains(failureUrl!)) {
      _status = PaymentBrowserStatus.failure;
      unawaited(close());
    }
  }

  @override
  Future<ServerTrustAuthResponse?>? onReceivedServerTrustAuthRequest(
      challenge) async {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return ServerTrustAuthResponse(
          action: ServerTrustAuthResponseAction.PROCEED);
    }
    return null;
  }
}

class MyChromeSafariBrowser extends ChromeSafariBrowser {
  MyChromeSafariBrowser({
    this.onClosedCallBack,
    this.onCompletedInitialLoadCallBack,
    this.onOpenedCallBack,
  });

  final void Function()? onOpenedCallBack;

  final void Function()? onCompletedInitialLoadCallBack;

  final void Function()? onClosedCallBack;

  @protected
  @override
  void onOpened() {
    onOpenedCallBack?.call();
  }

  @protected
  @override
  void onCompletedInitialLoad(_) {
    onCompletedInitialLoadCallBack?.call();
  }

  @protected
  @override
  void onClosed() {
    onClosedCallBack?.call();
  }
}
