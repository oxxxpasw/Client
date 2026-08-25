// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stores.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Country implements DiagnosticableTreeMixin {

 String get id; String get name;@JsonKey(readValue: readAsMap) Map<String, City> get cities; String? get flagImageUrl; String? get wikidataId;
/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryCopyWith<Country> get copyWith => _$CountryCopyWithImpl<Country>(this as Country, _$identity);

  /// Serializes this Country to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Country'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('cities', cities))..add(DiagnosticsProperty('flagImageUrl', flagImageUrl))..add(DiagnosticsProperty('wikidataId', wikidataId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Country&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.cities, cities)&&(identical(other.flagImageUrl, flagImageUrl) || other.flagImageUrl == flagImageUrl)&&(identical(other.wikidataId, wikidataId) || other.wikidataId == wikidataId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(cities),flagImageUrl,wikidataId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Country(id: $id, name: $name, cities: $cities, flagImageUrl: $flagImageUrl, wikidataId: $wikidataId)';
}


}

/// @nodoc
abstract mixin class $CountryCopyWith<$Res>  {
  factory $CountryCopyWith(Country value, $Res Function(Country) _then) = _$CountryCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(readValue: readAsMap) Map<String, City> cities, String? flagImageUrl, String? wikidataId
});




}
/// @nodoc
class _$CountryCopyWithImpl<$Res>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._self, this._then);

  final Country _self;
  final $Res Function(Country) _then;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? cities = null,Object? flagImageUrl = freezed,Object? wikidataId = freezed,}) {
  return _then(Country(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cities: null == cities ? _self.cities : cities // ignore: cast_nullable_to_non_nullable
as Map<String, City>,flagImageUrl: freezed == flagImageUrl ? _self.flagImageUrl : flagImageUrl // ignore: cast_nullable_to_non_nullable
as String?,wikidataId: freezed == wikidataId ? _self.wikidataId : wikidataId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Country].
extension CountryPatterns on Country {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Country value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Country() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Country value)  $default,){
final _that = this;
switch (_that) {
case _Country():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Country value)?  $default,){
final _that = this;
switch (_that) {
case _Country() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(readValue: readAsMap)  Map<String, City> cities,  String? flagImageUrl,  String? wikidataId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Country() when $default != null:
return $default(_that.id,_that.name,_that.cities,_that.flagImageUrl,_that.wikidataId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(readValue: readAsMap)  Map<String, City> cities,  String? flagImageUrl,  String? wikidataId)  $default,) {final _that = this;
switch (_that) {
case _Country():
return $default(_that.id,_that.name,_that.cities,_that.flagImageUrl,_that.wikidataId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(readValue: readAsMap)  Map<String, City> cities,  String? flagImageUrl,  String? wikidataId)?  $default,) {final _that = this;
switch (_that) {
case _Country() when $default != null:
return $default(_that.id,_that.name,_that.cities,_that.flagImageUrl,_that.wikidataId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _Country extends Country with DiagnosticableTreeMixin {
  const _Country({required this.id, this.name = '', @JsonKey(readValue: readAsMap)  Map<String, City> cities = const {}, this.flagImageUrl, this.wikidataId}): _cities = cities,super._();
  factory _Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

@override final  String id;
@override@JsonKey() final  String name;
 final  Map<String, City> _cities;
@override@JsonKey(readValue: readAsMap) Map<String, City> get cities {
  if (_cities is EqualUnmodifiableMapView) return _cities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_cities);
}

@override final  String? flagImageUrl;
@override final  String? wikidataId;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryCopyWith<_Country> get copyWith => __$CountryCopyWithImpl<_Country>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Country'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('cities', cities))..add(DiagnosticsProperty('flagImageUrl', flagImageUrl))..add(DiagnosticsProperty('wikidataId', wikidataId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Country&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._cities, _cities)&&(identical(other.flagImageUrl, flagImageUrl) || other.flagImageUrl == flagImageUrl)&&(identical(other.wikidataId, wikidataId) || other.wikidataId == wikidataId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_cities),flagImageUrl,wikidataId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Country(id: $id, name: $name, cities: $cities, flagImageUrl: $flagImageUrl, wikidataId: $wikidataId)';
}


}

/// @nodoc
abstract mixin class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) _then) = __$CountryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(readValue: readAsMap) Map<String, City> cities, String? flagImageUrl, String? wikidataId
});




}
/// @nodoc
class __$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(this._self, this._then);

  final _Country _self;
  final $Res Function(_Country) _then;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? cities = null,Object? flagImageUrl = freezed,Object? wikidataId = freezed,}) {
  return _then(_Country(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cities: null == cities ? _self._cities : cities // ignore: cast_nullable_to_non_nullable
as Map<String, City>,flagImageUrl: freezed == flagImageUrl ? _self.flagImageUrl : flagImageUrl // ignore: cast_nullable_to_non_nullable
as String?,wikidataId: freezed == wikidataId ? _self.wikidataId : wikidataId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$City implements DiagnosticableTreeMixin {

 String get id; String? get menuFileName; String get name;@JsonKey(readValue: readAsMap) Map<String, Store> get stores; List<String>? get wikidataIds; double? get latitude; double? get longitude;
/// Create a copy of City
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityCopyWith<City> get copyWith => _$CityCopyWithImpl<City>(this as City, _$identity);

  /// Serializes this City to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'City'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('menuFileName', menuFileName))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('stores', stores))..add(DiagnosticsProperty('wikidataIds', wikidataIds))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is City&&(identical(other.id, id) || other.id == id)&&(identical(other.menuFileName, menuFileName) || other.menuFileName == menuFileName)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.stores, stores)&&const DeepCollectionEquality().equals(other.wikidataIds, wikidataIds)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,menuFileName,name,const DeepCollectionEquality().hash(stores),const DeepCollectionEquality().hash(wikidataIds),latitude,longitude);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'City(id: $id, menuFileName: $menuFileName, name: $name, stores: $stores, wikidataIds: $wikidataIds, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $CityCopyWith<$Res>  {
  factory $CityCopyWith(City value, $Res Function(City) _then) = _$CityCopyWithImpl;
@useResult
$Res call({
 String id, String? menuFileName, String name,@JsonKey(readValue: readAsMap) Map<String, Store> stores, List<String>? wikidataIds, double? latitude, double? longitude
});




}
/// @nodoc
class _$CityCopyWithImpl<$Res>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._self, this._then);

  final City _self;
  final $Res Function(City) _then;

/// Create a copy of City
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? menuFileName = freezed,Object? name = null,Object? stores = null,Object? wikidataIds = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(City(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,menuFileName: freezed == menuFileName ? _self.menuFileName : menuFileName // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stores: null == stores ? _self.stores : stores // ignore: cast_nullable_to_non_nullable
as Map<String, Store>,wikidataIds: freezed == wikidataIds ? _self.wikidataIds : wikidataIds // ignore: cast_nullable_to_non_nullable
as List<String>?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [City].
extension CityPatterns on City {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _City value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _City() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _City value)  $default,){
final _that = this;
switch (_that) {
case _City():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _City value)?  $default,){
final _that = this;
switch (_that) {
case _City() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? menuFileName,  String name, @JsonKey(readValue: readAsMap)  Map<String, Store> stores,  List<String>? wikidataIds,  double? latitude,  double? longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _City() when $default != null:
return $default(_that.id,_that.menuFileName,_that.name,_that.stores,_that.wikidataIds,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? menuFileName,  String name, @JsonKey(readValue: readAsMap)  Map<String, Store> stores,  List<String>? wikidataIds,  double? latitude,  double? longitude)  $default,) {final _that = this;
switch (_that) {
case _City():
return $default(_that.id,_that.menuFileName,_that.name,_that.stores,_that.wikidataIds,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? menuFileName,  String name, @JsonKey(readValue: readAsMap)  Map<String, Store> stores,  List<String>? wikidataIds,  double? latitude,  double? longitude)?  $default,) {final _that = this;
switch (_that) {
case _City() when $default != null:
return $default(_that.id,_that.menuFileName,_that.name,_that.stores,_that.wikidataIds,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _City extends City with DiagnosticableTreeMixin {
  const _City({required this.id, this.menuFileName, this.name = '', @JsonKey(readValue: readAsMap)  Map<String, Store> stores = const {},  List<String>? wikidataIds, this.latitude, this.longitude}): _stores = stores,_wikidataIds = wikidataIds,super._();
  factory _City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

@override final  String id;
@override final  String? menuFileName;
@override@JsonKey() final  String name;
 final  Map<String, Store> _stores;
@override@JsonKey(readValue: readAsMap) Map<String, Store> get stores {
  if (_stores is EqualUnmodifiableMapView) return _stores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_stores);
}

 final  List<String>? _wikidataIds;
@override List<String>? get wikidataIds {
  final value = _wikidataIds;
  if (value == null) return null;
  if (_wikidataIds is EqualUnmodifiableListView) return _wikidataIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double? latitude;
@override final  double? longitude;

/// Create a copy of City
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityCopyWith<_City> get copyWith => __$CityCopyWithImpl<_City>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'City'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('menuFileName', menuFileName))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('stores', stores))..add(DiagnosticsProperty('wikidataIds', wikidataIds))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _City&&(identical(other.id, id) || other.id == id)&&(identical(other.menuFileName, menuFileName) || other.menuFileName == menuFileName)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._stores, _stores)&&const DeepCollectionEquality().equals(other._wikidataIds, _wikidataIds)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,menuFileName,name,const DeepCollectionEquality().hash(_stores),const DeepCollectionEquality().hash(_wikidataIds),latitude,longitude);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'City(id: $id, menuFileName: $menuFileName, name: $name, stores: $stores, wikidataIds: $wikidataIds, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$CityCopyWith(_City value, $Res Function(_City) _then) = __$CityCopyWithImpl;
@override @useResult
$Res call({
 String id, String? menuFileName, String name,@JsonKey(readValue: readAsMap) Map<String, Store> stores, List<String>? wikidataIds, double? latitude, double? longitude
});




}
/// @nodoc
class __$CityCopyWithImpl<$Res>
    implements _$CityCopyWith<$Res> {
  __$CityCopyWithImpl(this._self, this._then);

  final _City _self;
  final $Res Function(_City) _then;

/// Create a copy of City
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? menuFileName = freezed,Object? name = null,Object? stores = null,Object? wikidataIds = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_City(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,menuFileName: freezed == menuFileName ? _self.menuFileName : menuFileName // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stores: null == stores ? _self._stores : stores // ignore: cast_nullable_to_non_nullable
as Map<String, Store>,wikidataIds: freezed == wikidataIds ? _self._wikidataIds : wikidataIds // ignore: cast_nullable_to_non_nullable
as List<String>?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$Store implements DiagnosticableTreeMixin {

 String get id; String get menuFileName; String? get address; String? get name; String? get logoUrl; String? get markerUrl; double get latitude; double get longitude;@DurationConverter() Duration? get offsetFromUtc; String? get scheduleDescription;@ScheduleConverter() Map<int, ScheduleItem> get weekWorkTime;@JsonKey(readValue: readAsMap) Map<String, Fridge> get fridge;@JsonKey(readValue: readAsMap) Map<String, CoffeeMachine> get coffeeMachine;
/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCopyWith<Store> get copyWith => _$StoreCopyWithImpl<Store>(this as Store, _$identity);

  /// Serializes this Store to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Store'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('menuFileName', menuFileName))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('logoUrl', logoUrl))..add(DiagnosticsProperty('markerUrl', markerUrl))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('offsetFromUtc', offsetFromUtc))..add(DiagnosticsProperty('scheduleDescription', scheduleDescription))..add(DiagnosticsProperty('weekWorkTime', weekWorkTime))..add(DiagnosticsProperty('fridge', fridge))..add(DiagnosticsProperty('coffeeMachine', coffeeMachine));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Store&&(identical(other.id, id) || other.id == id)&&(identical(other.menuFileName, menuFileName) || other.menuFileName == menuFileName)&&(identical(other.address, address) || other.address == address)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.markerUrl, markerUrl) || other.markerUrl == markerUrl)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.offsetFromUtc, offsetFromUtc) || other.offsetFromUtc == offsetFromUtc)&&(identical(other.scheduleDescription, scheduleDescription) || other.scheduleDescription == scheduleDescription)&&const DeepCollectionEquality().equals(other.weekWorkTime, weekWorkTime)&&const DeepCollectionEquality().equals(other.fridge, fridge)&&const DeepCollectionEquality().equals(other.coffeeMachine, coffeeMachine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,menuFileName,address,name,logoUrl,markerUrl,latitude,longitude,offsetFromUtc,scheduleDescription,const DeepCollectionEquality().hash(weekWorkTime),const DeepCollectionEquality().hash(fridge),const DeepCollectionEquality().hash(coffeeMachine));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Store(id: $id, menuFileName: $menuFileName, address: $address, name: $name, logoUrl: $logoUrl, markerUrl: $markerUrl, latitude: $latitude, longitude: $longitude, offsetFromUtc: $offsetFromUtc, scheduleDescription: $scheduleDescription, weekWorkTime: $weekWorkTime, fridge: $fridge, coffeeMachine: $coffeeMachine)';
}


}

/// @nodoc
abstract mixin class $StoreCopyWith<$Res>  {
  factory $StoreCopyWith(Store value, $Res Function(Store) _then) = _$StoreCopyWithImpl;
@useResult
$Res call({
 String id, String menuFileName, String? address, String? name, String? logoUrl, String? markerUrl, double latitude, double longitude,@DurationConverter() Duration? offsetFromUtc, String? scheduleDescription,@ScheduleConverter() Map<int, ScheduleItem> weekWorkTime,@JsonKey(readValue: readAsMap) Map<String, Fridge> fridge,@JsonKey(readValue: readAsMap) Map<String, CoffeeMachine> coffeeMachine
});




}
/// @nodoc
class _$StoreCopyWithImpl<$Res>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._self, this._then);

  final Store _self;
  final $Res Function(Store) _then;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? menuFileName = null,Object? address = freezed,Object? name = freezed,Object? logoUrl = freezed,Object? markerUrl = freezed,Object? latitude = null,Object? longitude = null,Object? offsetFromUtc = freezed,Object? scheduleDescription = freezed,Object? weekWorkTime = null,Object? fridge = null,Object? coffeeMachine = null,}) {
  return _then(Store(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,menuFileName: null == menuFileName ? _self.menuFileName : menuFileName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,markerUrl: freezed == markerUrl ? _self.markerUrl : markerUrl // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,offsetFromUtc: freezed == offsetFromUtc ? _self.offsetFromUtc : offsetFromUtc // ignore: cast_nullable_to_non_nullable
as Duration?,scheduleDescription: freezed == scheduleDescription ? _self.scheduleDescription : scheduleDescription // ignore: cast_nullable_to_non_nullable
as String?,weekWorkTime: null == weekWorkTime ? _self.weekWorkTime : weekWorkTime // ignore: cast_nullable_to_non_nullable
as Map<int, ScheduleItem>,fridge: null == fridge ? _self.fridge : fridge // ignore: cast_nullable_to_non_nullable
as Map<String, Fridge>,coffeeMachine: null == coffeeMachine ? _self.coffeeMachine : coffeeMachine // ignore: cast_nullable_to_non_nullable
as Map<String, CoffeeMachine>,
  ));
}

}


/// Adds pattern-matching-related methods to [Store].
extension StorePatterns on Store {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Store value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Store() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Store value)  $default,){
final _that = this;
switch (_that) {
case _Store():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Store value)?  $default,){
final _that = this;
switch (_that) {
case _Store() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String menuFileName,  String? address,  String? name,  String? logoUrl,  String? markerUrl,  double latitude,  double longitude, @DurationConverter()  Duration? offsetFromUtc,  String? scheduleDescription, @ScheduleConverter()  Map<int, ScheduleItem> weekWorkTime, @JsonKey(readValue: readAsMap)  Map<String, Fridge> fridge, @JsonKey(readValue: readAsMap)  Map<String, CoffeeMachine> coffeeMachine)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Store() when $default != null:
return $default(_that.id,_that.menuFileName,_that.address,_that.name,_that.logoUrl,_that.markerUrl,_that.latitude,_that.longitude,_that.offsetFromUtc,_that.scheduleDescription,_that.weekWorkTime,_that.fridge,_that.coffeeMachine);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String menuFileName,  String? address,  String? name,  String? logoUrl,  String? markerUrl,  double latitude,  double longitude, @DurationConverter()  Duration? offsetFromUtc,  String? scheduleDescription, @ScheduleConverter()  Map<int, ScheduleItem> weekWorkTime, @JsonKey(readValue: readAsMap)  Map<String, Fridge> fridge, @JsonKey(readValue: readAsMap)  Map<String, CoffeeMachine> coffeeMachine)  $default,) {final _that = this;
switch (_that) {
case _Store():
return $default(_that.id,_that.menuFileName,_that.address,_that.name,_that.logoUrl,_that.markerUrl,_that.latitude,_that.longitude,_that.offsetFromUtc,_that.scheduleDescription,_that.weekWorkTime,_that.fridge,_that.coffeeMachine);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String menuFileName,  String? address,  String? name,  String? logoUrl,  String? markerUrl,  double latitude,  double longitude, @DurationConverter()  Duration? offsetFromUtc,  String? scheduleDescription, @ScheduleConverter()  Map<int, ScheduleItem> weekWorkTime, @JsonKey(readValue: readAsMap)  Map<String, Fridge> fridge, @JsonKey(readValue: readAsMap)  Map<String, CoffeeMachine> coffeeMachine)?  $default,) {final _that = this;
switch (_that) {
case _Store() when $default != null:
return $default(_that.id,_that.menuFileName,_that.address,_that.name,_that.logoUrl,_that.markerUrl,_that.latitude,_that.longitude,_that.offsetFromUtc,_that.scheduleDescription,_that.weekWorkTime,_that.fridge,_that.coffeeMachine);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _Store extends Store with DiagnosticableTreeMixin {
  const _Store({required this.id, required this.menuFileName, this.address, this.name, this.logoUrl, this.markerUrl, this.latitude = 0.0, this.longitude = 0.0, @DurationConverter() this.offsetFromUtc, this.scheduleDescription, @ScheduleConverter()  Map<int, ScheduleItem> weekWorkTime = const {}, @JsonKey(readValue: readAsMap)  Map<String, Fridge> fridge = const {}, @JsonKey(readValue: readAsMap)  Map<String, CoffeeMachine> coffeeMachine = const {}}): _weekWorkTime = weekWorkTime,_fridge = fridge,_coffeeMachine = coffeeMachine,super._();
  factory _Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

@override final  String id;
@override final  String menuFileName;
@override final  String? address;
@override final  String? name;
@override final  String? logoUrl;
@override final  String? markerUrl;
@override@JsonKey() final  double latitude;
@override@JsonKey() final  double longitude;
@override@DurationConverter() final  Duration? offsetFromUtc;
@override final  String? scheduleDescription;
 final  Map<int, ScheduleItem> _weekWorkTime;
@override@JsonKey()@ScheduleConverter() Map<int, ScheduleItem> get weekWorkTime {
  if (_weekWorkTime is EqualUnmodifiableMapView) return _weekWorkTime;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_weekWorkTime);
}

 final  Map<String, Fridge> _fridge;
@override@JsonKey(readValue: readAsMap) Map<String, Fridge> get fridge {
  if (_fridge is EqualUnmodifiableMapView) return _fridge;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_fridge);
}

 final  Map<String, CoffeeMachine> _coffeeMachine;
@override@JsonKey(readValue: readAsMap) Map<String, CoffeeMachine> get coffeeMachine {
  if (_coffeeMachine is EqualUnmodifiableMapView) return _coffeeMachine;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_coffeeMachine);
}


