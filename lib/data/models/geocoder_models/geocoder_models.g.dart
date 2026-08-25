// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoder_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeocoderLocation _$GeocoderLocationFromJson(Map<String, dynamic> json) =>
    _GeocoderLocation(
      cityName: json['city_name'] as String?,
      center: (json['center'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$GeocoderLocationToJson(_GeocoderLocation instance) =>
    <String, dynamic>{
      'city_name': instance.cityName,
      'center': instance.center,
    };
