import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_response/customer_api_response.dart';
import 'package:sosedifedi/domain/models/cart/cart_model.dart';
import 'package:sosedifedi/domain/models/payment/payment.dart';
import 'package:sosedifedi/domain/models/user_data/user_data.dart';

part 'order_model.freezed.dart';

@freezed
abstract class OrderModel with _$OrderModel {
  const OrderModel._();

  const factory OrderModel(
      {required String id,
      String? externalId,
      String? publicId,
      required Cart cart,
      required Store store,
      required String phone,
      UserData? userData,
      required DateTime date,
      PaymentType? paymentType,
      required CustomerApiPurchase? purchase,
      @Default(OrderType.mobileApp) OrderType type,
      Payment? payment,
      @Default(false) bool isCoffee,
      String? deviceId}) = _OrderModel;

  bool isValid() {
    final isFullBonusPayment = finalSum == 0.0 && bonusesSum > 0.0;

    final isSumValid = finalSum > 0.0 || isFullBonusPayment;

    final isPaymentTypeValid = paymentType != null || isFullBonusPayment;

    final isProductsValid = cart.products.isNotEmpty;
    return isSumValid && isPaymentTypeValid && isProductsValid;
  }

  double get finalSum => cart.summ;

  double get bonusesSum => cart.bonusesToSpent?.toDouble() ?? 0.0;

  double get bonusesToPay => cart.useBonuses ? cart.bonusesToSpent ?? 0 : 0;

  double get sumWithoutDiscount => cart.summWithoutDiscount;

  double get discount {
    final discount = sumWithoutDiscount - finalSum;
    return discount >= 0 ? discount : 0.0;
  }

  String get currencySymbol {
    if (cart.products.isEmpty) return 'BYN';
    return cart.products.first.product.currencySymbol;
  }

  bool isValidToOrder() {
    return finalSum != 0;
  }
}

enum OrderType { mobileApp, mobileAppOfflineOrder }

extension OrderTypeToString on OrderType {
  String format() {
    switch (this) {
      case OrderType.mobileApp:
        return 'mobileApp';
      case OrderType.mobileAppOfflineOrder:
        return 'mobileAppOfflineOrder';
    }
  }
}
