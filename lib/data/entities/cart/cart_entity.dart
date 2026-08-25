import 'package:collection/collection.dart';
import 'package:isar_community/isar.dart';

part 'cart_entity.g.dart';

@collection
class CartEntity {
  CartEntity({
    this.userId,
    this.storeId,
    this.fridgeId,
    int? itemId,
  }) : id = itemId ?? Isar.autoIncrement;

  Id id;

  @Index(unique: true, replace: true, type: IndexType.hash)
  String? userId;

  String? storeId;

  String? fridgeId;

  final products = IsarLinks<CartItemEntity>();
}

@collection
class CartItemEntity {
  CartItemEntity({
    required this.itemId,
    required this.modifierGroups,
    required this.name,
    required this.amount,
    required this.barcodeList,
  });

  Id id = Isar.autoIncrement;
  @Index(caseSensitive: false)
  String itemId;
  List<CartItemModifierGroup> modifierGroups;
  String name;
  double amount;
  List<RawBarcodeEntity> barcodeList;

  final products = IsarLinks<CartItemEntity>();

  @Backlink(to: 'products')
  final cart = IsarLink<CartEntity>();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CartItemEntity &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            const DeepCollectionEquality()
                .equals(other.modifierGroups, modifierGroups));
  }

  @ignore
  @override
  int get hashCode => Object.hash(runtimeType, itemId,
      const DeepCollectionEquality().hash(modifierGroups), name);
}

@embedded
class CartItemModifierGroup {
  CartItemModifierGroup({
    this.itemId,
    this.name,
    this.modifiers,
  });

  String? itemId;
  List<CartItemModifier>? modifiers;
  String? name;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CartItemModifierGroup &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            const DeepCollectionEquality().equals(other.modifiers, modifiers) &&
            (identical(other.name, name) || other.name == name));
  }

  @ignore
  @override
  int get hashCode => Object.hash(runtimeType, itemId,
      const DeepCollectionEquality().hash(modifiers), name);
}

@embedded
class CartItemModifier {
  CartItemModifier({
    this.itemId,
    this.name,
    this.amount,
  });

  String? itemId;
  int? amount;
  String? name;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CartItemModifier &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @ignore
  @override
  int get hashCode => Object.hash(runtimeType, itemId, name, amount);
}

@embedded
class RawBarcodeEntity {
  RawBarcodeEntity({
    this.rawValue,
    this.format,
  });

  String? rawValue;
  int? format;
}
