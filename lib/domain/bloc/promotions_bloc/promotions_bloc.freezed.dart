// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PromotionsState {

 PromotionsStatus get status; List<PromotionShortInfo> get stories; List<PromotionShortInfo> get promotions; Set<String> get viewedStoriesIDs;
/// Create a copy of PromotionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionsStateCopyWith<PromotionsState> get copyWith => _$PromotionsStateCopyWithImpl<PromotionsState>(this as PromotionsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.stories, stories)&&const DeepCollectionEquality().equals(other.promotions, promotions)&&const DeepCollectionEquality().equals(other.viewedStoriesIDs, viewedStoriesIDs));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(stories),const DeepCollectionEquality().hash(promotions),const DeepCollectionEquality().hash(viewedStoriesIDs));

@override
String toString() {
  return 'PromotionsState(status: $status, stories: $stories, promotions: $promotions, viewedStoriesIDs: $viewedStoriesIDs)';
}


}

/// @nodoc
abstract mixin class $PromotionsStateCopyWith<$Res>  {
  factory $PromotionsStateCopyWith(PromotionsState value, $Res Function(PromotionsState) _then) = _$PromotionsStateCopyWithImpl;
@useResult
$Res call({
 PromotionsStatus status, List<PromotionShortInfo> stories, List<PromotionShortInfo> promotions, Set<String> viewedStoriesIDs
});




}
/// @nodoc
class _$PromotionsStateCopyWithImpl<$Res>
    implements $PromotionsStateCopyWith<$Res> {
  _$PromotionsStateCopyWithImpl(this._self, this._then);

  final PromotionsState _self;
  final $Res Function(PromotionsState) _then;

/// Create a copy of PromotionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? stories = null,Object? promotions = null,Object? viewedStoriesIDs = null,}) {
  return _then(PromotionsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PromotionsStatus,stories: null == stories ? _self.stories : stories // ignore: cast_nullable_to_non_nullable
as List<PromotionShortInfo>,promotions: null == promotions ? _self.promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<PromotionShortInfo>,viewedStoriesIDs: null == viewedStoriesIDs ? _self.viewedStoriesIDs : viewedStoriesIDs // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PromotionsState].
extension PromotionsStatePatterns on PromotionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionsState value)  $default,){
final _that = this;
switch (_that) {
case _PromotionsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionsState value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PromotionsStatus status,  List<PromotionShortInfo> stories,  List<PromotionShortInfo> promotions,  Set<String> viewedStoriesIDs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionsState() when $default != null:
return $default(_that.status,_that.stories,_that.promotions,_that.viewedStoriesIDs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PromotionsStatus status,  List<PromotionShortInfo> stories,  List<PromotionShortInfo> promotions,  Set<String> viewedStoriesIDs)  $default,) {final _that = this;
switch (_that) {
case _PromotionsState():
return $default(_that.status,_that.stories,_that.promotions,_that.viewedStoriesIDs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PromotionsStatus status,  List<PromotionShortInfo> stories,  List<PromotionShortInfo> promotions,  Set<String> viewedStoriesIDs)?  $default,) {final _that = this;
switch (_that) {
case _PromotionsState() when $default != null:
return $default(_that.status,_that.stories,_that.promotions,_that.viewedStoriesIDs);case _:
  return null;

}
}

}

/// @nodoc


class _PromotionsState implements PromotionsState {
  const _PromotionsState({this.status = PromotionsStatus.init,  List<PromotionShortInfo> stories = const [],  List<PromotionShortInfo> promotions = const [],  Set<String> viewedStoriesIDs = const {}}): _stories = stories,_promotions = promotions,_viewedStoriesIDs = viewedStoriesIDs;
  

@override@JsonKey() final  PromotionsStatus status;
 final  List<PromotionShortInfo> _stories;
@override@JsonKey() List<PromotionShortInfo> get stories {
  if (_stories is EqualUnmodifiableListView) return _stories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stories);
}

 final  List<PromotionShortInfo> _promotions;
@override@JsonKey() List<PromotionShortInfo> get promotions {
  if (_promotions is EqualUnmodifiableListView) return _promotions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_promotions);
}

 final  Set<String> _viewedStoriesIDs;
@override@JsonKey() Set<String> get viewedStoriesIDs {
  if (_viewedStoriesIDs is EqualUnmodifiableSetView) return _viewedStoriesIDs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_viewedStoriesIDs);
}


/// Create a copy of PromotionsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionsStateCopyWith<_PromotionsState> get copyWith => __$PromotionsStateCopyWithImpl<_PromotionsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._stories, _stories)&&const DeepCollectionEquality().equals(other._promotions, _promotions)&&const DeepCollectionEquality().equals(other._viewedStoriesIDs, _viewedStoriesIDs));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_stories),const DeepCollectionEquality().hash(_promotions),const DeepCollectionEquality().hash(_viewedStoriesIDs));

@override
String toString() {
  return 'PromotionsState(status: $status, stories: $stories, promotions: $promotions, viewedStoriesIDs: $viewedStoriesIDs)';
}


}

/// @nodoc
abstract mixin class _$PromotionsStateCopyWith<$Res> implements $PromotionsStateCopyWith<$Res> {
  factory _$PromotionsStateCopyWith(_PromotionsState value, $Res Function(_PromotionsState) _then) = __$PromotionsStateCopyWithImpl;
@override @useResult
$Res call({
 PromotionsStatus status, List<PromotionShortInfo> stories, List<PromotionShortInfo> promotions, Set<String> viewedStoriesIDs
});




}
/// @nodoc
class __$PromotionsStateCopyWithImpl<$Res>
    implements _$PromotionsStateCopyWith<$Res> {
  __$PromotionsStateCopyWithImpl(this._self, this._then);

  final _PromotionsState _self;
  final $Res Function(_PromotionsState) _then;

/// Create a copy of PromotionsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? stories = null,Object? promotions = null,Object? viewedStoriesIDs = null,}) {
  return _then(_PromotionsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PromotionsStatus,stories: null == stories ? _self._stories : stories // ignore: cast_nullable_to_non_nullable
as List<PromotionShortInfo>,promotions: null == promotions ? _self._promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<PromotionShortInfo>,viewedStoriesIDs: null == viewedStoriesIDs ? _self._viewedStoriesIDs : viewedStoriesIDs // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

/// @nodoc
mixin _$PromotionsSr {

 String get error;
/// Create a copy of PromotionsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionsSrCopyWith<PromotionsSr> get copyWith => _$PromotionsSrCopyWithImpl<PromotionsSr>(this as PromotionsSr, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionsSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'PromotionsSr(error: $error)';
}


}

/// @nodoc
abstract mixin class $PromotionsSrCopyWith<$Res>  {
  factory $PromotionsSrCopyWith(PromotionsSr value, $Res Function(PromotionsSr) _then) = _$PromotionsSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$PromotionsSrCopyWithImpl<$Res>
    implements $PromotionsSrCopyWith<$Res> {
  _$PromotionsSrCopyWithImpl(this._self, this._then);

  final PromotionsSr _self;
  final $Res Function(PromotionsSr) _then;

/// Create a copy of PromotionsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,}) {
  return _then(PromotionsSr.error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PromotionsSr].
extension PromotionsSrPatterns on PromotionsSr {
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


class _ErrorSr implements PromotionsSr {
  const _ErrorSr(this.error);
  

@override final  String error;

/// Create a copy of PromotionsSr
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
  return 'PromotionsSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorSrCopyWith<$Res> implements $PromotionsSrCopyWith<$Res> {
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

/// Create a copy of PromotionsSr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
