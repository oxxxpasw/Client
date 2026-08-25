// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'additional_text_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdditionalTextTheme {

 TextStyle get labelExtraSmall; TextStyle get titleMediumReg;
/// Create a copy of AdditionalTextTheme
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdditionalTextThemeCopyWith<AdditionalTextTheme> get copyWith => _$AdditionalTextThemeCopyWithImpl<AdditionalTextTheme>(this as AdditionalTextTheme, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdditionalTextTheme&&(identical(other.labelExtraSmall, labelExtraSmall) || other.labelExtraSmall == labelExtraSmall)&&(identical(other.titleMediumReg, titleMediumReg) || other.titleMediumReg == titleMediumReg));
}


@override
int get hashCode => Object.hash(runtimeType,labelExtraSmall,titleMediumReg);

@override
String toString() {
  return 'AdditionalTextTheme(labelExtraSmall: $labelExtraSmall, titleMediumReg: $titleMediumReg)';
}


}

/// @nodoc
abstract mixin class $AdditionalTextThemeCopyWith<$Res>  {
  factory $AdditionalTextThemeCopyWith(AdditionalTextTheme value, $Res Function(AdditionalTextTheme) _then) = _$AdditionalTextThemeCopyWithImpl;
@useResult
$Res call({
 TextStyle labelExtraSmall, TextStyle titleMediumReg
});




}
/// @nodoc
class _$AdditionalTextThemeCopyWithImpl<$Res>
    implements $AdditionalTextThemeCopyWith<$Res> {
  _$AdditionalTextThemeCopyWithImpl(this._self, this._then);

  final AdditionalTextTheme _self;
  final $Res Function(AdditionalTextTheme) _then;

/// Create a copy of AdditionalTextTheme
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? labelExtraSmall = null,Object? titleMediumReg = null,}) {
  return _then(AdditionalTextTheme(
labelExtraSmall: null == labelExtraSmall ? _self.labelExtraSmall : labelExtraSmall // ignore: cast_nullable_to_non_nullable
as TextStyle,titleMediumReg: null == titleMediumReg ? _self.titleMediumReg : titleMediumReg // ignore: cast_nullable_to_non_nullable
as TextStyle,
  ));
}

}


/// Adds pattern-matching-related methods to [AdditionalTextTheme].
extension AdditionalTextThemePatterns on AdditionalTextTheme {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdditionalTextTheme value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdditionalTextTheme() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdditionalTextTheme value)  $default,){
final _that = this;
switch (_that) {
case _AdditionalTextTheme():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdditionalTextTheme value)?  $default,){
final _that = this;
switch (_that) {
case _AdditionalTextTheme() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextStyle labelExtraSmall,  TextStyle titleMediumReg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdditionalTextTheme() when $default != null:
return $default(_that.labelExtraSmall,_that.titleMediumReg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextStyle labelExtraSmall,  TextStyle titleMediumReg)  $default,) {final _that = this;
switch (_that) {
case _AdditionalTextTheme():
return $default(_that.labelExtraSmall,_that.titleMediumReg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextStyle labelExtraSmall,  TextStyle titleMediumReg)?  $default,) {final _that = this;
switch (_that) {
case _AdditionalTextTheme() when $default != null:
return $default(_that.labelExtraSmall,_that.titleMediumReg);case _:
  return null;

}
}

}

/// @nodoc


class _AdditionalTextTheme implements AdditionalTextTheme {
  const _AdditionalTextTheme({required this.labelExtraSmall, required this.titleMediumReg});
  

@override final  TextStyle labelExtraSmall;
@override final  TextStyle titleMediumReg;

/// Create a copy of AdditionalTextTheme
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdditionalTextThemeCopyWith<_AdditionalTextTheme> get copyWith => __$AdditionalTextThemeCopyWithImpl<_AdditionalTextTheme>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdditionalTextTheme&&(identical(other.labelExtraSmall, labelExtraSmall) || other.labelExtraSmall == labelExtraSmall)&&(identical(other.titleMediumReg, titleMediumReg) || other.titleMediumReg == titleMediumReg));
}


@override
int get hashCode => Object.hash(runtimeType,labelExtraSmall,titleMediumReg);

@override
String toString() {
  return 'AdditionalTextTheme(labelExtraSmall: $labelExtraSmall, titleMediumReg: $titleMediumReg)';
}


}

/// @nodoc
abstract mixin class _$AdditionalTextThemeCopyWith<$Res> implements $AdditionalTextThemeCopyWith<$Res> {
  factory _$AdditionalTextThemeCopyWith(_AdditionalTextTheme value, $Res Function(_AdditionalTextTheme) _then) = __$AdditionalTextThemeCopyWithImpl;
@override @useResult
$Res call({
 TextStyle labelExtraSmall, TextStyle titleMediumReg
});




}
/// @nodoc
class __$AdditionalTextThemeCopyWithImpl<$Res>
    implements _$AdditionalTextThemeCopyWith<$Res> {
  __$AdditionalTextThemeCopyWithImpl(this._self, this._then);

  final _AdditionalTextTheme _self;
  final $Res Function(_AdditionalTextTheme) _then;

/// Create a copy of AdditionalTextTheme
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? labelExtraSmall = null,Object? titleMediumReg = null,}) {
  return _then(_AdditionalTextTheme(
labelExtraSmall: null == labelExtraSmall ? _self.labelExtraSmall : labelExtraSmall // ignore: cast_nullable_to_non_nullable
as TextStyle,titleMediumReg: null == titleMediumReg ? _self.titleMediumReg : titleMediumReg // ignore: cast_nullable_to_non_nullable
as TextStyle,
  ));
}


}

// dart format on
