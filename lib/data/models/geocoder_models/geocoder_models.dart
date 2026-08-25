import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geocoder_models.freezed.dart';
part 'geocoder_models.g.dart';

@freezed
abstract class GeocoderLocation with _$GeocoderLocation {
  const GeocoderLocation._();

  const factory GeocoderLocation({
    required String? cityName,
    required List<double> center,
  }) = _GeocoderLocation;

  factory GeocoderLocation.fromJson(Map<String, dynamic> json) =>
      _$GeocoderLocationFromJson(json);
}
