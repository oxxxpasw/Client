// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserData {

 String? get firstName; String? get surname; DateTime? get birthDay; Gender? get gender; String? get email; String? get phone;
/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataCopyWith<UserData> get copyWith => _$UserDataCopyWithImpl<UserData>(this as UserData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserData&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.surname, surname) || other.surname == surname)&&(identical(other.birthDay, birthDay) || other.birthDay == birthDay)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,surname,birthDay,gender,email,phone);

@override
String toString() {
  return 'UserData(firstName: $firstName, surname: $surname, birthDay: $birthDay, gender: $gender, email: $email, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $UserDataCopyWith<$Res>  {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) _then) = _$UserDataCopyWithImpl;
@useResult
$Res call({
 String? firstName, String? surname, DateTime? birthDay, Gender? gender, String? email, String? phone
});




}
/// @nodoc
class _$UserDataCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._self, this._then);

  final UserData _self;
  final $Res Function(UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? surname = freezed,Object? birthDay = freezed,Object? gender = freezed,Object? email = freezed,Object? phone = freezed,}) {
  return _then(UserData(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,surname: freezed == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String?,birthDay: freezed == birthDay ? _self.birthDay : birthDay // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserData].
extension UserDataPatterns on UserData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserData value)  $default,){
final _that = this;
switch (_that) {
case _UserData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserData value)?  $default,){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? firstName,  String? surname,  DateTime? birthDay,  Gender? gender,  String? email,  String? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.firstName,_that.surname,_that.birthDay,_that.gender,_that.email,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? firstName,  String? surname,  DateTime? birthDay,  Gender? gender,  String? email,  String? phone)  $default,) {final _that = this;
switch (_that) {
case _UserData():
return $default(_that.firstName,_that.surname,_that.birthDay,_that.gender,_that.email,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? firstName,  String? surname,  DateTime? birthDay,  Gender? gender,  String? email,  String? phone)?  $default,) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.firstName,_that.surname,_that.birthDay,_that.gender,_that.email,_that.phone);case _:
  return null;

}
}

}

/// @nodoc


class _UserData extends UserData {
  const _UserData({this.firstName, this.surname, this.birthDay, this.gender, this.email, this.phone}): super._();
  

@override final  String? firstName;
@override final  String? surname;
@override final  DateTime? birthDay;
@override final  Gender? gender;
@override final  String? email;
@override final  String? phone;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataCopyWith<_UserData> get copyWith => __$UserDataCopyWithImpl<_UserData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserData&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.surname, surname) || other.surname == surname)&&(identical(other.birthDay, birthDay) || other.birthDay == birthDay)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,surname,birthDay,gender,email,phone);

@override
String toString() {
  return 'UserData(firstName: $firstName, surname: $surname, birthDay: $birthDay, gender: $gender, email: $email, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) _then) = __$UserDataCopyWithImpl;
@override @useResult
$Res call({
 String? firstName, String? surname, DateTime? birthDay, Gender? gender, String? email, String? phone
});




}
/// @nodoc
class __$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(this._self, this._then);

  final _UserData _self;
  final $Res Function(_UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? surname = freezed,Object? birthDay = freezed,Object? gender = freezed,Object? email = freezed,Object? phone = freezed,}) {
  return _then(_UserData(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,surname: freezed == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String?,birthDay: freezed == birthDay ? _self.birthDay : birthDay // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
