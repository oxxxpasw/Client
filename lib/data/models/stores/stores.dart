import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stores.freezed.dart';
part 'stores.g.dart';

@freezed
abstract class Country with _$Country {
  const Country._();

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory Country({
    required String id,
    @Default('') String name,
    @JsonKey(readValue: readAsMap) @Default({}) Map<String, City> cities,
    String? flagImageUrl,
    String? wikidataId,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  @JsonKey(ignore: true)
  List<City> get cityList => cities.entries
      .map((e) => e.value)
      .sortedBy((element) => element.name)
      .toList();
}

@freezed
abstract class City with _$City {
  const City._();

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory City({
    required String id,
    String? menuFileName,
    @Default('') String name,
    @JsonKey(readValue: readAsMap) @Default({}) Map<String, Store> stores,
    List<String>? wikidataIds,
    double? latitude,
    double? longitude,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  ({double lat, double lng})? get coordinates {
    if (longitude == null || latitude == null) {
      return null;
    }
    return (
      lat: latitude!,
      lng: longitude!,
    );
  }

  @JsonKey(ignore: true)
  List<Store> get storeList => stores.entries
      .map((e) => e.value)
      .sortedBy((element) => element.address ?? '')
      .toList();
}

@freezed
abstract class Store with _$Store {
  const Store._();

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory Store({
    required String id,
    required String menuFileName,
    String? address,
    String? name,
    String? logoUrl,
    String? markerUrl,
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
    @DurationConverter() Duration? offsetFromUtc,
    String? scheduleDescription,
    @ScheduleConverter() @Default({}) Map<int, ScheduleItem> weekWorkTime,
    @JsonKey(readValue: readAsMap) @Default({}) Map<String, Fridge> fridge,
    @JsonKey(readValue: readAsMap)
    @Default({})
    Map<String, CoffeeMachine> coffeeMachine,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  bool isStoreOpen(DateTime dateTime) {
    final date = dateTime.toUtc().add(offsetFromUtc ?? const Duration());
    return weekWorkTime[date.weekday]?.includes(date) ?? false;
  }
}

Object? readAsMap(Map<dynamic, dynamic> json, String key) {
  final data = json[key];
  if (data is Iterable) {
    final result = {for (var el in data) el['id'] as String: el};
    return result;
  }
  return data;
}

@freezed
abstract class ScheduleItem with _$ScheduleItem {
  const ScheduleItem._();

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ScheduleItem({
    @DurationConverter() required Duration start,
    @DurationConverter() required Duration end,
  }) = _ScheduleItem;

  factory ScheduleItem.fromJson(Map<String, dynamic> json) =>
      _$ScheduleItemFromJson(json);

  @JsonKey(ignore: true)
  bool includes(
    DateTime date,
  ) {
    final current = durationFromDayDateTime(date);
    return current >= start && current <= end;
  }

  @JsonKey(ignore: true)
  Duration durationFromDayDateTime(DateTime dateTime) => Duration(
        hours: dateTime.hour,
        minutes: dateTime.minute,
        seconds: dateTime.second,
      );
}

class DurationConverter extends JsonConverter<Duration, String> {
  const DurationConverter();

  @override
  Duration fromJson(String json) {
    try {
      final match = RegExp(r'(\d{2}):(\d{2}):(\d{2})').firstMatch(json);
      if (match == null) {
        throw Exception();
      }
      return Duration(
        hours: int.tryParse(match.group(1)!) ?? 0,
        minutes: int.tryParse(match.group(2)!) ?? 0,
        seconds: int.tryParse(match.group(3)!) ?? 0,
      );
    } catch (_) {
      return const Duration();
    }
  }

  @override
  String toJson(Duration object) {
    String pad(int value) => value.toString().padLeft(2);

    var seconds = object.inSeconds;
    final hours = seconds ~/ 3600;
    seconds -= hours * 3600;
    final minutes = seconds ~/ 60;
    seconds -= hours * 60;
    return '${pad(hours)}:${pad(minutes)}:${pad(seconds)}';
  }
}

class ScheduleConverter
    extends JsonConverter<Map<int, ScheduleItem>, Map<String, dynamic>> {
  const ScheduleConverter();

  @override
  Map<int, ScheduleItem> fromJson(Map<String, dynamic> json) {
    try {
      return Map.fromEntries(
        json.entries.map((e) {
          try {
            return MapEntry(
              _parseWeekDay(e.key),
              ScheduleItem(
                start: const DurationConverter().fromJson(e.value['start']),
                end: const DurationConverter().fromJson(e.value['end']),
              ),
            );
          } catch (e) {
            return null;
          }
        }).whereType<MapEntry<int, ScheduleItem>>(),
      );
    } catch (_) {
      return {};
    }
  }

  int _parseWeekDay(String name) {
    switch (name) {
      case 'monday':
        return DateTime.monday;
      case 'tuesday':
        return DateTime.tuesday;
      case 'wednesday':
        return DateTime.wednesday;
      case 'thursday':
        return DateTime.thursday;
      case 'friday':
        return DateTime.friday;
      case 'saturday':
        return DateTime.saturday;
      case 'sunday':
        return DateTime.sunday;
      default:
        return DateTime.monday;
    }
  }

  @override
  Map<String, dynamic> toJson(Map<int, ScheduleItem> object) {
    return object.map((key, value) => MapEntry(key.toString(), value.toJson()));
  }
}

@freezed
abstract class Fridge with _$Fridge {
  const factory Fridge({
    required String id,
    String? name,
  }) = _Fridge;

  factory Fridge.fromJson(Map<String, dynamic> json) => _$FridgeFromJson(json);
}

@freezed
abstract class CoffeeMachine with _$CoffeeMachine {
  const factory CoffeeMachine({
    required String id,
    @JsonKey(name: 'menuFileName') required String menuFileName,
    String? name,
  }) = _CoffeeMachine;

  factory CoffeeMachine.fromJson(Map<String, dynamic> json) =>
      _$CoffeeMachineFromJson(json);
}
