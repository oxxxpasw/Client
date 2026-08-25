// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_environment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppEnvironment {

 ConfigType get configType; BuildType get buildType; DebugOptions get debugOptions; DebugPaintOptions get debugPaintOptions; String get apiEndpoint; String get authServiceEndpoint; String get systemId; String get customerApiEndpoint; String get analystEndpoint; String get geocoderApiKey; String get sbpUrl; String get paymentServiceEndpoint; String get dataownerId; String get orderEndpoint; String get geocoderApiUrl; String get defaultStore; String get integrationId; String get fridgeApiUrl; PaymentRedirectUrl get paymentRedirectUrl; LegalInfo get legalInfo; List<num> get defaultLocation; double get uploadImageMaxSize;
/// Create a copy of AppEnvironment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppEnvironmentCopyWith<AppEnvironment> get copyWith => _$AppEnvironmentCopyWithImpl<AppEnvironment>(this as AppEnvironment, _$identity);

  /// Serializes this AppEnvironment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppEnvironment&&(identical(other.configType, configType) || other.configType == configType)&&(identical(other.buildType, buildType) || other.buildType == buildType)&&(identical(other.debugOptions, debugOptions) || other.debugOptions == debugOptions)&&(identical(other.debugPaintOptions, debugPaintOptions) || other.debugPaintOptions == debugPaintOptions)&&(identical(other.apiEndpoint, apiEndpoint) || other.apiEndpoint == apiEndpoint)&&(identical(other.authServiceEndpoint, authServiceEndpoint) || other.authServiceEndpoint == authServiceEndpoint)&&(identical(other.systemId, systemId) || other.systemId == systemId)&&(identical(other.customerApiEndpoint, customerApiEndpoint) || other.customerApiEndpoint == customerApiEndpoint)&&(identical(other.analystEndpoint, analystEndpoint) || other.analystEndpoint == analystEndpoint)&&(identical(other.geocoderApiKey, geocoderApiKey) || other.geocoderApiKey == geocoderApiKey)&&(identical(other.sbpUrl, sbpUrl) || other.sbpUrl == sbpUrl)&&(identical(other.paymentServiceEndpoint, paymentServiceEndpoint) || other.paymentServiceEndpoint == paymentServiceEndpoint)&&(identical(other.dataownerId, dataownerId) || other.dataownerId == dataownerId)&&(identical(other.orderEndpoint, orderEndpoint) || other.orderEndpoint == orderEndpoint)&&(identical(other.geocoderApiUrl, geocoderApiUrl) || other.geocoderApiUrl == geocoderApiUrl)&&(identical(other.defaultStore, defaultStore) || other.defaultStore == defaultStore)&&(identical(other.integrationId, integrationId) || other.integrationId == integrationId)&&(identical(other.fridgeApiUrl, fridgeApiUrl) || other.fridgeApiUrl == fridgeApiUrl)&&(identical(other.paymentRedirectUrl, paymentRedirectUrl) || other.paymentRedirectUrl == paymentRedirectUrl)&&(identical(other.legalInfo, legalInfo) || other.legalInfo == legalInfo)&&const DeepCollectionEquality().equals(other.defaultLocation, defaultLocation)&&(identical(other.uploadImageMaxSize, uploadImageMaxSize) || other.uploadImageMaxSize == uploadImageMaxSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,configType,buildType,debugOptions,debugPaintOptions,apiEndpoint,authServiceEndpoint,systemId,customerApiEndpoint,analystEndpoint,geocoderApiKey,sbpUrl,paymentServiceEndpoint,dataownerId,orderEndpoint,geocoderApiUrl,defaultStore,integrationId,fridgeApiUrl,paymentRedirectUrl,legalInfo,const DeepCollectionEquality().hash(defaultLocation),uploadImageMaxSize]);

@override
String toString() {
  return 'AppEnvironment(configType: $configType, buildType: $buildType, debugOptions: $debugOptions, debugPaintOptions: $debugPaintOptions, apiEndpoint: $apiEndpoint, authServiceEndpoint: $authServiceEndpoint, systemId: $systemId, customerApiEndpoint: $customerApiEndpoint, analystEndpoint: $analystEndpoint, geocoderApiKey: $geocoderApiKey, sbpUrl: $sbpUrl, paymentServiceEndpoint: $paymentServiceEndpoint, dataownerId: $dataownerId, orderEndpoint: $orderEndpoint, geocoderApiUrl: $geocoderApiUrl, defaultStore: $defaultStore, integrationId: $integrationId, fridgeApiUrl: $fridgeApiUrl, paymentRedirectUrl: $paymentRedirectUrl, legalInfo: $legalInfo, defaultLocation: $defaultLocation, uploadImageMaxSize: $uploadImageMaxSize)';
}


}

