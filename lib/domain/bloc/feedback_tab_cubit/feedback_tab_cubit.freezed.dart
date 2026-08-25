// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_tab_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedbackTabState {

 FeedbackTabStatus get status;
/// Create a copy of FeedbackTabState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackTabStateCopyWith<FeedbackTabState> get copyWith => _$FeedbackTabStateCopyWithImpl<FeedbackTabState>(this as FeedbackTabState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackTabState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'FeedbackTabState(status: $status)';
}


}

/// @nodoc
abstract mixin class $FeedbackTabStateCopyWith<$Res>  {
  factory $FeedbackTabStateCopyWith(FeedbackTabState value, $Res Function(FeedbackTabState) _then) = _$FeedbackTabStateCopyWithImpl;
@useResult
$Res call({
 FeedbackTabStatus status
});




}
/// @nodoc
class _$FeedbackTabStateCopyWithImpl<$Res>
    implements $FeedbackTabStateCopyWith<$Res> {
  _$FeedbackTabStateCopyWithImpl(this._self, this._then);

  final FeedbackTabState _self;
  final $Res Function(FeedbackTabState) _then;

/// Create a copy of FeedbackTabState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(FeedbackTabState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FeedbackTabStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedbackTabState].
extension FeedbackTabStatePatterns on FeedbackTabState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedbackTabState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedbackTabState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedbackTabState value)  $default,){
final _that = this;
switch (_that) {
case _FeedbackTabState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedbackTabState value)?  $default,){
final _that = this;
switch (_that) {
case _FeedbackTabState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FeedbackTabStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedbackTabState() when $default != null:
return $default(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FeedbackTabStatus status)  $default,) {final _that = this;
switch (_that) {
case _FeedbackTabState():
return $default(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FeedbackTabStatus status)?  $default,) {final _that = this;
switch (_that) {
case _FeedbackTabState() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _FeedbackTabState implements FeedbackTabState {
  const _FeedbackTabState({this.status = FeedbackTabStatus.init});
  

@override@JsonKey() final  FeedbackTabStatus status;

/// Create a copy of FeedbackTabState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackTabStateCopyWith<_FeedbackTabState> get copyWith => __$FeedbackTabStateCopyWithImpl<_FeedbackTabState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedbackTabState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'FeedbackTabState(status: $status)';
}


}

/// @nodoc
abstract mixin class _$FeedbackTabStateCopyWith<$Res> implements $FeedbackTabStateCopyWith<$Res> {
  factory _$FeedbackTabStateCopyWith(_FeedbackTabState value, $Res Function(_FeedbackTabState) _then) = __$FeedbackTabStateCopyWithImpl;
@override @useResult
$Res call({
 FeedbackTabStatus status
});




}
/// @nodoc
class __$FeedbackTabStateCopyWithImpl<$Res>
    implements _$FeedbackTabStateCopyWith<$Res> {
  __$FeedbackTabStateCopyWithImpl(this._self, this._then);

  final _FeedbackTabState _self;
  final $Res Function(_FeedbackTabState) _then;

/// Create a copy of FeedbackTabState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_FeedbackTabState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FeedbackTabStatus,
  ));
}


}

/// @nodoc
mixin _$FeedbackTabSr {

 FeedbackType get type;
/// Create a copy of FeedbackTabSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackTabSrCopyWith<FeedbackTabSr> get copyWith => _$FeedbackTabSrCopyWithImpl<FeedbackTabSr>(this as FeedbackTabSr, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackTabSr&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'FeedbackTabSr(type: $type)';
}


}

/// @nodoc
abstract mixin class $FeedbackTabSrCopyWith<$Res>  {
  factory $FeedbackTabSrCopyWith(FeedbackTabSr value, $Res Function(FeedbackTabSr) _then) = _$FeedbackTabSrCopyWithImpl;
@useResult
$Res call({
 FeedbackType type
});




}
/// @nodoc
class _$FeedbackTabSrCopyWithImpl<$Res>
    implements $FeedbackTabSrCopyWith<$Res> {
  _$FeedbackTabSrCopyWithImpl(this._self, this._then);

  final FeedbackTabSr _self;
  final $Res Function(FeedbackTabSr) _then;

/// Create a copy of FeedbackTabSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,}) {
  return _then(FeedbackTabSr.openFeedbackScreen(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FeedbackType,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedbackTabSr].
extension FeedbackTabSrPatterns on FeedbackTabSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FeedbackTabOpenFeedbackScreenSr value)?  openFeedbackScreen,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FeedbackTabOpenFeedbackScreenSr() when openFeedbackScreen != null:
return openFeedbackScreen(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FeedbackTabOpenFeedbackScreenSr value)  openFeedbackScreen,}){
final _that = this;
switch (_that) {
case FeedbackTabOpenFeedbackScreenSr():
return openFeedbackScreen(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FeedbackTabOpenFeedbackScreenSr value)?  openFeedbackScreen,}){
final _that = this;
switch (_that) {
case FeedbackTabOpenFeedbackScreenSr() when openFeedbackScreen != null:
return openFeedbackScreen(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( FeedbackType type)?  openFeedbackScreen,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FeedbackTabOpenFeedbackScreenSr() when openFeedbackScreen != null:
return openFeedbackScreen(_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( FeedbackType type)  openFeedbackScreen,}) {final _that = this;
switch (_that) {
case FeedbackTabOpenFeedbackScreenSr():
return openFeedbackScreen(_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( FeedbackType type)?  openFeedbackScreen,}) {final _that = this;
switch (_that) {
case FeedbackTabOpenFeedbackScreenSr() when openFeedbackScreen != null:
return openFeedbackScreen(_that.type);case _:
  return null;

}
}

}

/// @nodoc


class FeedbackTabOpenFeedbackScreenSr implements FeedbackTabSr {
  const FeedbackTabOpenFeedbackScreenSr(this.type);
  

@override final  FeedbackType type;

/// Create a copy of FeedbackTabSr
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackTabOpenFeedbackScreenSrCopyWith<FeedbackTabOpenFeedbackScreenSr> get copyWith => _$FeedbackTabOpenFeedbackScreenSrCopyWithImpl<FeedbackTabOpenFeedbackScreenSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackTabOpenFeedbackScreenSr&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'FeedbackTabSr.openFeedbackScreen(type: $type)';
}


}

/// @nodoc
abstract mixin class $FeedbackTabOpenFeedbackScreenSrCopyWith<$Res> implements $FeedbackTabSrCopyWith<$Res> {
  factory $FeedbackTabOpenFeedbackScreenSrCopyWith(FeedbackTabOpenFeedbackScreenSr value, $Res Function(FeedbackTabOpenFeedbackScreenSr) _then) = _$FeedbackTabOpenFeedbackScreenSrCopyWithImpl;
@override @useResult
$Res call({
 FeedbackType type
});




}
/// @nodoc
class _$FeedbackTabOpenFeedbackScreenSrCopyWithImpl<$Res>
    implements $FeedbackTabOpenFeedbackScreenSrCopyWith<$Res> {
  _$FeedbackTabOpenFeedbackScreenSrCopyWithImpl(this._self, this._then);

  final FeedbackTabOpenFeedbackScreenSr _self;
  final $Res Function(FeedbackTabOpenFeedbackScreenSr) _then;

/// Create a copy of FeedbackTabSr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(FeedbackTabOpenFeedbackScreenSr(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FeedbackType,
  ));
}


}

// dart format on
