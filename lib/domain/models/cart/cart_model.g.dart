// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$CartToJson(_Cart instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'store': instance.store?.toJson(),
  'products': instance.products.map((e) => e.toJson()).toList(),
  'unavailable_products': instance.unavailableProducts
      .map((e) => e.toJson())
      .toList(),
  'summ': instance.summ,
  'summ_without_discount': instance.summWithoutDiscount,
  'bonuses_to_spent': instance.bonusesToSpent,
  'can_use_bonuses': instance.canUseBonuses,
  'use_bonuses': instance.useBonuses,
  'fridge_id': instance.fridgeId,
  'coffee_machine_id': instance.coffeeMachineId,
  'purchase': instance.purchase?.toJson(),
};
