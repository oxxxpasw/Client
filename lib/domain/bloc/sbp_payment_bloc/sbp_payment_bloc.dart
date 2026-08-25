import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/payment_model/payment_model.dart';
import 'package:sosedifedi/data/repository/payment_repository.dart';
import 'package:sosedifedi/data/repository/sbp_repository.dart';
import 'package:sosedifedi/domain/models/sbp_bank/sbp_bank.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

part 'sbp_payment_bloc.freezed.dart';
part 'sbp_payment_state.dart';

@injectable
class SBPPaymentBloc extends SrCubit<SBPPaymentState, SBPPaymentSr> {
  SBPPaymentBloc({
    required this.sbpRepository,
    required this.paymentRepository,
    @factoryParam required this.qrUrl,
    @factoryParam required this.paymentId,
  }) : super(const SBPPaymentState());

  @protected
  final SbpRepository sbpRepository;

  @protected
  final PaymentRepository paymentRepository;
  @protected
  final Uri qrUrl;
  @protected
  final String paymentId;

  String? _storeId;

  Future<void> loadData({
    bool isIOS = false,
    String? storeId,
  }) async {
    _storeId = storeId;
    emit(state.copyWith(
        status: SBPPaymentStateStatus.loading, isRedirected: false));
    final response = isIOS
        ? await sbpRepository.getAllBanks(qrUrl)
        : await sbpRepository.getAvailableBanks(qrUrl);
    if (response.hasError) {
      addSr(SBPPaymentSr.error(ErrorMessages.getMessage(response.error)));
      addError(response.error);
      emit(
        state.copyWith(
          availableBanks: [],
          status: SBPPaymentStateStatus.ready,
        ),
      );
    }
    final list = response.result;
    if (list.isEmpty) {
      _processPaymentIfEmpty(qrUrl);
      return;
    }
    emit(
      state.copyWith(
        availableBanks: list,
        status: SBPPaymentStateStatus.ready,
      ),
    );
  }

  Future<void> processPayment(SbpBank bank) async {
    try {
      final result =
          await launchUrl(bank.uri, mode: LaunchMode.externalApplication);
      if (!result) {
        addSr(const SBPPaymentSr.bankAppNotInstalled());
        return;
      }
      addSr(const SBPPaymentSr.successPayment());
      // if (!state.isRedirected) {
      //   unawaited(_waitPayment());
      // }
      // emit(
      //   state.copyWith(
      //     isRedirected: true,
      //     status: SBPPaymentStateStatus.wait,
      //   ),
      // );
      // addSr(const SBPPaymentSr.bankOpened());
    } catch (e) {
      addSr(SBPPaymentSr.error(ErrorMessages.undefinedError));
      addError(e);
    }
  }

  void selectNewBank() {
    if (state.status != SBPPaymentStateStatus.wait) return;
    emit(
      state.copyWith(
        status: SBPPaymentStateStatus.ready,
      ),
    );
  }

  Future<void> _processPaymentIfEmpty(Uri qrUrl) async {
    try {
      final result = await launchUrl(
        qrUrl,
        mode: LaunchMode.externalApplication,
      );
      if (!result) {
        throw Exception('Failed to open url');
      }
      if (!state.isRedirected) {
        unawaited(_waitPayment());
      }
      emit(
        state.copyWith(
          isRedirected: true,
          status: SBPPaymentStateStatus.wait,
        ),
      );
    } catch (e) {
      addSr(SBPPaymentSr.error(ErrorMessages.undefinedError));
      addError(e);
    }
  }

  Future<void> _waitPayment() async {
    try {
      while (true) {
        if (isClosed) {
          return;
        }
        final payment = await _checkPayment(paymentId);
        if (payment.isSuccess) {
          if (payment.result) {
            addSr(const SBPPaymentSr.successPayment());
          } else {
            addSr(const SBPPaymentSr.failedPayment());
          }
          return;
        }
        await Future.delayed(const Duration(seconds: 2));
      }
    } catch (e) {
      addSr(SBPPaymentSr.error(ErrorMessages.undefinedError));
      addError(e);
    }
  }

  Future<DefaultResponse<bool>> _checkPayment(String paymentId) async {
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
        throw Exception();
      }
      switch (status) {
        case PaymentStatus.newPayment:
        case PaymentStatus.created:
        case PaymentStatus.internalError:
        case PaymentStatus.processing:
        case PaymentStatus.unknown:
          throw Exception();
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
}
