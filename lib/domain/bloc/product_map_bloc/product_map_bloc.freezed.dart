// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_map_bloc.dart';

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
mixin _$ProductMapState {

 List<StoreItem>? get stores; List<StoreItem>? get searchResult; ProductMapStateStatus get status;
/// Create a copy of ProductMapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductMapStateCopyWith<ProductMapState> get copyWith => _$ProductMapStateCopyWithImpl<ProductMapState>(this as ProductMapState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductMapState&&const DeepCollectionEquality().equals(other.stores, stores)&&const DeepCollectionEquality().equals(other.searchResult, searchResult)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(stores),const DeepCollectionEquality().hash(searchResult),status);

@override
String toString() {
  return 'ProductMapState(stores: $stores, searchResult: $searchResult, status: $status)';
}


}

/// @nodoc
abstract mixin class $ProductMapStateCopyWith<$Res>  {
  factory $ProductMapStateCopyWith(ProductMapState value, $Res Function(ProductMapState) _then) = _$ProductMapStateCopyWithImpl;
@useResult
$Res call({
 List<StoreItem>? stores, List<StoreItem>? searchResult, ProductMapStateStatus status
});




}
/// @nodoc
class _$ProductMapStateCopyWithImpl<$Res>
    implements $ProductMapStateCopyWith<$Res> {
  _$ProductMapStateCopyWithImpl(this._self, this._then);

  final ProductMapState _self;
  final $Res Function(ProductMapState) _then;

/// Create a copy of ProductMapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stores = freezed,Object? searchResult = freezed,Object? status = null,}) {
  return _then(ProductMapState(
stores: freezed == stores ? _self.stores : stores // ignore: cast_nullable_to_non_nullable
as List<StoreItem>?,searchResult: freezed == searchResult ? _self.searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<StoreItem>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductMapStateStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductMapState].
extension ProductMapStatePatterns on ProductMapState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductMapState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductMapState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductMapState value)  $default,){
final _that = this;
switch (_that) {
case _ProductMapState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductMapState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductMapState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<StoreItem>? stores,  List<StoreItem>? searchResult,  ProductMapStateStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductMapState() when $default != null:
return $default(_that.stores,_that.searchResult,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<StoreItem>? stores,  List<StoreItem>? searchResult,  ProductMapStateStatus status)  $default,) {final _that = this;
switch (_that) {
case _ProductMapState():
return $default(_that.stores,_that.searchResult,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<StoreItem>? stores,  List<StoreItem>? searchResult,  ProductMapStateStatus status)?  $default,) {final _that = this;
switch (_that) {
case _ProductMapState() when $default != null:
return $default(_that.stores,_that.searchResult,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _ProductMapState extends ProductMapState {
  const _ProductMapState({ List<StoreItem>? stores,  List<StoreItem>? searchResult, this.status = ProductMapStateStatus.loading}): _stores = stores,_searchResult = searchResult,super._();
  

 final  List<StoreItem>? _stores;
@override List<StoreItem>? get stores {
  final value = _stores;
  if (value == null) return null;
  if (_stores is EqualUnmodifiableListView) return _stores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<StoreItem>? _searchResult;
@override List<StoreItem>? get searchResult {
  final value = _searchResult;
  if (value == null) return null;
  if (_searchResult is EqualUnmodifiableListView) return _searchResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  ProductMapStateStatus status;

/// Create a copy of ProductMapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductMapStateCopyWith<_ProductMapState> get copyWith => __$ProductMapStateCopyWithImpl<_ProductMapState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductMapState&&const DeepCollectionEquality().equals(other._stores, _stores)&&const DeepCollectionEquality().equals(other._searchResult, _searchResult)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_stores),const DeepCollectionEquality().hash(_searchResult),status);

@override
String toString() {
  return 'ProductMapState(stores: $stores, searchResult: $searchResult, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ProductMapStateCopyWith<$Res> implements $ProductMapStateCopyWith<$Res> {
  factory _$ProductMapStateCopyWith(_ProductMapState value, $Res Function(_ProductMapState) _then) = __$ProductMapStateCopyWithImpl;
@override @useResult
$Res call({
 List<StoreItem>? stores, List<StoreItem>? searchResult, ProductMapStateStatus status
});




}
/// @nodoc
class __$ProductMapStateCopyWithImpl<$Res>
    implements _$ProductMapStateCopyWith<$Res> {
  __$ProductMapStateCopyWithImpl(this._self, this._then);

  final _ProductMapState _self;
  final $Res Function(_ProductMapState) _then;

/// Create a copy of ProductMapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stores = freezed,Object? searchResult = freezed,Object? status = null,}) {
  return _then(_ProductMapState(
stores: freezed == stores ? _self._stores : stores // ignore: cast_nullable_to_non_nullable
as List<StoreItem>?,searchResult: freezed == searchResult ? _self._searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<StoreItem>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductMapStateStatus,
  ));
}


}

/// @nodoc
mixin _$ProductMapSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductMapSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductMapSr()';
}


}

/// @nodoc
class $ProductMapSrCopyWith<$Res>  {
$ProductMapSrCopyWith(ProductMapSr _, $Res Function(ProductMapSr) __);
}


/// Adds pattern-matching-related methods to [ProductMapSr].
extension ProductMapSrPatterns on ProductMapSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ErrorSr value)?  error,TResult Function( _SubmitSr value)?  submit,TResult Function( _SetCameraToInitPositionSr value)?  setCameraToInitPosition,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _SubmitSr() when submit != null:
return submit(_that);case _SetCameraToInitPositionSr() when setCameraToInitPosition != null:
return setCameraToInitPosition(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ErrorSr value)  error,required TResult Function( _SubmitSr value)  submit,required TResult Function( _SetCameraToInitPositionSr value)  setCameraToInitPosition,}){
final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that);case _SubmitSr():
return submit(_that);case _SetCameraToInitPositionSr():
return setCameraToInitPosition(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ErrorSr value)?  error,TResult? Function( _SubmitSr value)?  submit,TResult? Function( _SetCameraToInitPositionSr value)?  setCameraToInitPosition,}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _SubmitSr() when submit != null:
return submit(_that);case _SetCameraToInitPositionSr() when setCameraToInitPosition != null:
return setCameraToInitPosition(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function()?  submit,TResult Function( List<Store>? stores)?  setCameraToInitPosition,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _SubmitSr() when submit != null:
return submit();case _SetCameraToInitPositionSr() when setCameraToInitPosition != null:
return setCameraToInitPosition(_that.stores);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function()  submit,required TResult Function( List<Store>? stores)  setCameraToInitPosition,}) {final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that.error);case _SubmitSr():
return submit();case _SetCameraToInitPositionSr():
return setCameraToInitPosition(_that.stores);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function()?  submit,TResult? Function( List<Store>? stores)?  setCameraToInitPosition,}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _SubmitSr() when submit != null:
return submit();case _SetCameraToInitPositionSr() when setCameraToInitPosition != null:
return setCameraToInitPosition(_that.stores);case _:
  return null;

}
}

}

