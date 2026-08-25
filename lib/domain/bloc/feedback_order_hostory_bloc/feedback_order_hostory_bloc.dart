import 'dart:async';

import 'package:sosedifedi/data/models/notification/notification.dart';
import 'package:sosedifedi/data/services/push_notification_service.dart';
import 'package:sosedifedi/domain/interactor/order_history_interactor.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'feedback_order_hostory_bloc.freezed.dart';
part 'feedback_order_hostory_state.dart';

@injectable
class FeedbackOrderHistoryBloc
    extends SrCubit<FeedbackOrderHistoryState, FeedbackOrderHistorySr> {
  FeedbackOrderHistoryBloc({
    required this.orderHistoryInteractor,
  }) : super(const FeedbackOrderHistoryState()) {
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
  final OrderHistoryInteractor orderHistoryInteractor;

  StreamSubscription<Notification>? _subscription;

  Future<void> loadData() async {
    if (state.status == FeedbackOrderHistoryStatus.init) {
      emit(state.copyWith(status: FeedbackOrderHistoryStatus.loading));
    }
    final response = await orderHistoryInteractor.getOrders();
    if (response.hasError) {
      addError(response.error);
      addSr(FeedbackOrderHistorySr.error(
          ErrorMessages.getMessage(response.error)));
      return;
    }

    emit(
      state.copyWith(
        status: FeedbackOrderHistoryStatus.ready,
        acceptedOrders: response.result,
      ),
    );
  }

  void onOrderPressed(AcceptedOrder order) {
    addSr(FeedbackOrderHistorySr.selected(order));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
