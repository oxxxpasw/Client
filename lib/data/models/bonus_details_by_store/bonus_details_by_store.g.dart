// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bonus_details_by_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BonusDetailsByStore _$BonusDetailsByStoreFromJson(Map<String, dynamic> json) =>
    _BonusDetailsByStore(
      cardNumber: (json['CardNumber'] as num).toInt(),
      bonusProgramId: json['BonusProgramId'] as String,
      bonusProgramActive: json['BonusProgramActive'] as bool? ?? false,
      bonuses: (json['Bonuses'] as num).toDouble(),
      name: json['Name'] as String?,
    );

Map<String, dynamic> _$BonusDetailsByStoreToJson(
  _BonusDetailsByStore instance,
) => <String, dynamic>{
  'CardNumber': instance.cardNumber,
  'BonusProgramId': instance.bonusProgramId,
  'BonusProgramActive': instance.bonusProgramActive,
  'Bonuses': instance.bonuses,
  'Name': instance.name,
};
