part of 'store_details_cubit.dart';

@freezed
abstract class StoreDetailsState with _$StoreDetailsState {
  const factory StoreDetailsState({
    @Default(StoreDetailsStateStatus.init) StoreDetailsStateStatus status,
    BonusDetailsByStore? bonusDetails,
    Store? store,
  }) = _StoreDetailsState;
}

enum StoreDetailsStateStatus {
  init,
  loading,
  ready,
}
