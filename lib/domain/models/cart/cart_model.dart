import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_response/customer_api_response.dart';
import 'package:sosedifedi/domain/models/barcode/barcode.dart';
import 'package:sosedifedi/domain/models/product/product.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@Freezed(toJson: true, fromJson: false)
abstract class Cart with _$Cart {
  const Cart._();

  const factory Cart({
    int? id,
    String? userId,
    Store? store,
    @Default([]) List<CartItem> products,
    @Default([]) List<CartItem> unavailableProducts,
    required double summ,
    required double summWithoutDiscount,
    double? bonusesToSpent,
    @Default(false) bool canUseBonuses,
    @Default(false) bool useBonuses,
    String? fridgeId,
    String? coffeeMachineId,
    CustomerApiPurchase? purchase,
  }) = _Cart;
}

@freezed
abstract class CartItem with _$CartItem {
  const CartItem._();

  const factory CartItem({
    int? id,
    required Product product,
    required double amount,
    double? summ,
    double? summWithoutDiscount,
    @Default([]) List<BarcodeData> barcodes,
    @Default(false) bool hasDiscount,
  }) = _CartItem;

  Map<String, dynamic> toJson() {
    return {
      'uniqueId': id,
      'id': id,
      'amount': amount,
      'name': product.name,
      'image': product.imageUrl,
      'modifiers': product.modifierGroups
          .where((element) => element.selectedModifiers.isNotEmpty)
          .map((e) => e.toJson())
          .toList(),
    };
  }
}
