import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sbp_response.freezed.dart';
part 'sbp_response.g.dart';

@freezed
abstract class SbpBankResponse with _$SbpBankResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SbpBankResponse({
    String? bankName,
    Uri? logoURL,
    String? schema,
    @JsonKey(name: 'package_name') String? packageName,
  }) = _SbpBankResponse;

  factory SbpBankResponse.fromJson(Map<String, dynamic> json) =>
      _$SbpBankResponseFromJson(json);
}

@freezed
abstract class SbpResponse with _$SbpResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SbpResponse({
    String? version,
    @Default([]) List<SbpBankResponse> dictionary,
  }) = _SbpResponse;

  factory SbpResponse.fromJson(Map<String, dynamic> json) =>
      _$SbpResponseFromJson(json);
}
