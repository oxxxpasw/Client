// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ReviewDataRequestToJson(_ReviewDataRequest instance) =>
    <String, dynamic>{
      'store': instance.store?.toJson(),
      'product': instance.product?.toJson(),
      'purchase': instance.purchase?.toJson(),
    };

Map<String, dynamic> _$ReviewStoreDataRequestToJson(
  _ReviewStoreDataRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'address': instance.address,
};

Map<String, dynamic> _$ReviewProductDataRequestToJson(
  _ReviewProductDataRequest instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

Map<String, dynamic> _$ReviewPurchaseDataRequestToJson(
  _ReviewPurchaseDataRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'created_datetime': instance.createdDatetime?.toIso8601String(),
  'products': instance.products.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'store': instance.store?.toJson(),
};

Map<String, dynamic> _$ReviewOrderedProductRequestToJson(
  _ReviewOrderedProductRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'price': instance.price,
  'name': instance.name,
  'image': instance.image,
  'modifiers': instance.modifiers.map((e) => e.toJson()).toList(),
  'quantity': instance.quantity,
  'currency_symbol': instance.currencySymbol,
};

Map<String, dynamic> _$ReviewOrderedModifierGroupRequestToJson(
  _ReviewOrderedModifierGroupRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'options': instance.options.map((e) => e.toJson()).toList(),
};

Map<String, dynamic> _$ReviewOrderedModifierRequestToJson(
  _ReviewOrderedModifierRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'quantity': instance.quantity,
  'price': instance.price,
};
