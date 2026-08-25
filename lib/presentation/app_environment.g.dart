// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_environment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppEnvironment _$AppEnvironmentFromJson(Map<String, dynamic> json) =>
    _AppEnvironment(
      configType: $enumDecode(_$ConfigTypeEnumMap, json['config_type']),
      buildType: $enumDecode(_$BuildTypeEnumMap, json['build_type']),
      debugOptions: DebugOptions.fromJson(
        json['debug_options'] as Map<String, dynamic>,
      ),
      debugPaintOptions: DebugPaintOptions.fromJson(
        json['debug_paint_options'] as Map<String, dynamic>,
      ),
      apiEndpoint: json['api_endpoint'] as String,
      authServiceEndpoint: json['auth_service_endpoint'] as String,
      systemId: json['system_id'] as String,
      customerApiEndpoint: json['customer_api_endpoint'] as String,
      analystEndpoint: json['analyst_endpoint'] as String,
      geocoderApiKey: json['geocoder_api_key'] as String,
      sbpUrl: json['sbp_url'] as String,
      paymentServiceEndpoint: json['payment_service_endpoint'] as String,
      dataownerId: json['dataowner_id'] as String,
      orderEndpoint: json['order_endpoint'] as String,
      geocoderApiUrl: json['geocoder_api_url'] as String,
      defaultStore: json['default_store'] as String,
      integrationId: json['integration_id'] as String,
      fridgeApiUrl: json['fridge_api_url'] as String,
      paymentRedirectUrl: PaymentRedirectUrl.fromJson(
        json['payment_redirect_url'] as Map<String, dynamic>,
      ),
      legalInfo: LegalInfo.fromJson(json['legal_info'] as Map<String, dynamic>),
      defaultLocation: (json['default_location'] as List<dynamic>)
          .map((e) => e as num)
          .toList(),
      uploadImageMaxSize: (json['upload_image_max_size'] as num).toDouble(),
    );

Map<String, dynamic> _$AppEnvironmentToJson(_AppEnvironment instance) =>
    <String, dynamic>{
      'config_type': _$ConfigTypeEnumMap[instance.configType]!,
      'build_type': _$BuildTypeEnumMap[instance.buildType]!,
      'debug_options': instance.debugOptions.toJson(),
      'debug_paint_options': instance.debugPaintOptions.toJson(),
      'api_endpoint': instance.apiEndpoint,
      'auth_service_endpoint': instance.authServiceEndpoint,
      'system_id': instance.systemId,
      'customer_api_endpoint': instance.customerApiEndpoint,
      'analyst_endpoint': instance.analystEndpoint,
      'geocoder_api_key': instance.geocoderApiKey,
      'sbp_url': instance.sbpUrl,
      'payment_service_endpoint': instance.paymentServiceEndpoint,
      'dataowner_id': instance.dataownerId,
      'order_endpoint': instance.orderEndpoint,
      'geocoder_api_url': instance.geocoderApiUrl,
      'default_store': instance.defaultStore,
      'integration_id': instance.integrationId,
      'fridge_api_url': instance.fridgeApiUrl,
      'payment_redirect_url': instance.paymentRedirectUrl.toJson(),
      'legal_info': instance.legalInfo.toJson(),
      'default_location': instance.defaultLocation,
      'upload_image_max_size': instance.uploadImageMaxSize,
    };

const _$ConfigTypeEnumMap = {
  ConfigType.release: 'release',
  ConfigType.test: 'test',
};

const _$BuildTypeEnumMap = {
  BuildType.debug: 'debug',
  BuildType.release: 'release',
  BuildType.test: 'test',
};

_DebugOptions _$DebugOptionsFromJson(Map<String, dynamic> json) =>
    _DebugOptions(
      showPerformanceOverlay:
          json['show_performance_overlay'] as bool? ?? false,
      debugShowMaterialGrid: json['debug_show_material_grid'] as bool? ?? false,
      checkerboardRasterCacheImages:
          json['checkerboard_raster_cache_images'] as bool? ?? false,
      checkerboardOffscreenLayers:
          json['checkerboard_offscreen_layers'] as bool? ?? false,
      showSemanticsDebugger: json['show_semantics_debugger'] as bool? ?? false,
      debugShowCheckedModeBanner:
          json['debug_show_checked_mode_banner'] as bool? ?? false,
    );

Map<String, dynamic> _$DebugOptionsToJson(
  _DebugOptions instance,
) => <String, dynamic>{
  'show_performance_overlay': instance.showPerformanceOverlay,
  'debug_show_material_grid': instance.debugShowMaterialGrid,
  'checkerboard_raster_cache_images': instance.checkerboardRasterCacheImages,
  'checkerboard_offscreen_layers': instance.checkerboardOffscreenLayers,
  'show_semantics_debugger': instance.showSemanticsDebugger,
  'debug_show_checked_mode_banner': instance.debugShowCheckedModeBanner,
};

_DebugPaintOptions _$DebugPaintOptionsFromJson(Map<String, dynamic> json) =>
    _DebugPaintOptions(
      debugPaintSizeEnabled: json['debug_paint_size_enabled'] as bool? ?? false,
      debugPaintBaselinesEnabled:
          json['debug_paint_baselines_enabled'] as bool? ?? false,
      debugPaintPointersEnabled:
          json['debug_paint_pointers_enabled'] as bool? ?? false,
      debugPaintLayerBordersEnabled:
          json['debug_paint_layer_borders_enabled'] as bool? ?? false,
      debugRepaintRainbowEnabled:
          json['debug_repaint_rainbow_enabled'] as bool? ?? false,
    );

Map<String, dynamic> _$DebugPaintOptionsToJson(
  _DebugPaintOptions instance,
) => <String, dynamic>{
  'debug_paint_size_enabled': instance.debugPaintSizeEnabled,
  'debug_paint_baselines_enabled': instance.debugPaintBaselinesEnabled,
  'debug_paint_pointers_enabled': instance.debugPaintPointersEnabled,
  'debug_paint_layer_borders_enabled': instance.debugPaintLayerBordersEnabled,
  'debug_repaint_rainbow_enabled': instance.debugRepaintRainbowEnabled,
};

_PaymentRedirectUrl _$PaymentRedirectUrlFromJson(Map<String, dynamic> json) =>
    _PaymentRedirectUrl(
      successUrl: json['success_url'] as String,
      failureUrl: json['failure_url'] as String,
    );

Map<String, dynamic> _$PaymentRedirectUrlToJson(_PaymentRedirectUrl instance) =>
    <String, dynamic>{
      'success_url': instance.successUrl,
      'failure_url': instance.failureUrl,
    };

_LegalInfo _$LegalInfoFromJson(Map<String, dynamic> json) => _LegalInfo(
  userAgreementUrl: json['user_agreement_url'] as String,
  publicOfferUrl: json['public_offer_url'] as String,
  privacyPolicyUrl: json['privacy_policy_url'] as String,
);

Map<String, dynamic> _$LegalInfoToJson(_LegalInfo instance) =>
    <String, dynamic>{
      'user_agreement_url': instance.userAgreementUrl,
      'public_offer_url': instance.publicOfferUrl,
      'privacy_policy_url': instance.privacyPolicyUrl,
    };
