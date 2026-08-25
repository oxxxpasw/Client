// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapState {

 Store? get selectedStore; City? get selectedCity; MapStateStatus get status;
/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapStateCopyWith<MapState> get copyWith => _$MapStateCopyWithImpl<MapState>(this as MapState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapState&&(identical(other.selectedStore, selectedStore) || other.selectedStore == selectedStore)&&(identical(other.selectedCity, selectedCity) || other.selectedCity == selectedCity)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,selectedStore,selectedCity,status);

@override
String toString() {
  return 'MapState(selectedStore: $selectedStore, selectedCity: $selectedCity, status: $status)';
}


}

/// @nodoc
abstract mixin class $MapStateCopyWith<$Res>  {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) _then) = _$MapStateCopyWithImpl;
@useResult
$Res call({
 Store? selectedStore, City? selectedCity, MapStateStatus status
});


$StoreCopyWith<$Res>? get selectedStore;$CityCopyWith<$Res>? get selectedCity;

}
/// @nodoc
class _$MapStateCopyWithImpl<$Res>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._self, this._then);

  final MapState _self;
  final $Res Function(MapState) _then;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedStore = freezed,Object? selectedCity = freezed,Object? status = null,}) {
  return _then(MapState(
selectedStore: freezed == selectedStore ? _self.selectedStore : selectedStore // ignore: cast_nullable_to_non_nullable
as Store?,selectedCity: freezed == selectedCity ? _self.selectedCity : selectedCity // ignore: cast_nullable_to_non_nullable
as City?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MapStateStatus,
  ));
}
/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get selectedStore {
    if (_self.selectedStore == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.selectedStore!, (value) {
    return _then(_self.copyWith(selectedStore: value));
  });
}/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get selectedCity {
    if (_self.selectedCity == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.selectedCity!, (value) {
    return _then(_self.copyWith(selectedCity: value));
  });
}
}


/// Adds pattern-matching-related methods to [MapState].
extension MapStatePatterns on MapState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapState value)  $default,){
final _that = this;
switch (_that) {
case _MapState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapState value)?  $default,){
final _that = this;
switch (_that) {
case _MapState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Store? selectedStore,  City? selectedCity,  MapStateStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapState() when $default != null:
return $default(_that.selectedStore,_that.selectedCity,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Store? selectedStore,  City? selectedCity,  MapStateStatus status)  $default,) {final _that = this;
switch (_that) {
case _MapState():
return $default(_that.selectedStore,_that.selectedCity,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Store? selectedStore,  City? selectedCity,  MapStateStatus status)?  $default,) {final _that = this;
switch (_that) {
case _MapState() when $default != null:
return $default(_that.selectedStore,_that.selectedCity,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _MapState extends MapState {
  const _MapState({this.selectedStore, this.selectedCity, this.status = MapStateStatus.init}): super._();
  

@override final  Store? selectedStore;
@override final  City? selectedCity;
@override@JsonKey() final  MapStateStatus status;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapStateCopyWith<_MapState> get copyWith => __$MapStateCopyWithImpl<_MapState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapState&&(identical(other.selectedStore, selectedStore) || other.selectedStore == selectedStore)&&(identical(other.selectedCity, selectedCity) || other.selectedCity == selectedCity)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,selectedStore,selectedCity,status);

@override
String toString() {
  return 'MapState(selectedStore: $selectedStore, selectedCity: $selectedCity, status: $status)';
}


}

/// @nodoc
abstract mixin class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) _then) = __$MapStateCopyWithImpl;
@override @useResult
$Res call({
 Store? selectedStore, City? selectedCity, MapStateStatus status
});


@override $StoreCopyWith<$Res>? get selectedStore;@override $CityCopyWith<$Res>? get selectedCity;

}
/// @nodoc
class __$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(this._self, this._then);

  final _MapState _self;
  final $Res Function(_MapState) _then;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedStore = freezed,Object? selectedCity = freezed,Object? status = null,}) {
  return _then(_MapState(
selectedStore: freezed == selectedStore ? _self.selectedStore : selectedStore // ignore: cast_nullable_to_non_nullable
as Store?,selectedCity: freezed == selectedCity ? _self.selectedCity : selectedCity // ignore: cast_nullable_to_non_nullable
as City?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MapStateStatus,
  ));
}

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get selectedStore {
    if (_self.selectedStore == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.selectedStore!, (value) {
    return _then(_self.copyWith(selectedStore: value));
  });
}/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get selectedCity {
    if (_self.selectedCity == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.selectedCity!, (value) {
    return _then(_self.copyWith(selectedCity: value));
  });
}
}

/// @nodoc
mixin _$MapSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MapSr()';
}


}

/// @nodoc
class $MapSrCopyWith<$Res>  {
$MapSrCopyWith(MapSr _, $Res Function(MapSr) __);
}


