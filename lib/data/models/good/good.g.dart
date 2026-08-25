// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'good.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Good _$GoodFromJson(Map<String, dynamic> json) => _Good(
  id: json['ID'] as String,
  price: (json['Price'] as num).toDouble(),
  oldPrice: (json['OldPrice'] as num?)?.toDouble(),
  isOnePlusOne: covertIsOnePlusOne(json, 'IsOnePlusOne') as bool? ?? false,
);

Map<String, dynamic> _$GoodToJson(_Good instance) => <String, dynamic>{
  'ID': instance.id,
  'Price': instance.price,
  'OldPrice': instance.oldPrice,
  'IsOnePlusOne': instance.isOnePlusOne,
};
