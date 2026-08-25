part of 'promotions_bloc.dart';

@freezed
abstract class PromotionsState with _$PromotionsState {
  const factory PromotionsState({
    @Default(PromotionsStatus.init) PromotionsStatus status,
    @Default([]) List<PromotionShortInfo> stories,
    @Default([]) List<PromotionShortInfo> promotions,
    @Default({}) Set<String> viewedStoriesIDs,
  }) = _PromotionsState;
}

@freezed
abstract class PromotionsSr with _$PromotionsSr {
  const factory PromotionsSr.error(String error) = _ErrorSr;
}

enum PromotionsStatus {
  init,
  loading,
  ready,
}
