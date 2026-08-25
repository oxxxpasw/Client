import 'package:sosedifedi/data/models/bonus_card/bonus_card_model/bonus_card_model.dart';
import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'customer_account_model.freezed.dart';

@freezed
abstract class CustomerAccountModel with _$CustomerAccountModel {
  const factory CustomerAccountModel({
    @Default([]) List<BonusCardModel> cards,
    @Default([]) List<PromotionShortInfo> promotions,
  }) = _CustomerAccountModel;
}
