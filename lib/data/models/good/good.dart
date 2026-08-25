import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'good.freezed.dart';
part 'good.g.dart';

@freezed
abstract class Good with _$Good {
  const factory Good({
    @JsonKey(name: 'ID') required String id,
    @JsonKey(name: 'Price') required double price,
    @JsonKey(name: 'OldPrice') double? oldPrice,
    @JsonKey(name: 'IsOnePlusOne', readValue: covertIsOnePlusOne)
    @Default(false)
    bool isOnePlusOne,
  }) = _Good;

  factory Good.fromJson(Map<String, dynamic> json) => _$GoodFromJson(json);
}

covertIsOnePlusOne(Map json, String key) {
  return json[key] == 'True';
}
