import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:sosedifedi/data/models/payment_model/payment_model.dart'
    show PaymentMethod;

part 'payment.freezed.dart';

@freezed
sealed class Payment with _$Payment {
  const Payment._();

  const factory Payment.sbp({
    required double amount,
    required String id,
    required String orderId,
    required String paymentId,
    required Uri paymentUrl,
  }) = SbpPayment;

  const factory Payment.card({
    required double amount,
    required String id,
    required String orderId,
    required String paymentId,
    required Uri paymentUrl,
  }) = CardPayment;

  const factory Payment.cash({
    required double amount,
    required String id,
    required String orderId,
    required String paymentId,
  }) = CashPayment;

  const factory Payment.linkedCard({
    required double amount,
    required String id,
    required String orderId,
    required String paymentId,
    Uri? paymentUrl,
  }) = LinkedCardPayment;

  const factory Payment.applePay({
    required double amount,
    required String id,
    required String orderId,
    required String paymentId,
  }) = ApplePayPayment;

  const factory Payment.unknown({
    required double amount,
    required String id,
    required String orderId,
    required String paymentId,
    Uri? paymentUrl,
  }) = UnkownPayment;

  const factory Payment.fullBonuses({
    required double amount,
    required String id,
    required String orderId,
    required String paymentId,
  }) = FullBonusesPayment;

  bool get isCashPayment => switch (this) {
        SbpPayment() => false,
        CardPayment() => false,
        CashPayment() => true,
        LinkedCardPayment() => false,
        UnkownPayment(:final paymentUrl) => paymentUrl == null,
        ApplePayPayment() => false,
        FullBonusesPayment() => false,
      };
}
