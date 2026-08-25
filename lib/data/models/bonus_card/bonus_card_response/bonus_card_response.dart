import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bonus_card_response.freezed.dart';
part 'bonus_card_response.g.dart';

@freezed
abstract class BonusCardResponse with _$BonusCardResponse {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory BonusCardResponse({
    required int cardNumber,
    required CardType cardType,
    required CardStatus cardStatus,
    @Default(0.0) double purchasesSum,
    @Default(0.0) double bonuses,
    @Default(0.0) double holdedBonuses,
    String? bonusProgramName,
    DateTime? dateBonusBurn,
    List<BonusCardProperty>? cardProperties,
    @Default([]) List<BonusProgramAccountResponse> bonusProgramAccounts,
  }) = _BonusCardResponse;

  factory BonusCardResponse.fromJson(Map<String, dynamic> json) =>
      _$BonusCardResponseFromJson(json);
}

@freezed
abstract class BonusProgramAccountResponse with _$BonusProgramAccountResponse {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory BonusProgramAccountResponse({
    int? cardNumber,
    String? name,
    String? bonusProgramId,
    String? comment,
    @Default(false) bool bonusProgramActive,
    @Default(0.0) double bonuses,
    @Default(0.0) double holdedBonuses,
  }) = _BonusProgramAccountResponse;

  factory BonusProgramAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$BonusProgramAccountResponseFromJson(json);
}

@freezed
abstract class BonusCardProperties with _$BonusCardProperties {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory BonusCardProperties({
    required double purchasesSumPrevious,
    required double? purchasesSumNext,
    required String cashback,
  }) = _BonusCardProperties;

  factory BonusCardProperties.fromJson(Map<String, dynamic> json) =>
      _$BonusCardPropertiesFromJson(json);
}

@freezed
abstract class BonusCardProperty with _$BonusCardProperty {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory BonusCardProperty({
    required String id,
    @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
    BonusCardPropertyApiName? apiName,
    required String localName,
    required dynamic value,
  }) = _BonusCardProperty;

  factory BonusCardProperty.fromJson(Map<String, dynamic> json) =>
      _$BonusCardPropertyFromJson(json);
}

enum BonusCardPropertyApiName {
  @JsonValue('ТекстСледующегоПересчета')
  nextRecount,
  @JsonValue('ТекстСтатусаБП')
  level,
  @JsonValue('ТекстКэшбэк')
  cashback,
}

enum CardType {
  @JsonValue(0)
  simple,
  @JsonValue(1)
  bronze,
  @JsonValue(2)
  silver,
  @JsonValue(3)
  gold,
  @JsonValue(4)
  superCard,
  @JsonValue(5)
  discount,
  @JsonValue(6)
  certificate,
  @JsonValue(255)
  administrator,
}

enum CardStatus {
  /// Создана, но не активирована
  @JsonValue(0)
  created,

  /// Используется
  @JsonValue(1)
  binded,

  /// Подозрительная
  @JsonValue(2)
  frod,

  /// Доверенные (те, которые проверили)
  @JsonValue(3)
  trusted,

  /// Заблокированная
  @JsonValue(255)
  blocked,
}
