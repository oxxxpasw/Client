import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';

part 'accepted_order.freezed.dart';
part 'accepted_order.g.dart';

@freezed
abstract class AcceptedOrderResponse with _$AcceptedOrderResponse {
  const AcceptedOrderResponse._();

  const factory AcceptedOrderResponse({
    @JsonKey(name: 'data') required AcceptedOrderResponseData data,
    required DateTime createdDatetime,
    required String id,
    String? externalId,
    String? publicId,
    @Default(OrderStatus.unknown)
    @JsonKey(unknownEnumValue: OrderStatus.unknown)
    OrderStatus status,
    @JsonKey(readValue: _readStatusH) String? statusH,
  }) = _AcceptedOrderResponse;

  String get effectiveId => publicId ?? externalId ?? id;

  factory AcceptedOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$AcceptedOrderResponseFromJson(json);
}

String? _readStatusH(Map json, String key) => json[key] ?? json['status'];

@freezed
abstract class AcceptedOrderResponseData with _$AcceptedOrderResponseData {
  const factory AcceptedOrderResponseData({
    @Default([]) List<AcceptedOrderPaymentResponse> payment,
    @Default([]) List<AcceptedOrderProductResponse> products,
    String? deliveryName,
    String? phone,
    DateTime? datetime,
    DeliveryAddress? deliveryAddress,
    String? comment,
    String? name,
    int? persons,
    @Default(OrderStatus.unknown)
    @JsonKey(unknownEnumValue: OrderStatus.unknown)
    OrderStatus status,
    @JsonKey(readValue: _readStatusH) String? statusH,
    @Default(0.0) @JsonKey(name: 'originalSumm') double originalSumm,
    String? point,
    @JsonKey(name: 'pointName') String? pointName,
    String? ofdReceiptUrl,
    String? purchaseId,
    String? cardNumber,
    Store? pointData,
  }) = _AcceptedOrderResponseData;

  factory AcceptedOrderResponseData.fromJson(Map<String, dynamic> json) =>
      _$AcceptedOrderResponseDataFromJson(json);
}

@freezed
abstract class AcceptedOrderPaymentResponse with _$AcceptedOrderPaymentResponse {
  const factory AcceptedOrderPaymentResponse({
    double? sum,
    String? type,
    String? name,
  }) = _AcceptedOrderPaymentResponse;

  factory AcceptedOrderPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$AcceptedOrderPaymentResponseFromJson(json);
}

@freezed
abstract class AcceptedOrderProductResponse with _$AcceptedOrderProductResponse {
  const factory AcceptedOrderProductResponse({
    required String id,
    required double price,
    String? name,
    String? image,
    @Default([]) List<AcceptedOrderModifierGroup> modifiers,
    double? quantity,
    double? amount,
    @Default('BYN') @JsonKey(name: 'currencySymbol') String currencySymbol,
  }) = _AcceptedOrderProductResponse;

  factory AcceptedOrderProductResponse.fromJson(Map<String, dynamic> json) =>
      _$AcceptedOrderProductResponseFromJson(json);
}

@freezed
abstract class AcceptedOrderModifierGroup with _$AcceptedOrderModifierGroup {
  const factory AcceptedOrderModifierGroup({
    required String id,
    String? name,
    required List<AcceptedOrderModifier> options,
  }) = _AcceptedOrderModifierGroup;

  factory AcceptedOrderModifierGroup.fromJson(Map<String, dynamic> json) =>
      _$AcceptedOrderModifierGroupFromJson(json);
}

@freezed
abstract class AcceptedOrderModifier with _$AcceptedOrderModifier {
  const factory AcceptedOrderModifier({
    required String id,
    String? name,
    double? quantity,
    double? price,
  }) = _AcceptedOrderModifier;

  factory AcceptedOrderModifier.fromJson(Map<String, dynamic> json) =>
      _$AcceptedOrderModifierFromJson(json);
}

@freezed
abstract class DeliveryAddress with _$DeliveryAddress {
  const DeliveryAddress._();

  const factory DeliveryAddress({
    String? street,
    String? building,
    String? city,
    String? house,
    String? entrance,
    String? doorphone,
    String? floor,
    String? flat,
  }) = _DeliveryAddress;

  factory DeliveryAddress.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAddressFromJson(json);

  @JsonKey(ignore: true)
  bool get isPickUp => street == null || street!.isEmpty;
}

enum OrderStatus {
  @JsonValue('readyToStart')
  readyToStart,
  @JsonValue('paid')
  paid,
  @JsonValue('inProgress')
  inProgress,
  @JsonValue('printedCheck')
  @JsonValue('complete')
  complete,
  @JsonValue('cancel')
  cancel,
  @JsonValue('newOrder')
  newOrder,
  @JsonValue('issued')
  issued,
  @JsonValue('overdue')
  overdue,
  @JsonValue('refund')
  refund,
  unknown,
}
