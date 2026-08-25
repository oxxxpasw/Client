import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/data/repository/assortment_repository.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/repository/cart_repository/cart_repository.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/data/repository/order_repository.dart';
import 'package:sosedifedi/data/repository/payment_repository.dart';
import 'package:sosedifedi/data/repository/unpaid_orders_repository.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/domain/models/payment/payment.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

abstract class OrderHistoryInteractor {
  Stream<DefaultResponse<AcceptedOrder?>> get unpaidOrderStream;

  Future<DefaultResponse<List<AcceptedOrder>>> getOrders();

  Future<DefaultResponse<AcceptedOrder>> getOrder(String orderId);

  Future<DefaultResponse<void>> payOrder(AcceptedOrder order);

  Future<List<int>> addOrderToCart(AcceptedOrder order);

  Future<bool> isCartEmpty();

  Future<DefaultResponse<AcceptedOrder?>> getUnpaidOrder();

  Future<DefaultResponse<Payment>> processOrderPayment(
    AcceptedOrder order,
    PaymentType paymentType,
  );

  Future<DefaultResponse<void>> cancelOrder(String orderId);
}

@Singleton(as: OrderHistoryInteractor)
class OrderInteractorImpl implements OrderHistoryInteractor {
  OrderInteractorImpl({
    required this.authRepository,
    required this.orderRepository,
    required this.cartRepository,
    required this.paymentRepository,
    required this.assortmentRepository,
    required this.cityRepository,
    required this.unpaidOrdersRepository,
  });

  @protected
  final AuthRepository authRepository;

  @protected
  final OrderRepository orderRepository;

  @protected
  final CartRepository cartRepository;

  @protected
  final AssortmentRepository assortmentRepository;

  @protected
  final CityRepository cityRepository;

  @protected
  final PaymentRepository paymentRepository;

  @protected
  final UnpaidOrdersRepository unpaidOrdersRepository;

  @override
  Stream<DefaultResponse<AcceptedOrder?>> get unpaidOrderStream =>
      unpaidOrdersRepository.unpaidOrderStream;

  @override
  Future<DefaultResponse<List<AcceptedOrder>>> getOrders() async {
    try {
      final token = await authRepository.token;
      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final response = await orderRepository.orderList(token: token);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<AcceptedOrder>> getOrder(String orderId) async {
    try {
      final token = await authRepository.token;
      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final response =
          await orderRepository.orderById(token: token, id: orderId);

      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return ApiResponse.success(response.result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<List<int>> addOrderToCart(AcceptedOrder order) async {
    throw UnimplementedError();
  }

  @override
  Future<DefaultResponse<void>> payOrder(AcceptedOrder order) {
    // TODO: implement payOrder
    throw UnimplementedError();
  }

  @override
  Future<DefaultResponse<Payment>> processOrderPayment(
    AcceptedOrder order,
    PaymentType paymentType,
  ) async {
    try {
      final token = await authRepository.token;
      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      if (order.storeId == null) {
        return const ApiResponse.error(CommonResponseError.storeNotSelected());
      }
      return paymentRepository.processAcceptedOrderPayment(
        order: order,
        paymentType: paymentType,
        token: token,
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<bool> isCartEmpty() async {
    return (await cartRepository.getCart())?.products.isEmpty ?? true;
  }

  @override
  Future<DefaultResponse<AcceptedOrder?>> getUnpaidOrder() async {
    final response = await unpaidOrdersRepository.getLastUnpaidOrder();
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(response.result);
  }

  @override
  Future<DefaultResponse<void>> cancelOrder(String orderId) async {
    final token = await authRepository.token;
    if (token == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    return orderRepository.cancelOrder(token: token, id: orderId);
  }
}
