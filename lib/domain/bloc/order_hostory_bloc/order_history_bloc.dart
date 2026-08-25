import 'dart:async';

import 'package:sosedifedi/data/models/notification/notification.dart';
import 'package:sosedifedi/data/services/push_notification_service.dart';
import 'package:sosedifedi/domain/interactor/order_history_interactor.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_history_bloc.freezed.dart';
part 'order_history_state.dart';

@injectable
class OrderHistoryBloc extends SrCubit<OrderHistoryState, OrderHistorySr> {
  OrderHistoryBloc({
    required this.orderHistoryInteractor,
    @factoryParam bool? hideUnpaid,
  })  : hideUnpaid = hideUnpaid ?? false,
        super(const OrderHistoryState()) {
    _subscription = PushNotificationService.notificationStream
        .where(
          (event) => switch (event.data) {
            OrderStatusChanged() => true,
            _ => false,
          },
        )
        .listen(
          (event) => loadData(),
        );
  }

  @protected
  final bool hideUnpaid;

  @protected
  final OrderHistoryInteractor orderHistoryInteractor;

  StreamSubscription<Notification>? _subscription;

  Future<void> loadData() async {
    if (state.status == OrderHistoryStatus.init) {
      emit(state.copyWith(status: OrderHistoryStatus.loading));
    }
    final response = await orderHistoryInteractor.getOrders();
    if (response.hasError) {
      addError(response.error);
      addSr(OrderHistorySr.error(ErrorMessages.getMessage(response.error)));
      return;
    }

    var result = response.result;

    if (hideUnpaid) {
      result = result.where((e) => e.type != AcceptedOrderType.unpaid).toList();
    }

    emit(
      state.copyWith(
        status: OrderHistoryStatus.ready,
        acceptedOrders: result,
      ),
    );
  }

  void onOrderPressed(AcceptedOrder order) {
    addSr(OrderHistorySr.selected(order));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
