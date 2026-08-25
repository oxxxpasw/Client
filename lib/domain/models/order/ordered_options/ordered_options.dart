import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ordered_options.freezed.dart';

@freezed
abstract class OrderedOption with _$OrderedOption {
  const factory OrderedOption({
    required String name,
    required String id,
    required double price,
  }) = _OrderedOption;
}
