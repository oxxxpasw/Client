import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/data/models/assortment_response/assortment_response.dart';
import 'package:sosedifedi/data/models/store_quantity_response/store_quantity_response.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  Product._();

  factory Product({
    required final String id,
    final String? groupId,
    final String? folderId,
    required final String name,
    required final double price,
    required final String currencySymbol,
    final String? imageUrl,
    final String? description,
    required final List<ModifierGroup> modifierGroups,
    required CalorieIntake calorieIntake,
    required String shortName,
    required bool isDefault,
    required String keywords,
    required bool weight,
    String? ingredientsDescription,
    String? sizeDescription,
    List<StoreQuantityResponse>? stores,
    String? itemCode,
    String? descriptionHTML,
    @Default(StockStatus.outOfStock) StockStatus status,
    String? volume,
  }) = DefaultProduct;

  int get hash => Object.hash(
      id,
      const DeepCollectionEquality()
          .hash(modifierGroups.map((e) => e.hash).toSet()));

  double get finalPriceByOne {
    double finalModifierPrice = modifierGroups.fold<double>(0.0,
        (previousValue, element) => previousValue += element.modifierPrice);
    return price + finalModifierPrice;
  }

  bool get isValidToOrder {
    switch (status) {
      case StockStatus.outOfStock:
        return false;
      case StockStatus.inStock:
        for (int i = 0; i < modifierGroups.length; i++) {
          if (!modifierGroups[i].isVaild) {
            return false;
          }
        }
        return true;
    }
  }

  bool get hasCaloriesIntake =>
      (calorieIntake.energyAmount != null && calorieIntake.energyAmount != 0) ||
      (calorieIntake.carbohydratesAmount != null &&
          calorieIntake.carbohydratesAmount != 0) ||
      (calorieIntake.proteinsAmount != null &&
          calorieIntake.proteinsAmount != 0) ||
      (calorieIntake.fatAmount != null && calorieIntake.fatAmount != 0);

  bool get isDescriptionEmpty =>
      (description?.isEmpty ?? true) && !hasCaloriesIntake;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'modifiers': modifierGroups
          .where((element) => element.selectedModifiers.isNotEmpty)
          .map((e) => e.toJson())
          .toList(),
    };
  }
}

@freezed
abstract class ModifierGroup with _$ModifierGroup {
  ModifierGroup._();

  factory ModifierGroup({
    required String id,
    required String name,
    required List<Modifier> modifiers,
    required List<Modifier> selectedModifiers,
    required int maxOptions,
    required int minOptions,
    required bool required,
    required ModifierSelectionType modifierSelectionType,
  }) = _ModifierGroup;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': 1,
      'name': name,
      'options': selectedModifiers.map((e) => e.toJson()).toList()
    };
  }

  int get hash => Object.hash(
      id,
      const DeepCollectionEquality()
          .hash(selectedModifiers.map((e) => e.hash).toSet()));

  double get modifierPrice {
    return selectedModifiers.fold(
        0.0,
        (previousValue, element) =>
            previousValue + element.price * element.amount);
  }

  bool get isVaild {
    return (!this.required ||
            (selectedModifiers.length >= minOptions &&
                selectedModifiers.length <= maxOptions)) &&
        selectedModifiers.every((element) => element.isVaild);
  }
}

@freezed
abstract class Modifier with _$Modifier {
  const Modifier._();

  const factory Modifier({
    required final String id,
    final String? groupId,
    required final String name,
    required final double price,
    required int amount,
    required final int maxOptions,
    required final int minOptions,
    required bool required,
    @Default(false) bool byDefault,
  }) = _Modifier;

  bool get isVaild => amount >= minOptions && amount <= maxOptions;

  double get finalPrice => amount * price;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'quantity': amount > 0 ? amount : 1,
      'price': price,
    };
  }

  int get hash => Object.hash(id, amount);
}

enum StockStatus {
  @JsonValue('outofstock')
  outOfStock,
  @JsonValue('instock')
  inStock,
}

extension StringValueStockStatus on StockStatus {
  String formatString() {
    switch (this) {
      case StockStatus.outOfStock:
        return 'outofstock';
      case StockStatus.inStock:
        return 'instock';
    }
  }
}
