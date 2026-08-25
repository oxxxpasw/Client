import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/payment_model/payment_model.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/data/repository/payment_repository.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'choose_payment_type_bloc.freezed.dart';
part 'choose_payment_type_state.dart';
part 'choose_payment_type_event.dart';

typedef _Emitter = Emitter<ChoosePaymentTypeState>;

@injectable
class ChoosePaymentTypeBloc extends SrBloc<ChoosePaymentTypeEvent,
    ChoosePaymentTypeState, ChoosePaymentTypeSr> {
  ChoosePaymentTypeBloc({
    required this.paymentRepository,
    @factoryParam required this.storeId,
  }) : super(const ChoosePaymentTypeState()) {
    on<_Init>(_onInit);
    on<_PaymentTypePressed>(
      _onPaymentTypePressed,
      transformer: droppable(),
    );
    on<_SubmitPressed>(
      _onSubmitPressed,
      transformer: droppable(),
    );
    on<_DeactivateCardPressed>(
      _onDeactivateCardPressed,
      transformer: droppable(),
    );
    on<_SetStatus>(_onSetStatus);
  }

  @protected
  final PaymentRepository paymentRepository;
  @protected
  final String storeId;

  Future<void> _onInit(_Init event, _Emitter emit) async {
    emit(
      state.copyWith(status: ChoosePaymentTypeStatus.loading),
    );
    final response = await paymentRepository.getPaymentTypes(
      systemId: storeId,
    );

    if (response.hasError) {
      addSr(
          ChoosePaymentTypeSr.error(ErrorMessages.getMessage(response.error)));
      addError(response.error);
      return;
    }

    final defaultPaymentType = response.result
        .firstWhereOrNull((e) => e.type == PaymentMethod.linkedCard);

    addSr(ChoosePaymentTypeSr.changed(defaultPaymentType));

    emit(
      state.copyWith(
        status: ChoosePaymentTypeStatus.ready,
        paymentTypes: response.result,
        selectedPaymentType: defaultPaymentType,
      ),
    );
  }

  Future<void> _onPaymentTypePressed(_PaymentTypePressed event, _Emitter emit) {
    if (!state.enabled) return Future.value();

    final paymentType = event.type;

    if (paymentType is RegisterCardPaymentType) {
      return _registerCard(paymentType);
    }

    emit(state.copyWith(selectedPaymentType: paymentType));
    addSr(ChoosePaymentTypeSr.changed(paymentType));
    return Future.value();
  }

  Future<void> _onSubmitPressed(_SubmitPressed event, _Emitter emit) async {
    final paymentType = state.selectedPaymentType;

    if (paymentType is RegisterCardPaymentType) {
      return _registerCard(paymentType);
    }
    addSr(
      ChoosePaymentTypeSr.select(paymentType),
    );
  }

  Future<void> _registerCard(RegisterCardPaymentType type) async {
    final response = await paymentRepository.linkCard(
      systemId: storeId,
      type: type,
    );
    if (response.hasError) {
      addSr(
          ChoosePaymentTypeSr.error(ErrorMessages.getMessage(response.error)));
      addError(response.error);
      return;
    }
    addSr(ChoosePaymentTypeSr.openRegisterCard(response.result));
  }

  Future<void> _onDeactivateCardPressed(
      _DeactivateCardPressed event, _Emitter emit) async {
    emit(state.copyWith(status: ChoosePaymentTypeStatus.loading));

    final type = event.type;

    final response = await paymentRepository.deactivateCard(
      systemId: storeId,
      type: type,
    );

    if (response.hasError) {
      addSr(
        ChoosePaymentTypeSr.error(ErrorMessages.getMessage(response.error)),
      );
      addError(response.error);
      emit(state.copyWith(status: ChoosePaymentTypeStatus.ready));
      return;
    }

    addSr(const ChoosePaymentTypeSr.cardDeactivated());
    add(const ChoosePaymentTypeEvent.init());
  }

  void _onSetStatus(_SetStatus event, _Emitter emit) {
    if (event.enabled == state.enabled) return;
    emit(
      state.copyWith(
        enabled: event.enabled,
        selectedPaymentType: null,
      ),
    );
    addSr(const ChoosePaymentTypeSr.changed(null));
  }
}
