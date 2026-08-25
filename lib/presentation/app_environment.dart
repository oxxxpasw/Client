// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_environment.freezed.dart';
part 'app_environment.g.dart';

/// Базовые настройки конфигруации при запуске приложения
@freezed
abstract class AppEnvironment with _$AppEnvironment {
  const factory AppEnvironment({
    required ConfigType configType,
    required BuildType buildType,
    required DebugOptions debugOptions,
    required DebugPaintOptions debugPaintOptions,
    required String apiEndpoint,
    required String authServiceEndpoint,
    required String systemId,
    required String customerApiEndpoint,
    required String analystEndpoint,
    required String geocoderApiKey,
    required String sbpUrl,
    required String paymentServiceEndpoint,
    required String dataownerId,
    required String orderEndpoint,
    required String geocoderApiUrl,
    required String defaultStore,
    required String integrationId,
    required String fridgeApiUrl,
    required PaymentRedirectUrl paymentRedirectUrl,
    required LegalInfo legalInfo,
    required List<num> defaultLocation,
    required double uploadImageMaxSize,
  }) = _AppEnvironment;

  factory AppEnvironment.fromJson(Map<String, dynamic> json) =>
      _$AppEnvironmentFromJson(json);
}

/// Конфигурируемые уровни логирование, используемые в приложении

/// Типы сборок приложения
enum BuildType {
  /// Debug build type
  @JsonValue('debug')
  debug,

  /// Release build type
  @JsonValue('release')
  release,

  /// Test build type
  @JsonValue('test')
  test,
}

/// Типы конфигурации
enum ConfigType {
  /// Release type
  @JsonValue('release')
  release,

  /// Test type
  @JsonValue('test')
  test,
}

/// Набор конифигурируемых опций, используемых в Flutter Application
@freezed
abstract class DebugOptions with _$DebugOptions {
  const factory DebugOptions({
    @Default(false) bool showPerformanceOverlay,
    @Default(false) bool debugShowMaterialGrid,
    @Default(false) bool checkerboardRasterCacheImages,
    @Default(false) bool checkerboardOffscreenLayers,
    @Default(false) bool showSemanticsDebugger,
    @Default(false) bool debugShowCheckedModeBanner,
  }) = _DebugOptions;

  factory DebugOptions.fromJson(Map<String, dynamic> json) =>
      _$DebugOptionsFromJson(json);
}

/// Дебаг-опции для настройки Skia
@freezed
abstract class DebugPaintOptions with _$DebugPaintOptions {
  const factory DebugPaintOptions({
    @Default(false) bool debugPaintSizeEnabled,
    @Default(false) bool debugPaintBaselinesEnabled,
    @Default(false) bool debugPaintPointersEnabled,
    @Default(false) bool debugPaintLayerBordersEnabled,
    @Default(false) bool debugRepaintRainbowEnabled,
  }) = _DebugPaintOptions;

  factory DebugPaintOptions.fromJson(Map<String, dynamic> json) =>
      _$DebugPaintOptionsFromJson(json);
}

const debugEnv = Environment(BuildTypes.debugEnvKey);
const releaseEnv = Environment(BuildTypes.releaseEnvKey);
const testEnv = Environment(BuildTypes.testEnvKey);

/// Расширеня над [BuildType] для работы с переменными окружения
extension BuildTypes on BuildType {
  static const debugEnvKey = 'debugEnv';
  static const releaseEnvKey = 'releaseEnv';
  static const testEnvKey = 'testEnv';

  /// Метод возвращает строкове значение окружение, на котором базируется DI-дерево GetIt
  String get getItEnvironmentKey {
    switch (this) {
      case BuildType.debug:
        return debugEnvKey;
      case BuildType.release:
        return releaseEnvKey;
      case BuildType.test:
        return testEnvKey;
    }
  }
}

@freezed
abstract class PaymentRedirectUrl with _$PaymentRedirectUrl {
  const factory PaymentRedirectUrl({
    required String successUrl,
    required String failureUrl,
  }) = _PaymentRedirectUrl;

  factory PaymentRedirectUrl.fromJson(Map<String, dynamic> json) =>
      _$PaymentRedirectUrlFromJson(json);
}

@freezed
abstract class LegalInfo with _$LegalInfo {
  const factory LegalInfo({
    required String userAgreementUrl,
    required String publicOfferUrl,
    required String privacyPolicyUrl,
  }) = _LegalInfo;

  factory LegalInfo.fromJson(Map<String, dynamic> json) =>
      _$LegalInfoFromJson(json);
}
