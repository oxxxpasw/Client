// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bonus_card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BonusCardResponse _$BonusCardResponseFromJson(Map<String, dynamic> json) =>
    _BonusCardResponse(
      cardNumber: (json['CardNumber'] as num).toInt(),
      cardType: $enumDecode(_$CardTypeEnumMap, json['CardType']),
      cardStatus: $enumDecode(_$CardStatusEnumMap, json['CardStatus']),
      purchasesSum: (json['PurchasesSum'] as num?)?.toDouble() ?? 0.0,
      bonuses: (json['Bonuses'] as num?)?.toDouble() ?? 0.0,
      holdedBonuses: (json['HoldedBonuses'] as num?)?.toDouble() ?? 0.0,
      bonusProgramName: json['BonusProgramName'] as String?,
      dateBonusBurn: json['DateBonusBurn'] == null
          ? null
          : DateTime.parse(json['DateBonusBurn'] as String),
      cardProperties: (json['CardProperties'] as List<dynamic>?)
          ?.map((e) => BonusCardProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
      bonusProgramAccounts:
          (json['BonusProgramAccounts'] as List<dynamic>?)
              ?.map(
                (e) => BonusProgramAccountResponse.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$BonusCardResponseToJson(
  _BonusCardResponse instance,
) => <String, dynamic>{
  'CardNumber': instance.cardNumber,
  'CardType': _$CardTypeEnumMap[instance.cardType]!,
  'CardStatus': _$CardStatusEnumMap[instance.cardStatus]!,
  'PurchasesSum': instance.purchasesSum,
  'Bonuses': instance.bonuses,
  'HoldedBonuses': instance.holdedBonuses,
  'BonusProgramName': instance.bonusProgramName,
  'DateBonusBurn': instance.dateBonusBurn?.toIso8601String(),
  'CardProperties': instance.cardProperties?.map((e) => e.toJson()).toList(),
  'BonusProgramAccounts': instance.bonusProgramAccounts
      .map((e) => e.toJson())
      .toList(),
};

const _$CardTypeEnumMap = {
  CardType.simple: 0,
  CardType.bronze: 1,
  CardType.silver: 2,
  CardType.gold: 3,
  CardType.superCard: 4,
  CardType.discount: 5,
  CardType.certificate: 6,
  CardType.administrator: 255,
};

const _$CardStatusEnumMap = {
  CardStatus.created: 0,
  CardStatus.binded: 1,
  CardStatus.frod: 2,
  CardStatus.trusted: 3,
  CardStatus.blocked: 255,
};

_BonusProgramAccountResponse _$BonusProgramAccountResponseFromJson(
  Map<String, dynamic> json,
) => _BonusProgramAccountResponse(
  cardNumber: (json['CardNumber'] as num?)?.toInt(),
  name: json['Name'] as String?,
  bonusProgramId: json['BonusProgramId'] as String?,
  comment: json['Comment'] as String?,
  bonusProgramActive: json['BonusProgramActive'] as bool? ?? false,
  bonuses: (json['Bonuses'] as num?)?.toDouble() ?? 0.0,
  holdedBonuses: (json['HoldedBonuses'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$BonusProgramAccountResponseToJson(
  _BonusProgramAccountResponse instance,
) => <String, dynamic>{
  'CardNumber': instance.cardNumber,
  'Name': instance.name,
  'BonusProgramId': instance.bonusProgramId,
  'Comment': instance.comment,
  'BonusProgramActive': instance.bonusProgramActive,
  'Bonuses': instance.bonuses,
  'HoldedBonuses': instance.holdedBonuses,
};

_BonusCardProperties _$BonusCardPropertiesFromJson(Map<String, dynamic> json) =>
    _BonusCardProperties(
      purchasesSumPrevious: (json['purchasesSumPrevious'] as num).toDouble(),
      purchasesSumNext: (json['purchasesSumNext'] as num?)?.toDouble(),
      cashback: json['cashback'] as String,
    );

Map<String, dynamic> _$BonusCardPropertiesToJson(
  _BonusCardProperties instance,
) => <String, dynamic>{
  'purchasesSumPrevious': instance.purchasesSumPrevious,
  'purchasesSumNext': instance.purchasesSumNext,
  'cashback': instance.cashback,
};

_BonusCardProperty _$BonusCardPropertyFromJson(Map<String, dynamic> json) =>
    _BonusCardProperty(
      id: json['id'] as String,
      apiName: $enumDecodeNullable(
        _$BonusCardPropertyApiNameEnumMap,
        json['apiName'],
        unknownValue: JsonKey.nullForUndefinedEnumValue,
      ),
      localName: json['localName'] as String,
      value: json['value'],
    );

Map<String, dynamic> _$BonusCardPropertyToJson(_BonusCardProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'apiName': _$BonusCardPropertyApiNameEnumMap[instance.apiName],
      'localName': instance.localName,
      'value': instance.value,
    };

const _$BonusCardPropertyApiNameEnumMap = {
  BonusCardPropertyApiName.nextRecount: 'ТекстСледующегоПересчета',
  BonusCardPropertyApiName.level: 'ТекстСтатусаБП',
  BonusCardPropertyApiName.cashback: 'ТекстКэшбэк',
};
