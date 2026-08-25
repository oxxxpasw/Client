// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDataResponse _$UserDataResponseFromJson(Map<String, dynamic> json) =>
    _UserDataResponse(
      firstName: json['first_name'] as String?,
      surname: json['surname'] as String?,
      birthDay: json['birth_day'] == null
          ? null
          : DateTime.parse(json['birth_day'] as String),
      gender: $enumDecodeNullable(
        _$GenderEnumMap,
        json['gender'],
        unknownValue: Gender.unknown,
      ),
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UserDataResponseToJson(_UserDataResponse instance) =>
    <String, dynamic>{
      'first_name': ?instance.firstName,
      'surname': ?instance.surname,
      'birth_day': ?instance.birthDay?.toIso8601String(),
      'gender': ?_$GenderEnumMap[instance.gender],
      'email': ?instance.email,
    };

const _$GenderEnumMap = {
  Gender.men: 'men',
  Gender.women: 'woman',
  Gender.unknown: 'unknown',
};
