// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserProfileState {

 UserProfileStatus get status; bool get isAuthorized;
/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileStateCopyWith<UserProfileState> get copyWith => _$UserProfileStateCopyWithImpl<UserProfileState>(this as UserProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileState&&(identical(other.status, status) || other.status == status)&&(identical(other.isAuthorized, isAuthorized) || other.isAuthorized == isAuthorized));
}


@override
int get hashCode => Object.hash(runtimeType,status,isAuthorized);

@override
String toString() {
  return 'UserProfileState(status: $status, isAuthorized: $isAuthorized)';
}


}

/// @nodoc
abstract mixin class $UserProfileStateCopyWith<$Res>  {
  factory $UserProfileStateCopyWith(UserProfileState value, $Res Function(UserProfileState) _then) = _$UserProfileStateCopyWithImpl;
@useResult
$Res call({
 UserProfileStatus status, bool isAuthorized
});




}
/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._self, this._then);

  final UserProfileState _self;
  final $Res Function(UserProfileState) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? isAuthorized = null,}) {
  return _then(UserProfileState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserProfileStatus,isAuthorized: null == isAuthorized ? _self.isAuthorized : isAuthorized // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfileState].
extension UserProfileStatePatterns on UserProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfileState value)  $default,){
final _that = this;
switch (_that) {
case _UserProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserProfileStatus status,  bool isAuthorized)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileState() when $default != null:
return $default(_that.status,_that.isAuthorized);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserProfileStatus status,  bool isAuthorized)  $default,) {final _that = this;
switch (_that) {
case _UserProfileState():
return $default(_that.status,_that.isAuthorized);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserProfileStatus status,  bool isAuthorized)?  $default,) {final _that = this;
switch (_that) {
case _UserProfileState() when $default != null:
return $default(_that.status,_that.isAuthorized);case _:
  return null;

}
}

}

/// @nodoc


class _UserProfileState implements UserProfileState {
  const _UserProfileState({this.status = UserProfileStatus.init, this.isAuthorized = false});
  

@override@JsonKey() final  UserProfileStatus status;
@override@JsonKey() final  bool isAuthorized;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileStateCopyWith<_UserProfileState> get copyWith => __$UserProfileStateCopyWithImpl<_UserProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileState&&(identical(other.status, status) || other.status == status)&&(identical(other.isAuthorized, isAuthorized) || other.isAuthorized == isAuthorized));
}


@override
int get hashCode => Object.hash(runtimeType,status,isAuthorized);

@override
String toString() {
  return 'UserProfileState(status: $status, isAuthorized: $isAuthorized)';
}


}

/// @nodoc
abstract mixin class _$UserProfileStateCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory _$UserProfileStateCopyWith(_UserProfileState value, $Res Function(_UserProfileState) _then) = __$UserProfileStateCopyWithImpl;
@override @useResult
$Res call({
 UserProfileStatus status, bool isAuthorized
});




}
/// @nodoc
class __$UserProfileStateCopyWithImpl<$Res>
    implements _$UserProfileStateCopyWith<$Res> {
  __$UserProfileStateCopyWithImpl(this._self, this._then);

  final _UserProfileState _self;
  final $Res Function(_UserProfileState) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? isAuthorized = null,}) {
  return _then(_UserProfileState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserProfileStatus,isAuthorized: null == isAuthorized ? _self.isAuthorized : isAuthorized // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