/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCopyWith<_Store> get copyWith => __$StoreCopyWithImpl<_Store>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Store'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('menuFileName', menuFileName))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('logoUrl', logoUrl))..add(DiagnosticsProperty('markerUrl', markerUrl))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('offsetFromUtc', offsetFromUtc))..add(DiagnosticsProperty('scheduleDescription', scheduleDescription))..add(DiagnosticsProperty('weekWorkTime', weekWorkTime))..add(DiagnosticsProperty('fridge', fridge))..add(DiagnosticsProperty('coffeeMachine', coffeeMachine));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Store&&(identical(other.id, id) || other.id == id)&&(identical(other.menuFileName, menuFileName) || other.menuFileName == menuFileName)&&(identical(other.address, address) || other.address == address)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.markerUrl, markerUrl) || other.markerUrl == markerUrl)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.offsetFromUtc, offsetFromUtc) || other.offsetFromUtc == offsetFromUtc)&&(identical(other.scheduleDescription, scheduleDescription) || other.scheduleDescription == scheduleDescription)&&const DeepCollectionEquality().equals(other._weekWorkTime, _weekWorkTime)&&const DeepCollectionEquality().equals(other._fridge, _fridge)&&const DeepCollectionEquality().equals(other._coffeeMachine, _coffeeMachine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,menuFileName,address,name,logoUrl,markerUrl,latitude,longitude,offsetFromUtc,scheduleDescription,const DeepCollectionEquality().hash(_weekWorkTime),const DeepCollectionEquality().hash(_fridge),const DeepCollectionEquality().hash(_coffeeMachine));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Store(id: $id, menuFileName: $menuFileName, address: $address, name: $name, logoUrl: $logoUrl, markerUrl: $markerUrl, latitude: $latitude, longitude: $longitude, offsetFromUtc: $offsetFromUtc, scheduleDescription: $scheduleDescription, weekWorkTime: $weekWorkTime, fridge: $fridge, coffeeMachine: $coffeeMachine)';
}


}