/// Adds pattern-matching-related methods to [MapSr].
extension MapSrPatterns on MapSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MapErrorSr value)?  error,TResult Function( _SubmitSr value)?  submit,TResult Function( MapSetCameraToInitPositionSr value)?  setCameraToInitPosition,TResult Function( MapShowChangeCityDialogSr value)?  showChangeCityDialog,TResult Function( MapShowStoreListSr value)?  showStoreList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MapErrorSr() when error != null:
return error(_that);case _SubmitSr() when submit != null:
return submit(_that);case MapSetCameraToInitPositionSr() when setCameraToInitPosition != null:
return setCameraToInitPosition(_that);case MapShowChangeCityDialogSr() when showChangeCityDialog != null:
return showChangeCityDialog(_that);case MapShowStoreListSr() when showStoreList != null:
return showStoreList(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MapErrorSr value)  error,required TResult Function( _SubmitSr value)  submit,required TResult Function( MapSetCameraToInitPositionSr value)  setCameraToInitPosition,required TResult Function( MapShowChangeCityDialogSr value)  showChangeCityDialog,required TResult Function( MapShowStoreListSr value)  showStoreList,}){
final _that = this;
switch (_that) {
case MapErrorSr():
return error(_that);case _SubmitSr():
return submit(_that);case MapSetCameraToInitPositionSr():
return setCameraToInitPosition(_that);case MapShowChangeCityDialogSr():
return showChangeCityDialog(_that);case MapShowStoreListSr():
return showStoreList(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MapErrorSr value)?  error,TResult? Function( _SubmitSr value)?  submit,TResult? Function( MapSetCameraToInitPositionSr value)?  setCameraToInitPosition,TResult? Function( MapShowChangeCityDialogSr value)?  showChangeCityDialog,TResult? Function( MapShowStoreListSr value)?  showStoreList,}){
final _that = this;
switch (_that) {
case MapErrorSr() when error != null:
return error(_that);case _SubmitSr() when submit != null:
return submit(_that);case MapSetCameraToInitPositionSr() when setCameraToInitPosition != null:
return setCameraToInitPosition(_that);case MapShowChangeCityDialogSr() when showChangeCityDialog != null:
return showChangeCityDialog(_that);case MapShowStoreListSr() when showStoreList != null:
return showStoreList(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function()?  submit,TResult Function( CameraPosition? options)?  setCameraToInitPosition,TResult Function( City newCity)?  showChangeCityDialog,TResult Function( List<Store> stores)?  showStoreList,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MapErrorSr() when error != null:
return error(_that.error);case _SubmitSr() when submit != null:
return submit();case MapSetCameraToInitPositionSr() when setCameraToInitPosition != null:
return setCameraToInitPosition(_that.options);case MapShowChangeCityDialogSr() when showChangeCityDialog != null:
return showChangeCityDialog(_that.newCity);case MapShowStoreListSr() when showStoreList != null:
return showStoreList(_that.stores);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function()  submit,required TResult Function( CameraPosition? options)  setCameraToInitPosition,required TResult Function( City newCity)  showChangeCityDialog,required TResult Function( List<Store> stores)  showStoreList,}) {final _that = this;
switch (_that) {
case MapErrorSr():
return error(_that.error);case _SubmitSr():
return submit();case MapSetCameraToInitPositionSr():
return setCameraToInitPosition(_that.options);case MapShowChangeCityDialogSr():
return showChangeCityDialog(_that.newCity);case MapShowStoreListSr():
return showStoreList(_that.stores);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function()?  submit,TResult? Function( CameraPosition? options)?  setCameraToInitPosition,TResult? Function( City newCity)?  showChangeCityDialog,TResult? Function( List<Store> stores)?  showStoreList,}) {final _that = this;
switch (_that) {
case MapErrorSr() when error != null:
return error(_that.error);case _SubmitSr() when submit != null:
return submit();case MapSetCameraToInitPositionSr() when setCameraToInitPosition != null:
return setCameraToInitPosition(_that.options);case MapShowChangeCityDialogSr() when showChangeCityDialog != null:
return showChangeCityDialog(_that.newCity);case MapShowStoreListSr() when showStoreList != null:
return showStoreList(_that.stores);case _:
  return null;

}
}

}

/// @nodoc


class MapErrorSr implements MapSr {
  const MapErrorSr(this.error);
  

 final  String error;

/// Create a copy of MapSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapErrorSrCopyWith<MapErrorSr> get copyWith => _$MapErrorSrCopyWithImpl<MapErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'MapSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $MapErrorSrCopyWith<$Res> implements $MapSrCopyWith<$Res> {
  factory $MapErrorSrCopyWith(MapErrorSr value, $Res Function(MapErrorSr) _then) = _$MapErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$MapErrorSrCopyWithImpl<$Res>
    implements $MapErrorSrCopyWith<$Res> {
  _$MapErrorSrCopyWithImpl(this._self, this._then);

  final MapErrorSr _self;
  final $Res Function(MapErrorSr) _then;

/// Create a copy of MapSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(MapErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SubmitSr implements MapSr {
  const _SubmitSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MapSr.submit()';
}


}




/// @nodoc


class MapSetCameraToInitPositionSr implements MapSr {
  const MapSetCameraToInitPositionSr({this.options});
  

