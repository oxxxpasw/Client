import 'package:freezed_annotation/freezed_annotation.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@freezed
abstract class AppConfig with _$AppConfig {
  const factory AppConfig({
    @Default(false) bool bonusesEnabled,
    @Default(5) int fridgeOpenTimeInSeconds,
    String? technicalSupportPhone,
    @Default(false) bool userXEnabled,
    @Default(OutOfStockBehavior.hide)
    @JsonKey(unknownEnumValue: OutOfStockBehavior.hide)
    OutOfStockBehavior outOfStockBehavior,
    Uri? feedbackUrl,
    @Default(false) bool showFeedbackBanner,
  }) = _AppConfig;

  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);
}

enum OutOfStockBehavior {
  @JsonValue('show')
  show,
  @JsonValue('hide')
  hide,
}
