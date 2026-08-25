// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reviews_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewsState {

 ReviewsStatus get status; List<UserReview>? get reviews;
/// Create a copy of ReviewsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsStateCopyWith<ReviewsState> get copyWith => _$ReviewsStateCopyWithImpl<ReviewsState>(this as ReviewsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.reviews, reviews));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(reviews));

@override
String toString() {
  return 'ReviewsState(status: $status, reviews: $reviews)';
}


}

/// @nodoc
abstract mixin class $ReviewsStateCopyWith<$Res>  {
  factory $ReviewsStateCopyWith(ReviewsState value, $Res Function(ReviewsState) _then) = _$ReviewsStateCopyWithImpl;
@useResult
$Res call({
 ReviewsStatus status, List<UserReview>? reviews
});




}
/// @nodoc
class _$ReviewsStateCopyWithImpl<$Res>
    implements $ReviewsStateCopyWith<$Res> {
  _$ReviewsStateCopyWithImpl(this._self, this._then);

  final ReviewsState _self;
  final $Res Function(ReviewsState) _then;

/// Create a copy of ReviewsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? reviews = freezed,}) {
  return _then(ReviewsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReviewsStatus,reviews: freezed == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<UserReview>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewsState].
extension ReviewsStatePatterns on ReviewsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewsState value)  $default,){
final _that = this;
switch (_that) {
case _ReviewsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewsState value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReviewsStatus status,  List<UserReview>? reviews)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewsState() when $default != null:
return $default(_that.status,_that.reviews);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReviewsStatus status,  List<UserReview>? reviews)  $default,) {final _that = this;
switch (_that) {
case _ReviewsState():
return $default(_that.status,_that.reviews);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReviewsStatus status,  List<UserReview>? reviews)?  $default,) {final _that = this;
switch (_that) {
case _ReviewsState() when $default != null:
return $default(_that.status,_that.reviews);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewsState implements ReviewsState {
  const _ReviewsState({this.status = ReviewsStatus.initial,  List<UserReview>? reviews}): assert(status != ReviewsStatus.ready || reviews != null),_reviews = reviews;
  

@override@JsonKey() final  ReviewsStatus status;
 final  List<UserReview>? _reviews;
@override List<UserReview>? get reviews {
  final value = _reviews;
  if (value == null) return null;
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ReviewsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewsStateCopyWith<_ReviewsState> get copyWith => __$ReviewsStateCopyWithImpl<_ReviewsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._reviews, _reviews));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_reviews));

@override
String toString() {
  return 'ReviewsState(status: $status, reviews: $reviews)';
}


}

/// @nodoc
abstract mixin class _$ReviewsStateCopyWith<$Res> implements $ReviewsStateCopyWith<$Res> {
  factory _$ReviewsStateCopyWith(_ReviewsState value, $Res Function(_ReviewsState) _then) = __$ReviewsStateCopyWithImpl;
@override @useResult
$Res call({
 ReviewsStatus status, List<UserReview>? reviews
});




}
/// @nodoc
class __$ReviewsStateCopyWithImpl<$Res>
    implements _$ReviewsStateCopyWith<$Res> {
  __$ReviewsStateCopyWithImpl(this._self, this._then);

  final _ReviewsState _self;
  final $Res Function(_ReviewsState) _then;

/// Create a copy of ReviewsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? reviews = freezed,}) {
  return _then(_ReviewsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReviewsStatus,reviews: freezed == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<UserReview>?,
  ));
}


}

/// @nodoc
mixin _$ReviewsSr {

 String get error;
/// Create a copy of ReviewsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsSrCopyWith<ReviewsSr> get copyWith => _$ReviewsSrCopyWithImpl<ReviewsSr>(this as ReviewsSr, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ReviewsSr(error: $error)';
}


}

/// @nodoc
abstract mixin class $ReviewsSrCopyWith<$Res>  {
  factory $ReviewsSrCopyWith(ReviewsSr value, $Res Function(ReviewsSr) _then) = _$ReviewsSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ReviewsSrCopyWithImpl<$Res>
    implements $ReviewsSrCopyWith<$Res> {
  _$ReviewsSrCopyWithImpl(this._self, this._then);

  final ReviewsSr _self;
  final $Res Function(ReviewsSr) _then;

/// Create a copy of ReviewsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,}) {
  return _then(ReviewsSr.error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewsSr].
extension ReviewsSrPatterns on ReviewsSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ReviewsErrorSr value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ReviewsErrorSr() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ReviewsErrorSr value)  error,}){
final _that = this;
switch (_that) {
case ReviewsErrorSr():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ReviewsErrorSr value)?  error,}){
final _that = this;
switch (_that) {
case ReviewsErrorSr() when error != null:
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
case ReviewsErrorSr() when error != null:
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
case ReviewsErrorSr():
return error(_that.error);}
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
case ReviewsErrorSr() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class ReviewsErrorSr implements ReviewsSr {
  const ReviewsErrorSr(this.error);
  

@override final  String error;

/// Create a copy of ReviewsSr
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewsErrorSrCopyWith<ReviewsErrorSr> get copyWith => _$ReviewsErrorSrCopyWithImpl<ReviewsErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewsErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ReviewsSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ReviewsErrorSrCopyWith<$Res> implements $ReviewsSrCopyWith<$Res> {
  factory $ReviewsErrorSrCopyWith(ReviewsErrorSr value, $Res Function(ReviewsErrorSr) _then) = _$ReviewsErrorSrCopyWithImpl;
@override @useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ReviewsErrorSrCopyWithImpl<$Res>
    implements $ReviewsErrorSrCopyWith<$Res> {
  _$ReviewsErrorSrCopyWithImpl(this._self, this._then);

  final ReviewsErrorSr _self;
  final $Res Function(ReviewsErrorSr) _then;

/// Create a copy of ReviewsSr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ReviewsErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
