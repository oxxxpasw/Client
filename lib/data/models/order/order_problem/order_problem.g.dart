// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderProblem _$OrderProblemFromJson(Map<String, dynamic> json) =>
    _OrderProblem(
      problemType: $enumDecode(_$ProblemTypeEnumMap, json['problem_type']),
      problemData: OrderProblemData.fromJson(
        json['problem_data'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$OrderProblemToJson(_OrderProblem instance) =>
    <String, dynamic>{
      'problem_type': _$ProblemTypeEnumMap[instance.problemType]!,
      'problem_data': instance.problemData.toJson(),
    };

const _$ProblemTypeEnumMap = {ProblemType.outOfStock: 'outOfStock'};

_OrderProblemData _$OrderProblemDataFromJson(Map<String, dynamic> json) =>
    _OrderProblemData(
      requestedQuantity: (parseNum(json, 'requested_quantity') as num).toInt(),
      stockQuantity: (parseNum(json, 'stock_quantity') as num).toInt(),
    );

Map<String, dynamic> _$OrderProblemDataToJson(_OrderProblemData instance) =>
    <String, dynamic>{
      'requested_quantity': instance.requestedQuantity,
      'stock_quantity': instance.stockQuantity,
    };
