// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Country _$CountryFromJson(Map<String, dynamic> json) => _Country(
  id: json['id'] as String,
  name: json['name'] as String? ?? '',
  cities:
      (readAsMap(json, 'cities') as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, City.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
  flagImageUrl: json['flagImageUrl'] as String?,
  wikidataId: json['wikidataId'] as String?,
);

Map<String, dynamic> _$CountryToJson(_Country instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'cities': instance.cities.map((k, e) => MapEntry(k, e.toJson())),
  'flagImageUrl': instance.flagImageUrl,
  'wikidataId': instance.wikidataId,
};

_City _$CityFromJson(Map<String, dynamic> json) => _City(
  id: json['id'] as String,
  menuFileName: json['menuFileName'] as String?,
  name: json['name'] as String? ?? '',
  stores:
      (readAsMap(json, 'stores') as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Store.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
  wikidataIds: (json['wikidataIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$CityToJson(_City instance) => <String, dynamic>{
  'id': instance.id,
  'menuFileName': instance.menuFileName,
  'name': instance.name,
  'stores': instance.stores.map((k, e) => MapEntry(k, e.toJson())),
  'wikidataIds': instance.wikidataIds,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};

_Store _$StoreFromJson(Map<String, dynamic> json) => _Store(
  id: json['id'] as String,
  menuFileName: json['menuFileName'] as String,
  address: json['address'] as String?,
  name: json['name'] as String?,
  logoUrl: json['logoUrl'] as String?,
  markerUrl: json['markerUrl'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
  longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
  offsetFromUtc: _$JsonConverterFromJson<String, Duration>(
    json['offsetFromUtc'],
    const DurationConverter().fromJson,
  ),
  scheduleDescription: json['scheduleDescription'] as String?,
  weekWorkTime: json['weekWorkTime'] == null
      ? const {}
      : const ScheduleConverter().fromJson(
          json['weekWorkTime'] as Map<String, dynamic>,
        ),
  fridge:
      (readAsMap(json, 'fridge') as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Fridge.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
  coffeeMachine:
      (readAsMap(json, 'coffeeMachine') as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, CoffeeMachine.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
);

Map<String, dynamic> _$StoreToJson(_Store instance) => <String, dynamic>{
  'id': instance.id,
  'menuFileName': instance.menuFileName,
  'address': instance.address,
  'name': instance.name,
  'logoUrl': instance.logoUrl,
  'markerUrl': instance.markerUrl,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'offsetFromUtc': _$JsonConverterToJson<String, Duration>(
    instance.offsetFromUtc,
    const DurationConverter().toJson,
  ),
  'scheduleDescription': instance.scheduleDescription,
  'weekWorkTime': const ScheduleConverter().toJson(instance.weekWorkTime),
  'fridge': instance.fridge.map((k, e) => MapEntry(k, e.toJson())),
  'coffeeMachine': instance.coffeeMachine.map(
    (k, e) => MapEntry(k, e.toJson()),
  ),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_ScheduleItem _$ScheduleItemFromJson(Map<String, dynamic> json) =>
    _ScheduleItem(
      start: const DurationConverter().fromJson(json['start'] as String),
      end: const DurationConverter().fromJson(json['end'] as String),
    );

Map<String, dynamic> _$ScheduleItemToJson(_ScheduleItem instance) =>
    <String, dynamic>{
      'start': const DurationConverter().toJson(instance.start),
      'end': const DurationConverter().toJson(instance.end),
    };

_Fridge _$FridgeFromJson(Map<String, dynamic> json) =>
    _Fridge(id: json['id'] as String, name: json['name'] as String?);

Map<String, dynamic> _$FridgeToJson(_Fridge instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

_CoffeeMachine _$CoffeeMachineFromJson(Map<String, dynamic> json) =>
    _CoffeeMachine(
      id: json['id'] as String,
      menuFileName: json['menuFileName'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CoffeeMachineToJson(_CoffeeMachine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'menuFileName': instance.menuFileName,
      'name': instance.name,
    };
