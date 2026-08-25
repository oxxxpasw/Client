import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'productEntityModel.freezed.dart';

@freezed
abstract class ProductEntityModel with _$ProductEntityModel {
  const factory ProductEntityModel({
    required String id,
    required int amount,
    required int uniqueId,
    required List<ModifierEntityModel> modifiers,
  }) = _ProductEntityModel;
}

@freezed
abstract class ModifierEntityModel with _$ModifierEntityModel {
  const factory ModifierEntityModel({
    required String id,
    required int uniqueId,
    required List<OptionEntityModel> options,
  }) = _ModifierEntityModel;
}

@freezed
abstract class OptionEntityModel with _$OptionEntityModel {
  const factory OptionEntityModel({
    required String id,
    required int amount,
    required int uniqueId,
  }) = _OptionEntityModel;
}
