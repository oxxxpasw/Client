// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserDataState {

 UserDataStatus get status; UserData? get userData;
/// Create a copy of UserDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataStateCopyWith<UserDataState> get copyWith => _$UserDataStateCopyWithImpl<UserDataState>(this as UserDataState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDataState&&(identical(other.status, status) || other.status == status)&&(identical(other.userData, userData) || other.userData == userData));
}


@override
int get hashCode => Object.hash(runtimeType,status,userData);

@override
String toString() {
  return 'UserDataState(status: $status, userData: $userData)';
}


}

/// @nodoc
abstract mixin class $UserDataStateCopyWith<$Res>  {
  factory $UserDataStateCopyWith(UserDataState value, $Res Function(UserDataState) _then) = _$UserDataStateCopyWithImpl;
@useResult
$Res call({
 UserDataStatus status, UserData? userData
});


$UserDataCopyWith<$Res>? get userData;

}
/// @nodoc
class _$UserDataStateCopyWithImpl<$Res>
    implements $UserDataStateCopyWith<$Res> {
  _$UserDataStateCopyWithImpl(this._self, this._then);

  final UserDataState _self;
  final $Res Function(UserDataState) _then;

/// Create a copy of UserDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? userData = freezed,}) {
  return _then(UserDataState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserDataStatus,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserData?,
  ));
}
/// Create a copy of UserDataState
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


/// Adds pattern-matching-related methods to [UserDataState].
extension UserDataStatePatterns on UserDataState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDataState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDataState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDataState value)  $default,){
final _that = this;
switch (_that) {
case _UserDataState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDataState value)?  $default,){
final _that = this;
switch (_that) {
case _UserDataState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserDataStatus status,  UserData? userData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDataState() when $default != null:
return $default(_that.status,_that.userData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserDataStatus status,  UserData? userData)  $default,) {final _that = this;
switch (_that) {
case _UserDataState():
return $default(_that.status,_that.userData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserDataStatus status,  UserData? userData)?  $default,) {final _that = this;
switch (_that) {
case _UserDataState() when $default != null:
return $default(_that.status,_that.userData);case _:
  return null;

}
}

}

/// @nodoc


class _UserDataState implements UserDataState {
  const _UserDataState({this.status = UserDataStatus.init, this.userData}): assert((status != UserDataStatus.ready && status != UserDataStatus.sending) || userData != null);
  

@override@JsonKey() final  UserDataStatus status;
@override final  UserData? userData;

/// Create a copy of UserDataState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataStateCopyWith<_UserDataState> get copyWith => __$UserDataStateCopyWithImpl<_UserDataState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDataState&&(identical(other.status, status) || other.status == status)&&(identical(other.userData, userData) || other.userData == userData));
}


@override
int get hashCode => Object.hash(runtimeType,status,userData);

@override
String toString() {
  return 'UserDataState(status: $status, userData: $userData)';
}


}

/// @nodoc
abstract mixin class _$UserDataStateCopyWith<$Res> implements $UserDataStateCopyWith<$Res> {
  factory _$UserDataStateCopyWith(_UserDataState value, $Res Function(_UserDataState) _then) = __$UserDataStateCopyWithImpl;
@override @useResult
$Res call({
 UserDataStatus status, UserData? userData
});


@override $UserDataCopyWith<$Res>? get userData;

}
/// @nodoc
class __$UserDataStateCopyWithImpl<$Res>
    implements _$UserDataStateCopyWith<$Res> {
  __$UserDataStateCopyWithImpl(this._self, this._then);

  final _UserDataState _self;
  final $Res Function(_UserDataState) _then;

/// Create a copy of UserDataState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? userData = freezed,}) {
  return _then(_UserDataState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserDataStatus,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserData?,
  ));
}

/// Create a copy of UserDataState
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

/// @nodoc
mixin _$UserDataSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDataSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserDataSr()';
}


}

/// @nodoc
class $UserDataSrCopyWith<$Res>  {
$UserDataSrCopyWith(UserDataSr _, $Res Function(UserDataSr) __);
}


/// Adds pattern-matching-related methods to [UserDataSr].
extension UserDataSrPatterns on UserDataSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ErrorSr value)?  error,TResult Function( _SuccessSr value)?  success,TResult Function( _LogoutSr value)?  logout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _SuccessSr() when success != null:
return success(_that);case _LogoutSr() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ErrorSr value)  error,required TResult Function( _SuccessSr value)  success,required TResult Function( _LogoutSr value)  logout,}){
final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that);case _SuccessSr():
return success(_that);case _LogoutSr():
return logout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ErrorSr value)?  error,TResult? Function( _SuccessSr value)?  success,TResult? Function( _LogoutSr value)?  logout,}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _SuccessSr() when success != null:
return success(_that);case _LogoutSr() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function()?  success,TResult Function()?  logout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _SuccessSr() when success != null:
return success();case _LogoutSr() when logout != null:
return logout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function()  success,required TResult Function()  logout,}) {final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that.error);case _SuccessSr():
return success();case _LogoutSr():
return logout();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function()?  success,TResult? Function()?  logout,}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _SuccessSr() when success != null:
return success();case _LogoutSr() when logout != null:
return logout();case _:
  return null;

}
}

}

/// @nodoc


class _ErrorSr implements UserDataSr {
  const _ErrorSr(this.error);
  

 final  String error;

/// Create a copy of UserDataSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorSrCopyWith<_ErrorSr> get copyWith => __$ErrorSrCopyWithImpl<_ErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UserDataSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorSrCopyWith<$Res> implements $UserDataSrCopyWith<$Res> {
  factory _$ErrorSrCopyWith(_ErrorSr value, $Res Function(_ErrorSr) _then) = __$ErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorSrCopyWithImpl<$Res>
    implements _$ErrorSrCopyWith<$Res> {
  __$ErrorSrCopyWithImpl(this._self, this._then);

  final _ErrorSr _self;
  final $Res Function(_ErrorSr) _then;

/// Create a copy of UserDataSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SuccessSr implements UserDataSr {
  const _SuccessSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserDataSr.success()';
}


}




/// @nodoc


class _LogoutSr implements UserDataSr {
  const _LogoutSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserDataSr.logout()';
}


}




// dart format on