/// @nodoc
abstract mixin class _$StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$StoreCopyWith(_Store value, $Res Function(_Store) _then) = __$StoreCopyWithImpl;
@override @useResult
$Res call({
 String id, String menuFileName, String? address, String? name, String? logoUrl, String? markerUrl, double latitude, double longitude,@DurationConverter() Duration? offsetFromUtc, String? scheduleDescription,@ScheduleConverter() Map<int, ScheduleItem> weekWorkTime,@JsonKey(readValue: readAsMap) Map<String, Fridge> fridge,@JsonKey(readValue: readAsMap) Map<String, CoffeeMachine> coffeeMachine
});




}
/// @nodoc
class __$StoreCopyWithImpl<$Res>
    implements _$StoreCopyWith<$Res> {
  __$StoreCopyWithImpl(this._self, this._then);

  final _Store _self;
  final $Res Function(_Store) _then;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? menuFileName = null,Object? address = freezed,Object? name = freezed,Object? logoUrl = freezed,Object? markerUrl = freezed,Object? latitude = null,Object? longitude = null,Object? offsetFromUtc = freezed,Object? scheduleDescription = freezed,Object? weekWorkTime = null,Object? fridge = null,Object? coffeeMachine = null,}) {
  return _then(_Store(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,menuFileName: null == menuFileName ? _self.menuFileName : menuFileName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,markerUrl: freezed == markerUrl ? _self.markerUrl : markerUrl // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,offsetFromUtc: freezed == offsetFromUtc ? _self.offsetFromUtc : offsetFromUtc // ignore: cast_nullable_to_non_nullable
as Duration?,scheduleDescription: freezed == scheduleDescription ? _self.scheduleDescription : scheduleDescription // ignore: cast_nullable_to_non_nullable
as String?,weekWorkTime: null == weekWorkTime ? _self._weekWorkTime : weekWorkTime // ignore: cast_nullable_to_non_nullable
as Map<int, ScheduleItem>,fridge: null == fridge ? _self._fridge : fridge // ignore: cast_nullable_to_non_nullable
as Map<String, Fridge>,coffeeMachine: null == coffeeMachine ? _self._coffeeMachine : coffeeMachine // ignore: cast_nullable_to_non_nullable
as Map<String, CoffeeMachine>,
  ));
}


}