/// @nodoc
abstract mixin class $AppEnvironmentCopyWith<$Res>  {
  factory $AppEnvironmentCopyWith(AppEnvironment value, $Res Function(AppEnvironment) _then) = _$AppEnvironmentCopyWithImpl;
@useResult
$Res call({
 ConfigType configType, BuildType buildType, DebugOptions debugOptions, DebugPaintOptions debugPaintOptions, String apiEndpoint, String authServiceEndpoint, String systemId, String customerApiEndpoint, String analystEndpoint, String geocoderApiKey, String sbpUrl, String paymentServiceEndpoint, String dataownerId, String orderEndpoint, String geocoderApiUrl, String defaultStore, String integrationId, String fridgeApiUrl, PaymentRedirectUrl paymentRedirectUrl, LegalInfo legalInfo, List<num> defaultLocation, double uploadImageMaxSize
});


$DebugOptionsCopyWith<$Res> get debugOptions;$DebugPaintOptionsCopyWith<$Res> get debugPaintOptions;$PaymentRedirectUrlCopyWith<$Res> get paymentRedirectUrl;$LegalInfoCopyWith<$Res> get legalInfo;

}
/// @nodoc
class _$AppEnvironmentCopyWithImpl<$Res>
    implements $AppEnvironmentCopyWith<$Res> {
  _$AppEnvironmentCopyWithImpl(this._self, this._then);

  final AppEnvironment _self;
  final $Res Function(AppEnvironment) _then;

/// Create a copy of AppEnvironment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? configType = null,Object? buildType = null,Object? debugOptions = null,Object? debugPaintOptions = null,Object? apiEndpoint = null,Object? authServiceEndpoint = null,Object? systemId = null,Object? customerApiEndpoint = null,Object? analystEndpoint = null,Object? geocoderApiKey = null,Object? sbpUrl = null,Object? paymentServiceEndpoint = null,Object? dataownerId = null,Object? orderEndpoint = null,Object? geocoderApiUrl = null,Object? defaultStore = null,Object? integrationId = null,Object? fridgeApiUrl = null,Object? paymentRedirectUrl = null,Object? legalInfo = null,Object? defaultLocation = null,Object? uploadImageMaxSize = null,}) {
  return _then(AppEnvironment(
configType: null == configType ? _self.configType : configType // ignore: cast_nullable_to_non_nullable
as ConfigType,buildType: null == buildType ? _self.buildType : buildType // ignore: cast_nullable_to_non_nullable
as BuildType,debugOptions: null == debugOptions ? _self.debugOptions : debugOptions // ignore: cast_nullable_to_non_nullable
as DebugOptions,debugPaintOptions: null == debugPaintOptions ? _self.debugPaintOptions : debugPaintOptions // ignore: cast_nullable_to_non_nullable
as DebugPaintOptions,apiEndpoint: null == apiEndpoint ? _self.apiEndpoint : apiEndpoint // ignore: cast_nullable_to_non_nullable
as String,authServiceEndpoint: null == authServiceEndpoint ? _self.authServiceEndpoint : authServiceEndpoint // ignore: cast_nullable_to_non_nullable
as String,systemId: null == systemId ? _self.systemId : systemId // ignore: cast_nullable_to_non_nullable
as String,customerApiEndpoint: null == customerApiEndpoint ? _self.customerApiEndpoint : customerApiEndpoint // ignore: cast_nullable_to_non_nullable
as String,analystEndpoint: null == analystEndpoint ? _self.analystEndpoint : analystEndpoint // ignore: cast_nullable_to_non_nullable
as String,geocoderApiKey: null == geocoderApiKey ? _self.geocoderApiKey : geocoderApiKey // ignore: cast_nullable_to_non_nullable
as String,sbpUrl: null == sbpUrl ? _self.sbpUrl : sbpUrl // ignore: cast_nullable_to_non_nullable
as String,paymentServiceEndpoint: null == paymentServiceEndpoint ? _self.paymentServiceEndpoint : paymentServiceEndpoint // ignore: cast_nullable_to_non_nullable
as String,dataownerId: null == dataownerId ? _self.dataownerId : dataownerId // ignore: cast_nullable_to_non_nullable
as String,orderEndpoint: null == orderEndpoint ? _self.orderEndpoint : orderEndpoint // ignore: cast_nullable_to_non_nullable
as String,geocoderApiUrl: null == geocoderApiUrl ? _self.geocoderApiUrl : geocoderApiUrl // ignore: cast_nullable_to_non_nullable
as String,defaultStore: null == defaultStore ? _self.defaultStore : defaultStore // ignore: cast_nullable_to_non_nullable
as String,integrationId: null == integrationId ? _self.integrationId : integrationId // ignore: cast_nullable_to_non_nullable
as String,fridgeApiUrl: null == fridgeApiUrl ? _self.fridgeApiUrl : fridgeApiUrl // ignore: cast_nullable_to_non_nullable
as String,paymentRedirectUrl: null == paymentRedirectUrl ? _self.paymentRedirectUrl : paymentRedirectUrl // ignore: cast_nullable_to_non_nullable
as PaymentRedirectUrl,legalInfo: null == legalInfo ? _self.legalInfo : legalInfo // ignore: cast_nullable_to_non_nullable
as LegalInfo,defaultLocation: null == defaultLocation ? _self.defaultLocation : defaultLocation // ignore: cast_nullable_to_non_nullable
as List<num>,uploadImageMaxSize: null == uploadImageMaxSize ? _self.uploadImageMaxSize : uploadImageMaxSize // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of AppEnvironment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DebugOptionsCopyWith<$Res> get debugOptions {
  
  return $DebugOptionsCopyWith<$Res>(_self.debugOptions, (value) {
    return _then(_self.copyWith(debugOptions: value));
  });
}/// Create a copy of AppEnvironment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DebugPaintOptionsCopyWith<$Res> get debugPaintOptions {
  
  return $DebugPaintOptionsCopyWith<$Res>(_self.debugPaintOptions, (value) {
    return _then(_self.copyWith(debugPaintOptions: value));
  });
}/// Create a copy of AppEnvironment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentRedirectUrlCopyWith<$Res> get paymentRedirectUrl {
  
  return $PaymentRedirectUrlCopyWith<$Res>(_self.paymentRedirectUrl, (value) {
    return _then(_self.copyWith(paymentRedirectUrl: value));
  });
}/// Create a copy of AppEnvironment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LegalInfoCopyWith<$Res> get legalInfo {
  
  return $LegalInfoCopyWith<$Res>(_self.legalInfo, (value) {
    return _then(_self.copyWith(legalInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppEnvironment].
extension AppEnvironmentPatterns on AppEnvironment {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppEnvironment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppEnvironment() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppEnvironment value)  $default,){
final _that = this;
switch (_that) {
case _AppEnvironment():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppEnvironment value)?  $default,){
final _that = this;
switch (_that) {
case _AppEnvironment() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ConfigType configType,  BuildType buildType,  DebugOptions debugOptions,  DebugPaintOptions debugPaintOptions,  String apiEndpoint,  String authServiceEndpoint,  String systemId,  String customerApiEndpoint,  String analystEndpoint,  String geocoderApiKey,  String sbpUrl,  String paymentServiceEndpoint,  String dataownerId,  String orderEndpoint,  String geocoderApiUrl,  String defaultStore,  String integrationId,  String fridgeApiUrl,  PaymentRedirectUrl paymentRedirectUrl,  LegalInfo legalInfo,  List<num> defaultLocation,  double uploadImageMaxSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppEnvironment() when $default != null:
return $default(_that.configType,_that.buildType,_that.debugOptions,_that.debugPaintOptions,_that.apiEndpoint,_that.authServiceEndpoint,_that.systemId,_that.customerApiEndpoint,_that.analystEndpoint,_that.geocoderApiKey,_that.sbpUrl,_that.paymentServiceEndpoint,_that.dataownerId,_that.orderEndpoint,_that.geocoderApiUrl,_that.defaultStore,_that.integrationId,_that.fridgeApiUrl,_that.paymentRedirectUrl,_that.legalInfo,_that.defaultLocation,_that.uploadImageMaxSize);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ConfigType configType,  BuildType buildType,  DebugOptions debugOptions,  DebugPaintOptions debugPaintOptions,  String apiEndpoint,  String authServiceEndpoint,  String systemId,  String customerApiEndpoint,  String analystEndpoint,  String geocoderApiKey,  String sbpUrl,  String paymentServiceEndpoint,  String dataownerId,  String orderEndpoint,  String geocoderApiUrl,  String defaultStore,  String integrationId,  String fridgeApiUrl,  PaymentRedirectUrl paymentRedirectUrl,  LegalInfo legalInfo,  List<num> defaultLocation,  double uploadImageMaxSize)  $default,) {final _that = this;
switch (_that) {
case _AppEnvironment():
return $default(_that.configType,_that.buildType,_that.debugOptions,_that.debugPaintOptions,_that.apiEndpoint,_that.authServiceEndpoint,_that.systemId,_that.customerApiEndpoint,_that.analystEndpoint,_that.geocoderApiKey,_that.sbpUrl,_that.paymentServiceEndpoint,_that.dataownerId,_that.orderEndpoint,_that.geocoderApiUrl,_that.defaultStore,_that.integrationId,_that.fridgeApiUrl,_that.paymentRedirectUrl,_that.legalInfo,_that.defaultLocation,_that.uploadImageMaxSize);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ConfigType configType,  BuildType buildType,  DebugOptions debugOptions,  DebugPaintOptions debugPaintOptions,  String apiEndpoint,  String authServiceEndpoint,  String systemId,  String customerApiEndpoint,  String analystEndpoint,  String geocoderApiKey,  String sbpUrl,  String paymentServiceEndpoint,  String dataownerId,  String orderEndpoint,  String geocoderApiUrl,  String defaultStore,  String integrationId,  String fridgeApiUrl,  PaymentRedirectUrl paymentRedirectUrl,  LegalInfo legalInfo,  List<num> defaultLocation,  double uploadImageMaxSize)?  $default,) {final _that = this;
switch (_that) {
case _AppEnvironment() when $default != null:
return $default(_that.configType,_that.buildType,_that.debugOptions,_that.debugPaintOptions,_that.apiEndpoint,_that.authServiceEndpoint,_that.systemId,_that.customerApiEndpoint,_that.analystEndpoint,_that.geocoderApiKey,_that.sbpUrl,_that.paymentServiceEndpoint,_that.dataownerId,_that.orderEndpoint,_that.geocoderApiUrl,_that.defaultStore,_that.integrationId,_that.fridgeApiUrl,_that.paymentRedirectUrl,_that.legalInfo,_that.defaultLocation,_that.uploadImageMaxSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppEnvironment implements AppEnvironment {
  const _AppEnvironment({required this.configType, required this.buildType, required this.debugOptions, required this.debugPaintOptions, required this.apiEndpoint, required this.authServiceEndpoint, required this.systemId, required this.customerApiEndpoint, required this.analystEndpoint, required this.geocoderApiKey, required this.sbpUrl, required this.paymentServiceEndpoint, required this.dataownerId, required this.orderEndpoint, required this.geocoderApiUrl, required this.defaultStore, required this.integrationId, required this.fridgeApiUrl, required this.paymentRedirectUrl, required this.legalInfo, required  List<num> defaultLocation, required this.uploadImageMaxSize}): _defaultLocation = defaultLocation;
  factory _AppEnvironment.fromJson(Map<String, dynamic> json) => _$AppEnvironmentFromJson(json);

@override final  ConfigType configType;
@override final  BuildType buildType;
@override final  DebugOptions debugOptions;
@override final  DebugPaintOptions debugPaintOptions;
@override final  String apiEndpoint;
@override final  String authServiceEndpoint;
@override final  String systemId;
@override final  String customerApiEndpoint;
@override final  String analystEndpoint;
@override final  String geocoderApiKey;
@override final  String sbpUrl;
@override final  String paymentServiceEndpoint;
@override final  String dataownerId;
@override final  String orderEndpoint;
@override final  String geocoderApiUrl;
@override final  String defaultStore;
@override final  String integrationId;
@override final  String fridgeApiUrl;
@override final  PaymentRedirectUrl paymentRedirectUrl;
@override final  LegalInfo legalInfo;
 final  List<num> _defaultLocation;
@override List<num> get defaultLocation {
  if (_defaultLocation is EqualUnmodifiableListView) return _defaultLocation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_defaultLocation);
}

@override final  double uploadImageMaxSize;

/// Create a copy of AppEnvironment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppEnvironmentCopyWith<_AppEnvironment> get copyWith => __$AppEnvironmentCopyWithImpl<_AppEnvironment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppEnvironmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppEnvironment&&(identical(other.configType, configType) || other.configType == configType)&&(identical(other.buildType, buildType) || other.buildType == buildType)&&(identical(other.debugOptions, debugOptions) || other.debugOptions == debugOptions)&&(identical(other.debugPaintOptions, debugPaintOptions) || other.debugPaintOptions == debugPaintOptions)&&(identical(other.apiEndpoint, apiEndpoint) || other.apiEndpoint == apiEndpoint)&&(identical(other.authServiceEndpoint, authServiceEndpoint) || other.authServiceEndpoint == authServiceEndpoint)&&(identical(other.systemId, systemId) || other.systemId == systemId)&&(identical(other.customerApiEndpoint, customerApiEndpoint) || other.customerApiEndpoint == customerApiEndpoint)&&(identical(other.analystEndpoint, analystEndpoint) || other.analystEndpoint == analystEndpoint)&&(identical(other.geocoderApiKey, geocoderApiKey) || other.geocoderApiKey == geocoderApiKey)&&(identical(other.sbpUrl, sbpUrl) || other.sbpUrl == sbpUrl)&&(identical(other.paymentServiceEndpoint, paymentServiceEndpoint) || other.paymentServiceEndpoint == paymentServiceEndpoint)&&(identical(other.dataownerId, dataownerId) || other.dataownerId == dataownerId)&&(identical(other.orderEndpoint, orderEndpoint) || other.orderEndpoint == orderEndpoint)&&(identical(other.geocoderApiUrl, geocoderApiUrl) || other.geocoderApiUrl == geocoderApiUrl)&&(identical(other.defaultStore, defaultStore) || other.defaultStore == defaultStore)&&(identical(other.integrationId, integrationId) || other.integrationId == integrationId)&&(identical(other.fridgeApiUrl, fridgeApiUrl) || other.fridgeApiUrl == fridgeApiUrl)&&(identical(other.paymentRedirectUrl, paymentRedirectUrl) || other.paymentRedirectUrl == paymentRedirectUrl)&&(identical(other.legalInfo, legalInfo) || other.legalInfo == legalInfo)&&const DeepCollectionEquality().equals(other._defaultLocation, _defaultLocation)&&(identical(other.uploadImageMaxSize, uploadImageMaxSize) || other.uploadImageMaxSize == uploadImageMaxSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,configType,buildType,debugOptions,debugPaintOptions,apiEndpoint,authServiceEndpoint,systemId,customerApiEndpoint,analystEndpoint,geocoderApiKey,sbpUrl,paymentServiceEndpoint,dataownerId,orderEndpoint,geocoderApiUrl,defaultStore,integrationId,fridgeApiUrl,paymentRedirectUrl,legalInfo,const DeepCollectionEquality().hash(_defaultLocation),uploadImageMaxSize]);

@override
String toString() {
  return 'AppEnvironment(configType: $configType, buildType: $buildType, debugOptions: $debugOptions, debugPaintOptions: $debugPaintOptions, apiEndpoint: $apiEndpoint, authServiceEndpoint: $authServiceEndpoint, systemId: $systemId, customerApiEndpoint: $customerApiEndpoint, analystEndpoint: $analystEndpoint, geocoderApiKey: $geocoderApiKey, sbpUrl: $sbpUrl, paymentServiceEndpoint: $paymentServiceEndpoint, dataownerId: $dataownerId, orderEndpoint: $orderEndpoint, geocoderApiUrl: $geocoderApiUrl, defaultStore: $defaultStore, integrationId: $integrationId, fridgeApiUrl: $fridgeApiUrl, paymentRedirectUrl: $paymentRedirectUrl, legalInfo: $legalInfo, defaultLocation: $defaultLocation, uploadImageMaxSize: $uploadImageMaxSize)';
}


}

/// @nodoc
abstract mixin class _$AppEnvironmentCopyWith<$Res> implements $AppEnvironmentCopyWith<$Res> {
  factory _$AppEnvironmentCopyWith(_AppEnvironment value, $Res Function(_AppEnvironment) _then) = __$AppEnvironmentCopyWithImpl;
@override @useResult
$Res call({
 ConfigType configType, BuildType buildType, DebugOptions debugOptions, DebugPaintOptions debugPaintOptions, String apiEndpoint, String authServiceEndpoint, String systemId, String customerApiEndpoint, String analystEndpoint, String geocoderApiKey, String sbpUrl, String paymentServiceEndpoint, String dataownerId, String orderEndpoint, String geocoderApiUrl, String defaultStore, String integrationId, String fridgeApiUrl, PaymentRedirectUrl paymentRedirectUrl, LegalInfo legalInfo, List<num> defaultLocation, double uploadImageMaxSize
});


@override $DebugOptionsCopyWith<$Res> get debugOptions;@override $DebugPaintOptionsCopyWith<$Res> get debugPaintOptions;@override $PaymentRedirectUrlCopyWith<$Res> get paymentRedirectUrl;@override $LegalInfoCopyWith<$Res> get legalInfo;

}
/// @nodoc
class __$AppEnvironmentCopyWithImpl<$Res>
    implements _$AppEnvironmentCopyWith<$Res> {
  __$AppEnvironmentCopyWithImpl(this._self, this._then);

  final _AppEnvironment _self;
  final $Res Function(_AppEnvironment) _then;

/// Create a copy of AppEnvironment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? configType = null,Object? buildType = null,Object? debugOptions = null,Object? debugPaintOptions = null,Object? apiEndpoint = null,Object? authServiceEndpoint = null,Object? systemId = null,Object? customerApiEndpoint = null,Object? analystEndpoint = null,Object? geocoderApiKey = null,Object? sbpUrl = null,Object? paymentServiceEndpoint = null,Object? dataownerId = null,Object? orderEndpoint = null,Object? geocoderApiUrl = null,Object? defaultStore = null,Object? integrationId = null,Object? fridgeApiUrl = null,Object? paymentRedirectUrl = null,Object? legalInfo = null,Object? defaultLocation = null,Object? uploadImageMaxSize = null,}) {
  return _then(_AppEnvironment(
configType: null == configType ? _self.configType : configType // ignore: cast_nullable_to_non_nullable
as ConfigType,buildType: null == buildType ? _self.buildType : buildType // ignore: cast_nullable_to_non_nullable
as BuildType,debugOptions: null == debugOptions ? _self.debugOptions : debugOptions // ignore: cast_nullable_to_non_nullable
as DebugOptions,debugPaintOptions: null == debugPaintOptions ? _self.debugPaintOptions : debugPaintOptions // ignore: cast_nullable_to_non_nullable
as DebugPaintOptions,apiEndpoint: null == apiEndpoint ? _self.apiEndpoint : apiEndpoint // ignore: cast_nullable_to_non_nullable
as String,authServiceEndpoint: null == authServiceEndpoint ? _self.authServiceEndpoint : authServiceEndpoint // ignore: cast_nullable_to_non_nullable
as String,systemId: null == systemId ? _self.systemId : systemId // ignore: cast_nullable_to_non_nullable
as String,customerApiEndpoint: null == customerApiEndpoint ? _self.customerApiEndpoint : customerApiEndpoint // ignore: cast_nullable_to_non_nullable
as String,analystEndpoint: null == analystEndpoint ? _self.analystEndpoint : analystEndpoint // ignore: cast_nullable_to_non_nullable
as String,geocoderApiKey: null == geocoderApiKey ? _self.geocoderApiKey : geocoderApiKey // ignore: cast_nullable_to_non_nullable
as String,sbpUrl: null == sbpUrl ? _self.sbpUrl : sbpUrl // ignore: cast_nullable_to_non_nullable
as String,paymentServiceEndpoint: null == paymentServiceEndpoint ? _self.paymentServiceEndpoint : paymentServiceEndpoint // ignore: cast_nullable_to_non_nullable
as String,dataownerId: null == dataownerId ? _self.dataownerId : dataownerId // ignore: cast_nullable_to_non_nullable
as String,orderEndpoint: null == orderEndpoint ? _self.orderEndpoint : orderEndpoint // ignore: cast_nullable_to_non_nullable
as String,geocoderApiUrl: null == geocoderApiUrl ? _self.geocoderApiUrl : geocoderApiUrl // ignore: cast_nullable_to_non_nullable
as String,defaultStore: null == defaultStore ? _self.defaultStore : defaultStore // ignore: cast_nullable_to_non_nullable
as String,integrationId: null == integrationId ? _self.integrationId : integrationId // ignore: cast_nullable_to_non_nullable
as String,fridgeApiUrl: null == fridgeApiUrl ? _self.fridgeApiUrl : fridgeApiUrl // ignore: cast_nullable_to_non_nullable
as String,paymentRedirectUrl: null == paymentRedirectUrl ? _self.paymentRedirectUrl : paymentRedirectUrl // ignore: cast_nullable_to_non_nullable
as PaymentRedirectUrl,legalInfo: null == legalInfo ? _self.legalInfo : legalInfo // ignore: cast_nullable_to_non_nullable
as LegalInfo,defaultLocation: null == defaultLocation ? _self._defaultLocation : defaultLocation // ignore: cast_nullable_to_non_nullable
as List<num>,uploadImageMaxSize: null == uploadImageMaxSize ? _self.uploadImageMaxSize : uploadImageMaxSize // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of AppEnvironment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DebugOptionsCopyWith<$Res> get debugOptions {
  
  return $DebugOptionsCopyWith<$Res>(_self.debugOptions, (value) {
    return _then(_self.copyWith(debugOptions: value));
  });
}/// Create a copy of AppEnvironment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DebugPaintOptionsCopyWith<$Res> get debugPaintOptions {
  
  return $DebugPaintOptionsCopyWith<$Res>(_self.debugPaintOptions, (value) {
    return _then(_self.copyWith(debugPaintOptions: value));
  });
}/// Create a copy of AppEnvironment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentRedirectUrlCopyWith<$Res> get paymentRedirectUrl {
  
  return $PaymentRedirectUrlCopyWith<$Res>(_self.paymentRedirectUrl, (value) {
    return _then(_self.copyWith(paymentRedirectUrl: value));
  });
}/// Create a copy of AppEnvironment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LegalInfoCopyWith<$Res> get legalInfo {
  
  return $LegalInfoCopyWith<$Res>(_self.legalInfo, (value) {
    return _then(_self.copyWith(legalInfo: value));
  });
}
}


/// @nodoc
mixin _$DebugOptions {

 bool get showPerformanceOverlay; bool get debugShowMaterialGrid; bool get checkerboardRasterCacheImages; bool get checkerboardOffscreenLayers; bool get showSemanticsDebugger; bool get debugShowCheckedModeBanner;
/// Create a copy of DebugOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DebugOptionsCopyWith<DebugOptions> get copyWith => _$DebugOptionsCopyWithImpl<DebugOptions>(this as DebugOptions, _$identity);

  /// Serializes this DebugOptions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DebugOptions&&(identical(other.showPerformanceOverlay, showPerformanceOverlay) || other.showPerformanceOverlay == showPerformanceOverlay)&&(identical(other.debugShowMaterialGrid, debugShowMaterialGrid) || other.debugShowMaterialGrid == debugShowMaterialGrid)&&(identical(other.checkerboardRasterCacheImages, checkerboardRasterCacheImages) || other.checkerboardRasterCacheImages == checkerboardRasterCacheImages)&&(identical(other.checkerboardOffscreenLayers, checkerboardOffscreenLayers) || other.checkerboardOffscreenLayers == checkerboardOffscreenLayers)&&(identical(other.showSemanticsDebugger, showSemanticsDebugger) || other.showSemanticsDebugger == showSemanticsDebugger)&&(identical(other.debugShowCheckedModeBanner, debugShowCheckedModeBanner) || other.debugShowCheckedModeBanner == debugShowCheckedModeBanner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,showPerformanceOverlay,debugShowMaterialGrid,checkerboardRasterCacheImages,checkerboardOffscreenLayers,showSemanticsDebugger,debugShowCheckedModeBanner);

@override
String toString() {
  return 'DebugOptions(showPerformanceOverlay: $showPerformanceOverlay, debugShowMaterialGrid: $debugShowMaterialGrid, checkerboardRasterCacheImages: $checkerboardRasterCacheImages, checkerboardOffscreenLayers: $checkerboardOffscreenLayers, showSemanticsDebugger: $showSemanticsDebugger, debugShowCheckedModeBanner: $debugShowCheckedModeBanner)';
}


}

/// @nodoc
abstract mixin class $DebugOptionsCopyWith<$Res>  {
  factory $DebugOptionsCopyWith(DebugOptions value, $Res Function(DebugOptions) _then) = _$DebugOptionsCopyWithImpl;
@useResult
$Res call({
 bool showPerformanceOverlay, bool debugShowMaterialGrid, bool checkerboardRasterCacheImages, bool checkerboardOffscreenLayers, bool showSemanticsDebugger, bool debugShowCheckedModeBanner
});




}
/// @nodoc
class _$DebugOptionsCopyWithImpl<$Res>
    implements $DebugOptionsCopyWith<$Res> {
  _$DebugOptionsCopyWithImpl(this._self, this._then);

  final DebugOptions _self;
  final $Res Function(DebugOptions) _then;

/// Create a copy of DebugOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? showPerformanceOverlay = null,Object? debugShowMaterialGrid = null,Object? checkerboardRasterCacheImages = null,Object? checkerboardOffscreenLayers = null,Object? showSemanticsDebugger = null,Object? debugShowCheckedModeBanner = null,}) {
  return _then(DebugOptions(
showPerformanceOverlay: null == showPerformanceOverlay ? _self.showPerformanceOverlay : showPerformanceOverlay // ignore: cast_nullable_to_non_nullable
as bool,debugShowMaterialGrid: null == debugShowMaterialGrid ? _self.debugShowMaterialGrid : debugShowMaterialGrid // ignore: cast_nullable_to_non_nullable
as bool,checkerboardRasterCacheImages: null == checkerboardRasterCacheImages ? _self.checkerboardRasterCacheImages : checkerboardRasterCacheImages // ignore: cast_nullable_to_non_nullable
as bool,checkerboardOffscreenLayers: null == checkerboardOffscreenLayers ? _self.checkerboardOffscreenLayers : checkerboardOffscreenLayers // ignore: cast_nullable_to_non_nullable
as bool,showSemanticsDebugger: null == showSemanticsDebugger ? _self.showSemanticsDebugger : showSemanticsDebugger // ignore: cast_nullable_to_non_nullable
as bool,debugShowCheckedModeBanner: null == debugShowCheckedModeBanner ? _self.debugShowCheckedModeBanner : debugShowCheckedModeBanner // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DebugOptions].
extension DebugOptionsPatterns on DebugOptions {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DebugOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DebugOptions() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DebugOptions value)  $default,){
final _that = this;
switch (_that) {
case _DebugOptions():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DebugOptions value)?  $default,){
final _that = this;
switch (_that) {
case _DebugOptions() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool showPerformanceOverlay,  bool debugShowMaterialGrid,  bool checkerboardRasterCacheImages,  bool checkerboardOffscreenLayers,  bool showSemanticsDebugger,  bool debugShowCheckedModeBanner)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DebugOptions() when $default != null:
return $default(_that.showPerformanceOverlay,_that.debugShowMaterialGrid,_that.checkerboardRasterCacheImages,_that.checkerboardOffscreenLayers,_that.showSemanticsDebugger,_that.debugShowCheckedModeBanner);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool showPerformanceOverlay,  bool debugShowMaterialGrid,  bool checkerboardRasterCacheImages,  bool checkerboardOffscreenLayers,  bool showSemanticsDebugger,  bool debugShowCheckedModeBanner)  $default,) {final _that = this;
switch (_that) {
case _DebugOptions():
return $default(_that.showPerformanceOverlay,_that.debugShowMaterialGrid,_that.checkerboardRasterCacheImages,_that.checkerboardOffscreenLayers,_that.showSemanticsDebugger,_that.debugShowCheckedModeBanner);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool showPerformanceOverlay,  bool debugShowMaterialGrid,  bool checkerboardRasterCacheImages,  bool checkerboardOffscreenLayers,  bool showSemanticsDebugger,  bool debugShowCheckedModeBanner)?  $default,) {final _that = this;
switch (_that) {
case _DebugOptions() when $default != null:
return $default(_that.showPerformanceOverlay,_that.debugShowMaterialGrid,_that.checkerboardRasterCacheImages,_that.checkerboardOffscreenLayers,_that.showSemanticsDebugger,_that.debugShowCheckedModeBanner);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DebugOptions implements DebugOptions {
  const _DebugOptions({this.showPerformanceOverlay = false, this.debugShowMaterialGrid = false, this.checkerboardRasterCacheImages = false, this.checkerboardOffscreenLayers = false, this.showSemanticsDebugger = false, this.debugShowCheckedModeBanner = false});
  factory _DebugOptions.fromJson(Map<String, dynamic> json) => _$DebugOptionsFromJson(json);

@override@JsonKey() final  bool showPerformanceOverlay;
@override@JsonKey() final  bool debugShowMaterialGrid;
@override@JsonKey() final  bool checkerboardRasterCacheImages;
@override@JsonKey() final  bool checkerboardOffscreenLayers;
@override@JsonKey() final  bool showSemanticsDebugger;
@override@JsonKey() final  bool debugShowCheckedModeBanner;

/// Create a copy of DebugOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DebugOptionsCopyWith<_DebugOptions> get copyWith => __$DebugOptionsCopyWithImpl<_DebugOptions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DebugOptionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebugOptions&&(identical(other.showPerformanceOverlay, showPerformanceOverlay) || other.showPerformanceOverlay == showPerformanceOverlay)&&(identical(other.debugShowMaterialGrid, debugShowMaterialGrid) || other.debugShowMaterialGrid == debugShowMaterialGrid)&&(identical(other.checkerboardRasterCacheImages, checkerboardRasterCacheImages) || other.checkerboardRasterCacheImages == checkerboardRasterCacheImages)&&(identical(other.checkerboardOffscreenLayers, checkerboardOffscreenLayers) || other.checkerboardOffscreenLayers == checkerboardOffscreenLayers)&&(identical(other.showSemanticsDebugger, showSemanticsDebugger) || other.showSemanticsDebugger == showSemanticsDebugger)&&(identical(other.debugShowCheckedModeBanner, debugShowCheckedModeBanner) || other.debugShowCheckedModeBanner == debugShowCheckedModeBanner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,showPerformanceOverlay,debugShowMaterialGrid,checkerboardRasterCacheImages,checkerboardOffscreenLayers,showSemanticsDebugger,debugShowCheckedModeBanner);

@override
String toString() {
  return 'DebugOptions(showPerformanceOverlay: $showPerformanceOverlay, debugShowMaterialGrid: $debugShowMaterialGrid, checkerboardRasterCacheImages: $checkerboardRasterCacheImages, checkerboardOffscreenLayers: $checkerboardOffscreenLayers, showSemanticsDebugger: $showSemanticsDebugger, debugShowCheckedModeBanner: $debugShowCheckedModeBanner)';
}


}

/// @nodoc
abstract mixin class _$DebugOptionsCopyWith<$Res> implements $DebugOptionsCopyWith<$Res> {
  factory _$DebugOptionsCopyWith(_DebugOptions value, $Res Function(_DebugOptions) _then) = __$DebugOptionsCopyWithImpl;
@override @useResult
$Res call({
 bool showPerformanceOverlay, bool debugShowMaterialGrid, bool checkerboardRasterCacheImages, bool checkerboardOffscreenLayers, bool showSemanticsDebugger, bool debugShowCheckedModeBanner
});




}
/// @nodoc
class __$DebugOptionsCopyWithImpl<$Res>
    implements _$DebugOptionsCopyWith<$Res> {
  __$DebugOptionsCopyWithImpl(this._self, this._then);

  final _DebugOptions _self;
  final $Res Function(_DebugOptions) _then;

/// Create a copy of DebugOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showPerformanceOverlay = null,Object? debugShowMaterialGrid = null,Object? checkerboardRasterCacheImages = null,Object? checkerboardOffscreenLayers = null,Object? showSemanticsDebugger = null,Object? debugShowCheckedModeBanner = null,}) {
  return _then(_DebugOptions(
showPerformanceOverlay: null == showPerformanceOverlay ? _self.showPerformanceOverlay : showPerformanceOverlay // ignore: cast_nullable_to_non_nullable
as bool,debugShowMaterialGrid: null == debugShowMaterialGrid ? _self.debugShowMaterialGrid : debugShowMaterialGrid // ignore: cast_nullable_to_non_nullable
as bool,checkerboardRasterCacheImages: null == checkerboardRasterCacheImages ? _self.checkerboardRasterCacheImages : checkerboardRasterCacheImages // ignore: cast_nullable_to_non_nullable
as bool,checkerboardOffscreenLayers: null == checkerboardOffscreenLayers ? _self.checkerboardOffscreenLayers : checkerboardOffscreenLayers // ignore: cast_nullable_to_non_nullable
as bool,showSemanticsDebugger: null == showSemanticsDebugger ? _self.showSemanticsDebugger : showSemanticsDebugger // ignore: cast_nullable_to_non_nullable
as bool,debugShowCheckedModeBanner: null == debugShowCheckedModeBanner ? _self.debugShowCheckedModeBanner : debugShowCheckedModeBanner // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$DebugPaintOptions {

 bool get debugPaintSizeEnabled; bool get debugPaintBaselinesEnabled; bool get debugPaintPointersEnabled; bool get debugPaintLayerBordersEnabled; bool get debugRepaintRainbowEnabled;
/// Create a copy of DebugPaintOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DebugPaintOptionsCopyWith<DebugPaintOptions> get copyWith => _$DebugPaintOptionsCopyWithImpl<DebugPaintOptions>(this as DebugPaintOptions, _$identity);

  /// Serializes this DebugPaintOptions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DebugPaintOptions&&(identical(other.debugPaintSizeEnabled, debugPaintSizeEnabled) || other.debugPaintSizeEnabled == debugPaintSizeEnabled)&&(identical(other.debugPaintBaselinesEnabled, debugPaintBaselinesEnabled) || other.debugPaintBaselinesEnabled == debugPaintBaselinesEnabled)&&(identical(other.debugPaintPointersEnabled, debugPaintPointersEnabled) || other.debugPaintPointersEnabled == debugPaintPointersEnabled)&&(identical(other.debugPaintLayerBordersEnabled, debugPaintLayerBordersEnabled) || other.debugPaintLayerBordersEnabled == debugPaintLayerBordersEnabled)&&(identical(other.debugRepaintRainbowEnabled, debugRepaintRainbowEnabled) || other.debugRepaintRainbowEnabled == debugRepaintRainbowEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,debugPaintSizeEnabled,debugPaintBaselinesEnabled,debugPaintPointersEnabled,debugPaintLayerBordersEnabled,debugRepaintRainbowEnabled);

@override
String toString() {
  return 'DebugPaintOptions(debugPaintSizeEnabled: $debugPaintSizeEnabled, debugPaintBaselinesEnabled: $debugPaintBaselinesEnabled, debugPaintPointersEnabled: $debugPaintPointersEnabled, debugPaintLayerBordersEnabled: $debugPaintLayerBordersEnabled, debugRepaintRainbowEnabled: $debugRepaintRainbowEnabled)';
}


}

/// @nodoc
abstract mixin class $DebugPaintOptionsCopyWith<$Res>  {
  factory $DebugPaintOptionsCopyWith(DebugPaintOptions value, $Res Function(DebugPaintOptions) _then) = _$DebugPaintOptionsCopyWithImpl;
@useResult
$Res call({
 bool debugPaintSizeEnabled, bool debugPaintBaselinesEnabled, bool debugPaintPointersEnabled, bool debugPaintLayerBordersEnabled, bool debugRepaintRainbowEnabled
});




}
/// @nodoc
class _$DebugPaintOptionsCopyWithImpl<$Res>
    implements $DebugPaintOptionsCopyWith<$Res> {
  _$DebugPaintOptionsCopyWithImpl(this._self, this._then);

  final DebugPaintOptions _self;
  final $Res Function(DebugPaintOptions) _then;

/// Create a copy of DebugPaintOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? debugPaintSizeEnabled = null,Object? debugPaintBaselinesEnabled = null,Object? debugPaintPointersEnabled = null,Object? debugPaintLayerBordersEnabled = null,Object? debugRepaintRainbowEnabled = null,}) {
  return _then(DebugPaintOptions(
debugPaintSizeEnabled: null == debugPaintSizeEnabled ? _self.debugPaintSizeEnabled : debugPaintSizeEnabled // ignore: cast_nullable_to_non_nullable
as bool,debugPaintBaselinesEnabled: null == debugPaintBaselinesEnabled ? _self.debugPaintBaselinesEnabled : debugPaintBaselinesEnabled // ignore: cast_nullable_to_non_nullable
as bool,debugPaintPointersEnabled: null == debugPaintPointersEnabled ? _self.debugPaintPointersEnabled : debugPaintPointersEnabled // ignore: cast_nullable_to_non_nullable
as bool,debugPaintLayerBordersEnabled: null == debugPaintLayerBordersEnabled ? _self.debugPaintLayerBordersEnabled : debugPaintLayerBordersEnabled // ignore: cast_nullable_to_non_nullable
as bool,debugRepaintRainbowEnabled: null == debugRepaintRainbowEnabled ? _self.debugRepaintRainbowEnabled : debugRepaintRainbowEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DebugPaintOptions].
extension DebugPaintOptionsPatterns on DebugPaintOptions {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DebugPaintOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DebugPaintOptions() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DebugPaintOptions value)  $default,){
final _that = this;
switch (_that) {
case _DebugPaintOptions():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DebugPaintOptions value)?  $default,){
final _that = this;
switch (_that) {
case _DebugPaintOptions() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool debugPaintSizeEnabled,  bool debugPaintBaselinesEnabled,  bool debugPaintPointersEnabled,  bool debugPaintLayerBordersEnabled,  bool debugRepaintRainbowEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DebugPaintOptions() when $default != null:
return $default(_that.debugPaintSizeEnabled,_that.debugPaintBaselinesEnabled,_that.debugPaintPointersEnabled,_that.debugPaintLayerBordersEnabled,_that.debugRepaintRainbowEnabled);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool debugPaintSizeEnabled,  bool debugPaintBaselinesEnabled,  bool debugPaintPointersEnabled,  bool debugPaintLayerBordersEnabled,  bool debugRepaintRainbowEnabled)  $default,) {final _that = this;
switch (_that) {
case _DebugPaintOptions():
return $default(_that.debugPaintSizeEnabled,_that.debugPaintBaselinesEnabled,_that.debugPaintPointersEnabled,_that.debugPaintLayerBordersEnabled,_that.debugRepaintRainbowEnabled);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool debugPaintSizeEnabled,  bool debugPaintBaselinesEnabled,  bool debugPaintPointersEnabled,  bool debugPaintLayerBordersEnabled,  bool debugRepaintRainbowEnabled)?  $default,) {final _that = this;
switch (_that) {
case _DebugPaintOptions() when $default != null:
return $default(_that.debugPaintSizeEnabled,_that.debugPaintBaselinesEnabled,_that.debugPaintPointersEnabled,_that.debugPaintLayerBordersEnabled,_that.debugRepaintRainbowEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DebugPaintOptions implements DebugPaintOptions {
  const _DebugPaintOptions({this.debugPaintSizeEnabled = false, this.debugPaintBaselinesEnabled = false, this.debugPaintPointersEnabled = false, this.debugPaintLayerBordersEnabled = false, this.debugRepaintRainbowEnabled = false});
  factory _DebugPaintOptions.fromJson(Map<String, dynamic> json) => _$DebugPaintOptionsFromJson(json);

@override@JsonKey() final  bool debugPaintSizeEnabled;
@override@JsonKey() final  bool debugPaintBaselinesEnabled;
@override@JsonKey() final  bool debugPaintPointersEnabled;
@override@JsonKey() final  bool debugPaintLayerBordersEnabled;
@override@JsonKey() final  bool debugRepaintRainbowEnabled;

/// Create a copy of DebugPaintOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DebugPaintOptionsCopyWith<_DebugPaintOptions> get copyWith => __$DebugPaintOptionsCopyWithImpl<_DebugPaintOptions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DebugPaintOptionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebugPaintOptions&&(identical(other.debugPaintSizeEnabled, debugPaintSizeEnabled) || other.debugPaintSizeEnabled == debugPaintSizeEnabled)&&(identical(other.debugPaintBaselinesEnabled, debugPaintBaselinesEnabled) || other.debugPaintBaselinesEnabled == debugPaintBaselinesEnabled)&&(identical(other.debugPaintPointersEnabled, debugPaintPointersEnabled) || other.debugPaintPointersEnabled == debugPaintPointersEnabled)&&(identical(other.debugPaintLayerBordersEnabled, debugPaintLayerBordersEnabled) || other.debugPaintLayerBordersEnabled == debugPaintLayerBordersEnabled)&&(identical(other.debugRepaintRainbowEnabled, debugRepaintRainbowEnabled) || other.debugRepaintRainbowEnabled == debugRepaintRainbowEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,debugPaintSizeEnabled,debugPaintBaselinesEnabled,debugPaintPointersEnabled,debugPaintLayerBordersEnabled,debugRepaintRainbowEnabled);

@override
String toString() {
  return 'DebugPaintOptions(debugPaintSizeEnabled: $debugPaintSizeEnabled, debugPaintBaselinesEnabled: $debugPaintBaselinesEnabled, debugPaintPointersEnabled: $debugPaintPointersEnabled, debugPaintLayerBordersEnabled: $debugPaintLayerBordersEnabled, debugRepaintRainbowEnabled: $debugRepaintRainbowEnabled)';
}


}

/// @nodoc
abstract mixin class _$DebugPaintOptionsCopyWith<$Res> implements $DebugPaintOptionsCopyWith<$Res> {
  factory _$DebugPaintOptionsCopyWith(_DebugPaintOptions value, $Res Function(_DebugPaintOptions) _then) = __$DebugPaintOptionsCopyWithImpl;
@override @useResult
$Res call({
 bool debugPaintSizeEnabled, bool debugPaintBaselinesEnabled, bool debugPaintPointersEnabled, bool debugPaintLayerBordersEnabled, bool debugRepaintRainbowEnabled
});




}
/// @nodoc
class __$DebugPaintOptionsCopyWithImpl<$Res>
    implements _$DebugPaintOptionsCopyWith<$Res> {
  __$DebugPaintOptionsCopyWithImpl(this._self, this._then);

  final _DebugPaintOptions _self;
  final $Res Function(_DebugPaintOptions) _then;

/// Create a copy of DebugPaintOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? debugPaintSizeEnabled = null,Object? debugPaintBaselinesEnabled = null,Object? debugPaintPointersEnabled = null,Object? debugPaintLayerBordersEnabled = null,Object? debugRepaintRainbowEnabled = null,}) {
  return _then(_DebugPaintOptions(
debugPaintSizeEnabled: null == debugPaintSizeEnabled ? _self.debugPaintSizeEnabled : debugPaintSizeEnabled // ignore: cast_nullable_to_non_nullable
as bool,debugPaintBaselinesEnabled: null == debugPaintBaselinesEnabled ? _self.debugPaintBaselinesEnabled : debugPaintBaselinesEnabled // ignore: cast_nullable_to_non_nullable
as bool,debugPaintPointersEnabled: null == debugPaintPointersEnabled ? _self.debugPaintPointersEnabled : debugPaintPointersEnabled // ignore: cast_nullable_to_non_nullable
as bool,debugPaintLayerBordersEnabled: null == debugPaintLayerBordersEnabled ? _self.debugPaintLayerBordersEnabled : debugPaintLayerBordersEnabled // ignore: cast_nullable_to_non_nullable
as bool,debugRepaintRainbowEnabled: null == debugRepaintRainbowEnabled ? _self.debugRepaintRainbowEnabled : debugRepaintRainbowEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PaymentRedirectUrl {

 String get successUrl; String get failureUrl;
/// Create a copy of PaymentRedirectUrl
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentRedirectUrlCopyWith<PaymentRedirectUrl> get copyWith => _$PaymentRedirectUrlCopyWithImpl<PaymentRedirectUrl>(this as PaymentRedirectUrl, _$identity);

  /// Serializes this PaymentRedirectUrl to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRedirectUrl&&(identical(other.successUrl, successUrl) || other.successUrl == successUrl)&&(identical(other.failureUrl, failureUrl) || other.failureUrl == failureUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,successUrl,failureUrl);

@override
String toString() {
  return 'PaymentRedirectUrl(successUrl: $successUrl, failureUrl: $failureUrl)';
}


}

/// @nodoc
abstract mixin class $PaymentRedirectUrlCopyWith<$Res>  {
  factory $PaymentRedirectUrlCopyWith(PaymentRedirectUrl value, $Res Function(PaymentRedirectUrl) _then) = _$PaymentRedirectUrlCopyWithImpl;
@useResult
$Res call({
 String successUrl, String failureUrl
});




}
/// @nodoc
class _$PaymentRedirectUrlCopyWithImpl<$Res>
    implements $PaymentRedirectUrlCopyWith<$Res> {
  _$PaymentRedirectUrlCopyWithImpl(this._self, this._then);

  final PaymentRedirectUrl _self;
  final $Res Function(PaymentRedirectUrl) _then;

/// Create a copy of PaymentRedirectUrl
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? successUrl = null,Object? failureUrl = null,}) {
  return _then(PaymentRedirectUrl(
successUrl: null == successUrl ? _self.successUrl : successUrl // ignore: cast_nullable_to_non_nullable
as String,failureUrl: null == failureUrl ? _self.failureUrl : failureUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentRedirectUrl].
extension PaymentRedirectUrlPatterns on PaymentRedirectUrl {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentRedirectUrl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentRedirectUrl() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentRedirectUrl value)  $default,){
final _that = this;
switch (_that) {
case _PaymentRedirectUrl():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentRedirectUrl value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentRedirectUrl() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String successUrl,  String failureUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentRedirectUrl() when $default != null:
return $default(_that.successUrl,_that.failureUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String successUrl,  String failureUrl)  $default,) {final _that = this;
switch (_that) {
case _PaymentRedirectUrl():
return $default(_that.successUrl,_that.failureUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String successUrl,  String failureUrl)?  $default,) {final _that = this;
switch (_that) {
case _PaymentRedirectUrl() when $default != null:
return $default(_that.successUrl,_that.failureUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentRedirectUrl implements PaymentRedirectUrl {
  const _PaymentRedirectUrl({required this.successUrl, required this.failureUrl});
  factory _PaymentRedirectUrl.fromJson(Map<String, dynamic> json) => _$PaymentRedirectUrlFromJson(json);

@override final  String successUrl;
@override final  String failureUrl;

/// Create a copy of PaymentRedirectUrl
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentRedirectUrlCopyWith<_PaymentRedirectUrl> get copyWith => __$PaymentRedirectUrlCopyWithImpl<_PaymentRedirectUrl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentRedirectUrlToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentRedirectUrl&&(identical(other.successUrl, successUrl) || other.successUrl == successUrl)&&(identical(other.failureUrl, failureUrl) || other.failureUrl == failureUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,successUrl,failureUrl);

@override
String toString() {
  return 'PaymentRedirectUrl(successUrl: $successUrl, failureUrl: $failureUrl)';
}


}

/// @nodoc
abstract mixin class _$PaymentRedirectUrlCopyWith<$Res> implements $PaymentRedirectUrlCopyWith<$Res> {
  factory _$PaymentRedirectUrlCopyWith(_PaymentRedirectUrl value, $Res Function(_PaymentRedirectUrl) _then) = __$PaymentRedirectUrlCopyWithImpl;
@override @useResult
$Res call({
 String successUrl, String failureUrl
});




}
/// @nodoc
class __$PaymentRedirectUrlCopyWithImpl<$Res>
    implements _$PaymentRedirectUrlCopyWith<$Res> {
  __$PaymentRedirectUrlCopyWithImpl(this._self, this._then);

  final _PaymentRedirectUrl _self;
  final $Res Function(_PaymentRedirectUrl) _then;

/// Create a copy of PaymentRedirectUrl
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? successUrl = null,Object? failureUrl = null,}) {
  return _then(_PaymentRedirectUrl(
successUrl: null == successUrl ? _self.successUrl : successUrl // ignore: cast_nullable_to_non_nullable
as String,failureUrl: null == failureUrl ? _self.failureUrl : failureUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LegalInfo {

 String get userAgreementUrl; String get publicOfferUrl; String get privacyPolicyUrl;
/// Create a copy of LegalInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LegalInfoCopyWith<LegalInfo> get copyWith => _$LegalInfoCopyWithImpl<LegalInfo>(this as LegalInfo, _$identity);

  /// Serializes this LegalInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LegalInfo&&(identical(other.userAgreementUrl, userAgreementUrl) || other.userAgreementUrl == userAgreementUrl)&&(identical(other.publicOfferUrl, publicOfferUrl) || other.publicOfferUrl == publicOfferUrl)&&(identical(other.privacyPolicyUrl, privacyPolicyUrl) || other.privacyPolicyUrl == privacyPolicyUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userAgreementUrl,publicOfferUrl,privacyPolicyUrl);

@override
String toString() {
  return 'LegalInfo(userAgreementUrl: $userAgreementUrl, publicOfferUrl: $publicOfferUrl, privacyPolicyUrl: $privacyPolicyUrl)';
}


}

/// @nodoc
abstract mixin class $LegalInfoCopyWith<$Res>  {
  factory $LegalInfoCopyWith(LegalInfo value, $Res Function(LegalInfo) _then) = _$LegalInfoCopyWithImpl;
@useResult
$Res call({
 String userAgreementUrl, String publicOfferUrl, String privacyPolicyUrl
});




}
/// @nodoc
class _$LegalInfoCopyWithImpl<$Res>
    implements $LegalInfoCopyWith<$Res> {
  _$LegalInfoCopyWithImpl(this._self, this._then);

  final LegalInfo _self;
  final $Res Function(LegalInfo) _then;

/// Create a copy of LegalInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userAgreementUrl = null,Object? publicOfferUrl = null,Object? privacyPolicyUrl = null,}) {
  return _then(LegalInfo(
userAgreementUrl: null == userAgreementUrl ? _self.userAgreementUrl : userAgreementUrl // ignore: cast_nullable_to_non_nullable
as String,publicOfferUrl: null == publicOfferUrl ? _self.publicOfferUrl : publicOfferUrl // ignore: cast_nullable_to_non_nullable
as String,privacyPolicyUrl: null == privacyPolicyUrl ? _self.privacyPolicyUrl : privacyPolicyUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LegalInfo].
extension LegalInfoPatterns on LegalInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LegalInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LegalInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LegalInfo value)  $default,){
final _that = this;
switch (_that) {
case _LegalInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LegalInfo value)?  $default,){
final _that = this;
switch (_that) {
case _LegalInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userAgreementUrl,  String publicOfferUrl,  String privacyPolicyUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LegalInfo() when $default != null:
return $default(_that.userAgreementUrl,_that.publicOfferUrl,_that.privacyPolicyUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userAgreementUrl,  String publicOfferUrl,  String privacyPolicyUrl)  $default,) {final _that = this;
switch (_that) {
case _LegalInfo():
return $default(_that.userAgreementUrl,_that.publicOfferUrl,_that.privacyPolicyUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userAgreementUrl,  String publicOfferUrl,  String privacyPolicyUrl)?  $default,) {final _that = this;
switch (_that) {
case _LegalInfo() when $default != null:
return $default(_that.userAgreementUrl,_that.publicOfferUrl,_that.privacyPolicyUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LegalInfo implements LegalInfo {
  const _LegalInfo({required this.userAgreementUrl, required this.publicOfferUrl, required this.privacyPolicyUrl});
  factory _LegalInfo.fromJson(Map<String, dynamic> json) => _$LegalInfoFromJson(json);

@override final  String userAgreementUrl;
@override final  String publicOfferUrl;
@override final  String privacyPolicyUrl;

/// Create a copy of LegalInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LegalInfoCopyWith<_LegalInfo> get copyWith => __$LegalInfoCopyWithImpl<_LegalInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LegalInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LegalInfo&&(identical(other.userAgreementUrl, userAgreementUrl) || other.userAgreementUrl == userAgreementUrl)&&(identical(other.publicOfferUrl, publicOfferUrl) || other.publicOfferUrl == publicOfferUrl)&&(identical(other.privacyPolicyUrl, privacyPolicyUrl) || other.privacyPolicyUrl == privacyPolicyUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userAgreementUrl,publicOfferUrl,privacyPolicyUrl);

@override
String toString() {
  return 'LegalInfo(userAgreementUrl: $userAgreementUrl, publicOfferUrl: $publicOfferUrl, privacyPolicyUrl: $privacyPolicyUrl)';
}


}

/// @nodoc
abstract mixin class _$LegalInfoCopyWith<$Res> implements $LegalInfoCopyWith<$Res> {
  factory _$LegalInfoCopyWith(_LegalInfo value, $Res Function(_LegalInfo) _then) = __$LegalInfoCopyWithImpl;
@override @useResult
$Res call({
 String userAgreementUrl, String publicOfferUrl, String privacyPolicyUrl
});




}
/// @nodoc
class __$LegalInfoCopyWithImpl<$Res>
    implements _$LegalInfoCopyWith<$Res> {
  __$LegalInfoCopyWithImpl(this._self, this._then);

  final _LegalInfo _self;
  final $Res Function(_LegalInfo) _then;

/// Create a copy of LegalInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userAgreementUrl = null,Object? publicOfferUrl = null,Object? privacyPolicyUrl = null,}) {
  return _then(_LegalInfo(
userAgreementUrl: null == userAgreementUrl ? _self.userAgreementUrl : userAgreementUrl // ignore: cast_nullable_to_non_nullable
as String,publicOfferUrl: null == publicOfferUrl ? _self.publicOfferUrl : publicOfferUrl // ignore: cast_nullable_to_non_nullable
as String,privacyPolicyUrl: null == privacyPolicyUrl ? _self.privacyPolicyUrl : privacyPolicyUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
