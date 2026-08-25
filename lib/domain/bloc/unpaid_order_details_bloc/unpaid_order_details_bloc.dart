import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sosedifedi/data/models/notification/notification.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/data/services/push_notification_service.dart';
import 'package:sosedifedi/domain/interactor/order_history_interactor.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/domain/models/payment/payment.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'unpaid_order_details_bloc.freezed.dart';
part 'unpaid_order_details_state.dart';

const _kUnpaidOrderDetailsOnboardingKey =
    'UnpaidOrderDetailsBloc_OnboardingKey';

@injectable
class UnpaidOrderDetailsBloc
    extends SrCubit<UnpaidOrderDetailsState, UnpaidOrderDetailsSr> {
  UnpaidOrderDetailsBloc({
    required this.orderHistoryInteractor,
    required this.prefs,
  }) : super(const UnpaidOrderDetailsState()) {
    _subscription = PushNotificationService.notificationStream
        .where(
          (event) => switch (event.data) {
            OrderStatusChanged(:var id) => id == state.order?.id,
            _ => false,
          },
        )
        .listen(
          (event) => loadData(),
        );
  }

  @protected
  final OrderHistoryInteractor orderHistoryInteractor;
  @protected
  final SharedPreferences prefs;

  StreamSubscription? _subscription;

  bool isOrderPaid = false;

  Future<void> loadData() async {
    emit(state.copyWith(status: UnpaidOrderDetailsStatus.loading));
    await _getOrder();
    await _checkNeedShowOnboarding();
  }

  void onPayment() {
    isOrderPaid = true;
    unawaited(loadData());
  }

  Future<void> _getOrder() async {
    final response = await orderHistoryInteractor.getUnpaidOrder();
    if (response.hasError) {
      addError(response.error);
      addSr(
        UnpaidOrderDetailsSr.error(
          ErrorMessages.getMessage(response.error),
        ),
      );
      return;
    }
    if (response.result == null) {
      if (isOrderPaid) {
        addSr(const UnpaidOrderDetailsSr.successPayment());
      } else {
        addSr(const UnpaidOrderDetailsSr.orderCanceled());
      }
      return;
    }

    final order = response.result!;

    PaymentType? paymentType;

    if (order.type != AcceptedOrderType.unpaid) {
      addSr(UnpaidOrderDetailsSr.error(ErrorMessages.undefinedError));
      addSr(const UnpaidOrderDetailsSr.exit());
      return;
    }

    final storeId = order.storeId;

    if (storeId == null) {
      addSr(
        UnpaidOrderDetailsSr.error(
          ErrorMessages.pointNotSelected,
        ),
      );
      addSr(const UnpaidOrderDetailsSr.exit());
      return;
    }

    emit(
      state.copyWith(
        status: UnpaidOrderDetailsStatus.ready,
        order: order,
        paymentType: null,
      ),
    );
  }

  Future<void> onPayOrderPressed() async {
    if (state.order == null || state.status != UnpaidOrderDetailsStatus.ready) {
      return;
    }

    if (state.paymentType == null) {
      return addSr(
        UnpaidOrderDetailsSr.showPaymentTypeList(
            storeId: state.order!.storeId!),
      );
    }

    return _createPayment(state.order!, state.paymentType!);
  }

  Future<void> onPaymentTypeSelected(PaymentType paymentType) async {
    if (state.order == null || state.status != UnpaidOrderDetailsStatus.ready) {
      return;
    }

    return _createPayment(state.order!, paymentType);
  }

  Future<void> _createPayment(
      AcceptedOrder order, PaymentType paymentType) async {
    try {
      emit(state.copyWith(status: UnpaidOrderDetailsStatus.creatingPayment));
      final response =
          await orderHistoryInteractor.processOrderPayment(order, paymentType);
      if (response.hasError) {
        addError(response.error);
        addSr(UnpaidOrderDetailsSr.error(
            ErrorMessages.getMessage(response.error)));
        return;
      }
      final payment = response.result;
      if (payment.isCashPayment) {
        unawaited(loadData());
        return;
      }

      addSr(
        UnpaidOrderDetailsSr.processPayment(
          payment,
          order.storeId!,
        ),
      );
      emit(state.copyWith(status: UnpaidOrderDetailsStatus.ready));
      return;
    } catch (e) {
      addError(e);
      addSr(UnpaidOrderDetailsSr.error(ErrorMessages.undefinedError));
    }
  }

  Future<void> onCancelOrderPressed() async {
    if (state.order == null || state.status != UnpaidOrderDetailsStatus.ready) {
      return;
    }
    emit(state.copyWith(status: UnpaidOrderDetailsStatus.loading));
    await orderHistoryInteractor.cancelOrder(state.order!.id);
    isOrderPaid = false;
    unawaited(loadData());
  }

  Future<bool> onOnboardingComplete() =>
      prefs.setBool(_kUnpaidOrderDetailsOnboardingKey, true);

  Future<void> _checkNeedShowOnboarding() async {
    try {
      if (prefs.getBool(_kUnpaidOrderDetailsOnboardingKey) ?? false) {
        return;
      }
      addSr(const UnpaidOrderDetailsSr.showOnboarding());
    } catch (_) {}
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
