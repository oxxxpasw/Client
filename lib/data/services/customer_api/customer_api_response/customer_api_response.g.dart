// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerApiPurchase _$CustomerApiPurchaseFromJson(Map<String, dynamic> json) =>
    _CustomerApiPurchase(
      purchase: Purchase.fromJson(json['purchase'] as Map<String, dynamic>),
      activeCashierShiftId: json['activeCashierShiftId'] as String?,
      bonusProgramTypesInfo:
          (json['bonusProgramTypesInfo'] as List<dynamic>?)
              ?.map((e) => BonusProgramType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CustomerApiPurchaseToJson(
  _CustomerApiPurchase instance,
) => <String, dynamic>{
  'purchase': instance.purchase.toJson(),
  'activeCashierShiftId': instance.activeCashierShiftId,
  'bonusProgramTypesInfo': instance.bonusProgramTypesInfo
      .map((e) => e.toJson())
      .toList(),
};

_Purchase _$PurchaseFromJson(Map<String, dynamic> json) => _Purchase(
  id: json['id'] as String?,
  date: DateTime.parse(json['date'] as String),
  summ: (json['summ'] as num).toDouble(),
  summWithoutDiscount: (json['summWithoutDiscount'] as num).toDouble(),
  storeId: json['storeId'] as String,
  positions: (json['positions'] as List<dynamic>)
      .map((e) => PurchasePosition.fromJson(e as Map<String, dynamic>))
      .toList(),
  bonusesSumm: (json['bonusesSumm'] as num?)?.toDouble() ?? 0.0,
  bonusesCanSpent: (json['bonusesCanSpent'] as num?)?.toDouble() ?? 0.0,
  totalBonuses: (json['totalBonuses'] as num?)?.toDouble() ?? 0.0,
  checkNumber: json['checkNumber'] as String?,
  discountLog:
      (json['DiscountLog'] as List<dynamic>?)
          ?.map((e) => DiscountLogItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  cardNumber: (json['cardNumber'] as num?)?.toInt(),
);

Map<String, dynamic> _$PurchaseToJson(_Purchase instance) => <String, dynamic>{
  'id': instance.id,
  'date': instance.date.toIso8601String(),
  'summ': instance.summ,
  'summWithoutDiscount': instance.summWithoutDiscount,
  'storeId': instance.storeId,
  'positions': instance.positions.map((e) => e.toJson()).toList(),
  'bonusesSumm': instance.bonusesSumm,
  'bonusesCanSpent': instance.bonusesCanSpent,
  'totalBonuses': instance.totalBonuses,
  'checkNumber': instance.checkNumber,
  'DiscountLog': instance.discountLog.map((e) => e.toJson()).toList(),
  'cardNumber': instance.cardNumber,
};

_PurchasePosition _$PurchasePositionFromJson(Map<String, dynamic> json) =>
    _PurchasePosition(
      lineNumber: (json['lineNumber'] as num?)?.toInt() ?? 0,
      productCode: json['productCode'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      summ: (json['summ'] as num).toDouble(),
      summWithoutDiscount: (json['summWithoutDiscount'] as num).toDouble(),
      groupCode: json['groupCode'] as String?,
      barCode: json['barCode'] as String?,
      bonusesSumm: (json['bonusesSumm'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$PurchasePositionToJson(_PurchasePosition instance) =>
    <String, dynamic>{
      'lineNumber': instance.lineNumber,
      'productCode': instance.productCode,
      'quantity': instance.quantity,
      'price': instance.price,
      'summ': instance.summ,
      'summWithoutDiscount': instance.summWithoutDiscount,
      'groupCode': instance.groupCode,
      'barCode': instance.barCode,
      'bonusesSumm': instance.bonusesSumm,
    };

_BonusProgramType _$BonusProgramTypeFromJson(Map<String, dynamic> json) =>
    _BonusProgramType(
      bonusProgramTypeName: json['bonusProgramTypeName'] as String?,
      bonusesCurrentActiveBalance: (json['bonusesCurrentActiveBalance'] as num?)
          ?.toDouble(),
      bonusesCanSpent: (json['bonusesCanSpent'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BonusProgramTypeToJson(_BonusProgramType instance) =>
    <String, dynamic>{
      'bonusProgramTypeName': instance.bonusProgramTypeName,
      'bonusesCurrentActiveBalance': instance.bonusesCurrentActiveBalance,
      'bonusesCanSpent': instance.bonusesCanSpent,
    };

_DiscountLogItem _$DiscountLogItemFromJson(Map<String, dynamic> json) =>
    _DiscountLogItem(
      type: $enumDecodeNullable(
        _$DiscountLogTypeEnumMap,
        json['Type'],
        unknownValue: DiscountLogType.unknown,
      ),
      discountValue: (json['DiscountValue'] as num?)?.toDouble(),
      line: json['Line'] == null
          ? null
          : PurchasePosition.fromJson(json['Line'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DiscountLogItemToJson(_DiscountLogItem instance) =>
    <String, dynamic>{
      'Type': _$DiscountLogTypeEnumMap[instance.type],
      'DiscountValue': instance.discountValue,
      'Line': instance.line?.toJson(),
    };

const _$DiscountLogTypeEnumMap = {
  DiscountLogType.auto: 1,
  DiscountLogType.manual: 2,
  DiscountLogType.autoProduct: 3,
  DiscountLogType.manualProduct: 4,
  DiscountLogType.card: 5,
  DiscountLogType.bonuses: 6,
  DiscountLogType.summ: 7,
  DiscountLogType.autoSummOnProduct: 8,
  DiscountLogType.minCost: 16,
  DiscountLogType.maxDiscount: 32,
  DiscountLogType.disableSale: 64,
  DiscountLogType.unknown: 'unknown',
};
