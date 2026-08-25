import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'barcode_template_response.freezed.dart';
part 'barcode_template_response.g.dart';

@freezed
abstract class BarcodeTemplatesResponse with _$BarcodeTemplatesResponse {
  const factory BarcodeTemplatesResponse({
    required List<BarcodeTemplateResponse> templates,
  }) = _BarcodeTemplatesResponse;

  factory BarcodeTemplatesResponse.fromJson(Map<String, dynamic> json) =>
      _$BarcodeTemplatesResponseFromJson(json);
}

@freezed
abstract class BarcodeTemplateResponse with _$BarcodeTemplateResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory BarcodeTemplateResponse({
    @JsonKey(
        unknownEnumValue: BarcodeFormatResponse.unknown,
        defaultValue: BarcodeFormatResponse.unknown)
    required BarcodeFormatResponse barcodeFormat,
    required List<BarcodePartResponse> parts,
    String? name,
    String? prefix,
  }) = _BarcodeTemplateResponse;

  factory BarcodeTemplateResponse.fromJson(Map<String, dynamic> json) =>
      _$BarcodeTemplateResponseFromJson(json);
}

@freezed
abstract class BarcodePartResponse with _$BarcodePartResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory BarcodePartResponse({
    required int startPosition,
    required int endPosition,
    required int length,
    @JsonKey(
        unknownEnumValue: BarcodePartTypeResponse.unknown,
        defaultValue: BarcodePartTypeResponse.unknown)
    required BarcodePartTypeResponse type,
    String? applicationIdentifiers,
  }) = _BarcodePartResponse;

  factory BarcodePartResponse.fromJson(Map<String, dynamic> json) =>
      _$BarcodePartResponseFromJson(json);
}

enum BarcodePartTypeResponse {
  @JsonValue('SKU')
  sku,
  @JsonValue('weight-kg')
  weightKg,
  @JsonValue('weight-g')
  weightG,
  @JsonValue('control')
  control,
  @JsonValue('GTIN / ШК')
  gtin,
  @JsonValue('Expiration date and time')
  expirationDateTime,
  @JsonValue('ddMMyy')
  ddMMyy,
  @JsonValue('hh')
  hh,
  @JsonValue('mm')
  mm,
  unknown,
}

enum BarcodeFormatResponse {
  @JsonValue('EAN13')
  ean13,
  @JsonValue('Code128')
  ean128,
  @JsonValue('Data matrix')
  dataMatrix,
  @JsonValue('EAN8')
  ean8,
  unknown,
}
