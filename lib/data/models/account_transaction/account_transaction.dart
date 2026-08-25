import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_transaction.freezed.dart';
part 'account_transaction.g.dart';

enum TransactionType {
  @JsonValue(1)
  purchase,
  @JsonValue(2)
  directBonusCharge,
  @JsonValue(3)
  bonusBurn,
  @JsonValue(4)
  smmBonus,
  @JsonValue(5)
  purchaseReturn,
  @JsonValue(6)
  replaceCard,
  @JsonValue(255)
  another,
}

@freezed
abstract class AccountTransactionsResponse with _$AccountTransactionsResponse {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory AccountTransactionsResponse({
    required List<AccountTransaction> transactions,
  }) = _AccountTransactionsResponse;

  factory AccountTransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountTransactionsResponseFromJson(json);
}

@freezed
abstract class AccountTransaction with _$AccountTransaction {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory AccountTransaction({
    required String user,
    String? purchase,
    required DateTime date,
    required double value,
    @JsonKey(
      unknownEnumValue: TransactionType.another,
      defaultValue: TransactionType.another,
    )
    required TransactionType transactionType,
    required double userBonusesSnapshot,
    required double bonusPercent,
    DateTime? dateActiveBonus,
    String? accountBonus,
    String? bonus,
    @JsonKey(name: 'ID') required String id,
  }) = _AccountTransaction;

  factory AccountTransaction.fromJson(Map<String, dynamic> json) =>
      _$AccountTransactionFromJson(json);
}
