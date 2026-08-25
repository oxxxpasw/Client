// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthData {

 User get user; UserData? get userData;
/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthDataCopyWith<AuthData> get copyWith => _$AuthDataCopyWithImpl<AuthData>(this as AuthData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthData&&(identical(other.user, user) || other.user == user)&&(identical(other.userData, userData) || other.userData == userData));
}


@override
int get hashCode => Object.hash(runtimeType,user,userData);

@override
String toString() {
  return 'AuthData(user: $user, userData: $userData)';
}


}

/// @nodoc
abstract mixin class $AuthDataCopyWith<$Res>  {
  factory $AuthDataCopyWith(AuthData value, $Res Function(AuthData) _then) = _$AuthDataCopyWithImpl;
@useResult
$Res call({
 User user, UserData? userData
});


$UserCopyWith<$Res> get user;$UserDataCopyWith<$Res>? get userData;

}
/// @nodoc
class _$AuthDataCopyWithImpl<$Res>
    implements $AuthDataCopyWith<$Res> {
  _$AuthDataCopyWithImpl(this._self, this._then);

  final AuthData _self;
  final $Res Function(AuthData) _then;

/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? userData = freezed,}) {
  return _then(AuthData(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserData?,
  ));
}
/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthData].
extension AuthDataPatterns on AuthData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthData value)  $default,){
final _that = this;
switch (_that) {
case _AuthData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthData value)?  $default,){
final _that = this;
switch (_that) {
case _AuthData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User user,  UserData? userData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthData() when $default != null:
return $default(_that.user,_that.userData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User user,  UserData? userData)  $default,) {final _that = this;
switch (_that) {
case _AuthData():
return $default(_that.user,_that.userData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User user,  UserData? userData)?  $default,) {final _that = this;
switch (_that) {
case _AuthData() when $default != null:
return $default(_that.user,_that.userData);case _:
  return null;

}
}

}

/// @nodoc


class _AuthData implements AuthData {
  const _AuthData({required this.user, this.userData});
  

@override final  User user;
@override final  UserData? userData;

/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthDataCopyWith<_AuthData> get copyWith => __$AuthDataCopyWithImpl<_AuthData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthData&&(identical(other.user, user) || other.user == user)&&(identical(other.userData, userData) || other.userData == userData));
}


@override
int get hashCode => Object.hash(runtimeType,user,userData);

@override
String toString() {
  return 'AuthData(user: $user, userData: $userData)';
}


}

/// @nodoc
abstract mixin class _$AuthDataCopyWith<$Res> implements $AuthDataCopyWith<$Res> {
  factory _$AuthDataCopyWith(_AuthData value, $Res Function(_AuthData) _then) = __$AuthDataCopyWithImpl;
@override @useResult
$Res call({
 User user, UserData? userData
});


@override $UserCopyWith<$Res> get user;@override $UserDataCopyWith<$Res>? get userData;

}
/// @nodoc
class __$AuthDataCopyWithImpl<$Res>
    implements _$AuthDataCopyWith<$Res> {
  __$AuthDataCopyWithImpl(this._self, this._then);

  final _AuthData _self;
  final $Res Function(_AuthData) _then;

/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? userData = freezed,}) {
  return _then(_AuthData(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserData?,
  ));
}

/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}
}

// dart format on
