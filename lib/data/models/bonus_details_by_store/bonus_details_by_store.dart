import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'bonus_details_by_store.freezed.dart';
part 'bonus_details_by_store.g.dart';

@freezed
abstract class BonusDetailsByStore with _$BonusDetailsByStore {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory BonusDetailsByStore({
    required int cardNumber,
    required String bonusProgramId,
    @JsonKey(defaultValue: false) required bool bonusProgramActive,
    required double bonuses,
    String? name,
  }) = _BonusDetailsByStore;

  factory BonusDetailsByStore.fromJson(Map<String, dynamic> json) =>
      _$BonusDetailsByStoreFromJson(json);
}
