// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User implements DiagnosticableTreeMixin {

 String get token; String get systemId; String get createDate; String get userId; String get mobileNumber;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'User'))
    ..add(DiagnosticsProperty('token', token))..add(DiagnosticsProperty('systemId', systemId))..add(DiagnosticsProperty('createDate', createDate))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('mobileNumber', mobileNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.token, token) || other.token == token)&&(identical(other.systemId, systemId) || other.systemId == systemId)&&(identical(other.createDate, createDate) || other.createDate == createDate)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,systemId,createDate,userId,mobileNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'User(token: $token, systemId: $systemId, createDate: $createDate, userId: $userId, mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String token, String systemId, String createDate, String userId, String mobileNumber
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? systemId = null,Object? createDate = null,Object? userId = null,Object? mobileNumber = null,}) {
  return _then(User(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,systemId: null == systemId ? _self.systemId : systemId // ignore: cast_nullable_to_non_nullable
as String,createDate: null == createDate ? _self.createDate : createDate // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token,  String systemId,  String createDate,  String userId,  String mobileNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.token,_that.systemId,_that.createDate,_that.userId,_that.mobileNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token,  String systemId,  String createDate,  String userId,  String mobileNumber)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.token,_that.systemId,_that.createDate,_that.userId,_that.mobileNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token,  String systemId,  String createDate,  String userId,  String mobileNumber)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.token,_that.systemId,_that.createDate,_that.userId,_that.mobileNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User with DiagnosticableTreeMixin implements User {
  const _User({required this.token, required this.systemId, required this.createDate, required this.userId, required this.mobileNumber});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  String token;
@override final  String systemId;
@override final  String createDate;
@override final  String userId;
@override final  String mobileNumber;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'User'))
    ..add(DiagnosticsProperty('token', token))..add(DiagnosticsProperty('systemId', systemId))..add(DiagnosticsProperty('createDate', createDate))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('mobileNumber', mobileNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.token, token) || other.token == token)&&(identical(other.systemId, systemId) || other.systemId == systemId)&&(identical(other.createDate, createDate) || other.createDate == createDate)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,systemId,createDate,userId,mobileNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'User(token: $token, systemId: $systemId, createDate: $createDate, userId: $userId, mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String token, String systemId, String createDate, String userId, String mobileNumber
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? systemId = null,Object? createDate = null,Object? userId = null,Object? mobileNumber = null,}) {
  return _then(_User(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,systemId: null == systemId ? _self.systemId : systemId // ignore: cast_nullable_to_non_nullable
as String,createDate: null == createDate ? _self.createDate : createDate // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
