// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deactivate_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$DeactivateCardRequestToJson(
  _DeactivateCardRequest instance,
) => <String, dynamic>{
  'sub_id': instance.subId,
  'payment_type': instance.paymentType,
  'token': instance.token,
  'card_id': instance.cardId,
};

_DeactivateCardResponse _$DeactivateCardResponseFromJson(
  Map<String, dynamic> json,
) => _DeactivateCardResponse(
  message: json['message'] as String?,
  status: json['status'] as String?,
);
