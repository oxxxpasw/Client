part of '../assortment_response.dart';

@freezed
abstract class ModifierResponseRestrictions with _$ModifierResponseRestrictions {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ModifierResponseRestrictions({
    @Default(0) int minQuantity,
    @Default(999) int maxQuantity,
    @Default(999) int freeQuantity,
    @Default(0) int byDefault,
    @Default(false) bool required,
  }) = _ModifierResponseRestrictions;

  factory ModifierResponseRestrictions.fromJson(Map<String, dynamic> json) =>
      _$ModifierResponseRestrictionsFromJson(json);
}

@freezed
abstract class ModifierResponse with _$ModifierResponse {
  const ModifierResponse._();

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ModifierResponse({
    required String id,
    @Default('') String name,
    String? groupId,
    required ModifierResponseRestrictions restrictions,
    @Default(0.0) double price,
  }) = _ModifierResponse;

  factory ModifierResponse.fromJson(Map<String, dynamic> json) =>
      _$ModifierResponseFromJson(json);
}
