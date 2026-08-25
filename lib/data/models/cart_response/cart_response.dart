import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_response/customer_api_response.dart';

part 'cart_response.freezed.dart';
part 'cart_response.g.dart';

@freezed
abstract class CustomerApiRequest with _$CustomerApiRequest {
  const CustomerApiRequest._();

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory CustomerApiRequest({
    required DateTime date,
    required double summ,
    required double summWithoutDiscount,
    required String storeId,
    String? token,
    required List<PurchasePosition> positions,
    @Default(0.0) double bonusesSumm,
  }) = _CustomerApiRequest;

  factory CustomerApiRequest.fromJson(Map<String, dynamic> json) =>
      _$CustomerApiRequestFromJson(json);
}
