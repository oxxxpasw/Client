import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_data.freezed.dart';

@freezed
abstract class OrderData with _$OrderData {
  const factory OrderData({
    required DateTime pickUpDate,
    required PaymentType paymentType,
    String? comment,
    @Default(0.0) double bonusesSpend,
    @Default(false) bool offerCheck,
  }) = _OrderData;
}
