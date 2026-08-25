// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sbp_bank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SbpBank {

 String get bankName; Uri? get logoURL; Uri get uri;
/// Create a copy of SbpBank
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SbpBankCopyWith<SbpBank> get copyWith => _$SbpBankCopyWithImpl<SbpBank>(this as SbpBank, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SbpBank&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.logoURL, logoURL) || other.logoURL == logoURL)&&(identical(other.uri, uri) || other.uri == uri));
}


@override
int get hashCode => Object.hash(runtimeType,bankName,logoURL,uri);

@override
String toString() {
  return 'SbpBank(bankName: $bankName, logoURL: $logoURL, uri: $uri)';
}


}

/// @nodoc
abstract mixin class $SbpBankCopyWith<$Res>  {
  factory $SbpBankCopyWith(SbpBank value, $Res Function(SbpBank) _then) = _$SbpBankCopyWithImpl;
@useResult
$Res call({
 String bankName, Uri? logoURL, Uri uri
});




}
/// @nodoc
class _$SbpBankCopyWithImpl<$Res>
    implements $SbpBankCopyWith<$Res> {
  _$SbpBankCopyWithImpl(this._self, this._then);

  final SbpBank _self;
  final $Res Function(SbpBank) _then;

/// Create a copy of SbpBank
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bankName = null,Object? logoURL = freezed,Object? uri = null,}) {
  return _then(SbpBank(
bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,logoURL: freezed == logoURL ? _self.logoURL : logoURL // ignore: cast_nullable_to_non_nullable
as Uri?,uri: null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}

}


/// Adds pattern-matching-related methods to [SbpBank].
extension SbpBankPatterns on SbpBank {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SbpBank value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SbpBank() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SbpBank value)  $default,){
final _that = this;
switch (_that) {
case _SbpBank():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SbpBank value)?  $default,){
final _that = this;
switch (_that) {
case _SbpBank() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bankName,  Uri? logoURL,  Uri uri)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SbpBank() when $default != null:
return $default(_that.bankName,_that.logoURL,_that.uri);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bankName,  Uri? logoURL,  Uri uri)  $default,) {final _that = this;
switch (_that) {
case _SbpBank():
return $default(_that.bankName,_that.logoURL,_that.uri);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bankName,  Uri? logoURL,  Uri uri)?  $default,) {final _that = this;
switch (_that) {
case _SbpBank() when $default != null:
return $default(_that.bankName,_that.logoURL,_that.uri);case _:
  return null;

}
}

}

/// @nodoc


class _SbpBank implements SbpBank {
  const _SbpBank({required this.bankName, this.logoURL, required this.uri});
  

@override final  String bankName;
@override final  Uri? logoURL;
@override final  Uri uri;

/// Create a copy of SbpBank
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SbpBankCopyWith<_SbpBank> get copyWith => __$SbpBankCopyWithImpl<_SbpBank>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SbpBank&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.logoURL, logoURL) || other.logoURL == logoURL)&&(identical(other.uri, uri) || other.uri == uri));
}


@override
int get hashCode => Object.hash(runtimeType,bankName,logoURL,uri);

@override
String toString() {
  return 'SbpBank(bankName: $bankName, logoURL: $logoURL, uri: $uri)';
}


}

/// @nodoc
abstract mixin class _$SbpBankCopyWith<$Res> implements $SbpBankCopyWith<$Res> {
  factory _$SbpBankCopyWith(_SbpBank value, $Res Function(_SbpBank) _then) = __$SbpBankCopyWithImpl;
@override @useResult
$Res call({
 String bankName, Uri? logoURL, Uri uri
});




}
/// @nodoc
class __$SbpBankCopyWithImpl<$Res>
    implements _$SbpBankCopyWith<$Res> {
  __$SbpBankCopyWithImpl(this._self, this._then);

  final _SbpBank _self;
  final $Res Function(_SbpBank) _then;

/// Create a copy of SbpBank
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bankName = null,Object? logoURL = freezed,Object? uri = null,}) {
  return _then(_SbpBank(
bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,logoURL: freezed == logoURL ? _self.logoURL : logoURL // ignore: cast_nullable_to_non_nullable
as Uri?,uri: null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}


}

// dart format on
