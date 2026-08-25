import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:sosedifedi/data/entities/cart/cart_entity.dart';
import 'package:sosedifedi/data/models/cart_response/cart_response.dart';
import 'package:sosedifedi/data/repository/barcode_parser_repository/barcode_parser_repository.dart';
import 'package:sosedifedi/data/repository/cart_repository/cart_repository.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_response/customer_api_response.dart';
import 'package:sosedifedi/domain/models/barcode/barcode.dart';
import 'package:sosedifedi/domain/models/cart/cart_model.dart';
import 'package:sosedifedi/domain/models/product/product.dart';

@singleton
class CartMapper {
  List<CartItemEntity> productsToCartItem(List<CartItem> cartItems) {
    return cartItems.map((e) => cartItemToEntity(e)).toList();
  }

  CartItemEntity cartItemToEntity(CartItem cartItem) {
    final item = CartItemEntity(
      itemId: cartItem.product.id,
      name: cartItem.product.name,
      modifierGroups: cartItem.product.modifierGroups
          .where((element) => element.selectedModifiers.isNotEmpty)
          .map((element) => _modifierGroupToCartItemModifierGroup(element))
          .toList(),
      amount: cartItem.amount,
      barcodeList:
          cartItem.barcodes.map((e) => _mapToRawBarcodeEntity(e)).toList(),
    );
    if (cartItem.id != null) {
      item.id = cartItem.id!;
    }
    return item;
  }

  CartItemModifierGroup _modifierGroupToCartItemModifierGroup(
      ModifierGroup group) {
    return CartItemModifierGroup(
      itemId: group.id,
      name: group.name,
      modifiers: group.selectedModifiers
          .map((e) => _modifierToCartItemModifier(e))
          .toList(),
    );
  }

  CartItemModifier _modifierToCartItemModifier(Modifier modifier) {
    return CartItemModifier(
      itemId: modifier.id,
      name: modifier.name,
      amount: modifier.amount,
    );
  }

  RawBarcodeEntity _mapToRawBarcodeEntity(BarcodeData barcode) {
    final rawBarcode = barcode.rawBarcode;
    return RawBarcodeEntity(
      rawValue: rawBarcode.rawValue,
      format: rawBarcode.format.rawValue,
    );
  }

  CustomerApiRequest toCustomerApiRequest({
    required CartData cart,
    String? token,
  }) {
    return CustomerApiRequest(
      date: DateTime.now(),
      summ: cart.summ!,
      summWithoutDiscount: cart.summWithoutDiscount!,
      storeId: cart.store!.id,
      token: token,
      positions: cart.products
          .mapIndexed(
            (index, product) => _toCartPosition(
              cartItem: product,
              lineNumber: index + 1,
            ),
          )
          .toList(),
      bonusesSumm:
          cart.useBonuses ? (cart.bonusesCanSpent?.toDouble() ?? 0.0) : 0.0,
    );
  }

  CustomerApiRequest toCustomerApiRequest2({
    required Cart cart,
    String? token,
  }) {
    return CustomerApiRequest(
      date: DateTime.now(),
      summ: cart.summ,
      summWithoutDiscount: cart.summWithoutDiscount,
      storeId: cart.store!.id,
      token: token,
      positions: cart.products
          .mapIndexed(
            (index, product) => _toCartPosition(
              cartItem: product,
              lineNumber: index + 1,
            ),
          )
          .toList(),
    );
  }

  PurchasePosition _toCartPosition({
    required CartItem cartItem,
    required int lineNumber,
  }) {
    return PurchasePosition(
      lineNumber: lineNumber,
      groupCode: cartItem.product.folderId,
      productCode: cartItem.product.id,
      quantity: cartItem.amount.toDouble(),
      price: cartItem.product.finalPriceByOne,
      summ: cartItem.summ!,
      summWithoutDiscount: cartItem.summWithoutDiscount!,
    );
  }
}

abstract class ProductMerger {
  Future<CartItem?> merge(Object item, List<Product> assortment);
}

@singleton
class ProductMergerDB {
  ProductMergerDB({
    required this.barcodeRepository,
  });

  @protected
  final BarcodeParserRepository barcodeRepository;

  Future<CartItem?> merge(CartItemEntity item, List<Product> assortment) async {
    try {
      final productResponse =
          assortment.firstWhereOrNull((element) => element.id == item.itemId);
      if (productResponse == null) {
        return null;
      }
      final product = productResponse.copyWith(
        modifierGroups: _mergeModifiersGroups(
            item.modifierGroups, productResponse.modifierGroups),
      );
      return CartItem(
        id: item.id,
        product: product,
        amount: item.amount,
        barcodes: (await Future.wait(
          item.barcodeList.map(_mapFromRawBarcodeEntity),
        ))
            .whereNotNull()
            .toList(),
      );
    } catch (e) {
      return null;
    }
  }

  List<ModifierGroup> _mergeModifiersGroups(
      List<CartItemModifierGroup> old, List<ModifierGroup> newGr) {
    return newGr.map((e) {
      final item = old.firstWhereOrNull((element) => element.itemId == e.id);
      if (item != null) {
        return e.copyWith(
          selectedModifiers: _mergeModifiers(item.modifiers ?? [], e.modifiers),
        );
      }
      return e;
    }).toList();
  }

  List<Modifier> _mergeModifiers(
      List<CartItemModifier> old, List<Modifier> newGr) {
    return old
        .map((e) {
          final item =
              newGr.firstWhereOrNull((element) => element.id == e.itemId);
          if (item != null) {
            return item.copyWith(
              amount: e.amount ?? 0,
            );
          }
          return null;
        })
        .whereType<Modifier>()
        .toList();
  }

  Future<BarcodeData?> _mapFromRawBarcodeEntity(
      RawBarcodeEntity rawBarcodeEntity) async {
    if (rawBarcodeEntity.rawValue == null || rawBarcodeEntity.format == null) {
      return null;
    }

    final rawBarcode = RawBarcode(
      rawValue: rawBarcodeEntity.rawValue!,
      format: BarcodeFormat.fromRawValue(rawBarcodeEntity.format!),
    );
    final response = await barcodeRepository.parse(rawBarcode);
    if (response.hasError) {
      return null;
    }
    return response.result;
  }
}

@singleton
class ProductMergerLocal {
  Future<CartItem?> merge(CartItem item, List<Product> assortment) async {
    try {
      final productResponse = assortment
          .firstWhereOrNull((element) => element.id == item.product.id);
      if (productResponse == null) {
        return null;
      }
      final product = productResponse.copyWith(
        modifierGroups: _mergeModifiersGroups(
            item.product.modifierGroups, productResponse.modifierGroups),
      );
      return CartItem(
        id: item.id,
        product: product,
        amount: item.amount,
        barcodes: item.barcodes,
      );
    } catch (e) {
      return null;
    }
  }

  List<ModifierGroup> _mergeModifiersGroups(
      List<ModifierGroup> old, List<ModifierGroup> newGr) {
    return newGr.map((e) {
      final item = old.firstWhereOrNull((element) => element.id == e.id);
      if (item != null) {
        return e.copyWith(
          selectedModifiers: _mergeModifiers(item.modifiers, e.modifiers),
        );
      }
      return e;
    }).toList();
  }

  List<Modifier> _mergeModifiers(List<Modifier> old, List<Modifier> newGr) {
    return old
        .map((e) {
          final item = newGr.firstWhereOrNull((element) => element.id == e.id);
          if (item != null) {
            return item.copyWith(
              amount: e.amount,
            );
          }
          return null;
        })
        .whereType<Modifier>()
        .toList();
  }
}