 final  CameraPosition? options;

/// Create a copy of MapSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapSetCameraToInitPositionSrCopyWith<MapSetCameraToInitPositionSr> get copyWith => _$MapSetCameraToInitPositionSrCopyWithImpl<MapSetCameraToInitPositionSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapSetCameraToInitPositionSr&&(identical(other.options, options) || other.options == options));
}


@override
int get hashCode => Object.hash(runtimeType,options);

@override
String toString() {
  return 'MapSr.setCameraToInitPosition(options: $options)';
}


}

/// @nodoc
abstract mixin class $MapSetCameraToInitPositionSrCopyWith<$Res> implements $MapSrCopyWith<$Res> {
  factory $MapSetCameraToInitPositionSrCopyWith(MapSetCameraToInitPositionSr value, $Res Function(MapSetCameraToInitPositionSr) _then) = _$MapSetCameraToInitPositionSrCopyWithImpl;
@useResult
$Res call({
 CameraPosition? options
});




}
/// @nodoc
class _$MapSetCameraToInitPositionSrCopyWithImpl<$Res>
    implements $MapSetCameraToInitPositionSrCopyWith<$Res> {
  _$MapSetCameraToInitPositionSrCopyWithImpl(this._self, this._then);

  final MapSetCameraToInitPositionSr _self;
  final $Res Function(MapSetCameraToInitPositionSr) _then;

/// Create a copy of MapSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? options = freezed,}) {
  return _then(MapSetCameraToInitPositionSr(
options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as CameraPosition?,
  ));
}


}

/// @nodoc


class MapShowChangeCityDialogSr implements MapSr {
  const MapShowChangeCityDialogSr(this.newCity);
  

 final  City newCity;

/// Create a copy of MapSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapShowChangeCityDialogSrCopyWith<MapShowChangeCityDialogSr> get copyWith => _$MapShowChangeCityDialogSrCopyWithImpl<MapShowChangeCityDialogSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapShowChangeCityDialogSr&&(identical(other.newCity, newCity) || other.newCity == newCity));
}


@override
int get hashCode => Object.hash(runtimeType,newCity);

@override
String toString() {
  return 'MapSr.showChangeCityDialog(newCity: $newCity)';
}


}

/// @nodoc
abstract mixin class $MapShowChangeCityDialogSrCopyWith<$Res> implements $MapSrCopyWith<$Res> {
  factory $MapShowChangeCityDialogSrCopyWith(MapShowChangeCityDialogSr value, $Res Function(MapShowChangeCityDialogSr) _then) = _$MapShowChangeCityDialogSrCopyWithImpl;
@useResult
$Res call({
 City newCity
});


$CityCopyWith<$Res> get newCity;

}
/// @nodoc
class _$MapShowChangeCityDialogSrCopyWithImpl<$Res>
    implements $MapShowChangeCityDialogSrCopyWith<$Res> {
  _$MapShowChangeCityDialogSrCopyWithImpl(this._self, this._then);

  final MapShowChangeCityDialogSr _self;
  final $Res Function(MapShowChangeCityDialogSr) _then;

/// Create a copy of MapSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newCity = null,}) {
  return _then(MapShowChangeCityDialogSr(
null == newCity ? _self.newCity : newCity // ignore: cast_nullable_to_non_nullable
as City,
  ));
}

/// Create a copy of MapSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res> get newCity {
  
  return $CityCopyWith<$Res>(_self.newCity, (value) {
    return _then(_self.copyWith(newCity: value));
  });
}
}

/// @nodoc


class MapShowStoreListSr implements MapSr {
  const MapShowStoreListSr( List<Store> stores): _stores = stores;
  

 final  List<Store> _stores;
 List<Store> get stores {
  if (_stores is EqualUnmodifiableListView) return _stores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stores);
}


/// Create a copy of MapSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapShowStoreListSrCopyWith<MapShowStoreListSr> get copyWith => _$MapShowStoreListSrCopyWithImpl<MapShowStoreListSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapShowStoreListSr&&const DeepCollectionEquality().equals(other._stores, _stores));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_stores));

@override
String toString() {
  return 'MapSr.showStoreList(stores: $stores)';
}


}

/// @nodoc
abstract mixin class $MapShowStoreListSrCopyWith<$Res> implements $MapSrCopyWith<$Res> {
  factory $MapShowStoreListSrCopyWith(MapShowStoreListSr value, $Res Function(MapShowStoreListSr) _then) = _$MapShowStoreListSrCopyWithImpl;
@useResult
$Res call({
 List<Store> stores
});




}
/// @nodoc
class _$MapShowStoreListSrCopyWithImpl<$Res>
    implements $MapShowStoreListSrCopyWith<$Res> {
  _$MapShowStoreListSrCopyWithImpl(this._self, this._then);

  final MapShowStoreListSr _self;
  final $Res Function(MapShowStoreListSr) _then;

/// Create a copy of MapSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stores = null,}) {
  return _then(MapShowStoreListSr(
null == stores ? _self._stores : stores // ignore: cast_nullable_to_non_nullable
as List<Store>,
  ));
}


}

// dart format on
