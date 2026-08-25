part of '../assortment_response.dart';

@freezed
abstract class ModifierGroupResponse with _$ModifierGroupResponse {
  const ModifierGroupResponse._();

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ModifierGroupResponse({
    required String id,
    @Default('') String name,
    required ModifierGroupResponseRestriction restrictions,
    @Default(ModifierSelectionType.dropdown)
        ModifierSelectionType modifierSelectionType,
  }) = _ModifierGroupResponse;

  factory ModifierGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$ModifierGroupResponseFromJson(json);
}

@freezed
abstract class ModifierGroupResponseRestriction with _$ModifierGroupResponseRestriction {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ModifierGroupResponseRestriction({
    @Default(0) int minQuantity,
    @Default(999) int maxQuantity,
    @Default(false) bool required,
  }) = _ModifierGroupRestriction;

  factory ModifierGroupResponseRestriction.fromJson(
          Map<String, dynamic> json) =>
      _$ModifierGroupResponseRestrictionFromJson(json);
}

enum ModifierSelectionType {
  @JsonValue(0)
  toggleSwitch,
  @JsonValue(1)
  dropdown,
  @JsonValue(2)
  switchButton,
}
