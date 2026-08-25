part of 'bonus_account_info_cubit.dart';

@freezed
abstract class BonusAccountInfoState with _$BonusAccountInfoState {
  const factory BonusAccountInfoState({
    @Default(BonusAccountInfoStateStatus.init)
    BonusAccountInfoStateStatus status,
    List<AccountTransaction>? transactions,
  }) = _BonusAccountInfoState;
}

enum BonusAccountInfoStateStatus {
  init,
  loading,
  ready,
}

@freezed
sealed class BonusAccountInfoSr with _$BonusAccountInfoSr {
  const factory BonusAccountInfoSr.error(String message) =
      BonusAccountInfoErrorSr;
}
