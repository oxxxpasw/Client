import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/payment_model/payment_model.dart';
import 'package:sosedifedi/data/repository/payment_repository.dart';
import 'package:sosedifedi/domain/models/payment/payment.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'payment_completion_waiting_bloc.freezed.dart';
part 'payment_completion_waiting_state.dart';

@injectable
class PaymentCompletionWaitingBloc
    extends SrCubit<PaymentCompletionWaitingState, PaymentCompletionWaitingSr> {
  PaymentCompletionWaitingBloc({
    required this.paymentRepository,
    @factoryParam required this.payment,
  }) : super(const PaymentCompletionWaitingState());

  @protected
  final PaymentRepository paymentRepository;
  @protected
  final Payment payment;

  String? _storeId;

  Timer? _timer;

  Future<void> loadData({String? storeId}) async {
    if (payment is FullBonusesPayment) {
      await Future.delayed(Duration.zero);
      addSr(const PaymentCompletionWaitingSr.success());
      return;
    }

    _storeId = storeId;
    try {
      _timer = Timer.periodic(const Duration(seconds: 2), _onTimerTick);
    } catch (e) {
      addSr(PaymentCompletionWaitingSr.error(ErrorMessages.undefinedError));
      addError(e);
    }
  }

  Future<void> _onTimerTick(Timer timer) async {
    try {
      final payment = await _checkPayment(this.payment.id);
      if (payment.hasError) {
        return;
      }

      final result = payment.result;

      if (result == null) {
        return;
      }

      if (result) {
        addSr(const PaymentCompletionWaitingSr.success());
      } else {
        addSr(const PaymentCompletionWaitingSr.failed());
      }

      timer.cancel();
    } catch (e) {
      timer.cancel();
      addSr(PaymentCompletionWaitingSr.error(ErrorMessages.undefinedError));
      addError(e);
    }
  }

  Future<DefaultResponse<bool?>> _checkPayment(String paymentId) async {
    try {
      final response = await paymentRepository.getPaymentStatus(
        paymentId,
        systemId: _storeId,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final status = response.result?.status;
      if (status == null) {
        return const ApiResponse.success(null);
      }
      switch (status) {
        case PaymentStatus.newPayment:
        case PaymentStatus.created:
        case PaymentStatus.internalError:
        case PaymentStatus.processing:
        case PaymentStatus.unknown:
          return const ApiResponse.success(null);
        case PaymentStatus.canceled:
        case PaymentStatus.overdue:
          return const ApiResponse.success(false);
        case PaymentStatus.paid:
        case PaymentStatus.notified:
          return const ApiResponse.success(true);
      }
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
