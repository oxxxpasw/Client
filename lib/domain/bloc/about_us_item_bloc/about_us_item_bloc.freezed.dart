// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_us_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AboutUsItemState {

 AboutUsItemStatus get status; Promotion? get data;
/// Create a copy of AboutUsItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutUsItemStateCopyWith<AboutUsItemState> get copyWith => _$AboutUsItemStateCopyWithImpl<AboutUsItemState>(this as AboutUsItemState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutUsItemState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'AboutUsItemState(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $AboutUsItemStateCopyWith<$Res>  {
  factory $AboutUsItemStateCopyWith(AboutUsItemState value, $Res Function(AboutUsItemState) _then) = _$AboutUsItemStateCopyWithImpl;
@useResult
$Res call({
 AboutUsItemStatus status, Promotion? data
});


$PromotionCopyWith<$Res>? get data;

}
/// @nodoc
class _$AboutUsItemStateCopyWithImpl<$Res>
    implements $AboutUsItemStateCopyWith<$Res> {
  _$AboutUsItemStateCopyWithImpl(this._self, this._then);

  final AboutUsItemState _self;
  final $Res Function(AboutUsItemState) _then;

/// Create a copy of AboutUsItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,}) {
  return _then(AboutUsItemState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AboutUsItemStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Promotion?,
  ));
}
/// Create a copy of AboutUsItemState
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


/// Adds pattern-matching-related methods to [AboutUsItemState].
extension AboutUsItemStatePatterns on AboutUsItemState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AboutUsItemState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AboutUsItemState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AboutUsItemState value)  $default,){
final _that = this;
switch (_that) {
case _AboutUsItemState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AboutUsItemState value)?  $default,){
final _that = this;
switch (_that) {
case _AboutUsItemState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AboutUsItemStatus status,  Promotion? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AboutUsItemState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AboutUsItemStatus status,  Promotion? data)  $default,) {final _that = this;
switch (_that) {
case _AboutUsItemState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AboutUsItemStatus status,  Promotion? data)?  $default,) {final _that = this;
switch (_that) {
case _AboutUsItemState() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _AboutUsItemState implements AboutUsItemState {
  const _AboutUsItemState({this.status = AboutUsItemStatus.init, this.data});
  

@override@JsonKey() final  AboutUsItemStatus status;
@override final  Promotion? data;

/// Create a copy of AboutUsItemState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AboutUsItemStateCopyWith<_AboutUsItemState> get copyWith => __$AboutUsItemStateCopyWithImpl<_AboutUsItemState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AboutUsItemState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'AboutUsItemState(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AboutUsItemStateCopyWith<$Res> implements $AboutUsItemStateCopyWith<$Res> {
  factory _$AboutUsItemStateCopyWith(_AboutUsItemState value, $Res Function(_AboutUsItemState) _then) = __$AboutUsItemStateCopyWithImpl;
@override @useResult
$Res call({
 AboutUsItemStatus status, Promotion? data
});


@override $PromotionCopyWith<$Res>? get data;

}
/// @nodoc
class __$AboutUsItemStateCopyWithImpl<$Res>
    implements _$AboutUsItemStateCopyWith<$Res> {
  __$AboutUsItemStateCopyWithImpl(this._self, this._then);

  final _AboutUsItemState _self;
  final $Res Function(_AboutUsItemState) _then;

/// Create a copy of AboutUsItemState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,}) {
  return _then(_AboutUsItemState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AboutUsItemStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Promotion?,
  ));
}

/// Create a copy of AboutUsItemState
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
mixin _$AboutUsItemSr {

 String get error;
/// Create a copy of AboutUsItemSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutUsItemSrCopyWith<AboutUsItemSr> get copyWith => _$AboutUsItemSrCopyWithImpl<AboutUsItemSr>(this as AboutUsItemSr, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutUsItemSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AboutUsItemSr(error: $error)';
}


}

/// @nodoc
abstract mixin class $AboutUsItemSrCopyWith<$Res>  {
  factory $AboutUsItemSrCopyWith(AboutUsItemSr value, $Res Function(AboutUsItemSr) _then) = _$AboutUsItemSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$AboutUsItemSrCopyWithImpl<$Res>
    implements $AboutUsItemSrCopyWith<$Res> {
  _$AboutUsItemSrCopyWithImpl(this._self, this._then);

  final AboutUsItemSr _self;
  final $Res Function(AboutUsItemSr) _then;

/// Create a copy of AboutUsItemSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,}) {
  return _then(AboutUsItemSr.error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AboutUsItemSr].
extension AboutUsItemSrPatterns on AboutUsItemSr {
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


class _ErrorSr implements AboutUsItemSr {
  const _ErrorSr(this.error);
  

@override final  String error;

/// Create a copy of AboutUsItemSr
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
  return 'AboutUsItemSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorSrCopyWith<$Res> implements $AboutUsItemSrCopyWith<$Res> {
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

/// Create a copy of AboutUsItemSr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
