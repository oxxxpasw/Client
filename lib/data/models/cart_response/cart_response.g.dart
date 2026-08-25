// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerApiRequest _$CustomerApiRequestFromJson(Map<String, dynamic> json) =>
    _CustomerApiRequest(
      date: DateTime.parse(json['date'] as String),
      summ: (json['summ'] as num).toDouble(),
      summWithoutDiscount: (json['summWithoutDiscount'] as num).toDouble(),
      storeId: json['storeId'] as String,
      token: json['token'] as String?,
      positions: (json['positions'] as List<dynamic>)
          .map((e) => PurchasePosition.fromJson(e as Map<String, dynamic>))
          .toList(),
      bonusesSumm: (json['bonusesSumm'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$CustomerApiRequestToJson(_CustomerApiRequest instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'summ': instance.summ,
      'summWithoutDiscount': instance.summWithoutDiscount,
      'storeId': instance.storeId,
      'token': instance.token,
      'positions': instance.positions.map((e) => e.toJson()).toList(),
      'bonusesSumm': instance.bonusesSumm,
    };
