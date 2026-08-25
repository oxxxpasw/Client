import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_problem.freezed.dart';
part 'order_problem.g.dart';

@freezed
abstract class OrderProblem with _$OrderProblem {
  const factory OrderProblem({
    required ProblemType problemType,
    required OrderProblemData problemData,
  }) = _OrderProblem;

  factory OrderProblem.fromJson(Map<String, dynamic> json) =>
      _$OrderProblemFromJson(json);
}

@freezed
abstract class OrderProblemData with _$OrderProblemData {
  const factory OrderProblemData({
    @JsonKey(readValue: parseNum) required int requestedQuantity,
    @JsonKey(readValue: parseNum) required int stockQuantity,
  }) = _OrderProblemData;

  factory OrderProblemData.fromJson(Map<String, dynamic> json) =>
      _$OrderProblemDataFromJson(json);
}

num? parseNum(Map json, String name) {
  return num.tryParse(json[name]);
}

enum ProblemType { outOfStock }
