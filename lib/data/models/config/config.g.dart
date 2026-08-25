// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppConfig _$AppConfigFromJson(Map<String, dynamic> json) => _AppConfig(
  bonusesEnabled: json['bonuses_enabled'] as bool? ?? false,
  fridgeOpenTimeInSeconds:
      (json['fridge_open_time_in_seconds'] as num?)?.toInt() ?? 5,
  technicalSupportPhone: json['technical_support_phone'] as String?,
  userXEnabled: json['user_x_enabled'] as bool? ?? false,
  outOfStockBehavior:
      $enumDecodeNullable(
        _$OutOfStockBehaviorEnumMap,
        json['out_of_stock_behavior'],
        unknownValue: OutOfStockBehavior.hide,
      ) ??
      OutOfStockBehavior.hide,
  feedbackUrl: json['feedback_url'] == null
      ? null
      : Uri.parse(json['feedback_url'] as String),
  showFeedbackBanner: json['show_feedback_banner'] as bool? ?? false,
);

Map<String, dynamic> _$AppConfigToJson(_AppConfig instance) =>
    <String, dynamic>{
      'bonuses_enabled': instance.bonusesEnabled,
      'fridge_open_time_in_seconds': instance.fridgeOpenTimeInSeconds,
      'technical_support_phone': instance.technicalSupportPhone,
      'user_x_enabled': instance.userXEnabled,
      'out_of_stock_behavior':
          _$OutOfStockBehaviorEnumMap[instance.outOfStockBehavior]!,
      'feedback_url': instance.feedbackUrl?.toString(),
      'show_feedback_banner': instance.showFeedbackBanner,
    };

const _$OutOfStockBehaviorEnumMap = {
  OutOfStockBehavior.show: 'show',
  OutOfStockBehavior.hide: 'hide',
};
