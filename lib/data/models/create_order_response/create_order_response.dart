import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'create_order_response.freezed.dart';
part 'create_order_response.g.dart';

@freezed
abstract class CreateOrderResponse with _$CreateOrderResponse {
  const factory CreateOrderResponse({
    String? publicId,
    required String orderId,
  }) = _CreateOrderResponse;

  factory CreateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseFromJson(json);
}
