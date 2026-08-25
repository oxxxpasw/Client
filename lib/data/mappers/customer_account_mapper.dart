import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/bonus_card/bonus_card_model/bonus_card_model.dart';
import 'package:sosedifedi/data/models/bonus_card/bonus_card_response/bonus_card_response.dart';
import 'package:sosedifedi/data/models/customer_account_response/customer_account_response.dart';
import 'package:sosedifedi/domain/models/customer_account_model/customer_account_model.dart';

@singleton
class CustomerAccountModelMapper {
  const CustomerAccountModelMapper();

  CustomerAccountModel mapFromResponse(CustomerAccountResponse response) {
    return CustomerAccountModel(
      cards: response.cards
          .map(_mapBonusCardFromResponse)
          .whereType<BonusCardModel>()
          .toList(),
      promotions: response.promotions,
    );
  }

  BonusCardModel? _mapBonusCardFromResponse(
      BonusCardResponse? bonusCardResponse) {
    if (bonusCardResponse == null) {
      return null;
    }
    return _mapToOrderResponse(bonusCardResponse);
  }

  BonusCardModel _mapToOrderResponse(BonusCardResponse bonusCardResponse) {
    // assert(bonusCardResponse.cardProperties != null);

    return BonusCardModel(
      bonuses: bonusCardResponse.bonuses,
      holdedBonuses: bonusCardResponse.holdedBonuses,
      bonusProgramName: bonusCardResponse.bonusProgramName,
      cardNumber: '+${bonusCardResponse.cardNumber}',
      cardType: bonusCardResponse.cardType,
      name: _convertTypeToName(bonusCardResponse.cardType),
      cashback: bonusCardResponse.cardProperties
          ?.firstWhereOrNull(
              (element) => element.apiName == BonusCardPropertyApiName.cashback)
          ?.value,
      level: bonusCardResponse.cardProperties
          ?.firstWhereOrNull(
              (element) => element.apiName == BonusCardPropertyApiName.level)
          ?.value,
      nextRecount: bonusCardResponse.cardProperties
          ?.firstWhereOrNull((element) =>
              element.apiName == BonusCardPropertyApiName.nextRecount)
          ?.value,
      bonusProgramAccounts: bonusCardResponse.bonusProgramAccounts
          .whereNotNull()
          .map(_mapFromBonusProgramAccountResponse)
          .toList(),
    );
  }

  BonusProgramAccount _mapFromBonusProgramAccountResponse(
      BonusProgramAccountResponse bonusCardResponse) {
    return BonusProgramAccount(
      name: bonusCardResponse.name,
      bonuses: bonusCardResponse.bonuses,
      holdedBonuses: bonusCardResponse.holdedBonuses,
      bonusProgramId: bonusCardResponse.bonusProgramId,
      comment: bonusCardResponse.comment,
    );
  }

  String _convertTypeToName(CardType cardType) {
    switch (cardType) {
      case CardType.simple:
        return 'Красная карта';
      case CardType.bronze:
        return 'Бронзовая карта';
      case CardType.silver:
        return 'Серебряная карта';
      case CardType.gold:
        return 'Золотая карта';
      case CardType.superCard:
        return 'Платиновая карта';
      case CardType.discount:
        return 'Дисконтная карта';
      case CardType.certificate:
        return 'Кредитная карта';
      case CardType.administrator:
        return 'Черная карта';
    }
  }
}
