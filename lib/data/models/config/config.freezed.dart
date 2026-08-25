// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppConfig {

 bool get bonusesEnabled; int get fridgeOpenTimeInSeconds; String? get technicalSupportPhone; bool get userXEnabled;@JsonKey(unknownEnumValue: OutOfStockBehavior.hide) OutOfStockBehavior get outOfStockBehavior; Uri? get feedbackUrl; bool get showFeedbackBanner;
/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppConfigCopyWith<AppConfig> get copyWith => _$AppConfigCopyWithImpl<AppConfig>(this as AppConfig, _$identity);

  /// Serializes this AppConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConfig&&(identical(other.bonusesEnabled, bonusesEnabled) || other.bonusesEnabled == bonusesEnabled)&&(identical(other.fridgeOpenTimeInSeconds, fridgeOpenTimeInSeconds) || other.fridgeOpenTimeInSeconds == fridgeOpenTimeInSeconds)&&(identical(other.technicalSupportPhone, technicalSupportPhone) || other.technicalSupportPhone == technicalSupportPhone)&&(identical(other.userXEnabled, userXEnabled) || other.userXEnabled == userXEnabled)&&(identical(other.outOfStockBehavior, outOfStockBehavior) || other.outOfStockBehavior == outOfStockBehavior)&&(identical(other.feedbackUrl, feedbackUrl) || other.feedbackUrl == feedbackUrl)&&(identical(other.showFeedbackBanner, showFeedbackBanner) || other.showFeedbackBanner == showFeedbackBanner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bonusesEnabled,fridgeOpenTimeInSeconds,technicalSupportPhone,userXEnabled,outOfStockBehavior,feedbackUrl,showFeedbackBanner);

@override
String toString() {
  return 'AppConfig(bonusesEnabled: $bonusesEnabled, fridgeOpenTimeInSeconds: $fridgeOpenTimeInSeconds, technicalSupportPhone: $technicalSupportPhone, userXEnabled: $userXEnabled, outOfStockBehavior: $outOfStockBehavior, feedbackUrl: $feedbackUrl, showFeedbackBanner: $showFeedbackBanner)';
}


}

/// @nodoc
abstract mixin class $AppConfigCopyWith<$Res>  {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) _then) = _$AppConfigCopyWithImpl;
@useResult
$Res call({
 bool bonusesEnabled, int fridgeOpenTimeInSeconds, String? technicalSupportPhone, bool userXEnabled,@JsonKey(unknownEnumValue: OutOfStockBehavior.hide) OutOfStockBehavior outOfStockBehavior, Uri? feedbackUrl, bool showFeedbackBanner
});




}
/// @nodoc
class _$AppConfigCopyWithImpl<$Res>
    implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._self, this._then);

  final AppConfig _self;
  final $Res Function(AppConfig) _then;

