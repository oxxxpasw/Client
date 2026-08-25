// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerAccountResponse _$CustomerAccountResponseFromJson(
  Map<String, dynamic> json,
) => _CustomerAccountResponse(
  cards:
      (json['Cards'] as List<dynamic>?)
          ?.map((e) => BonusCardResponse.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  promotions:
      (json['Promotions'] as List<dynamic>?)
          ?.map((e) => PromotionShortInfo.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$CustomerAccountResponseToJson(
  _CustomerAccountResponse instance,
) => <String, dynamic>{
  'Cards': instance.cards.map((e) => e.toJson()).toList(),
  'Promotions': instance.promotions.map((e) => e.toJson()).toList(),
};
