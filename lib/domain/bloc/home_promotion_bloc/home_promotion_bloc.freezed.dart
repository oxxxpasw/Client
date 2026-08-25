// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_promotion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomePromotionState {

 List<PromotionShortInfo>? get promotions;
/// Create a copy of HomePromotionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomePromotionStateCopyWith<HomePromotionState> get copyWith => _$HomePromotionStateCopyWithImpl<HomePromotionState>(this as HomePromotionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePromotionState&&const DeepCollectionEquality().equals(other.promotions, promotions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(promotions));

@override
String toString() {
  return 'HomePromotionState(promotions: $promotions)';
}


}

/// @nodoc
abstract mixin class $HomePromotionStateCopyWith<$Res>  {
  factory $HomePromotionStateCopyWith(HomePromotionState value, $Res Function(HomePromotionState) _then) = _$HomePromotionStateCopyWithImpl;
@useResult
$Res call({
 List<PromotionShortInfo>? promotions
});




}
/// @nodoc
class _$HomePromotionStateCopyWithImpl<$Res>
    implements $HomePromotionStateCopyWith<$Res> {
  _$HomePromotionStateCopyWithImpl(this._self, this._then);

  final HomePromotionState _self;
  final $Res Function(HomePromotionState) _then;

/// Create a copy of HomePromotionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? promotions = freezed,}) {
  return _then(HomePromotionState(
promotions: freezed == promotions ? _self.promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<PromotionShortInfo>?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomePromotionState].
extension HomePromotionStatePatterns on HomePromotionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomePromotionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomePromotionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomePromotionState value)  $default,){
final _that = this;
switch (_that) {
case _HomePromotionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomePromotionState value)?  $default,){
final _that = this;
switch (_that) {
case _HomePromotionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PromotionShortInfo>? promotions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomePromotionState() when $default != null:
return $default(_that.promotions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PromotionShortInfo>? promotions)  $default,) {final _that = this;
switch (_that) {
case _HomePromotionState():
return $default(_that.promotions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PromotionShortInfo>? promotions)?  $default,) {final _that = this;
switch (_that) {
case _HomePromotionState() when $default != null:
return $default(_that.promotions);case _:
  return null;

}
}

}

/// @nodoc


class _HomePromotionState implements HomePromotionState {
  const _HomePromotionState({ List<PromotionShortInfo>? promotions}): _promotions = promotions;
  

 final  List<PromotionShortInfo>? _promotions;
@override List<PromotionShortInfo>? get promotions {
  final value = _promotions;
  if (value == null) return null;
  if (_promotions is EqualUnmodifiableListView) return _promotions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomePromotionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomePromotionStateCopyWith<_HomePromotionState> get copyWith => __$HomePromotionStateCopyWithImpl<_HomePromotionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomePromotionState&&const DeepCollectionEquality().equals(other._promotions, _promotions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_promotions));

@override
String toString() {
  return 'HomePromotionState(promotions: $promotions)';
}


}

/// @nodoc
abstract mixin class _$HomePromotionStateCopyWith<$Res> implements $HomePromotionStateCopyWith<$Res> {
  factory _$HomePromotionStateCopyWith(_HomePromotionState value, $Res Function(_HomePromotionState) _then) = __$HomePromotionStateCopyWithImpl;
@override @useResult
$Res call({
 List<PromotionShortInfo>? promotions
});




}
/// @nodoc
class __$HomePromotionStateCopyWithImpl<$Res>
    implements _$HomePromotionStateCopyWith<$Res> {
  __$HomePromotionStateCopyWithImpl(this._self, this._then);

  final _HomePromotionState _self;
  final $Res Function(_HomePromotionState) _then;

/// Create a copy of HomePromotionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? promotions = freezed,}) {
  return _then(_HomePromotionState(
promotions: freezed == promotions ? _self._promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<PromotionShortInfo>?,
  ));
}


}

// dart format on
