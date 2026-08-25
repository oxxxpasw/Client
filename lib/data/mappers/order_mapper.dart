import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/mappers/user_data_model_mapper.dart';
import 'package:sosedifedi/data/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/data/models/order/order_response/order_response.dart';
import 'package:sosedifedi/domain/models/cart/cart_model.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/domain/models/order/ordered_modifier/ordered_modifier.dart';
import 'package:sosedifedi/domain/models/order/ordered_options/ordered_options.dart';
import 'package:sosedifedi/domain/models/order/ordered_product/ordered_product.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/presentation/app_environment.dart';

@singleton
class OrderModelMapper {
  const OrderModelMapper(
    this.userDataMapper,
    this.appEnvironment,
  );

  @protected
  final UserDataModelMapper userDataMapper;
  @protected
  final AppEnvironment appEnvironment;

  OrderResponse mapToOrderResponse(OrderModel orderModel) {
    return OrderResponse(
      id: orderModel.id,
      bonusesToPay: orderModel.bonusesToPay.toDouble(),
      products: orderModel.cart.products
          .map((e) => _mapToOrderItemResponse(e))
          .toList(),
      userData: orderModel.userData != null
          ? userDataMapper.mapToUserDataResponse(orderModel.userData!)
          : null,
      time: orderModel.date,
      paymentType: orderModel.paymentType?.id,
      paymentTypeType: orderModel.paymentType?.type.name,
      totalPrice: orderModel.cart.summ,
      totalPriceWithoutDiscount: orderModel.cart.summWithoutDiscount,
      purchase: orderModel.purchase,
      store: orderModel.store,
      type: orderModel.type.name,
      phone: orderModel.phone,
      isCoffee: orderModel.isCoffee,
      deviceId: orderModel.deviceId,
    );
  }

  OrderItem _mapToOrderItemResponse(CartItem cartItem) {
    return OrderItem(
      id: cartItem.product.id,
      name: cartItem.product.name,
      modifiers: cartItem.product.modifierGroups
          .where((element) => element.selectedModifiers.isNotEmpty)
          .map((e) => _mapToOrderModifierResponse(e))
          .toList(),
      amount: cartItem.amount,
      price: cartItem.summ,
      priceWithoutDiscount: cartItem.summWithoutDiscount,
      barcodes: cartItem.barcodes.map((e) => e.rawBarcode.rawValue).toList(),
      currencySymbol: cartItem.product.currencySymbol,
    );
  }

  ModifierGroupOrderItem _mapToOrderModifierResponse(
      ModifierGroup modifierGroup) {
    return ModifierGroupOrderItem(
      id: modifierGroup.id,
      name: modifierGroup.name,
      modifiers: modifierGroup.selectedModifiers
          .map((e) => _mapToOrderOptionsResponse(e))
          .toList(),
    );
  }

  ModifierOrderItem _mapToOrderOptionsResponse(Modifier modifier) {
    return ModifierOrderItem(
      id: modifier.id,
      amount: modifier.amount,
      name: modifier.name,
      price: modifier.price,
    );
  }

  AcceptedOrder mapFromAcceptedOrderResponse(AcceptedOrderResponse order) {
    final payment = order.data.payment.firstWhereOrNull(
      (element) => !(element.type?.contains(kBonusesPaymentType) ?? false),
    );
    final bonusPayment = order.data.payment.firstWhereOrNull(
      (element) => element.type?.contains(kBonusesPaymentType) ?? false,
    );
    return AcceptedOrder(
      id: order.id,
      publicId: order.publicId ?? order.id,
      products: order.data.products
          .map((e) => _mapFromAcceptedOrderProductResponse(e))
          .toList(),
      totalSum: payment?.sum ?? 0.0,
      bonusesSum: bonusPayment?.sum ?? 0.0,
      paymentType: payment?.name,
      status: order.status,
      statusDescription: order.statusH ?? '',
      currencySymbol: order.data.products.firstOrNull?.currencySymbol ?? 'Р',
      createdDateTime: order.createdDatetime,
      pickUpDateTime: order.data.datetime,
      storeId: order.data.point,
      storeName: order.data.pointName,
      storeAddress: order.data.pointData?.address,
      ofdReceiptUrl: order.data.ofdReceiptUrl?.isNotEmpty == true
          ? Uri.tryParse(order.data.ofdReceiptUrl!)
          : null,
      purchaseId: order.data.purchaseId,
      cardNumber: order.data.cardNumber,
      type: switch (order.status) {
        OrderStatus.newOrder || OrderStatus.overdue => AcceptedOrderType.unpaid,
        OrderStatus.cancel => AcceptedOrderType.cancelled,
        OrderStatus.refund => AcceptedOrderType.refund,
        _ => AcceptedOrderType.paid,
      },
    );
  }

  OrderedProduct _mapFromAcceptedOrderProductResponse(
      AcceptedOrderProductResponse product) {
    return OrderedProduct(
      id: product.id,
      name: product.name ?? '',
      price: product.price,
      modifiers: product.modifiers
          .map((e) => _mapFromAcceptedOrderModifierResponse(e))
          .toList(),
      amount: product.amount ?? 1.0,
      quantity: product.quantity ?? 1.0,
      orderProblem: [],
      image: product.image,
      currencySymbol: product.currencySymbol,
    );
  }

  OrderedModifier _mapFromAcceptedOrderModifierResponse(
      AcceptedOrderModifierGroup modifier) {
    return OrderedModifier(
      name: modifier.name ?? '',
      options: modifier.options
          .map((e) => _mapFromAcceptedOrderOptionsResponse(e))
          .toList(),
    );
  }

  OrderedOption _mapFromAcceptedOrderOptionsResponse(
      AcceptedOrderModifier option) {
    return OrderedOption(
      name: option.name ?? '',
      id: option.id,
      price: option.price ?? 0.0,
    );
  }
}
