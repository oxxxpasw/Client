part of 'bonus_balance_bloc.dart';

@freezed
abstract class BonusBalanceState with _$BonusBalanceState {
  const factory BonusBalanceState({
    double? bonusBalance,
    @Default([]) List<BonusCardModel> cards,
  }) = _BonusBalanceState;
}
