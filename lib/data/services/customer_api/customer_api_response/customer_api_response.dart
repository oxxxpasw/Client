import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_api_response.freezed.dart';
part 'customer_api_response.g.dart';

@freezed
abstract class CustomerApiPurchase with _$CustomerApiPurchase {
  const CustomerApiPurchase._();

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory CustomerApiPurchase({
    required Purchase purchase,
    String? activeCashierShiftId,
    @Default([]) List<BonusProgramType> bonusProgramTypesInfo,
  }) = _CustomerApiPurchase;

  double get bonusesCanSpent =>
      bonusProgramTypesInfo
          .firstWhereOrNull(
              (e) => e.bonusesCanSpent != null && e.bonusesCanSpent! > 0)
          ?.bonusesCanSpent ??
      0.0;

  factory CustomerApiPurchase.fromJson(Map<String, dynamic> json) =>
      _$CustomerApiPurchaseFromJson(json);
}

@freezed
abstract class Purchase with _$Purchase {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory Purchase({
    String? id,
    required DateTime date,
    required double summ,
    required double summWithoutDiscount,
    required String storeId,
    required List<PurchasePosition> positions,
    @Default(0.0) double bonusesSumm,
    @Default(0.0) double bonusesCanSpent,
    @Default(0.0) double totalBonuses,
    String? checkNumber,
    @JsonKey(name: 'DiscountLog')
    @Default([])
    List<DiscountLogItem> discountLog,
    int? cardNumber,
  }) = _Purchase;

  factory Purchase.fromJson(Map<String, dynamic> json) =>
      _$PurchaseFromJson(json);
}

@freezed
abstract class PurchasePosition with _$PurchasePosition {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory PurchasePosition({
    @Default(0) int lineNumber,
    required String productCode,
    required double quantity,
    required double price,
    required double summ,
    required double summWithoutDiscount,
    String? groupCode,
    String? barCode,
    @Default(0.0) double bonusesSumm,
  }) = _PurchasePosition;

  factory PurchasePosition.fromJson(Map<String, dynamic> json) =>
      _$PurchasePositionFromJson(json);
}

@freezed
abstract class BonusProgramType with _$BonusProgramType {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory BonusProgramType({
    String? bonusProgramTypeName,
    double? bonusesCurrentActiveBalance,
    double? bonusesCanSpent,
  }) = _BonusProgramType;

  factory BonusProgramType.fromJson(Map<String, dynamic> json) =>
      _$BonusProgramTypeFromJson(json);
}

@freezed
abstract class DiscountLogItem with _$DiscountLogItem {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory DiscountLogItem({
    @JsonKey(unknownEnumValue: DiscountLogType.unknown) DiscountLogType? type,
    double? discountValue,
    PurchasePosition? line,
  }) = _DiscountLogItem;

  factory DiscountLogItem.fromJson(Map<String, dynamic> json) =>
      _$DiscountLogItemFromJson(json);
}

enum DiscountLogType {
  @JsonValue(1)
  auto,

  @JsonValue(2)
  manual,

  @JsonValue(3)
  autoProduct,

  @JsonValue(4)
  manualProduct,

  @JsonValue(5)
  card,

  @JsonValue(6)
  bonuses,

  @JsonValue(7)
  summ,

  @JsonValue(8)
  autoSummOnProduct,

  @JsonValue(16)
  minCost,

  @JsonValue(32)
  maxDiscount,

  @JsonValue(64)
  disableSale,

  unknown,
}
