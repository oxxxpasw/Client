part of 'order_coupon_cubit.dart';

@freezed
abstract class OrderCouponState with _$OrderCouponState {
  @Assert('status != OrderCouponStatus.ready || coupon != null')
  const factory OrderCouponState({
    @Default(OrderCouponStatus.init) OrderCouponStatus status,
    Promotion? coupon,
    int? expiresInDays,
  }) = _OrderCouponState;
}

enum OrderCouponStatus {
  init,
  loading,
  ready,
  error,
}
