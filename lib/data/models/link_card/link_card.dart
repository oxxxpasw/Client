import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_card.freezed.dart';
part 'link_card.g.dart';

@Freezed(toJson: true)
abstract class LinkCardRequest with _$LinkCardRequest {
  const factory LinkCardRequest({
    required String subId,
    required String paymentType,
    required String token,
  }) = _LinkCardRequest;
}

@Freezed(toJson: false)
@freezed
abstract class LinkCardResponse with _$LinkCardResponse {
  const factory LinkCardResponse({
    Uri? data,
    String? message,
    String? status,
  }) = _LinkCardResponse;

  factory LinkCardResponse.fromJson(Map<String, dynamic> json) =>
      _$LinkCardResponseFromJson(json);
}
