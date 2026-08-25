// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_quantity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreQuantity _$StoreQuantityFromJson(Map<String, dynamic> json) =>
    _StoreQuantity(
      storeId: json['storeId'] as String,
      quantity: (json['quantity'] as num?)?.toDouble(),
      quantityText: json['quantityText'] as String?,
    );

Map<String, dynamic> _$StoreQuantityToJson(_StoreQuantity instance) =>
    <String, dynamic>{
      'storeId': instance.storeId,
      'quantity': instance.quantity,
      'quantityText': instance.quantityText,
    };
