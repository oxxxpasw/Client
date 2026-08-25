// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barcode_template_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BarcodeTemplatesResponse _$BarcodeTemplatesResponseFromJson(
  Map<String, dynamic> json,
) => _BarcodeTemplatesResponse(
  templates: (json['templates'] as List<dynamic>)
      .map((e) => BarcodeTemplateResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BarcodeTemplatesResponseToJson(
  _BarcodeTemplatesResponse instance,
) => <String, dynamic>{
  'templates': instance.templates.map((e) => e.toJson()).toList(),
};

_BarcodeTemplateResponse _$BarcodeTemplateResponseFromJson(
  Map<String, dynamic> json,
) => _BarcodeTemplateResponse(
  barcodeFormat:
      $enumDecodeNullable(
        _$BarcodeFormatResponseEnumMap,
        json['barcodeFormat'],
        unknownValue: BarcodeFormatResponse.unknown,
      ) ??
      BarcodeFormatResponse.unknown,
  parts: (json['parts'] as List<dynamic>)
      .map((e) => BarcodePartResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  name: json['name'] as String?,
  prefix: json['prefix'] as String?,
);

Map<String, dynamic> _$BarcodeTemplateResponseToJson(
  _BarcodeTemplateResponse instance,
) => <String, dynamic>{
  'barcodeFormat': _$BarcodeFormatResponseEnumMap[instance.barcodeFormat]!,
  'parts': instance.parts.map((e) => e.toJson()).toList(),
  'name': instance.name,
  'prefix': instance.prefix,
};

const _$BarcodeFormatResponseEnumMap = {
  BarcodeFormatResponse.ean13: 'EAN13',
  BarcodeFormatResponse.ean128: 'Code128',
  BarcodeFormatResponse.dataMatrix: 'Data matrix',
  BarcodeFormatResponse.ean8: 'EAN8',
  BarcodeFormatResponse.unknown: 'unknown',
};

_BarcodePartResponse _$BarcodePartResponseFromJson(Map<String, dynamic> json) =>
    _BarcodePartResponse(
      startPosition: (json['startPosition'] as num).toInt(),
      endPosition: (json['endPosition'] as num).toInt(),
      length: (json['length'] as num).toInt(),
      type:
          $enumDecodeNullable(
            _$BarcodePartTypeResponseEnumMap,
            json['type'],
            unknownValue: BarcodePartTypeResponse.unknown,
          ) ??
          BarcodePartTypeResponse.unknown,
      applicationIdentifiers: json['applicationIdentifiers'] as String?,
    );

Map<String, dynamic> _$BarcodePartResponseToJson(
  _BarcodePartResponse instance,
) => <String, dynamic>{
  'startPosition': instance.startPosition,
  'endPosition': instance.endPosition,
  'length': instance.length,
  'type': _$BarcodePartTypeResponseEnumMap[instance.type]!,
  'applicationIdentifiers': instance.applicationIdentifiers,
};

const _$BarcodePartTypeResponseEnumMap = {
  BarcodePartTypeResponse.sku: 'SKU',
  BarcodePartTypeResponse.weightKg: 'weight-kg',
  BarcodePartTypeResponse.weightG: 'weight-g',
  BarcodePartTypeResponse.control: 'control',
  BarcodePartTypeResponse.gtin: 'GTIN / ШК',
  BarcodePartTypeResponse.expirationDateTime: 'Expiration date and time',
  BarcodePartTypeResponse.ddMMyy: 'ddMMyy',
  BarcodePartTypeResponse.hh: 'hh',
  BarcodePartTypeResponse.mm: 'mm',
  BarcodePartTypeResponse.unknown: 'unknown',
};
