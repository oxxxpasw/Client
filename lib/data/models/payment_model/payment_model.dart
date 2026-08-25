import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
abstract class PaymentResponse with _$PaymentResponse {
  const factory PaymentResponse({
    PaymentData? paymentData,
    required PaymentRequestData paymentRequest,
  }) = _PaymentResponse;

  factory PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseFromJson(json);
}

@freezed
abstract class PaymentData with _$PaymentData {
  const factory PaymentData({
    Uri? paymentUrl,
  }) = _PaymentData;

  factory PaymentData.fromJson(Map<String, dynamic> json) =>
      _$PaymentDataFromJson(json);
}

@freezed
abstract class PaymentRequestData with _$PaymentRequestData {
  const factory PaymentRequestData({
    required double amount,
    required String id,
    required String orderId,
    @JsonKey(unknownEnumValue: PaymentMethod.unknown)
    required PaymentMethod? type,
    required String paymentId,
  }) = _PaymentRequestData;

  factory PaymentRequestData.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestDataFromJson(json);
}

@freezed
abstract class PaymentStatusResponse with _$PaymentStatusResponse {
  const factory PaymentStatusResponse({
    @JsonKey(unknownEnumValue: PaymentStatus.unknown)
    required PaymentStatus status,
  }) = _PaymentStatus;

  factory PaymentStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentStatusResponseFromJson(json);
}

enum PaymentStatus {
  @JsonValue('NEW')
  newPayment,
  @JsonValue('CREATED')
  created,
  @JsonValue('CANCELED')
  canceled,
  @JsonValue('OVERDUE')
  overdue,
  @JsonValue('PAID')
  paid,
  @JsonValue('NOTIFIED')
  notified,
  @JsonValue('INTERNAL_ERROR')
  internalError,
  @JsonValue('PROCESSING')
  processing,
  unknown,
}

enum PaymentMethod {
  @JsonValue('CASH')
  cash,
  @JsonValue('CARD')
  card,
  @JsonValue('SBP')
  sbp,
  @JsonValue('LINKED_CARD')
  linkedCard,
  @JsonValue('APPLE_PAY')
  applePay,
  fullBonuses,
  unknown,
}
