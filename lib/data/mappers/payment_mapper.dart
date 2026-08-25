import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/deactivate_card/deactivate_card.dart';
import 'package:sosedifedi/data/models/link_card/link_card.dart';
import 'package:sosedifedi/data/models/payment_model/payment_model.dart'
    show PaymentResponse;
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/domain/models/payment/payment.dart';

import '../models/payment_request/payment_request.dart';

@singleton
class PaymentMapper {
  Payment mapFromPaymentResponse(PaymentResponse response) {
    return switch (response.paymentRequest.type) {
      PaymentMethod.cash => Payment.cash(
          id: response.paymentRequest.id,
          amount: response.paymentRequest.amount,
          orderId: response.paymentRequest.orderId,
          paymentId: response.paymentRequest.id,
        ),
      PaymentMethod.card => Payment.card(
          id: response.paymentRequest.id,
          amount: response.paymentRequest.amount,
          orderId: response.paymentRequest.orderId,
          paymentId: response.paymentRequest.id,
          paymentUrl: response.paymentData!.paymentUrl!,
        ),
      PaymentMethod.sbp => Payment.sbp(
          id: response.paymentRequest.id,
          amount: response.paymentRequest.amount,
          orderId: response.paymentRequest.orderId,
          paymentId: response.paymentRequest.id,
          paymentUrl: response.paymentData!.paymentUrl!,
        ),
      PaymentMethod.unknown || null => Payment.unknown(
          id: response.paymentRequest.id,
          amount: response.paymentRequest.amount,
          orderId: response.paymentRequest.orderId,
          paymentId: response.paymentRequest.id,
          paymentUrl: response.paymentData?.paymentUrl,
        ),
      PaymentMethod.linkedCard => Payment.linkedCard(
          id: response.paymentRequest.id,
          amount: response.paymentRequest.amount,
          orderId: response.paymentRequest.orderId,
          paymentId: response.paymentRequest.id,
          paymentUrl: response.paymentData?.paymentUrl,
        ),
      PaymentMethod.applePay => Payment.applePay(
          id: response.paymentRequest.id,
          amount: response.paymentRequest.amount,
          orderId: response.paymentRequest.orderId,
          paymentId: response.paymentRequest.id,
        ),
      PaymentMethod.fullBonuses => Payment.fullBonuses(
          id: response.paymentRequest.id,
          amount: response.paymentRequest.amount,
          orderId: response.paymentRequest.orderId,
          paymentId: response.paymentRequest.id,
        ),
    };
  }

  PaymentRequest mapToPaymentResponse({
    required AcceptedOrder order,
    required PaymentType paymentType,
    String? successUrl,
    String? failureUrl,
    String? token,
  }) {
    final canUseLoyalty = order.purchaseId != null && order.cardNumber != null;
    return PaymentRequest(
      amount: order.totalSum,
      orderId: order.id,
      subId: order.storeId!,
      paymentType: paymentType.id,
      paymentData: PaymentRequestData(
        successUrl: successUrl,
        failureUrl: failureUrl,
        authToken: token,
        purchaseId: order.purchaseId,
        cardNumber: order.cardNumber,
        loyalty: canUseLoyalty,
        bonusAmount: order.bonusesSum,
        cardId: switch (paymentType) {
          LinkedCardPaymentType(:final data) => data.cardId,
          _ => null,
        },
      ),
    );
  }

  PaymentRequest mapToPaymentResponse2({
    required OrderModel order,
    String? successUrl,
    String? failureUrl,
    String? token,
  }) {
    final paymentType = order.paymentType;
    return PaymentRequest(
      amount: order.finalSum,
      orderId: order.externalId!,
      subId: order.store.id,
      paymentType: paymentType?.id,
      paymentData: PaymentRequestData(
        successUrl: successUrl,
        failureUrl: failureUrl,
        authToken: token,
        loyalty: order.purchase != null,
        purchaseId: order.purchase?.purchase.id,
        cardNumber: order.purchase?.purchase.cardNumber.toString(),
        bonusAmount: order.bonusesSum,
        cardId: switch (paymentType) {
          LinkedCardPaymentType(:final data) => data.cardId,
          _ => null,
        },
      ),
    );
  }

  LinkCardRequest mapToLinkCardRequest({
    required String subId,
    required String token,
    required RegisterCardPaymentType type,
  }) {
    return LinkCardRequest(
      token: token,
      subId: subId,
      paymentType: type.id,
    );
  }

  DeactivateCardRequest mapToDeactivateCardRequest({
    required String subId,
    required String token,
    required LinkedCardPaymentType type,
  }) {
    return DeactivateCardRequest(
      token: token,
      subId: subId,
      paymentType: type.id,
      cardId: type.data.cardId,
    );
  }
}
