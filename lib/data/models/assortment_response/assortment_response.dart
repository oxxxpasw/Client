import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/data/models/store_quantity_response/store_quantity_response.dart';

part 'assortment_response.freezed.dart';
part 'assortment_response.g.dart';
part 'group/group.dart';
part 'modifier/modifier.dart';
part 'modifier_group/modifier_group.dart';
part 'product/product.dart';

@freezed
abstract class AssortmentResponse with _$AssortmentResponse {
  const factory AssortmentResponse({
    DateTime? datetime,
    @Default([]) List<GroupResponse> groups,
    @Default([]) List<ModifierGroupResponse> modifiersGroups,
    @Default([]) List<ProductResponse> products,
    @Default([]) List<ModifierResponse> modifiers,
  }) = _AssortmentResponse;

  factory AssortmentResponse.fromJson(Map<String, dynamic> json) =>
      _$AssortmentResponseFromJson(json);
}
