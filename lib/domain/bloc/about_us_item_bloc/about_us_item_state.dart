part of 'about_us_item_bloc.dart';

@freezed
abstract class AboutUsItemState with _$AboutUsItemState {
  const factory AboutUsItemState({
    @Default(AboutUsItemStatus.init) AboutUsItemStatus status,
    Promotion? data,
  }) = _AboutUsItemState;
}

@freezed
abstract class AboutUsItemSr with _$AboutUsItemSr {
  const factory AboutUsItemSr.error(String error) = _ErrorSr;
}

enum AboutUsItemStatus {
  init,
  loading,
  ready,
}
