import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/models/user_data_response/user_data_response.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_response/customer_api_response.dart';

part 'order_response.freezed.dart';

const kBonusesPaymentType = 'crm4retail';

@freezed
abstract class OrderResponse with _$OrderResponse {
  const OrderResponse._();

  const factory OrderResponse({
    required String id,
    int? orderId,
    required double bonusesToPay,
    required List<OrderItem> products,
    required String phone,
    String? comment,
    UserDataResponse? userData,
    required DateTime time,
    required String? paymentType,
    required String? paymentTypeType,
    required double totalPrice,
    required double totalPriceWithoutDiscount,
    required CustomerApiPurchase? purchase,
    required Store store,
    required String type,
    required bool isCoffee,
    required String? deviceId,
  }) = _OrderResponse;

  Map<String, dynamic> toJson([bool toSend = false]) {
    return {
      'id': id,
      'purchase_id': purchase?.purchase.id,
      'card_number': purchase?.purchase.cardNumber.toString(),
      'products': products.map((e) => e.toJson()).toList(),
      'phone': phone,
      'userData': {
        if (userData != null) ...userData!.toJson(),
      },
      'payment_method': paymentType,
      'deliveryDatetime': time.toIso8601String(),
      'point': store.id,
      'point_data': {
        'id': store.id,
        'menuFileName': store.menuFileName,
        'coffeeFileName':
            store.coffeeMachine.entries.firstOrNull?.value.menuFileName,
        'name': store.name,
        'logoUrl': store.logoUrl,
        'address': store.address,
      },
      'comment': comment,
      // 'total_price': totalPrice,
      // 'total_price_without_discount': totalPriceWithoutDiscount,
      'isCoffee': isCoffee,
      'device_id': deviceId,
      'payments': [
        if (paymentType != null)
          {
            'name': paymentType,
            'type': paymentTypeType,
            'sum': totalPrice,
          },
        {
          'name': kBonusesPaymentType,
          'type': kBonusesPaymentType,
          'sum': bonusesToPay,
          'payload': {
            'id': purchase?.purchase.id,
          }
        },
        // {type: 'tinkoff_qr', summ: <какая-то сумма>, payload { какие-то данные для проверки у них } }
      ]
    };
  }
}

@freezed
abstract class OrderItem with _$OrderItem {
  const OrderItem._();

  const factory OrderItem({
    required String id,
    required num amount,
    double? price,
    double? priceWithoutDiscount,
    String? name,
    @Default([]) List<String> barcodes,
    @Default([]) List<ModifierGroupOrderItem> modifiers,
    String? currencySymbol,
  }) = _OrderItem;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'quantity': amount,
      'name': name,
      'price': price,
      'price_without_discount': priceWithoutDiscount,
      'modifiers': modifiers.map((e) => e.toJson()).toList(),
      'barcodes': barcodes,
      'currency_symbol': currencySymbol,
    };
  }
}

@freezed
abstract class ModifierGroupOrderItem with _$ModifierGroupOrderItem {
  const ModifierGroupOrderItem._();

  const factory ModifierGroupOrderItem({
    required String id,
    String? name,
    @Default([]) List<ModifierOrderItem> modifiers,
  }) = _ModifierGroupOrderItem;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': 1,
      'name': name,
      'options': modifiers.map((e) => e.toJson()).toList()
    };
  }
}

@freezed
abstract class ModifierOrderItem with _$ModifierOrderItem {
  const ModifierOrderItem._();

  const factory ModifierOrderItem({
    required String id,
    required double price,
    required num amount,
    String? name,
  }) = _ModifierOrderItem;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'quantity': amount > 0 ? amount : 1,
      'price': price,
    };
  }
}
