// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_us_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AboutUsState {

 AboutUsStatus get status; Promotion? get data;
/// Create a copy of AboutUsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutUsStateCopyWith<AboutUsState> get copyWith => _$AboutUsStateCopyWithImpl<AboutUsState>(this as AboutUsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutUsState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'AboutUsState(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $AboutUsStateCopyWith<$Res>  {
  factory $AboutUsStateCopyWith(AboutUsState value, $Res Function(AboutUsState) _then) = _$AboutUsStateCopyWithImpl;
@useResult
$Res call({
 AboutUsStatus status, Promotion? data
});


$PromotionCopyWith<$Res>? get data;

}
/// @nodoc
class _$AboutUsStateCopyWithImpl<$Res>
    implements $AboutUsStateCopyWith<$Res> {
  _$AboutUsStateCopyWithImpl(this._self, this._then);

  final AboutUsState _self;
  final $Res Function(AboutUsState) _then;

/// Create a copy of AboutUsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,}) {
  return _then(AboutUsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AboutUsStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Promotion?,
  ));
}
/// Create a copy of AboutUsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PromotionCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AboutUsState].
extension AboutUsStatePatterns on AboutUsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AboutUsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AboutUsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AboutUsState value)  $default,){
final _that = this;
switch (_that) {
case _AboutUsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AboutUsState value)?  $default,){
final _that = this;
switch (_that) {
case _AboutUsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AboutUsStatus status,  Promotion? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AboutUsState() when $default != null:
return $default(_that.status,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AboutUsStatus status,  Promotion? data)  $default,) {final _that = this;
switch (_that) {
case _AboutUsState():
return $default(_that.status,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AboutUsStatus status,  Promotion? data)?  $default,) {final _that = this;
switch (_that) {
case _AboutUsState() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _AboutUsState implements AboutUsState {
  const _AboutUsState({this.status = AboutUsStatus.init, this.data});
  

@override@JsonKey() final  AboutUsStatus status;
@override final  Promotion? data;

/// Create a copy of AboutUsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AboutUsStateCopyWith<_AboutUsState> get copyWith => __$AboutUsStateCopyWithImpl<_AboutUsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AboutUsState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'AboutUsState(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AboutUsStateCopyWith<$Res> implements $AboutUsStateCopyWith<$Res> {
  factory _$AboutUsStateCopyWith(_AboutUsState value, $Res Function(_AboutUsState) _then) = __$AboutUsStateCopyWithImpl;
@override @useResult
$Res call({
 AboutUsStatus status, Promotion? data
});


@override $PromotionCopyWith<$Res>? get data;

}
/// @nodoc
class __$AboutUsStateCopyWithImpl<$Res>
    implements _$AboutUsStateCopyWith<$Res> {
  __$AboutUsStateCopyWithImpl(this._self, this._then);

  final _AboutUsState _self;
  final $Res Function(_AboutUsState) _then;

/// Create a copy of AboutUsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,}) {
  return _then(_AboutUsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AboutUsStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Promotion?,
  ));
}

/// Create a copy of AboutUsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PromotionCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
mixin _$AboutUsSr {

 String get error;
/// Create a copy of AboutUsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutUsSrCopyWith<AboutUsSr> get copyWith => _$AboutUsSrCopyWithImpl<AboutUsSr>(this as AboutUsSr, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutUsSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AboutUsSr(error: $error)';
}


}

/// @nodoc
abstract mixin class $AboutUsSrCopyWith<$Res>  {
  factory $AboutUsSrCopyWith(AboutUsSr value, $Res Function(AboutUsSr) _then) = _$AboutUsSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$AboutUsSrCopyWithImpl<$Res>
    implements $AboutUsSrCopyWith<$Res> {
  _$AboutUsSrCopyWithImpl(this._self, this._then);

  final AboutUsSr _self;
  final $Res Function(AboutUsSr) _then;

/// Create a copy of AboutUsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,}) {
  return _then(AboutUsSr.error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AboutUsSr].
extension AboutUsSrPatterns on AboutUsSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ErrorSr value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ErrorSr value)  error,}){
final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ErrorSr value)?  error,}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ErrorSr implements AboutUsSr {
  const _ErrorSr(this.error);
  

@override final  String error;

/// Create a copy of AboutUsSr
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
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
  return 'AboutUsSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorSrCopyWith<$Res> implements $AboutUsSrCopyWith<$Res> {
  factory _$ErrorSrCopyWith(_ErrorSr value, $Res Function(_ErrorSr) _then) = __$ErrorSrCopyWithImpl;
@override @useResult
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

/// Create a copy of AboutUsSr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
