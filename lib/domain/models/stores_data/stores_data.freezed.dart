// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stores_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StoresData {

 SelectedStoreData? get selectedStore; Map<String, Country> get countryList;
/// Create a copy of StoresData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoresDataCopyWith<StoresData> get copyWith => _$StoresDataCopyWithImpl<StoresData>(this as StoresData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoresData&&(identical(other.selectedStore, selectedStore) || other.selectedStore == selectedStore)&&const DeepCollectionEquality().equals(other.countryList, countryList));
}


@override
int get hashCode => Object.hash(runtimeType,selectedStore,const DeepCollectionEquality().hash(countryList));

@override
String toString() {
  return 'StoresData(selectedStore: $selectedStore, countryList: $countryList)';
}


}

/// @nodoc
abstract mixin class $StoresDataCopyWith<$Res>  {
  factory $StoresDataCopyWith(StoresData value, $Res Function(StoresData) _then) = _$StoresDataCopyWithImpl;
@useResult
$Res call({
 SelectedStoreData? selectedStore, Map<String, Country> countryList
});


$SelectedStoreDataCopyWith<$Res>? get selectedStore;

}
/// @nodoc
class _$StoresDataCopyWithImpl<$Res>
    implements $StoresDataCopyWith<$Res> {
  _$StoresDataCopyWithImpl(this._self, this._then);

  final StoresData _self;
  final $Res Function(StoresData) _then;

/// Create a copy of StoresData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedStore = freezed,Object? countryList = null,}) {
  return _then(StoresData(
selectedStore: freezed == selectedStore ? _self.selectedStore : selectedStore // ignore: cast_nullable_to_non_nullable
as SelectedStoreData?,countryList: null == countryList ? _self.countryList : countryList // ignore: cast_nullable_to_non_nullable
as Map<String, Country>,
  ));
}
/// Create a copy of StoresData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SelectedStoreDataCopyWith<$Res>? get selectedStore {
    if (_self.selectedStore == null) {
    return null;
  }

  return $SelectedStoreDataCopyWith<$Res>(_self.selectedStore!, (value) {
    return _then(_self.copyWith(selectedStore: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoresData].
extension StoresDataPatterns on StoresData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoresData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoresData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoresData value)  $default,){
final _that = this;
switch (_that) {
case _StoresData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoresData value)?  $default,){
final _that = this;
switch (_that) {
case _StoresData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SelectedStoreData? selectedStore,  Map<String, Country> countryList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoresData() when $default != null:
return $default(_that.selectedStore,_that.countryList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SelectedStoreData? selectedStore,  Map<String, Country> countryList)  $default,) {final _that = this;
switch (_that) {
case _StoresData():
return $default(_that.selectedStore,_that.countryList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SelectedStoreData? selectedStore,  Map<String, Country> countryList)?  $default,) {final _that = this;
switch (_that) {
case _StoresData() when $default != null:
return $default(_that.selectedStore,_that.countryList);case _:
  return null;

}
}

}

/// @nodoc


class _StoresData extends StoresData {
  const _StoresData({this.selectedStore,  Map<String, Country> countryList = const {}}): _countryList = countryList,super._();
  

@override final  SelectedStoreData? selectedStore;
 final  Map<String, Country> _countryList;
@override@JsonKey() Map<String, Country> get countryList {
  if (_countryList is EqualUnmodifiableMapView) return _countryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_countryList);
}


/// Create a copy of StoresData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoresDataCopyWith<_StoresData> get copyWith => __$StoresDataCopyWithImpl<_StoresData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoresData&&(identical(other.selectedStore, selectedStore) || other.selectedStore == selectedStore)&&const DeepCollectionEquality().equals(other._countryList, _countryList));
}


@override
int get hashCode => Object.hash(runtimeType,selectedStore,const DeepCollectionEquality().hash(_countryList));

@override
String toString() {
  return 'StoresData(selectedStore: $selectedStore, countryList: $countryList)';
}


}

/// @nodoc
abstract mixin class _$StoresDataCopyWith<$Res> implements $StoresDataCopyWith<$Res> {
  factory _$StoresDataCopyWith(_StoresData value, $Res Function(_StoresData) _then) = __$StoresDataCopyWithImpl;
@override @useResult
$Res call({
 SelectedStoreData? selectedStore, Map<String, Country> countryList
});


@override $SelectedStoreDataCopyWith<$Res>? get selectedStore;

}
/// @nodoc
class __$StoresDataCopyWithImpl<$Res>
    implements _$StoresDataCopyWith<$Res> {
  __$StoresDataCopyWithImpl(this._self, this._then);

  final _StoresData _self;
  final $Res Function(_StoresData) _then;

/// Create a copy of StoresData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedStore = freezed,Object? countryList = null,}) {
  return _then(_StoresData(
selectedStore: freezed == selectedStore ? _self.selectedStore : selectedStore // ignore: cast_nullable_to_non_nullable
as SelectedStoreData?,countryList: null == countryList ? _self._countryList : countryList // ignore: cast_nullable_to_non_nullable
as Map<String, Country>,
  ));
}

/// Create a copy of StoresData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SelectedStoreDataCopyWith<$Res>? get selectedStore {
    if (_self.selectedStore == null) {
    return null;
  }

  return $SelectedStoreDataCopyWith<$Res>(_self.selectedStore!, (value) {
    return _then(_self.copyWith(selectedStore: value));
  });
}
}