/// @nodoc
mixin _$ScheduleItem implements DiagnosticableTreeMixin {

@DurationConverter() Duration get start;@DurationConverter() Duration get end;
/// Create a copy of ScheduleItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleItemCopyWith<ScheduleItem> get copyWith => _$ScheduleItemCopyWithImpl<ScheduleItem>(this as ScheduleItem, _$identity);

  /// Serializes this ScheduleItem to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ScheduleItem'))
    ..add(DiagnosticsProperty('start', start))..add(DiagnosticsProperty('end', end));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleItem&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ScheduleItem(start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class $ScheduleItemCopyWith<$Res>  {
  factory $ScheduleItemCopyWith(ScheduleItem value, $Res Function(ScheduleItem) _then) = _$ScheduleItemCopyWithImpl;
@useResult
$Res call({
@DurationConverter() Duration start,@DurationConverter() Duration end
});




}
/// @nodoc
class _$ScheduleItemCopyWithImpl<$Res>
    implements $ScheduleItemCopyWith<$Res> {
  _$ScheduleItemCopyWithImpl(this._self, this._then);

  final ScheduleItem _self;
  final $Res Function(ScheduleItem) _then;

/// Create a copy of ScheduleItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = null,Object? end = null,}) {
  return _then(ScheduleItem(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as Duration,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}

}


/// Adds pattern-matching-related methods to [ScheduleItem].
extension ScheduleItemPatterns on ScheduleItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleItem value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleItem value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@DurationConverter()  Duration start, @DurationConverter()  Duration end)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleItem() when $default != null:
return $default(_that.start,_that.end);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@DurationConverter()  Duration start, @DurationConverter()  Duration end)  $default,) {final _that = this;
switch (_that) {
case _ScheduleItem():
return $default(_that.start,_that.end);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@DurationConverter()  Duration start, @DurationConverter()  Duration end)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleItem() when $default != null:
return $default(_that.start,_that.end);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _ScheduleItem extends ScheduleItem with DiagnosticableTreeMixin {
  const _ScheduleItem({@DurationConverter() required this.start, @DurationConverter() required this.end}): super._();
  factory _ScheduleItem.fromJson(Map<String, dynamic> json) => _$ScheduleItemFromJson(json);

@override@DurationConverter() final  Duration start;
@override@DurationConverter() final  Duration end;

/// Create a copy of ScheduleItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleItemCopyWith<_ScheduleItem> get copyWith => __$ScheduleItemCopyWithImpl<_ScheduleItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleItemToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ScheduleItem'))
    ..add(DiagnosticsProperty('start', start))..add(DiagnosticsProperty('end', end));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleItem&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ScheduleItem(start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class _$ScheduleItemCopyWith<$Res> implements $ScheduleItemCopyWith<$Res> {
  factory _$ScheduleItemCopyWith(_ScheduleItem value, $Res Function(_ScheduleItem) _then) = __$ScheduleItemCopyWithImpl;
@override @useResult
$Res call({
@DurationConverter() Duration start,@DurationConverter() Duration end
});




}
/// @nodoc
class __$ScheduleItemCopyWithImpl<$Res>
    implements _$ScheduleItemCopyWith<$Res> {
  __$ScheduleItemCopyWithImpl(this._self, this._then);

  final _ScheduleItem _self;
  final $Res Function(_ScheduleItem) _then;

/// Create a copy of ScheduleItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = null,Object? end = null,}) {
  return _then(_ScheduleItem(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as Duration,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}


/// @nodoc
mixin _$Fridge implements DiagnosticableTreeMixin {

 String get id; String? get name;
/// Create a copy of Fridge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FridgeCopyWith<Fridge> get copyWith => _$FridgeCopyWithImpl<Fridge>(this as Fridge, _$identity);

  /// Serializes this Fridge to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Fridge'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Fridge&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Fridge(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $FridgeCopyWith<$Res>  {
  factory $FridgeCopyWith(Fridge value, $Res Function(Fridge) _then) = _$FridgeCopyWithImpl;
@useResult
$Res call({
 String id, String? name
});




}
/// @nodoc
class _$FridgeCopyWithImpl<$Res>
    implements $FridgeCopyWith<$Res> {
  _$FridgeCopyWithImpl(this._self, this._then);

  final Fridge _self;
  final $Res Function(Fridge) _then;

/// Create a copy of Fridge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,}) {
  return _then(Fridge(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Fridge].
extension FridgePatterns on Fridge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Fridge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fridge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Fridge value)  $default,){
final _that = this;
switch (_that) {
case _Fridge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Fridge value)?  $default,){
final _that = this;
switch (_that) {
case _Fridge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fridge() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _Fridge():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _Fridge() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Fridge with DiagnosticableTreeMixin implements Fridge {
  const _Fridge({required this.id, this.name});
  factory _Fridge.fromJson(Map<String, dynamic> json) => _$FridgeFromJson(json);

@override final  String id;
@override final  String? name;

/// Create a copy of Fridge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FridgeCopyWith<_Fridge> get copyWith => __$FridgeCopyWithImpl<_Fridge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FridgeToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Fridge'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fridge&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Fridge(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$FridgeCopyWith<$Res> implements $FridgeCopyWith<$Res> {
  factory _$FridgeCopyWith(_Fridge value, $Res Function(_Fridge) _then) = __$FridgeCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name
});




}
/// @nodoc
class __$FridgeCopyWithImpl<$Res>
    implements _$FridgeCopyWith<$Res> {
  __$FridgeCopyWithImpl(this._self, this._then);

  final _Fridge _self;
  final $Res Function(_Fridge) _then;

/// Create a copy of Fridge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,}) {
  return _then(_Fridge(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CoffeeMachine implements DiagnosticableTreeMixin {

 String get id;@JsonKey(name: 'menuFileName') String get menuFileName; String? get name;
/// Create a copy of CoffeeMachine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoffeeMachineCopyWith<CoffeeMachine> get copyWith => _$CoffeeMachineCopyWithImpl<CoffeeMachine>(this as CoffeeMachine, _$identity);

  /// Serializes this CoffeeMachine to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CoffeeMachine'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('menuFileName', menuFileName))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoffeeMachine&&(identical(other.id, id) || other.id == id)&&(identical(other.menuFileName, menuFileName) || other.menuFileName == menuFileName)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,menuFileName,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CoffeeMachine(id: $id, menuFileName: $menuFileName, name: $name)';
}


}

/// @nodoc
abstract mixin class $CoffeeMachineCopyWith<$Res>  {
  factory $CoffeeMachineCopyWith(CoffeeMachine value, $Res Function(CoffeeMachine) _then) = _$CoffeeMachineCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'menuFileName') String menuFileName, String? name
});




}
/// @nodoc
class _$CoffeeMachineCopyWithImpl<$Res>
    implements $CoffeeMachineCopyWith<$Res> {
  _$CoffeeMachineCopyWithImpl(this._self, this._then);

  final CoffeeMachine _self;
  final $Res Function(CoffeeMachine) _then;

/// Create a copy of CoffeeMachine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? menuFileName = null,Object? name = freezed,}) {
  return _then(CoffeeMachine(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,menuFileName: null == menuFileName ? _self.menuFileName : menuFileName // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CoffeeMachine].
extension CoffeeMachinePatterns on CoffeeMachine {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoffeeMachine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoffeeMachine() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoffeeMachine value)  $default,){
final _that = this;
switch (_that) {
case _CoffeeMachine():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoffeeMachine value)?  $default,){
final _that = this;
switch (_that) {
case _CoffeeMachine() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'menuFileName')  String menuFileName,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoffeeMachine() when $default != null:
return $default(_that.id,_that.menuFileName,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'menuFileName')  String menuFileName,  String? name)  $default,) {final _that = this;
switch (_that) {
case _CoffeeMachine():
return $default(_that.id,_that.menuFileName,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'menuFileName')  String menuFileName,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _CoffeeMachine() when $default != null:
return $default(_that.id,_that.menuFileName,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoffeeMachine with DiagnosticableTreeMixin implements CoffeeMachine {
  const _CoffeeMachine({required this.id, @JsonKey(name: 'menuFileName') required this.menuFileName, this.name});
  factory _CoffeeMachine.fromJson(Map<String, dynamic> json) => _$CoffeeMachineFromJson(json);

@override final  String id;
@override@JsonKey(name: 'menuFileName') final  String menuFileName;
@override final  String? name;

/// Create a copy of CoffeeMachine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoffeeMachineCopyWith<_CoffeeMachine> get copyWith => __$CoffeeMachineCopyWithImpl<_CoffeeMachine>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoffeeMachineToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CoffeeMachine'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('menuFileName', menuFileName))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoffeeMachine&&(identical(other.id, id) || other.id == id)&&(identical(other.menuFileName, menuFileName) || other.menuFileName == menuFileName)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,menuFileName,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CoffeeMachine(id: $id, menuFileName: $menuFileName, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CoffeeMachineCopyWith<$Res> implements $CoffeeMachineCopyWith<$Res> {
  factory _$CoffeeMachineCopyWith(_CoffeeMachine value, $Res Function(_CoffeeMachine) _then) = __$CoffeeMachineCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'menuFileName') String menuFileName, String? name
});




}
/// @nodoc
class __$CoffeeMachineCopyWithImpl<$Res>
    implements _$CoffeeMachineCopyWith<$Res> {
  __$CoffeeMachineCopyWithImpl(this._self, this._then);

  final _CoffeeMachine _self;
  final $Res Function(_CoffeeMachine) _then;

/// Create a copy of CoffeeMachine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? menuFileName = null,Object? name = freezed,}) {
  return _then(_CoffeeMachine(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,menuFileName: null == menuFileName ? _self.menuFileName : menuFileName // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
