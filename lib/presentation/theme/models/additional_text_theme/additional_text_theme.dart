import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'additional_text_theme.freezed.dart';

@freezed
abstract class AdditionalTextTheme with _$AdditionalTextTheme {
  const factory AdditionalTextTheme({
    required TextStyle labelExtraSmall,
    required TextStyle titleMediumReg,
  }) = _AdditionalTextTheme;
}

class AdditionalTextThemeExtension
    extends ThemeExtension<AdditionalTextThemeExtension> {
  const AdditionalTextThemeExtension({
    required this.additionalTextTheme,
  }) : super();

  final AdditionalTextTheme additionalTextTheme;

  TextStyle get labelExtraSmall => additionalTextTheme.labelExtraSmall;

  TextStyle get titleMediumReg => additionalTextTheme.titleMediumReg;

  @override
  AdditionalTextThemeExtension copyWith({
    AdditionalTextTheme? additionalTextTheme,
  }) {
    return AdditionalTextThemeExtension(
      additionalTextTheme: additionalTextTheme ?? this.additionalTextTheme,
    );
  }

  @override
  AdditionalTextThemeExtension lerp(
    covariant AdditionalTextThemeExtension? other,
    double t,
  ) {
    if (other is! AdditionalTextThemeExtension) {
      return this;
    }
    return AdditionalTextThemeExtension(
      additionalTextTheme: AdditionalTextTheme(
          labelExtraSmall: TextStyle.lerp(
            additionalTextTheme.labelExtraSmall,
            other.additionalTextTheme.labelExtraSmall,
            t,
          )!,
          titleMediumReg: TextStyle.lerp(
            additionalTextTheme.titleMediumReg,
            other.additionalTextTheme.titleMediumReg,
            t,
          )!),
    );
  }
}
