part of 'home_promotion_bloc.dart';

@freezed
abstract class HomePromotionState with _$HomePromotionState {
  const factory HomePromotionState({
    List<PromotionShortInfo>? promotions,
  }) = _HomePromotionState;
}
