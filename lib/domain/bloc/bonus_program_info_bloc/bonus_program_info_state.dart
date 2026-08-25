part of 'bonus_program_info_bloc.dart';

@freezed
abstract class BonusProgramInfoState with _$BonusProgramInfoState {
  const factory BonusProgramInfoState({
    @Default(BonusProgramInfoStatus.init) BonusProgramInfoStatus status,
    @Default([]) List<BonusCardModel> bonusCards,
  }) = _BonusProgramInfoState;
}

enum BonusProgramInfoStatus {
  init,
  loading,
  ready,
}

@freezed
sealed class BonusProgramInfoSr with _$BonusProgramInfoSr {
  const factory BonusProgramInfoSr.error(String error) =
      BonusProgramInfoErrorSr;

  const factory BonusProgramInfoSr.showAccountDetails(
    BonusProgramAccount account,
  ) = BonusProgramInfoShowAccountDetailsSr;
}
