import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_quantity_response.freezed.dart';
part 'store_quantity_response.g.dart';

@freezed
abstract class StoreQuantityResponse with _$StoreQuantityResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory StoreQuantityResponse({
    required String storeId,
    double? quantity,
    String? quantityText,
  }) = _StoreQuantity;

  factory StoreQuantityResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreQuantityResponseFromJson(json);
}
