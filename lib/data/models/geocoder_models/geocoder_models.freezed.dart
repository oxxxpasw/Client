// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geocoder_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeocoderLocation implements DiagnosticableTreeMixin {

 String? get cityName; List<double> get center;
/// Create a copy of GeocoderLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeocoderLocationCopyWith<GeocoderLocation> get copyWith => _$GeocoderLocationCopyWithImpl<GeocoderLocation>(this as GeocoderLocation, _$identity);

  /// Serializes this GeocoderLocation to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GeocoderLocation'))
    ..add(DiagnosticsProperty('cityName', cityName))..add(DiagnosticsProperty('center', center));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeocoderLocation&&(identical(other.cityName, cityName) || other.cityName == cityName)&&const DeepCollectionEquality().equals(other.center, center));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cityName,const DeepCollectionEquality().hash(center));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GeocoderLocation(cityName: $cityName, center: $center)';
}


}

/// @nodoc
abstract mixin class $GeocoderLocationCopyWith<$Res>  {
  factory $GeocoderLocationCopyWith(GeocoderLocation value, $Res Function(GeocoderLocation) _then) = _$GeocoderLocationCopyWithImpl;
@useResult
$Res call({
 String? cityName, List<double> center
});




}
/// @nodoc
class _$GeocoderLocationCopyWithImpl<$Res>
    implements $GeocoderLocationCopyWith<$Res> {
  _$GeocoderLocationCopyWithImpl(this._self, this._then);

  final GeocoderLocation _self;
  final $Res Function(GeocoderLocation) _then;

/// Create a copy of GeocoderLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cityName = freezed,Object? center = null,}) {
  return _then(GeocoderLocation(
cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,center: null == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}

}


/// Adds pattern-matching-related methods to [GeocoderLocation].
extension GeocoderLocationPatterns on GeocoderLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeocoderLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeocoderLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeocoderLocation value)  $default,){
final _that = this;
switch (_that) {
case _GeocoderLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeocoderLocation value)?  $default,){
final _that = this;
switch (_that) {
case _GeocoderLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? cityName,  List<double> center)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeocoderLocation() when $default != null:
return $default(_that.cityName,_that.center);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? cityName,  List<double> center)  $default,) {final _that = this;
switch (_that) {
case _GeocoderLocation():
return $default(_that.cityName,_that.center);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? cityName,  List<double> center)?  $default,) {final _that = this;
switch (_that) {
case _GeocoderLocation() when $default != null:
return $default(_that.cityName,_that.center);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeocoderLocation extends GeocoderLocation with DiagnosticableTreeMixin {
  const _GeocoderLocation({required this.cityName, required  List<double> center}): _center = center,super._();
  factory _GeocoderLocation.fromJson(Map<String, dynamic> json) => _$GeocoderLocationFromJson(json);

@override final  String? cityName;
 final  List<double> _center;
@override List<double> get center {
  if (_center is EqualUnmodifiableListView) return _center;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_center);
}


/// Create a copy of GeocoderLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeocoderLocationCopyWith<_GeocoderLocation> get copyWith => __$GeocoderLocationCopyWithImpl<_GeocoderLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeocoderLocationToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GeocoderLocation'))
    ..add(DiagnosticsProperty('cityName', cityName))..add(DiagnosticsProperty('center', center));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeocoderLocation&&(identical(other.cityName, cityName) || other.cityName == cityName)&&const DeepCollectionEquality().equals(other._center, _center));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cityName,const DeepCollectionEquality().hash(_center));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GeocoderLocation(cityName: $cityName, center: $center)';
}


}

/// @nodoc
abstract mixin class _$GeocoderLocationCopyWith<$Res> implements $GeocoderLocationCopyWith<$Res> {
  factory _$GeocoderLocationCopyWith(_GeocoderLocation value, $Res Function(_GeocoderLocation) _then) = __$GeocoderLocationCopyWithImpl;
@override @useResult
$Res call({
 String? cityName, List<double> center
});




}
/// @nodoc
class __$GeocoderLocationCopyWithImpl<$Res>
    implements _$GeocoderLocationCopyWith<$Res> {
  __$GeocoderLocationCopyWithImpl(this._self, this._then);

  final _GeocoderLocation _self;
  final $Res Function(_GeocoderLocation) _then;

/// Create a copy of GeocoderLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cityName = freezed,Object? center = null,}) {
  return _then(_GeocoderLocation(
cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,center: null == center ? _self._center : center // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}


}

// dart format on
