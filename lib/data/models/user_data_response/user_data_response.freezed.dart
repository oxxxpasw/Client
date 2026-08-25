// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDataResponse implements DiagnosticableTreeMixin {

 String? get firstName; String? get surname; DateTime? get birthDay;@JsonKey(unknownEnumValue: Gender.unknown) Gender? get gender; String? get email;
/// Create a copy of UserDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataResponseCopyWith<UserDataResponse> get copyWith => _$UserDataResponseCopyWithImpl<UserDataResponse>(this as UserDataResponse, _$identity);

  /// Serializes this UserDataResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserDataResponse'))
    ..add(DiagnosticsProperty('firstName', firstName))..add(DiagnosticsProperty('surname', surname))..add(DiagnosticsProperty('birthDay', birthDay))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('email', email));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDataResponse&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.surname, surname) || other.surname == surname)&&(identical(other.birthDay, birthDay) || other.birthDay == birthDay)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,surname,birthDay,gender,email);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserDataResponse(firstName: $firstName, surname: $surname, birthDay: $birthDay, gender: $gender, email: $email)';
}


}

/// @nodoc
abstract mixin class $UserDataResponseCopyWith<$Res>  {
  factory $UserDataResponseCopyWith(UserDataResponse value, $Res Function(UserDataResponse) _then) = _$UserDataResponseCopyWithImpl;
@useResult
$Res call({
 String? firstName, String? surname, DateTime? birthDay,@JsonKey(unknownEnumValue: Gender.unknown) Gender? gender, String? email
});




}
/// @nodoc
class _$UserDataResponseCopyWithImpl<$Res>
    implements $UserDataResponseCopyWith<$Res> {
  _$UserDataResponseCopyWithImpl(this._self, this._then);

  final UserDataResponse _self;
  final $Res Function(UserDataResponse) _then;

/// Create a copy of UserDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? surname = freezed,Object? birthDay = freezed,Object? gender = freezed,Object? email = freezed,}) {
  return _then(UserDataResponse(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,surname: freezed == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String?,birthDay: freezed == birthDay ? _self.birthDay : birthDay // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDataResponse].
extension UserDataResponsePatterns on UserDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _UserDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UserDataResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? firstName,  String? surname,  DateTime? birthDay, @JsonKey(unknownEnumValue: Gender.unknown)  Gender? gender,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDataResponse() when $default != null:
return $default(_that.firstName,_that.surname,_that.birthDay,_that.gender,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? firstName,  String? surname,  DateTime? birthDay, @JsonKey(unknownEnumValue: Gender.unknown)  Gender? gender,  String? email)  $default,) {final _that = this;
switch (_that) {
case _UserDataResponse():
return $default(_that.firstName,_that.surname,_that.birthDay,_that.gender,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? firstName,  String? surname,  DateTime? birthDay, @JsonKey(unknownEnumValue: Gender.unknown)  Gender? gender,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _UserDataResponse() when $default != null:
return $default(_that.firstName,_that.surname,_that.birthDay,_that.gender,_that.email);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _UserDataResponse extends UserDataResponse with DiagnosticableTreeMixin {
  const _UserDataResponse({this.firstName, this.surname, this.birthDay, @JsonKey(unknownEnumValue: Gender.unknown) this.gender, this.email}): super._();
  factory _UserDataResponse.fromJson(Map<String, dynamic> json) => _$UserDataResponseFromJson(json);

@override final  String? firstName;
@override final  String? surname;
@override final  DateTime? birthDay;
@override@JsonKey(unknownEnumValue: Gender.unknown) final  Gender? gender;
@override final  String? email;

/// Create a copy of UserDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataResponseCopyWith<_UserDataResponse> get copyWith => __$UserDataResponseCopyWithImpl<_UserDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDataResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserDataResponse'))
    ..add(DiagnosticsProperty('firstName', firstName))..add(DiagnosticsProperty('surname', surname))..add(DiagnosticsProperty('birthDay', birthDay))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('email', email));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDataResponse&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.surname, surname) || other.surname == surname)&&(identical(other.birthDay, birthDay) || other.birthDay == birthDay)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,surname,birthDay,gender,email);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserDataResponse(firstName: $firstName, surname: $surname, birthDay: $birthDay, gender: $gender, email: $email)';
}


}

/// @nodoc
abstract mixin class _$UserDataResponseCopyWith<$Res> implements $UserDataResponseCopyWith<$Res> {
  factory _$UserDataResponseCopyWith(_UserDataResponse value, $Res Function(_UserDataResponse) _then) = __$UserDataResponseCopyWithImpl;
@override @useResult
$Res call({
 String? firstName, String? surname, DateTime? birthDay,@JsonKey(unknownEnumValue: Gender.unknown) Gender? gender, String? email
});




}
/// @nodoc
class __$UserDataResponseCopyWithImpl<$Res>
    implements _$UserDataResponseCopyWith<$Res> {
  __$UserDataResponseCopyWithImpl(this._self, this._then);

  final _UserDataResponse _self;
  final $Res Function(_UserDataResponse) _then;

/// Create a copy of UserDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? surname = freezed,Object? birthDay = freezed,Object? gender = freezed,Object? email = freezed,}) {
  return _then(_UserDataResponse(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,surname: freezed == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String?,birthDay: freezed == birthDay ? _self.birthDay : birthDay // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
