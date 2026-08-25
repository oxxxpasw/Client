// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StoreItem {

 Store get store; double? get distance;
/// Create a copy of StoreItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreItemCopyWith<StoreItem> get copyWith => _$StoreItemCopyWithImpl<StoreItem>(this as StoreItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreItem&&(identical(other.store, store) || other.store == store)&&(identical(other.distance, distance) || other.distance == distance));
}


@override
int get hashCode => Object.hash(runtimeType,store,distance);

@override
String toString() {
  return 'StoreItem(store: $store, distance: $distance)';
}


}

/// @nodoc
abstract mixin class $StoreItemCopyWith<$Res>  {
  factory $StoreItemCopyWith(StoreItem value, $Res Function(StoreItem) _then) = _$StoreItemCopyWithImpl;
@useResult
$Res call({
 Store store, double? distance
});


$StoreCopyWith<$Res> get store;

}
/// @nodoc
class _$StoreItemCopyWithImpl<$Res>
    implements $StoreItemCopyWith<$Res> {
  _$StoreItemCopyWithImpl(this._self, this._then);

  final StoreItem _self;
  final $Res Function(StoreItem) _then;

/// Create a copy of StoreItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? store = null,Object? distance = freezed,}) {
  return _then(StoreItem(
store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of StoreItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res> get store {
  
  return $StoreCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreItem].
extension StoreItemPatterns on StoreItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreItem value)  $default,){
final _that = this;
switch (_that) {
case _StoreItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreItem value)?  $default,){
final _that = this;
switch (_that) {
case _StoreItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Store store,  double? distance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreItem() when $default != null:
return $default(_that.store,_that.distance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Store store,  double? distance)  $default,) {final _that = this;
switch (_that) {
case _StoreItem():
return $default(_that.store,_that.distance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Store store,  double? distance)?  $default,) {final _that = this;
switch (_that) {
case _StoreItem() when $default != null:
return $default(_that.store,_that.distance);case _:
  return null;

}
}

}

/// @nodoc


class _StoreItem implements StoreItem {
  const _StoreItem({required this.store, this.distance});
  

@override final  Store store;
@override final  double? distance;

/// Create a copy of StoreItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreItemCopyWith<_StoreItem> get copyWith => __$StoreItemCopyWithImpl<_StoreItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreItem&&(identical(other.store, store) || other.store == store)&&(identical(other.distance, distance) || other.distance == distance));
}


@override
int get hashCode => Object.hash(runtimeType,store,distance);

@override
String toString() {
  return 'StoreItem(store: $store, distance: $distance)';
}


}

/// @nodoc
abstract mixin class _$StoreItemCopyWith<$Res> implements $StoreItemCopyWith<$Res> {
  factory _$StoreItemCopyWith(_StoreItem value, $Res Function(_StoreItem) _then) = __$StoreItemCopyWithImpl;
@override @useResult
$Res call({
 Store store, double? distance
});


@override $StoreCopyWith<$Res> get store;

}
/// @nodoc
class __$StoreItemCopyWithImpl<$Res>
    implements _$StoreItemCopyWith<$Res> {
  __$StoreItemCopyWithImpl(this._self, this._then);

  final _StoreItem _self;
  final $Res Function(_StoreItem) _then;

/// Create a copy of StoreItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? store = null,Object? distance = freezed,}) {
  return _then(_StoreItem(
store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of StoreItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res> get store {
  
  return $StoreCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}

/// @nodoc
mixin _$PointListState {

 List<StoreItem>? get points; PointListStatus get status;
/// Create a copy of PointListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointListStateCopyWith<PointListState> get copyWith => _$PointListStateCopyWithImpl<PointListState>(this as PointListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PointListState&&const DeepCollectionEquality().equals(other.points, points)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(points),status);

@override
String toString() {
  return 'PointListState(points: $points, status: $status)';
}


}

/// @nodoc
abstract mixin class $PointListStateCopyWith<$Res>  {
  factory $PointListStateCopyWith(PointListState value, $Res Function(PointListState) _then) = _$PointListStateCopyWithImpl;
@useResult
$Res call({
 List<StoreItem>? points, PointListStatus status
});




}
/// @nodoc
class _$PointListStateCopyWithImpl<$Res>
    implements $PointListStateCopyWith<$Res> {
  _$PointListStateCopyWithImpl(this._self, this._then);

  final PointListState _self;
  final $Res Function(PointListState) _then;

/// Create a copy of PointListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? points = freezed,Object? status = null,}) {
  return _then(PointListState(
points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<StoreItem>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PointListStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [PointListState].
extension PointListStatePatterns on PointListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PointListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PointListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PointListState value)  $default,){
final _that = this;
switch (_that) {
case _PointListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PointListState value)?  $default,){
final _that = this;
switch (_that) {
case _PointListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<StoreItem>? points,  PointListStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PointListState() when $default != null:
return $default(_that.points,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<StoreItem>? points,  PointListStatus status)  $default,) {final _that = this;
switch (_that) {
case _PointListState():
return $default(_that.points,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<StoreItem>? points,  PointListStatus status)?  $default,) {final _that = this;
switch (_that) {
case _PointListState() when $default != null:
return $default(_that.points,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _PointListState implements PointListState {
  const _PointListState({ List<StoreItem>? points, this.status = PointListStatus.init}): assert(status != PointListStatus.ready || points != null),_points = points;
  

 final  List<StoreItem>? _points;
@override List<StoreItem>? get points {
  final value = _points;
  if (value == null) return null;
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  PointListStatus status;

/// Create a copy of PointListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PointListStateCopyWith<_PointListState> get copyWith => __$PointListStateCopyWithImpl<_PointListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PointListState&&const DeepCollectionEquality().equals(other._points, _points)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_points),status);

@override
String toString() {
  return 'PointListState(points: $points, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PointListStateCopyWith<$Res> implements $PointListStateCopyWith<$Res> {
  factory _$PointListStateCopyWith(_PointListState value, $Res Function(_PointListState) _then) = __$PointListStateCopyWithImpl;
@override @useResult
$Res call({
 List<StoreItem>? points, PointListStatus status
});




}
/// @nodoc
class __$PointListStateCopyWithImpl<$Res>
    implements _$PointListStateCopyWith<$Res> {
  __$PointListStateCopyWithImpl(this._self, this._then);

  final _PointListState _self;
  final $Res Function(_PointListState) _then;

/// Create a copy of PointListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? points = freezed,Object? status = null,}) {
  return _then(_PointListState(
points: freezed == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<StoreItem>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PointListStatus,
  ));
}


}

/// @nodoc
mixin _$PointListSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PointListSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PointListSr()';
}


}

/// @nodoc
class $PointListSrCopyWith<$Res>  {
$PointListSrCopyWith(PointListSr _, $Res Function(PointListSr) __);
}


/// Adds pattern-matching-related methods to [PointListSr].
extension PointListSrPatterns on PointListSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ErrorSr value)?  error,TResult Function( PointListSelectedSr value)?  selected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ErrorSr() when error != null:
return error(_that);case PointListSelectedSr() when selected != null:
return selected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ErrorSr value)  error,required TResult Function( PointListSelectedSr value)  selected,}){
final _that = this;
switch (_that) {
case ErrorSr():
return error(_that);case PointListSelectedSr():
return selected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ErrorSr value)?  error,TResult? Function( PointListSelectedSr value)?  selected,}){
final _that = this;
switch (_that) {
case ErrorSr() when error != null:
return error(_that);case PointListSelectedSr() when selected != null:
return selected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function( Store store)?  selected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ErrorSr() when error != null:
return error(_that.error);case PointListSelectedSr() when selected != null:
return selected(_that.store);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function( Store store)  selected,}) {final _that = this;
switch (_that) {
case ErrorSr():
return error(_that.error);case PointListSelectedSr():
return selected(_that.store);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function( Store store)?  selected,}) {final _that = this;
switch (_that) {
case ErrorSr() when error != null:
return error(_that.error);case PointListSelectedSr() when selected != null:
return selected(_that.store);case _:
  return null;

}
}

}

/// @nodoc


class ErrorSr implements PointListSr {
  const ErrorSr(this.error);
  

 final  String error;

/// Create a copy of PointListSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorSrCopyWith<ErrorSr> get copyWith => _$ErrorSrCopyWithImpl<ErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'PointListSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorSrCopyWith<$Res> implements $PointListSrCopyWith<$Res> {
  factory $ErrorSrCopyWith(ErrorSr value, $Res Function(ErrorSr) _then) = _$ErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorSrCopyWithImpl<$Res>
    implements $ErrorSrCopyWith<$Res> {
  _$ErrorSrCopyWithImpl(this._self, this._then);

  final ErrorSr _self;
  final $Res Function(ErrorSr) _then;

/// Create a copy of PointListSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PointListSelectedSr implements PointListSr {
  const PointListSelectedSr(this.store);
  

 final  Store store;

/// Create a copy of PointListSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointListSelectedSrCopyWith<PointListSelectedSr> get copyWith => _$PointListSelectedSrCopyWithImpl<PointListSelectedSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PointListSelectedSr&&(identical(other.store, store) || other.store == store));
}


@override
int get hashCode => Object.hash(runtimeType,store);

@override
String toString() {
  return 'PointListSr.selected(store: $store)';
}


}

/// @nodoc
abstract mixin class $PointListSelectedSrCopyWith<$Res> implements $PointListSrCopyWith<$Res> {
  factory $PointListSelectedSrCopyWith(PointListSelectedSr value, $Res Function(PointListSelectedSr) _then) = _$PointListSelectedSrCopyWithImpl;
@useResult
$Res call({
 Store store
});


$StoreCopyWith<$Res> get store;

}
/// @nodoc
class _$PointListSelectedSrCopyWithImpl<$Res>
    implements $PointListSelectedSrCopyWith<$Res> {
  _$PointListSelectedSrCopyWithImpl(this._self, this._then);

  final PointListSelectedSr _self;
  final $Res Function(PointListSelectedSr) _then;

/// Create a copy of PointListSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? store = null,}) {
  return _then(PointListSelectedSr(
null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store,
  ));
}

/// Create a copy of PointListSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res> get store {
  
  return $StoreCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}

// dart format on
