import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/payment_model/payment_model.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/interactor/order_interactor.dart';
import 'package:sosedifedi/domain/models/order/order_data/order_data.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/domain/models/user_data/user_data.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'order_bloc.freezed.dart';
part 'order_state.dart';

@injectable
class OrderBloc extends SrCubit<OrderState, OrderSr> {
  static const selfInstanceName = 'selfInstanceName';

  OrderBloc({
    required this.orderInteractor,
    @factoryParam this.store,
  }) : super(OrderState());

  @protected
  final OrderInteractor orderInteractor;
  @protected
  final Store? store;

  StreamSubscription<UserData?>? _userDataSubscription;

  Timer? _timer;

  Duration get _minTimeDelta => const Duration(hours: 1);

  Future<void> loadData() async {
    try {
      // addSr(
      //   const OrderSr.loading(),
      // );
      // final response = await orderInteractor.initOrder(
      //     minTimeDelta: _minTimeDelta, store: store);
      // if (response.hasError) {
      //   response.error.maybeWhen(
      //     orElse: () {
      //       addSr(OrderSr.error(ErrorMessages.getMessage(response.error)));
      //       addError(response.error);
      //     },
      //     unconfirmed: () {
      //       addSr(const OrderSr.needUserData());
      //     },
      //   );
      //   return;
      // }
      // var order = response.result;
      // _userDataSubscription =
      //     orderInteractor.userDataStream.listen(_userDataChanged);
      // addSr(
      //   OrderSr.needOrderData(order: order),
      // );
      // emit(
      //   state.copyWith(
      //     order: order,
      //     status: OrderCreateStatus.ready,
      //   ),
      // );
    } catch (e) {
      addSr(OrderSr.error(ErrorMessages.undefinedError));
      addError(e, e is Error ? e.stackTrace : null);
    }
  }

  Future<void> send(OrderData orderData) async {
    if (state.status != OrderCreateStatus.ready) {
      return;
    }
    try {
      var order = state.order!;
      order = order.copyWith(
        // bonusesToPay: orderData.bonusesSpend,
        // comment: orderData.comment,
        date: orderData.pickUpDate,
        paymentType: orderData.paymentType,
      );
      if (!order.isValid()) {
        addSr(OrderSr.error(ErrorMessages.orderError));
        return;
      }
      emit(
        state.copyWith(
          status: OrderCreateStatus.sending,
        ),
      );
      final response = await orderInteractor.createOrder(order);
      if (response.hasError) {
        emit(state.copyWith(status: OrderCreateStatus.ready));
        addSr(OrderSr.error(ErrorMessages.getMessage(response.error)));
        addError(response.error);
        return;
      }
      _timer?.cancel();
      emit(
        state.copyWith(
          order: response.result,
        ),
      );
      _processPayment(response.result);
    } catch (e) {
      addSr(OrderSr.error(ErrorMessages.undefinedError));
      addError(e, e is Error ? e.stackTrace : null);
    }
  }

  void cancelTimer() {
    _timer?.cancel();
  }

  Future<void> updateUserData(UserData userDate) async {
    try {
      await orderInteractor.updateUserData(userDate);
      loadData();
    } catch (_) {
      loadData();
    }
  }

  _processPayment(OrderModel order) {
    // assert(order.externalId != null && order.paymentResponse != null);
    // final paymentResponse = order.paymentResponse!;
    // switch (paymentResponse.paymentRequest.type) {
    //   case PaymentMethod.cash:
    //     addSr(
    //       OrderSr.submit(
    //         order: order,
    //         payment: paymentResponse,
    //       ),
    //     );
    //     return;
    //   case PaymentMethod.card:
    //     addSr(
    //       OrderSr.processPayment(
    //         paymentResponse.paymentData!.paymentUrl!,
    //       ),
    //     );
    //     return;
    //   case PaymentMethod.sbp:
    //     addSr(
    //       OrderSr.processPayment(
    //         paymentResponse.paymentData!.paymentUrl!,
    //         isSBP: true,
    //       ),
    //     );
    //     return;
    //   case PaymentMethod.unknown:
    //     if (paymentResponse.paymentData?.paymentUrl != null) {
    //       addSr(
    //         OrderSr.processPayment(
    //           paymentResponse.paymentData!.paymentUrl!,
    //           isSBP: true,
    //         ),
    //       );
    //       return;
    //     }
    //     addSr(OrderSr.submit(
    //       order: order,
    //       // orderId: order.externalId!,
    //     ));
    //     return;
    // }
  }

  _userDataChanged(UserData? userData) {
    if (state.status != OrderCreateStatus.ready) {
      return;
    }
    if (userData != null) {
      emit(state.copyWith.order!(userData: userData));
    }
  }

  void onSuccessPayment() {
    if (state.status != OrderCreateStatus.ready) {
      return;
    }
    if (isClosed) {
      return;
    }
    final order = state.order!;
    assert(order.externalId != null);
    addSr(OrderSr.submit(
      order: order,
      // orderId: order.externalId!,
    ));
  }

  void onFailurePayment() => addSr(OrderSr.error(ErrorMessages.undefinedError));

  @override
  Future<void> close() async {
    _timer?.cancel();
    _userDataSubscription?.cancel();
    final order = state.order;
    orderInteractor.rollbackPurchase(order?.purchase?.purchase?.id);
    super.close();
  }
}
