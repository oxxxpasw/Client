// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashPaymentType _$CashPaymentTypeFromJson(Map<String, dynamic> json) =>
    CashPaymentType(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      imageName: json['image_name'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CashPaymentTypeToJson(CashPaymentType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_name': instance.imageName,
      'type': instance.$type,
    };

CardPaymentType _$CardPaymentTypeFromJson(Map<String, dynamic> json) =>
    CardPaymentType(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      imageName: json['image_name'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$CardPaymentTypeToJson(CardPaymentType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_name': instance.imageName,
      'type': instance.$type,
    };

SbpPaymentType _$SbpPaymentTypeFromJson(Map<String, dynamic> json) =>
    SbpPaymentType(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      imageName: json['image_name'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$SbpPaymentTypeToJson(SbpPaymentType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_name': instance.imageName,
      'type': instance.$type,
    };

LinkedCardPaymentType _$LinkedCardPaymentTypeFromJson(
  Map<String, dynamic> json,
) => LinkedCardPaymentType(
  id: json['id'] as String,
  name: json['name'] as String? ?? '',
  imageName: json['image_name'] as String?,
  data: LinkedCardData.fromJson(json['data'] as Map<String, dynamic>),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$LinkedCardPaymentTypeToJson(
  LinkedCardPaymentType instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image_name': instance.imageName,
  'data': instance.data.toJson(),
  'type': instance.$type,
};

RegisterCardPaymentType _$RegisterCardPaymentTypeFromJson(
  Map<String, dynamic> json,
) => RegisterCardPaymentType(
  id: json['id'] as String,
  name: json['name'] as String? ?? '',
  imageName: json['image_name'] as String?,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$RegisterCardPaymentTypeToJson(
  RegisterCardPaymentType instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image_name': instance.imageName,
  'type': instance.$type,
};

ApplePayPaymentType _$ApplePayPaymentTypeFromJson(Map<String, dynamic> json) =>
    ApplePayPaymentType(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      imageName: json['image_name'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ApplePayPaymentTypeToJson(
  ApplePayPaymentType instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image_name': instance.imageName,
  'type': instance.$type,
};

UnknownPaymentType _$UnknownPaymentTypeFromJson(Map<String, dynamic> json) =>
    UnknownPaymentType(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      imageName: json['image_name'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$UnknownPaymentTypeToJson(UnknownPaymentType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_name': instance.imageName,
      'type': instance.$type,
    };

_LinkedCardData _$LinkedCardDataFromJson(Map<String, dynamic> json) =>
    _LinkedCardData(
      cardId: json['card_id'] as String,
      cardNumber: json['card_number'] as String,
      cardType:
          $enumDecodeNullable(
            _$LinkedCardTypeEnumMap,
            json['card_type'],
            unknownValue: LinkedCardType.unknown,
          ) ??
          LinkedCardType.unknown,
    );

Map<String, dynamic> _$LinkedCardDataToJson(_LinkedCardData instance) =>
    <String, dynamic>{
      'card_id': instance.cardId,
      'card_number': instance.cardNumber,
      'card_type': _$LinkedCardTypeEnumMap[instance.cardType]!,
    };

const _$LinkedCardTypeEnumMap = {
  LinkedCardType.visa: 'VISA',
  LinkedCardType.mastercard: 'MASTERCARD',
  LinkedCardType.mir: 'MIR',
  LinkedCardType.unionpay: 'UNIONPAY',
  LinkedCardType.unknown: 'unknown',
};
