import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'apple_pay_result.freezed.dart';
part 'apple_pay_result.g.dart';

@freezed
abstract class ApplePayResult with _$ApplePayResult {
  const factory ApplePayResult(
    String? token,
  ) = _ApplePayResult;

  factory ApplePayResult.fromJson(Map<String, dynamic> json) =>
      _$ApplePayResultFromJson(json);
}
