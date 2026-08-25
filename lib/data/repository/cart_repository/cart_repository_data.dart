part of 'cart_repository.dart';

@Freezed(
  makeCollectionsUnmodifiable: false,
)
abstract class CartData with _$CartData {
  const CartData._();
  const factory CartData({
    required List<CartItem> products,
    required Store? store,
    @Default(false) bool useBonuses,
    @Default(false) bool canUseBonuses,
    int? id,
    String? fridgeId,
    String? coffeeMachineId,
    User? user,
    double? summ,
    double? summWithoutDiscount,
    double? bonusesCanSpent,
    CustomerApiPurchase? purchase,
  }) = _CartData;
}

@Freezed(
  makeCollectionsUnmodifiable: false,
)
abstract class CartData2 with _$CartData2 {
  const factory CartData2({
    required List<CartItem> products,
    required Store? store,
    CoffeeMachine? coffeeMachine,
    @Default(false) bool useBonuses,
    String? fridgeId,
    User? user,
    int? id,
  }) = _CartData2;
}
