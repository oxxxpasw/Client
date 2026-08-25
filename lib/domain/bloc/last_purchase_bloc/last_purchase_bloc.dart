import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sosedifedi/data/repository/cart_repository/cart_repository.dart';
import 'package:sosedifedi/data/repository/remote_config_repository.dart';
import 'package:sosedifedi/data/repository/unpaid_orders_repository.dart';
import 'package:sosedifedi/domain/models/cart/cart_model.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'last_purchase_bloc.freezed.dart';
part 'last_purchase_state.dart';

@injectable
class LastPurchaseBloc extends SrCubit<LastPurchaseState, LastPurchaseSr> {
  LastPurchaseBloc({
    required this.cartRepository,
    required this.unpaidOrdersRepository,
    required this.remoteConfigRepository,
    @factoryParam this.shouldShowFeedbackBanner = false,
  }) : super(const LastPurchaseState()) {
    _subscription.add(
      cartRepository.productsStream.listen(_onCartPurchase),
    );
    _subscription.add(
      unpaidOrdersRepository.unpaidOrderStream.listen(_onOrderPurchase),
    );
    _subscription.add(
      remoteConfigRepository.configStream
          .map((e) => e.showFeedbackBanner)
          .distinct()
          .listen(_onRemoteConfigUpdated),
    );
  }

  @protected
  final CartRepository cartRepository;
  @protected
  final UnpaidOrdersRepository unpaidOrdersRepository;
  @protected
  final RemoteConfigRepository remoteConfigRepository;
  @protected
  final bool shouldShowFeedbackBanner;

  final _subscription = CompositeSubscription();

  void _onCartPurchase(Cart? cart) {
    if (cart == null) {
      emit(state.copyWith(unfinishedPurchase: null));
      return;
    }
    emit(
      state.copyWith(
        unfinishedPurchase: UnfinishedPurchase(
          summ: cart.summWithoutDiscount,
          hasProducts: cart.products.isNotEmpty,
          currencySymbol:
              cart.products.firstOrNull?.product.currencySymbol ?? 'BYN',
        ),
      ),
    );
  }

  void _onOrderPurchase(DefaultResponse<AcceptedOrder?> order) {
    if (order.hasError) {
      emit(state.copyWith(unpaidOrder: null));
      return;
    }
    emit(
      state.copyWith(
        unpaidOrder: order.result,
      ),
    );
  }

  void _onRemoteConfigUpdated(bool showFeedbackBannerConfig) {
    if (shouldShowFeedbackBanner && showFeedbackBannerConfig) {
      emit(
        state.copyWith(showFeedbackBanner: true),
      );
      return;
    }
    emit(
      state.copyWith(showFeedbackBanner: false),
    );
  }

  void onActionPressed() {
    if (state.unpaidOrder != null) {
      addSr(const LastPurchaseSr.openUnpaidOrderDetails());
      return;
    }

    if (state.unfinishedPurchase != null) {
      addSr(const LastPurchaseSr.openFridgeQrScanner());
      return;
    }
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();
    return super.close();
  }
}
