import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/mappers/cart_mapper.dart';
import 'package:sosedifedi/data/mappers/order_mapper.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_response/customer_api_response.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_service.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

import 'customer_account_repository.dart';

@singleton
class CustomerApiPurchaseRepository {
  CustomerApiPurchaseRepository({
    required this.customerApiService,
    required this.authRepository,
    required this.bonusCardRepository,
    required this.orderModelMapper,
    required this.cartMapper,
  });

  @protected
  CustomerApiService customerApiService;

  @protected
  AuthRepository authRepository;

  @protected
  CustomerAccountRepository bonusCardRepository;

  @protected
  final OrderModelMapper orderModelMapper;

  @protected
  final CartMapper cartMapper;

  Future<DefaultResponse<CustomerApiPurchase>> createPurchase(
    OrderModel order,
  ) async {
    final token = await authRepository.token;
    if (token == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    final val = await customerApiService.createPurchase(
      request: cartMapper.toCustomerApiRequest2(
        cart: order.cart,
        token: token,
      ),
    );

    return val;
  }

  ///Установка платежа
  Future<void> setPayment({
    required OrderModel order,
  }) async {
    final token = await authRepository.token;
    if (token == null) {
      throw Exception('Ошибка авторизации');
    }
    if (!order.isValid()) {
      throw Exception('Ошибка при заказе');
    }
    // await _checkBonuses(order.bonusesToPay.data ?? 0.0);
    customerApiService.setPayment(
        token: token, order: orderModelMapper.mapToOrderResponse(order));
  }

  Future<void> rollbackPurchase({
    required String purchaseId,
  }) async {
    final token = await authRepository.token;
    if (token == null) {
      throw Exception('Ошибка авторизации');
    }
    customerApiService.rollbackPurchase(token: token, purchaseId: purchaseId);
  }
}
