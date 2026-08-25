import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/data/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/domain/models/order/ordered_product/ordered_product.dart';

export 'package:sosedifedi/data/models/order/accepted_order/accepted_order.dart'
    show OrderStatus;

part 'accepted_order.freezed.dart';

@freezed
abstract class AcceptedOrder with _$AcceptedOrder {
  const factory AcceptedOrder({
    required String id,
    required String publicId,
    required List<OrderedProduct> products,
    required double totalSum,
    required double bonusesSum,
    required DateTime createdDateTime,
    required AcceptedOrderType type,
    String? deliveryType,
    String? paymentType,
    DateTime? pickUpDateTime,
    required OrderStatus status,
    required String statusDescription,
    required String currencySymbol,
    String? storeName,
    String? storeAddress,
    String? storeId,
    String? comment,
    Uri? ofdReceiptUrl,
    String? purchaseId,
    String? cardNumber,
  }) = _AcceptedOrder;
}

enum AcceptedOrderType {
  unpaid,
  paid,
  cancelled,
  refund,
}
