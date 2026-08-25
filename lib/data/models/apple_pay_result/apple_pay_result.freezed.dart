// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apple_pay_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApplePayResult implements DiagnosticableTreeMixin {

 String? get token;
/// Create a copy of ApplePayResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplePayResultCopyWith<ApplePayResult> get copyWith => _$ApplePayResultCopyWithImpl<ApplePayResult>(this as ApplePayResult, _$identity);

  /// Serializes this ApplePayResult to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApplePayResult'))
    ..add(DiagnosticsProperty('token', token));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplePayResult&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApplePayResult(token: $token)';
}


}

/// @nodoc
abstract mixin class $ApplePayResultCopyWith<$Res>  {
  factory $ApplePayResultCopyWith(ApplePayResult value, $Res Function(ApplePayResult) _then) = _$ApplePayResultCopyWithImpl;
@useResult
$Res call({
 String? token
});




}
/// @nodoc
class _$ApplePayResultCopyWithImpl<$Res>
    implements $ApplePayResultCopyWith<$Res> {
  _$ApplePayResultCopyWithImpl(this._self, this._then);

  final ApplePayResult _self;
  final $Res Function(ApplePayResult) _then;

/// Create a copy of ApplePayResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,}) {
  return _then(ApplePayResult(
freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApplePayResult].
extension ApplePayResultPatterns on ApplePayResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApplePayResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApplePayResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApplePayResult value)  $default,){
final _that = this;
switch (_that) {
case _ApplePayResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApplePayResult value)?  $default,){
final _that = this;
switch (_that) {
case _ApplePayResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApplePayResult() when $default != null:
return $default(_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? token)  $default,) {final _that = this;
switch (_that) {
case _ApplePayResult():
return $default(_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? token)?  $default,) {final _that = this;
switch (_that) {
case _ApplePayResult() when $default != null:
return $default(_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApplePayResult with DiagnosticableTreeMixin implements ApplePayResult {
  const _ApplePayResult(this.token);
  factory _ApplePayResult.fromJson(Map<String, dynamic> json) => _$ApplePayResultFromJson(json);

@override final  String? token;

/// Create a copy of ApplePayResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplePayResultCopyWith<_ApplePayResult> get copyWith => __$ApplePayResultCopyWithImpl<_ApplePayResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApplePayResultToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApplePayResult'))
    ..add(DiagnosticsProperty('token', token));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplePayResult&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApplePayResult(token: $token)';
}


}

/// @nodoc
abstract mixin class _$ApplePayResultCopyWith<$Res> implements $ApplePayResultCopyWith<$Res> {
  factory _$ApplePayResultCopyWith(_ApplePayResult value, $Res Function(_ApplePayResult) _then) = __$ApplePayResultCopyWithImpl;
@override @useResult
$Res call({
 String? token
});




}
/// @nodoc
class __$ApplePayResultCopyWithImpl<$Res>
    implements _$ApplePayResultCopyWith<$Res> {
  __$ApplePayResultCopyWithImpl(this._self, this._then);

  final _ApplePayResult _self;
  final $Res Function(_ApplePayResult) _then;

/// Create a copy of ApplePayResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,}) {
  return _then(_ApplePayResult(
freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
