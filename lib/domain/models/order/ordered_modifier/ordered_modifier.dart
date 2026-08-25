import 'package:sosedifedi/domain/models/order/ordered_options/ordered_options.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ordered_modifier.freezed.dart';

@freezed
abstract class OrderedModifier with _$OrderedModifier {
  const factory OrderedModifier({
    required String name,
    required List<OrderedOption> options,
  }) = _OrderedModifier;
}
