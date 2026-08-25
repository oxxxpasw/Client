// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) =>
    _PaymentResponse(
      paymentData: json['payment_data'] == null
          ? null
          : PaymentData.fromJson(json['payment_data'] as Map<String, dynamic>),
      paymentRequest: PaymentRequestData.fromJson(
        json['payment_request'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PaymentResponseToJson(_PaymentResponse instance) =>
    <String, dynamic>{
      'payment_data': instance.paymentData?.toJson(),
      'payment_request': instance.paymentRequest.toJson(),
    };

_PaymentData _$PaymentDataFromJson(Map<String, dynamic> json) => _PaymentData(
  paymentUrl: json['payment_url'] == null
      ? null
      : Uri.parse(json['payment_url'] as String),
);

Map<String, dynamic> _$PaymentDataToJson(_PaymentData instance) =>
    <String, dynamic>{'payment_url': instance.paymentUrl?.toString()};

_PaymentRequestData _$PaymentRequestDataFromJson(Map<String, dynamic> json) =>
    _PaymentRequestData(
      amount: (json['amount'] as num).toDouble(),
      id: json['id'] as String,
      orderId: json['order_id'] as String,
      type: $enumDecodeNullable(
        _$PaymentMethodEnumMap,
        json['type'],
        unknownValue: PaymentMethod.unknown,
      ),
      paymentId: json['payment_id'] as String,
    );

Map<String, dynamic> _$PaymentRequestDataToJson(_PaymentRequestData instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'id': instance.id,
      'order_id': instance.orderId,
      'type': _$PaymentMethodEnumMap[instance.type],
      'payment_id': instance.paymentId,
    };

const _$PaymentMethodEnumMap = {
  PaymentMethod.cash: 'CASH',
  PaymentMethod.card: 'CARD',
  PaymentMethod.sbp: 'SBP',
  PaymentMethod.linkedCard: 'LINKED_CARD',
  PaymentMethod.applePay: 'APPLE_PAY',
  PaymentMethod.fullBonuses: 'fullBonuses',
  PaymentMethod.unknown: 'unknown',
};

_PaymentStatus _$PaymentStatusFromJson(Map<String, dynamic> json) =>
    _PaymentStatus(
      status: $enumDecode(
        _$PaymentStatusEnumMap,
        json['status'],
        unknownValue: PaymentStatus.unknown,
      ),
    );

Map<String, dynamic> _$PaymentStatusToJson(_PaymentStatus instance) =>
    <String, dynamic>{'status': _$PaymentStatusEnumMap[instance.status]!};

const _$PaymentStatusEnumMap = {
  PaymentStatus.newPayment: 'NEW',
  PaymentStatus.created: 'CREATED',
  PaymentStatus.canceled: 'CANCELED',
  PaymentStatus.overdue: 'OVERDUE',
  PaymentStatus.paid: 'PAID',
  PaymentStatus.notified: 'NOTIFIED',
  PaymentStatus.internalError: 'INTERNAL_ERROR',
  PaymentStatus.processing: 'PROCESSING',
  PaymentStatus.unknown: 'unknown',
};
