import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/repository/payment_repository.dart';
import 'package:sosedifedi/domain/models/payment/payment.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'create_order_bloc.freezed.dart';
part 'create_order_event.dart';
part 'create_order_state.dart';

typedef CreateOrderBlocEmitter = Emitter<CreateOrderState>;

@injectable
class CreateOrderBloc
    extends SrBloc<CreateOrderEvent, CreateOrderState, CreateOrderSr> {
  CreateOrderBloc({
    @factoryParam this.isCoffee = false,
    required this.paymentRepository,
    required this.authRepository,
  }) : super(const CreateOrderState(pageIndex: 0, pageCount: 4)) {
    on<_Init>(_onInit);
    on<_NextPagePressed>(_onNextPagePressed);
    on<_ProcessPaymentPressed>(_onProcessPaymentPressed);
    on<_SuccessPayment>(_onSuccessPayment);
    on<_ScanAgainPressed>(_onScanAgainPressed);
  }

  @protected
  final PaymentRepository paymentRepository;
  @protected
  final AuthRepository authRepository;

  @protected
  final bool isCoffee;

  void _onInit(
    _Init event,
    CreateOrderBlocEmitter emit,
  ) {
    emit(
      state.copyWith(
        pageIndex: 0,
      ),
    );
    if (isCoffee) {
      return addSr(const CreateOrderSr.openDrinkListPage());
    }
    addSr(const CreateOrderSr.openScanner());
  }

  void _onNextPagePressed(
    _NextPagePressed event,
    CreateOrderBlocEmitter emit,
  ) {
    if (state.pageIndex < state.pageCount - 1) {
      emit(
        state.copyWith(pageIndex: state.pageIndex + 1),
      );
    }

    if (isCoffee) {
      return switch (state.pageIndex) {
        0 => addSr(const CreateOrderSr.openDrinkListPage()),
        1 => addSr(const CreateOrderSr.openPaymentTypeList()),
        2 => addSr(const CreateOrderSr.openCoffeeProcessing()),
        3 => addSr(const CreateOrderSr.openSuccessPage()),
        _ => null,
      };
    }

    return switch (state.pageIndex) {
      0 => addSr(const CreateOrderSr.openScanner()),
      1 => addSr(const CreateOrderSr.openCart()),
      2 => addSr(const CreateOrderSr.openPaymentTypeList()),
      3 => addSr(const CreateOrderSr.openSuccessPage()),
      _ => null,
    };
  }

  void _onScanAgainPressed(_, CreateOrderBlocEmitter emit) {
    emit(
      state.copyWith(pageIndex: 0),
    );
    addSr(const CreateOrderSr.openScanner());
  }

  Future<void> _onProcessPaymentPressed(
    _ProcessPaymentPressed event,
    CreateOrderBlocEmitter emit,
  ) async {
    // final paymentResponse = await paymentRepository.processPayment(
    //   orderId: const Uuid().v4(),
    //   finalSum: 10.0,
    //   paymentType: event.type,
    //   subId: store.id,
    //   token: authRepository.authData?.user.token,
    // );
    // addSr(
    //   CreateOrderSr.processPayment(
    //     paymentResponse.result,
    //     store.id,
    //   ),
    // );
  }

  Future<void> _onSuccessPayment(
    _SuccessPayment event,
    CreateOrderBlocEmitter emit,
  ) async {
    addSr(
      CreateOrderSr.waitPayment(
        event.payment,
        event.storeId,
      ),
    );
    // await Future.delayed(const Duration(seconds: 10));
    // if (state.pageIndex == (isCoffee ? 1 : 2)) {
    //   return add(const CreateOrderEvent.nextPagePressed());
    // }
  }
}
