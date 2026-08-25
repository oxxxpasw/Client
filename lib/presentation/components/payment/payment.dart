import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:sosedifedi/domain/models/payment/payment.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';

import 'screens/web_view_payment_screen.dart';

class PaymentHandler {
  PaymentHandler({
    required this.payment,
    required this.storeId,
    this.onCashPayment,
    this.onUnknownPayment,
    this.onCardPayment,
    this.onSbpPayment,
    this.onSbpBankOpen,
  });

  final Payment payment;
  final String storeId;

  //Коллбеки для оплаты наличными
  final VoidCallback? onCashPayment;

  //Коллбеки для неизвестной оплаты
  final VoidCallback? onUnknownPayment;

  //Коллбеки для оплаты картой
  final VoidCallback? onCardPayment;

  //Коллбеки для СБП
  final VoidCallback? onSbpPayment;
  final VoidCallback? onSbpBankOpen;

  ///Функция обработки оплаты. Возвращает [true] если это оплата не наличными
  ///и оплата прошла успешно. Если оплата наличными или оплата прошла не успешно,
  ///то возвращается [false].
  Future<bool> processPayment(BuildContext context) {
    return switch (payment) {
      CashPayment() => Future.value(true),
      CardPayment(:final paymentUrl, :final paymentId) => _processCardPayment(
          context: context, paymentUrl: paymentUrl, paymentId: paymentId),
      SbpPayment(:final paymentUrl, :final paymentId) => _processSBPPayment(
          context: context, paymentUrl: paymentUrl, paymentId: paymentId),
      LinkedCardPayment(:final paymentId, :final paymentUrl) =>
        _processLinkedCardPayment(
            context: context, paymentId: paymentId, paymentUrl: paymentUrl),
      ApplePayPayment(:final paymentId) =>
        _processLinkedCardPayment(context: context, paymentId: paymentId),
      UnkownPayment(:final paymentUrl, :final paymentId)
          when paymentUrl != null =>
        _processCardPayment(
            context: context, paymentUrl: paymentUrl, paymentId: paymentId),
      FullBonusesPayment() => Future.value(true),
      UnkownPayment() => Future.value(false),
    };
  }

  Future<bool> _processCardPayment({
    required BuildContext context,
    required Uri paymentUrl,
    required String paymentId,
  }) async {
    onCardPayment?.call();
    final router = context.router.root;
    final webViewPaymentResult = await router.push<WebViewPaymentResult>(
      WebViewPaymentRoute(
        url: paymentUrl.toString(),
      ),
    );

    if (webViewPaymentResult == WebViewPaymentResult.failure) return false;

    return true;

    // final result = await router.push(
    //   PaymentCompletionWaitingRoute(
    //     paymentId: paymentId,
    //     storeId: storeId,
    //     onPayment: () {
    //       router.pop(true);
    //     },
    //     onFailedPayment: () {
    //       router.pop(false);
    //     },
    //   ),
    // );
    // return result == true;
  }

  Future<bool> _processLinkedCardPayment({
    required BuildContext context,
    required String paymentId,
    Uri? paymentUrl,
  }) async {
    onCardPayment?.call();
    if (paymentUrl == null) {
      return true;
    }

    final router = context.router.root;
    final webViewPaymentResult = await router.push<WebViewPaymentResult>(
      WebViewPaymentRoute(
        url: paymentUrl.toString(),
      ),
    );

    if (webViewPaymentResult == WebViewPaymentResult.failure) return false;

    return true;
    // final router = context.router.root;
    // final result = await router.push(
    //   PaymentCompletionWaitingRoute(
    //     paymentId: paymentId,
    //     storeId: storeId,
    //     onPayment: () {
    //       router.pop(true);
    //     },
    //     onFailedPayment: () {
    //       router.pop(false);
    //     },
    //   ),
    // );
    // return result == true;
  }

  Future<bool> _processSBPPayment({
    required BuildContext context,
    required Uri paymentUrl,
    required String paymentId,
  }) async {
    onSbpPayment?.call();
    final router = context.router.root;
    final result = await router.push(
      ChooseSpbPaymentRoute(
        qrUrl: paymentUrl,
        paymentId: paymentId,
        storeId: storeId,
        onPayment: () {
          router.pop(true);
        },
        onFailedPayment: () {
          router.pop(false);
        },
        onBankOpened: () {
          onSbpBankOpen?.call();
        },
      ),
    );
    return result == true;
  }
}
