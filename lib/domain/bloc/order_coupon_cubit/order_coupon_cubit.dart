import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/data/repository/customer_account_repository.dart';

part 'order_coupon_state.dart';
part 'order_coupon_cubit.freezed.dart';

@injectable
class OrderCouponCubit extends Cubit<OrderCouponState> {
  OrderCouponCubit({
    required this.customerAccountRepository,
  }) : super(const OrderCouponState());

  final CustomerAccountRepository customerAccountRepository;

  Future<void> init(String purchaseId) async {
    emit(
      state.copyWith(
        status: OrderCouponStatus.loading,
      ),
    );
    final response =
        await customerAccountRepository.getPromotionsByPurchase(purchaseId);
    if (response.hasError) {
      emit(
        state.copyWith(
          status: OrderCouponStatus.error,
        ),
      );
      return addError(response.error);
    }

    emit(
      state.copyWith(
        status: OrderCouponStatus.ready,
        coupon: response.result,
      ),
    );
  }
}
