part of 'promotion_details_bloc.dart';

@freezed
abstract class PromotionDetailsState with _$PromotionDetailsState {
  @Assert('status != PromotionDetailsStatus.ready || promotion != null')
  const factory PromotionDetailsState({
    @Default(PromotionDetailsStatus.init) PromotionDetailsStatus status,
    Promotion? promotion,
    @Default(false) bool isSending,
  }) = _PromotionDetailsState;
}

@freezed
abstract class PromotionDetailsSr with _$PromotionDetailsSr {
  const factory PromotionDetailsSr.error(String error) = _ErrorSr;

  const factory PromotionDetailsSr.send() = _SendSr;
}

enum PromotionDetailsStatus {
  init,
  loading,
  ready,
  error,
}
