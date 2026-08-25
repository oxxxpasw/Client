import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/payment_model/payment_model.dart';
import 'package:sosedifedi/presentation/app_environment.dart';

part 'payment_type.freezed.dart';
part 'payment_type.g.dart';

@Freezed(unionKey: 'type', fallbackUnion: 'unknown')
sealed class PaymentType with _$PaymentType {
  const PaymentType._();

  @FreezedUnionValue('CASH')
  const factory PaymentType.cash({
    required String id,
    @Default('') String name,
    String? imageName,
  }) = CashPaymentType;

  @FreezedUnionValue('CARD')
  const factory PaymentType.card({
    required String id,
    @Default('') String name,
    String? imageName,
  }) = CardPaymentType;

  @FreezedUnionValue('SBP')
  const factory PaymentType.sbp({
    required String id,
    @Default('') String name,
    String? imageName,
  }) = SbpPaymentType;

  @FreezedUnionValue('LINKED_CARD')
  const factory PaymentType.linkedCard({
    required String id,
    @Default('') String name,
    String? imageName,
    required LinkedCardData data,
  }) = LinkedCardPaymentType;

  @FreezedUnionValue('REGISTER_CARD')
  const factory PaymentType.registerCard({
    required String id,
    @Default('') String name,
    String? imageName,
  }) = RegisterCardPaymentType;

  @FreezedUnionValue('APPLE_PAY')
  const factory PaymentType.applePay({
    required String id,
    @Default('') String name,
    String? imageName,
  }) = ApplePayPaymentType;

  @FreezedUnionValue('UNKNOWN')
  const factory PaymentType.unknown({
    required String id,
    @Default('') String name,
    String? imageName,
  }) = UnknownPaymentType;

  factory PaymentType.fromJson(Map<String, dynamic> json) =>
      _$PaymentTypeFromJson(json);

  String? get imageUrl => imageName != null
      ? '${GetIt.I.get<AppEnvironment>().paymentServiceEndpoint}static/$imageName'
      : null;

  PaymentMethod get type => switch (this) {
        CashPaymentType() => PaymentMethod.cash,
        CardPaymentType() => PaymentMethod.card,
        SbpPaymentType() => PaymentMethod.sbp,
        LinkedCardPaymentType() => PaymentMethod.linkedCard,
        ApplePayPaymentType() => PaymentMethod.applePay,
        _ => PaymentMethod.unknown
      };
}

@freezed
abstract class LinkedCardData with _$LinkedCardData {
  const factory LinkedCardData({
    required String cardId,
    required String cardNumber,
    @Default(LinkedCardType.unknown)
    @JsonKey(unknownEnumValue: LinkedCardType.unknown)
    LinkedCardType cardType,
  }) = _LinkedCardData;

  factory LinkedCardData.fromJson(Map<String, dynamic> json) =>
      _$LinkedCardDataFromJson(json);
}

enum LinkedCardType {
  @JsonValue('VISA')
  visa,
  @JsonValue('MASTERCARD')
  mastercard,
  @JsonValue('MIR')
  mir,
  @JsonValue('UNIONPAY')
  unionpay,
  unknown,
}
