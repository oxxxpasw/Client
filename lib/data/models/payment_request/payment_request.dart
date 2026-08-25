import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_request.freezed.dart';
part 'payment_request.g.dart';

@freezed
abstract class PaymentRequest with _$PaymentRequest {
  @JsonSerializable(includeIfNull: false)
  const factory PaymentRequest({
    required String subId,
    required double amount,
    required String orderId,
    required String? paymentType,
    required PaymentRequestData paymentData,
  }) = _PaymentRequest;

  factory PaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestFromJson(json);
}

@freezed
abstract class PaymentRequestData with _$PaymentRequestData {
  @JsonSerializable(includeIfNull: false)
  const factory PaymentRequestData({
    String? successUrl,
    String? failureUrl,
    String? cardId,
    String? authToken,
    String? purchaseId,
    String? cardNumber,
    @Default(false) bool loyalty,
    double? bonusAmount,
    String? applePayToken,
  }) = _PaymentRequestData;

  factory PaymentRequestData.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestDataFromJson(json);
}
