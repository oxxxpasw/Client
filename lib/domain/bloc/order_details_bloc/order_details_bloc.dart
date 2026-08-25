import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/notification/notification.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/data/services/network_file_service.dart';
import 'package:sosedifedi/data/services/push_notification_service.dart';
import 'package:sosedifedi/domain/interactor/order_history_interactor.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/domain/models/payment/payment.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

part 'order_details_bloc.freezed.dart';
part 'order_details_state.dart';

@injectable
class OrderDetailsBloc extends SrCubit<OrderDetailsState, OrderDetailsSr> {
  OrderDetailsBloc({
    required this.orderHistoryInteractor,
    required this.networkFileService,
    @factoryParam required this.orderId,
  }) : super(const OrderDetailsState()) {
    _subscription = PushNotificationService.notificationStream
        .where(
          (event) => switch (event.data) {
            OrderStatusChanged(:var id) => id == orderId,
            _ => false,
          },
        )
        .listen(
          (event) => loadData(),
        );
  }

  final String orderId;

  @protected
  final OrderHistoryInteractor orderHistoryInteractor;
  @protected
  final NetworkFileService networkFileService;

  StreamSubscription<Notification>? _subscription;

  Future<void> loadData() async {
    emit(state.copyWith(status: OrderDetailsStatus.loading));
    await _getOrder();
  }

  Future<void> onOrderPaid() {
    emit(state.copyWith(status: OrderDetailsStatus.ready));
    return _getOrder();
  }

  Future<void> _getOrder() async {
    final response = await orderHistoryInteractor.getOrder(orderId);
    if (response.hasError) {
      addError(response.error);
      addSr(OrderDetailsSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }

    final order = response.result;

    var isUnpaidOrder = order.type == AcceptedOrderType.unpaid;

    emit(
      state.copyWith(
        status: OrderDetailsStatus.ready,
        order: order,
        isUnpaidOrder: isUnpaidOrder,
        paymentType: null,
      ),
    );
  }

  Future<void> onPayOrderPressed() async {
    if (state.order == null || state.status != OrderDetailsStatus.ready) {
      return;
    }

    if (state.paymentType == null) {
      return addSr(
        OrderDetailsSr.showPaymentTypeList(storeId: state.order!.storeId!),
      );
    }

    return _createPayment(state.order!, state.paymentType!);
  }

  Future<void> onPaymentTypeSelected(PaymentType paymentType) async {
    if (state.order == null || state.status != OrderDetailsStatus.ready) {
      return;
    }

    return _createPayment(state.order!, paymentType);
  }

  Future<void> _createPayment(
      AcceptedOrder order, PaymentType paymentType) async {
    try {
      emit(state.copyWith(status: OrderDetailsStatus.creatingPayment));
      final response =
          await orderHistoryInteractor.processOrderPayment(order, paymentType);
      if (response.hasError) {
        addError(response.error);
        addSr(OrderDetailsSr.error(ErrorMessages.getMessage(response.error)));
        return;
      }
      final payment = response.result;
      if (payment.isCashPayment) {
        unawaited(loadData());
        return;
      }

      addSr(
        OrderDetailsSr.processPayment(
          payment,
          order.storeId!,
        ),
      );
      return;
    } catch (e) {
      addError(e);
      addSr(OrderDetailsSr.error(ErrorMessages.undefinedError));
    }
  }

  Future<void> onOpenReceiptPressed() async {
    final receipt = state.order?.ofdReceiptUrl;
    if (receipt == null) {
      addSr(const OrderDetailsSr.receiptNotReady());
      return;
    }
    launchUrl(
      receipt,
      mode: LaunchMode.externalApplication,
    );

    // if (p.extension(receipt.path).isEmpty) {
    //   launchUrl(receipt);
    //   return;
    // }
    //
    // final response = await networkFileService.download(receipt);
    //
    // if (response.hasError) {
    //   addSr(
    //     OrderDetailsSr.error(
    //       ErrorMessages.getMessage(response.error),
    //     ),
    //   );
    //   return;
    // }
    //
    // await OpenFilex.open(response.result.path);
  }

  Future<void> onCancelOrderPressed() async {
    final order = state.order;

    if (order == null || state.status != OrderDetailsStatus.ready) {
      return;
    }
    await orderHistoryInteractor.cancelOrder(order.id);
    unawaited(loadData());
  }

  Future<void> onCreateReviewPressed() async {
    if (state.order == null) {
      return;
    }

    addSr(OrderDetailsSr.showCreateReview(state.order!));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
