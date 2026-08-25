// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sbp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SbpBankResponse _$SbpBankResponseFromJson(Map<String, dynamic> json) =>
    _SbpBankResponse(
      bankName: json['bankName'] as String?,
      logoURL: json['logoURL'] == null
          ? null
          : Uri.parse(json['logoURL'] as String),
      schema: json['schema'] as String?,
      packageName: json['package_name'] as String?,
    );

Map<String, dynamic> _$SbpBankResponseToJson(_SbpBankResponse instance) =>
    <String, dynamic>{
      'bankName': instance.bankName,
      'logoURL': instance.logoURL?.toString(),
      'schema': instance.schema,
      'package_name': instance.packageName,
    };

_SbpResponse _$SbpResponseFromJson(Map<String, dynamic> json) => _SbpResponse(
  version: json['version'] as String?,
  dictionary:
      (json['dictionary'] as List<dynamic>?)
          ?.map((e) => SbpBankResponse.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$SbpResponseToJson(_SbpResponse instance) =>
    <String, dynamic>{
      'version': instance.version,
      'dictionary': instance.dictionary.map((e) => e.toJson()).toList(),
    };
