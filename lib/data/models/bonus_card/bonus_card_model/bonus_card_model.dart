import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/data/models/bonus_card/bonus_card_response/bonus_card_response.dart';

export 'package:sosedifedi/data/models/bonus_card/bonus_card_response/bonus_card_response.dart'
    show CardType;

part 'bonus_card_model.freezed.dart';

@freezed
abstract class BonusCardModel with _$BonusCardModel {
  const BonusCardModel._();

  const factory BonusCardModel({
    required double bonuses,
    required double holdedBonuses,
    String? bonusProgramName,
    required String cardNumber,
    required CardType cardType,
    required String name,
    String? cashback,
    String? nextRecount,
    String? level,
    @Default([]) List<BonusProgramAccount> bonusProgramAccounts,
  }) = _BonusCardModel;
}

@freezed
abstract class BonusProgramAccount with _$BonusProgramAccount {
  const factory BonusProgramAccount({
    String? name,
    String? bonusProgramId,
    String? logoUrl,
    String? address,
    String? comment,
    required double bonuses,
    required double holdedBonuses,
  }) = _BonusProgramAccount;
}
