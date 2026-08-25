// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_city_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CurrentCityState {

 City? get city;
/// Create a copy of CurrentCityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentCityStateCopyWith<CurrentCityState> get copyWith => _$CurrentCityStateCopyWithImpl<CurrentCityState>(this as CurrentCityState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentCityState&&(identical(other.city, city) || other.city == city));
}


@override
int get hashCode => Object.hash(runtimeType,city);

@override
String toString() {
  return 'CurrentCityState(city: $city)';
}


}

/// @nodoc
abstract mixin class $CurrentCityStateCopyWith<$Res>  {
  factory $CurrentCityStateCopyWith(CurrentCityState value, $Res Function(CurrentCityState) _then) = _$CurrentCityStateCopyWithImpl;
@useResult
$Res call({
 City? city
});


$CityCopyWith<$Res>? get city;

}
/// @nodoc
class _$CurrentCityStateCopyWithImpl<$Res>
    implements $CurrentCityStateCopyWith<$Res> {
  _$CurrentCityStateCopyWithImpl(this._self, this._then);

  final CurrentCityState _self;
  final $Res Function(CurrentCityState) _then;

/// Create a copy of CurrentCityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = freezed,}) {
  return _then(CurrentCityState(
city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as City?,
  ));
}
/// Create a copy of CurrentCityState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get city {
    if (_self.city == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.city!, (value) {
    return _then(_self.copyWith(city: value));
  });
}
}


/// Adds pattern-matching-related methods to [CurrentCityState].
extension CurrentCityStatePatterns on CurrentCityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrentCityState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrentCityState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrentCityState value)  $default,){
final _that = this;
switch (_that) {
case _CurrentCityState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrentCityState value)?  $default,){
final _that = this;
switch (_that) {
case _CurrentCityState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( City? city)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrentCityState() when $default != null:
return $default(_that.city);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( City? city)  $default,) {final _that = this;
switch (_that) {
case _CurrentCityState():
return $default(_that.city);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( City? city)?  $default,) {final _that = this;
switch (_that) {
case _CurrentCityState() when $default != null:
return $default(_that.city);case _:
  return null;

}
}

}

/// @nodoc


class _CurrentCityState implements CurrentCityState {
  const _CurrentCityState({this.city});
  

@override final  City? city;

/// Create a copy of CurrentCityState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentCityStateCopyWith<_CurrentCityState> get copyWith => __$CurrentCityStateCopyWithImpl<_CurrentCityState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentCityState&&(identical(other.city, city) || other.city == city));
}


@override
int get hashCode => Object.hash(runtimeType,city);

@override
String toString() {
  return 'CurrentCityState(city: $city)';
}


}

/// @nodoc
abstract mixin class _$CurrentCityStateCopyWith<$Res> implements $CurrentCityStateCopyWith<$Res> {
  factory _$CurrentCityStateCopyWith(_CurrentCityState value, $Res Function(_CurrentCityState) _then) = __$CurrentCityStateCopyWithImpl;
@override @useResult
$Res call({
 City? city
});


@override $CityCopyWith<$Res>? get city;

}
/// @nodoc
class __$CurrentCityStateCopyWithImpl<$Res>
    implements _$CurrentCityStateCopyWith<$Res> {
  __$CurrentCityStateCopyWithImpl(this._self, this._then);

  final _CurrentCityState _self;
  final $Res Function(_CurrentCityState) _then;

/// Create a copy of CurrentCityState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = freezed,}) {
  return _then(_CurrentCityState(
city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as City?,
  ));
}

/// Create a copy of CurrentCityState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get city {
    if (_self.city == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.city!, (value) {
    return _then(_self.copyWith(city: value));
  });
}
}

// dart format on
