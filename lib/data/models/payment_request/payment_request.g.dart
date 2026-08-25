// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentRequest _$PaymentRequestFromJson(Map<String, dynamic> json) =>
    _PaymentRequest(
      subId: json['sub_id'] as String,
      amount: (json['amount'] as num).toDouble(),
      orderId: json['order_id'] as String,
      paymentType: json['payment_type'] as String?,
      paymentData: PaymentRequestData.fromJson(
        json['payment_data'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PaymentRequestToJson(_PaymentRequest instance) =>
    <String, dynamic>{
      'sub_id': instance.subId,
      'amount': instance.amount,
      'order_id': instance.orderId,
      'payment_type': ?instance.paymentType,
      'payment_data': instance.paymentData.toJson(),
    };

_PaymentRequestData _$PaymentRequestDataFromJson(Map<String, dynamic> json) =>
    _PaymentRequestData(
      successUrl: json['success_url'] as String?,
      failureUrl: json['failure_url'] as String?,
      cardId: json['card_id'] as String?,
      authToken: json['auth_token'] as String?,
      purchaseId: json['purchase_id'] as String?,
      cardNumber: json['card_number'] as String?,
      loyalty: json['loyalty'] as bool? ?? false,
      bonusAmount: (json['bonus_amount'] as num?)?.toDouble(),
      applePayToken: json['apple_pay_token'] as String?,
    );

Map<String, dynamic> _$PaymentRequestDataToJson(_PaymentRequestData instance) =>
    <String, dynamic>{
      'success_url': ?instance.successUrl,
      'failure_url': ?instance.failureUrl,
      'card_id': ?instance.cardId,
      'auth_token': ?instance.authToken,
      'purchase_id': ?instance.purchaseId,
      'card_number': ?instance.cardNumber,
      'loyalty': instance.loyalty,
      'bonus_amount': ?instance.bonusAmount,
      'apple_pay_token': ?instance.applePayToken,
    };
