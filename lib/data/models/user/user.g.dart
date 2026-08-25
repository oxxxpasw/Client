// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  token: json['token'] as String,
  systemId: json['system_id'] as String,
  createDate: json['create_date'] as String,
  userId: json['user_id'] as String,
  mobileNumber: json['mobile_number'] as String,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'token': instance.token,
  'system_id': instance.systemId,
  'create_date': instance.createDate,
  'user_id': instance.userId,
  'mobile_number': instance.mobileNumber,
};
