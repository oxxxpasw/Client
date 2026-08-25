// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$LinkCardRequestToJson(_LinkCardRequest instance) =>
    <String, dynamic>{
      'sub_id': instance.subId,
      'payment_type': instance.paymentType,
      'token': instance.token,
    };

_LinkCardResponse _$LinkCardResponseFromJson(Map<String, dynamic> json) =>
    _LinkCardResponse(
      data: json['data'] == null ? null : Uri.parse(json['data'] as String),
      message: json['message'] as String?,
      status: json['status'] as String?,
    );