/// @nodoc


class _ErrorSr implements ProductMapSr {
  const _ErrorSr(this.error);
  

 final  String error;

/// Create a copy of ProductMapSr
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
  return 'ProductMapSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorSrCopyWith<$Res> implements $ProductMapSrCopyWith<$Res> {
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

/// Create a copy of ProductMapSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SubmitSr implements ProductMapSr {
  const _SubmitSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductMapSr.submit()';
}


}




/// @nodoc


class _SetCameraToInitPositionSr implements ProductMapSr {
  const _SetCameraToInitPositionSr( List<Store>? stores): _stores = stores;
  

 final  List<Store>? _stores;
 List<Store>? get stores {
  final value = _stores;
  if (value == null) return null;
  if (_stores is EqualUnmodifiableListView) return _stores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ProductMapSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetCameraToInitPositionSrCopyWith<_SetCameraToInitPositionSr> get copyWith => __$SetCameraToInitPositionSrCopyWithImpl<_SetCameraToInitPositionSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetCameraToInitPositionSr&&const DeepCollectionEquality().equals(other._stores, _stores));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_stores));

@override
String toString() {
  return 'ProductMapSr.setCameraToInitPosition(stores: $stores)';
}


}

/// @nodoc
abstract mixin class _$SetCameraToInitPositionSrCopyWith<$Res> implements $ProductMapSrCopyWith<$Res> {
  factory _$SetCameraToInitPositionSrCopyWith(_SetCameraToInitPositionSr value, $Res Function(_SetCameraToInitPositionSr) _then) = __$SetCameraToInitPositionSrCopyWithImpl;
@useResult
$Res call({
 List<Store>? stores
});




}
/// @nodoc
class __$SetCameraToInitPositionSrCopyWithImpl<$Res>
    implements _$SetCameraToInitPositionSrCopyWith<$Res> {
  __$SetCameraToInitPositionSrCopyWithImpl(this._self, this._then);

  final _SetCameraToInitPositionSr _self;
  final $Res Function(_SetCameraToInitPositionSr) _then;

/// Create a copy of ProductMapSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stores = freezed,}) {
  return _then(_SetCameraToInitPositionSr(
freezed == stores ? _self._stores : stores // ignore: cast_nullable_to_non_nullable
as List<Store>?,
  ));
}


}

// dart format on