/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bonusesEnabled = null,Object? fridgeOpenTimeInSeconds = null,Object? technicalSupportPhone = freezed,Object? userXEnabled = null,Object? outOfStockBehavior = null,Object? feedbackUrl = freezed,Object? showFeedbackBanner = null,}) {
  return _then(AppConfig(
bonusesEnabled: null == bonusesEnabled ? _self.bonusesEnabled : bonusesEnabled // ignore: cast_nullable_to_non_nullable
as bool,fridgeOpenTimeInSeconds: null == fridgeOpenTimeInSeconds ? _self.fridgeOpenTimeInSeconds : fridgeOpenTimeInSeconds // ignore: cast_nullable_to_non_nullable
as int,technicalSupportPhone: freezed == technicalSupportPhone ? _self.technicalSupportPhone : technicalSupportPhone // ignore: cast_nullable_to_non_nullable
as String?,userXEnabled: null == userXEnabled ? _self.userXEnabled : userXEnabled // ignore: cast_nullable_to_non_nullable
as bool,outOfStockBehavior: null == outOfStockBehavior ? _self.outOfStockBehavior : outOfStockBehavior // ignore: cast_nullable_to_non_nullable
as OutOfStockBehavior,feedbackUrl: freezed == feedbackUrl ? _self.feedbackUrl : feedbackUrl // ignore: cast_nullable_to_non_nullable
as Uri?,showFeedbackBanner: null == showFeedbackBanner ? _self.showFeedbackBanner : showFeedbackBanner // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppConfig].
extension AppConfigPatterns on AppConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppConfig value)  $default,){
final _that = this;
switch (_that) {
case _AppConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppConfig value)?  $default,){
final _that = this;
switch (_that) {
case _AppConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool bonusesEnabled,  int fridgeOpenTimeInSeconds,  String? technicalSupportPhone,  bool userXEnabled, @JsonKey(unknownEnumValue: OutOfStockBehavior.hide)  OutOfStockBehavior outOfStockBehavior,  Uri? feedbackUrl,  bool showFeedbackBanner)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppConfig() when $default != null:
return $default(_that.bonusesEnabled,_that.fridgeOpenTimeInSeconds,_that.technicalSupportPhone,_that.userXEnabled,_that.outOfStockBehavior,_that.feedbackUrl,_that.showFeedbackBanner);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool bonusesEnabled,  int fridgeOpenTimeInSeconds,  String? technicalSupportPhone,  bool userXEnabled, @JsonKey(unknownEnumValue: OutOfStockBehavior.hide)  OutOfStockBehavior outOfStockBehavior,  Uri? feedbackUrl,  bool showFeedbackBanner)  $default,) {final _that = this;
switch (_that) {
case _AppConfig():
return $default(_that.bonusesEnabled,_that.fridgeOpenTimeInSeconds,_that.technicalSupportPhone,_that.userXEnabled,_that.outOfStockBehavior,_that.feedbackUrl,_that.showFeedbackBanner);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool bonusesEnabled,  int fridgeOpenTimeInSeconds,  String? technicalSupportPhone,  bool userXEnabled, @JsonKey(unknownEnumValue: OutOfStockBehavior.hide)  OutOfStockBehavior outOfStockBehavior,  Uri? feedbackUrl,  bool showFeedbackBanner)?  $default,) {final _that = this;
switch (_that) {
case _AppConfig() when $default != null:
return $default(_that.bonusesEnabled,_that.fridgeOpenTimeInSeconds,_that.technicalSupportPhone,_that.userXEnabled,_that.outOfStockBehavior,_that.feedbackUrl,_that.showFeedbackBanner);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppConfig implements AppConfig {
  const _AppConfig({this.bonusesEnabled = false, this.fridgeOpenTimeInSeconds = 5, this.technicalSupportPhone, this.userXEnabled = false, @JsonKey(unknownEnumValue: OutOfStockBehavior.hide) this.outOfStockBehavior = OutOfStockBehavior.hide, this.feedbackUrl, this.showFeedbackBanner = false});
  factory _AppConfig.fromJson(Map<String, dynamic> json) => _$AppConfigFromJson(json);

@override@JsonKey() final  bool bonusesEnabled;
@override@JsonKey() final  int fridgeOpenTimeInSeconds;
@override final  String? technicalSupportPhone;
@override@JsonKey() final  bool userXEnabled;
@override@JsonKey(unknownEnumValue: OutOfStockBehavior.hide) final  OutOfStockBehavior outOfStockBehavior;
@override final  Uri? feedbackUrl;
@override@JsonKey() final  bool showFeedbackBanner;

/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppConfigCopyWith<_AppConfig> get copyWith => __$AppConfigCopyWithImpl<_AppConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppConfig&&(identical(other.bonusesEnabled, bonusesEnabled) || other.bonusesEnabled == bonusesEnabled)&&(identical(other.fridgeOpenTimeInSeconds, fridgeOpenTimeInSeconds) || other.fridgeOpenTimeInSeconds == fridgeOpenTimeInSeconds)&&(identical(other.technicalSupportPhone, technicalSupportPhone) || other.technicalSupportPhone == technicalSupportPhone)&&(identical(other.userXEnabled, userXEnabled) || other.userXEnabled == userXEnabled)&&(identical(other.outOfStockBehavior, outOfStockBehavior) || other.outOfStockBehavior == outOfStockBehavior)&&(identical(other.feedbackUrl, feedbackUrl) || other.feedbackUrl == feedbackUrl)&&(identical(other.showFeedbackBanner, showFeedbackBanner) || other.showFeedbackBanner == showFeedbackBanner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bonusesEnabled,fridgeOpenTimeInSeconds,technicalSupportPhone,userXEnabled,outOfStockBehavior,feedbackUrl,showFeedbackBanner);

@override
String toString() {
  return 'AppConfig(bonusesEnabled: $bonusesEnabled, fridgeOpenTimeInSeconds: $fridgeOpenTimeInSeconds, technicalSupportPhone: $technicalSupportPhone, userXEnabled: $userXEnabled, outOfStockBehavior: $outOfStockBehavior, feedbackUrl: $feedbackUrl, showFeedbackBanner: $showFeedbackBanner)';
}


}

/// @nodoc
abstract mixin class _$AppConfigCopyWith<$Res> implements $AppConfigCopyWith<$Res> {
  factory _$AppConfigCopyWith(_AppConfig value, $Res Function(_AppConfig) _then) = __$AppConfigCopyWithImpl;
@override @useResult
$Res call({
 bool bonusesEnabled, int fridgeOpenTimeInSeconds, String? technicalSupportPhone, bool userXEnabled,@JsonKey(unknownEnumValue: OutOfStockBehavior.hide) OutOfStockBehavior outOfStockBehavior, Uri? feedbackUrl, bool showFeedbackBanner
});




}
/// @nodoc
class __$AppConfigCopyWithImpl<$Res>
    implements _$AppConfigCopyWith<$Res> {
  __$AppConfigCopyWithImpl(this._self, this._then);

  final _AppConfig _self;
  final $Res Function(_AppConfig) _then;

/// Create a copy of AppConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bonusesEnabled = null,Object? fridgeOpenTimeInSeconds = null,Object? technicalSupportPhone = freezed,Object? userXEnabled = null,Object? outOfStockBehavior = null,Object? feedbackUrl = freezed,Object? showFeedbackBanner = null,}) {
  return _then(_AppConfig(
bonusesEnabled: null == bonusesEnabled ? _self.bonusesEnabled : bonusesEnabled // ignore: cast_nullable_to_non_nullable
as bool,fridgeOpenTimeInSeconds: null == fridgeOpenTimeInSeconds ? _self.fridgeOpenTimeInSeconds : fridgeOpenTimeInSeconds // ignore: cast_nullable_to_non_nullable
as int,technicalSupportPhone: freezed == technicalSupportPhone ? _self.technicalSupportPhone : technicalSupportPhone // ignore: cast_nullable_to_non_nullable
as String?,userXEnabled: null == userXEnabled ? _self.userXEnabled : userXEnabled // ignore: cast_nullable_to_non_nullable
as bool,outOfStockBehavior: null == outOfStockBehavior ? _self.outOfStockBehavior : outOfStockBehavior // ignore: cast_nullable_to_non_nullable
as OutOfStockBehavior,feedbackUrl: freezed == feedbackUrl ? _self.feedbackUrl : feedbackUrl // ignore: cast_nullable_to_non_nullable
as Uri?,showFeedbackBanner: null == showFeedbackBanner ? _self.showFeedbackBanner : showFeedbackBanner // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
