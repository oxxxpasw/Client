// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateOrderResponse _$CreateOrderResponseFromJson(Map<String, dynamic> json) =>
    _CreateOrderResponse(
      publicId: json['public_id'] as String?,
      orderId: json['order_id'] as String,
    );

Map<String, dynamic> _$CreateOrderResponseToJson(
  _CreateOrderResponse instance,
) => <String, dynamic>{
  'public_id': instance.publicId,
  'order_id': instance.orderId,
};
