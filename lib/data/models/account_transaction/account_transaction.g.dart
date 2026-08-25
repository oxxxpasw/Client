// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountTransactionsResponse _$AccountTransactionsResponseFromJson(
  Map<String, dynamic> json,
) => _AccountTransactionsResponse(
  transactions: (json['Transactions'] as List<dynamic>)
      .map((e) => AccountTransaction.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AccountTransactionsResponseToJson(
  _AccountTransactionsResponse instance,
) => <String, dynamic>{
  'Transactions': instance.transactions.map((e) => e.toJson()).toList(),
};

_AccountTransaction _$AccountTransactionFromJson(Map<String, dynamic> json) =>
    _AccountTransaction(
      user: json['User'] as String,
      purchase: json['Purchase'] as String?,
      date: DateTime.parse(json['Date'] as String),
      value: (json['Value'] as num).toDouble(),
      transactionType:
          $enumDecodeNullable(
            _$TransactionTypeEnumMap,
            json['TransactionType'],
            unknownValue: TransactionType.another,
          ) ??
          TransactionType.another,
      userBonusesSnapshot: (json['UserBonusesSnapshot'] as num).toDouble(),
      bonusPercent: (json['BonusPercent'] as num).toDouble(),
      dateActiveBonus: json['DateActiveBonus'] == null
          ? null
          : DateTime.parse(json['DateActiveBonus'] as String),
      accountBonus: json['AccountBonus'] as String?,
      bonus: json['Bonus'] as String?,
      id: json['ID'] as String,
    );

Map<String, dynamic> _$AccountTransactionToJson(_AccountTransaction instance) =>
    <String, dynamic>{
      'User': instance.user,
      'Purchase': instance.purchase,
      'Date': instance.date.toIso8601String(),
      'Value': instance.value,
      'TransactionType': _$TransactionTypeEnumMap[instance.transactionType]!,
      'UserBonusesSnapshot': instance.userBonusesSnapshot,
      'BonusPercent': instance.bonusPercent,
      'DateActiveBonus': instance.dateActiveBonus?.toIso8601String(),
      'AccountBonus': instance.accountBonus,
      'Bonus': instance.bonus,
      'ID': instance.id,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.purchase: 1,
  TransactionType.directBonusCharge: 2,
  TransactionType.bonusBurn: 3,
  TransactionType.smmBonus: 4,
  TransactionType.purchaseReturn: 5,
  TransactionType.replaceCard: 6,
  TransactionType.another: 255,
};
