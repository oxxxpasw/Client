import 'package:sosedifedi/data/models/bonus_card/bonus_card_response/bonus_card_response.dart';

abstract class BonusCardTestData {
  static const cardNumber = 903;

  static const tempCardNumber = 904;

  static const bonusCard = BonusCardResponse(
    cardNumber: cardNumber,
    holdedBonuses: 0.0,
    cardType: CardType.simple,
    bonuses: 100.0,
    purchasesSum: 1000,
    cardProperties: [
      BonusCardProperty(
        id: 'BonusCardPropertyId1',
        value: '5',
        localName: 'BonusCardPropertyId1',
        apiName: BonusCardPropertyApiName.cashback,
      ),
      BonusCardProperty(
        id: 'BonusCardPropertyId2',
        value: '0',
        localName: 'BonusCardPropertyId2',
        apiName: BonusCardPropertyApiName.purchasesSumPrevious,
      ),
      BonusCardProperty(
        id: 'BonusCardPropertyId3',
        value: '7000',
        localName: 'BonusCardPropertyId3',
        apiName: BonusCardPropertyApiName.purchasesSumNext,
      ),
    ],
  );
}
