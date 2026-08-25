import 'package:sosedifedi/data/models/bonus_card/bonus_card_response/bonus_card_response.dart';
import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'customer_account_response.freezed.dart';
part 'customer_account_response.g.dart';

@freezed
abstract class CustomerAccountResponse with _$CustomerAccountResponse {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory CustomerAccountResponse({
    @Default([]) List<BonusCardResponse> cards,
    @Default([]) List<PromotionShortInfo> promotions,
  }) = _CustomerAccountResponse;

  factory CustomerAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerAccountResponseFromJson(json);
}
