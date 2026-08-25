// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PromotionDetailsState {

 PromotionDetailsStatus get status; Promotion? get promotion; bool get isSending;
/// Create a copy of PromotionDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionDetailsStateCopyWith<PromotionDetailsState> get copyWith => _$PromotionDetailsStateCopyWithImpl<PromotionDetailsState>(this as PromotionDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.promotion, promotion) || other.promotion == promotion)&&(identical(other.isSending, isSending) || other.isSending == isSending));
}


@override
int get hashCode => Object.hash(runtimeType,status,promotion,isSending);

@override
String toString() {
  return 'PromotionDetailsState(status: $status, promotion: $promotion, isSending: $isSending)';
}


}

/// @nodoc
abstract mixin class $PromotionDetailsStateCopyWith<$Res>  {
  factory $PromotionDetailsStateCopyWith(PromotionDetailsState value, $Res Function(PromotionDetailsState) _then) = _$PromotionDetailsStateCopyWithImpl;
@useResult
$Res call({
 PromotionDetailsStatus status, Promotion? promotion, bool isSending
});


$PromotionCopyWith<$Res>? get promotion;

}
/// @nodoc
class _$PromotionDetailsStateCopyWithImpl<$Res>
    implements $PromotionDetailsStateCopyWith<$Res> {
  _$PromotionDetailsStateCopyWithImpl(this._self, this._then);

  final PromotionDetailsState _self;
  final $Res Function(PromotionDetailsState) _then;

/// Create a copy of PromotionDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? promotion = freezed,Object? isSending = null,}) {
  return _then(PromotionDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PromotionDetailsStatus,promotion: freezed == promotion ? _self.promotion : promotion // ignore: cast_nullable_to_non_nullable
as Promotion?,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of PromotionDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionCopyWith<$Res>? get promotion {
    if (_self.promotion == null) {
    return null;
  }

  return $PromotionCopyWith<$Res>(_self.promotion!, (value) {
    return _then(_self.copyWith(promotion: value));
  });
}
}


/// Adds pattern-matching-related methods to [PromotionDetailsState].
extension PromotionDetailsStatePatterns on PromotionDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _PromotionDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PromotionDetailsStatus status,  Promotion? promotion,  bool isSending)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionDetailsState() when $default != null:
return $default(_that.status,_that.promotion,_that.isSending);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PromotionDetailsStatus status,  Promotion? promotion,  bool isSending)  $default,) {final _that = this;
switch (_that) {
case _PromotionDetailsState():
return $default(_that.status,_that.promotion,_that.isSending);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PromotionDetailsStatus status,  Promotion? promotion,  bool isSending)?  $default,) {final _that = this;
switch (_that) {
case _PromotionDetailsState() when $default != null:
return $default(_that.status,_that.promotion,_that.isSending);case _:
  return null;

}
}

}

/// @nodoc


class _PromotionDetailsState implements PromotionDetailsState {
  const _PromotionDetailsState({this.status = PromotionDetailsStatus.init, this.promotion, this.isSending = false}): assert(status != PromotionDetailsStatus.ready || promotion != null);
  

@override@JsonKey() final  PromotionDetailsStatus status;
@override final  Promotion? promotion;
@override@JsonKey() final  bool isSending;

/// Create a copy of PromotionDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionDetailsStateCopyWith<_PromotionDetailsState> get copyWith => __$PromotionDetailsStateCopyWithImpl<_PromotionDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.promotion, promotion) || other.promotion == promotion)&&(identical(other.isSending, isSending) || other.isSending == isSending));
}


@override
int get hashCode => Object.hash(runtimeType,status,promotion,isSending);

@override
String toString() {
  return 'PromotionDetailsState(status: $status, promotion: $promotion, isSending: $isSending)';
}


}

/// @nodoc
abstract mixin class _$PromotionDetailsStateCopyWith<$Res> implements $PromotionDetailsStateCopyWith<$Res> {
  factory _$PromotionDetailsStateCopyWith(_PromotionDetailsState value, $Res Function(_PromotionDetailsState) _then) = __$PromotionDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 PromotionDetailsStatus status, Promotion? promotion, bool isSending
});


@override $PromotionCopyWith<$Res>? get promotion;

}
/// @nodoc
class __$PromotionDetailsStateCopyWithImpl<$Res>
    implements _$PromotionDetailsStateCopyWith<$Res> {
  __$PromotionDetailsStateCopyWithImpl(this._self, this._then);

  final _PromotionDetailsState _self;
  final $Res Function(_PromotionDetailsState) _then;

/// Create a copy of PromotionDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? promotion = freezed,Object? isSending = null,}) {
  return _then(_PromotionDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PromotionDetailsStatus,promotion: freezed == promotion ? _self.promotion : promotion // ignore: cast_nullable_to_non_nullable
as Promotion?,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of PromotionDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionCopyWith<$Res>? get promotion {
    if (_self.promotion == null) {
    return null;
  }

  return $PromotionCopyWith<$Res>(_self.promotion!, (value) {
    return _then(_self.copyWith(promotion: value));
  });
}
}

/// @nodoc
mixin _$PromotionDetailsSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionDetailsSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PromotionDetailsSr()';
}


}

/// @nodoc
class $PromotionDetailsSrCopyWith<$Res>  {
$PromotionDetailsSrCopyWith(PromotionDetailsSr _, $Res Function(PromotionDetailsSr) __);
}


/// Adds pattern-matching-related methods to [PromotionDetailsSr].
extension PromotionDetailsSrPatterns on PromotionDetailsSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ErrorSr value)?  error,TResult Function( _SendSr value)?  send,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _SendSr() when send != null:
return send(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ErrorSr value)  error,required TResult Function( _SendSr value)  send,}){
final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that);case _SendSr():
return send(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ErrorSr value)?  error,TResult? Function( _SendSr value)?  send,}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _SendSr() when send != null:
return send(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function()?  send,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _SendSr() when send != null:
return send();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function()  send,}) {final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that.error);case _SendSr():
return send();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function()?  send,}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _SendSr() when send != null:
return send();case _:
  return null;

}
}

}

/// @nodoc


class _ErrorSr implements PromotionDetailsSr {
  const _ErrorSr(this.error);
  

 final  String error;

/// Create a copy of PromotionDetailsSr
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
  return 'PromotionDetailsSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorSrCopyWith<$Res> implements $PromotionDetailsSrCopyWith<$Res> {
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

/// Create a copy of PromotionDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SendSr implements PromotionDetailsSr {
  const _SendSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PromotionDetailsSr.send()';
}


}




// dart format on