/// @nodoc
mixin _$SelectedStoreData {

 Store get store; City get city; Country get country;
/// Create a copy of SelectedStoreData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedStoreDataCopyWith<SelectedStoreData> get copyWith => _$SelectedStoreDataCopyWithImpl<SelectedStoreData>(this as SelectedStoreData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedStoreData&&(identical(other.store, store) || other.store == store)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country));
}


@override
int get hashCode => Object.hash(runtimeType,store,city,country);

@override
String toString() {
  return 'SelectedStoreData(store: $store, city: $city, country: $country)';
}


}

/// @nodoc
abstract mixin class $SelectedStoreDataCopyWith<$Res>  {
  factory $SelectedStoreDataCopyWith(SelectedStoreData value, $Res Function(SelectedStoreData) _then) = _$SelectedStoreDataCopyWithImpl;
@useResult
$Res call({
 Store store, City city, Country country
});


$StoreCopyWith<$Res> get store;$CityCopyWith<$Res> get city;$CountryCopyWith<$Res> get country;

}
/// @nodoc
class _$SelectedStoreDataCopyWithImpl<$Res>
    implements $SelectedStoreDataCopyWith<$Res> {
  _$SelectedStoreDataCopyWithImpl(this._self, this._then);

  final SelectedStoreData _self;
  final $Res Function(SelectedStoreData) _then;

/// Create a copy of SelectedStoreData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? store = null,Object? city = null,Object? country = null,}) {
  return _then(SelectedStoreData(
store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as City,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as Country,
  ));
}
/// Create a copy of SelectedStoreData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res> get store {
  
  return $StoreCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of SelectedStoreData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res> get city {
  
  return $CityCopyWith<$Res>(_self.city, (value) {
    return _then(_self.copyWith(city: value));
  });
}/// Create a copy of SelectedStoreData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryCopyWith<$Res> get country {
  
  return $CountryCopyWith<$Res>(_self.country, (value) {
    return _then(_self.copyWith(country: value));
  });
}
}


/// Adds pattern-matching-related methods to [SelectedStoreData].
extension SelectedStoreDataPatterns on SelectedStoreData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SelectedStoreData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SelectedStoreData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SelectedStoreData value)  $default,){
final _that = this;
switch (_that) {
case _SelectedStoreData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SelectedStoreData value)?  $default,){
final _that = this;
switch (_that) {
case _SelectedStoreData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Store store,  City city,  Country country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SelectedStoreData() when $default != null:
return $default(_that.store,_that.city,_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Store store,  City city,  Country country)  $default,) {final _that = this;
switch (_that) {
case _SelectedStoreData():
return $default(_that.store,_that.city,_that.country);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Store store,  City city,  Country country)?  $default,) {final _that = this;
switch (_that) {
case _SelectedStoreData() when $default != null:
return $default(_that.store,_that.city,_that.country);case _:
  return null;

}
}

}

/// @nodoc


class _SelectedStoreData implements SelectedStoreData {
  const _SelectedStoreData({required this.store, required this.city, required this.country});
  

@override final  Store store;
@override final  City city;
@override final  Country country;

/// Create a copy of SelectedStoreData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectedStoreDataCopyWith<_SelectedStoreData> get copyWith => __$SelectedStoreDataCopyWithImpl<_SelectedStoreData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectedStoreData&&(identical(other.store, store) || other.store == store)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country));
}


@override
int get hashCode => Object.hash(runtimeType,store,city,country);

@override
String toString() {
  return 'SelectedStoreData(store: $store, city: $city, country: $country)';
}


}

/// @nodoc
abstract mixin class _$SelectedStoreDataCopyWith<$Res> implements $SelectedStoreDataCopyWith<$Res> {
  factory _$SelectedStoreDataCopyWith(_SelectedStoreData value, $Res Function(_SelectedStoreData) _then) = __$SelectedStoreDataCopyWithImpl;
@override @useResult
$Res call({
 Store store, City city, Country country
});


@override $StoreCopyWith<$Res> get store;@override $CityCopyWith<$Res> get city;@override $CountryCopyWith<$Res> get country;

}
/// @nodoc
class __$SelectedStoreDataCopyWithImpl<$Res>
    implements _$SelectedStoreDataCopyWith<$Res> {
  __$SelectedStoreDataCopyWithImpl(this._self, this._then);

  final _SelectedStoreData _self;
  final $Res Function(_SelectedStoreData) _then;

/// Create a copy of SelectedStoreData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? store = null,Object? city = null,Object? country = null,}) {
  return _then(_SelectedStoreData(
store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as City,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as Country,
  ));
}

/// Create a copy of SelectedStoreData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res> get store {
  
  return $StoreCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of SelectedStoreData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res> get city {
  
  return $CityCopyWith<$Res>(_self.city, (value) {
    return _then(_self.copyWith(city: value));
  });
}/// Create a copy of SelectedStoreData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryCopyWith<$Res> get country {
  
  return $CountryCopyWith<$Res>(_self.country, (value) {
    return _then(_self.copyWith(country: value));
  });
}
}

// dart format on
