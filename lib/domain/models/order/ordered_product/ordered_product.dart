import 'package:sosedifedi/data/models/order/order_problem/order_problem.dart';
import 'package:sosedifedi/domain/models/order/ordered_modifier/ordered_modifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ordered_product.freezed.dart';

@freezed
abstract class OrderedProduct with _$OrderedProduct {
  const factory OrderedProduct({
    required String id,
    required String name,
    required double price,
    required List<OrderedModifier> modifiers,
    required double amount,
    required double quantity,
    required List<OrderProblem>? orderProblem,
    String? image,
    String? currencySymbol,
  }) = _OrderedProduct;
}
