import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/assortment_response/assortment_response.dart';
import 'package:sosedifedi/data/models/config/config.dart';
import 'package:sosedifedi/data/repository/remote_config_repository.dart';
import 'package:sosedifedi/domain/models/assortment/assortment.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/extensions.dart';

@singleton
class AssortmentMapper {
  AssortmentMapper({
    required this.appEnvironment,
    required this.remoteConfigRepository,
  });

  final AppEnvironment appEnvironment;
  final RemoteConfigRepository remoteConfigRepository;

  List<Group> getCategoryList({
    required AssortmentResponse assortment,
  }) {
    return _getCategoryList(
      assortment: assortment,
      groupId: null,
    ).where((element) => element.isNotEmpty).toList();
  }

  List<Product> getProductsList({
    required AssortmentResponse assortment,
  }) {
    return _getAllProducts(
      assortment: assortment,
    ).toList();
  }

  Iterable<Group> _getCategoryList({
    required AssortmentResponse assortment,
    String? groupId,
  }) sync* {
    for (final group in assortment.groups) {
      if (groupId != group.groupId) {
        continue;
      }
      final subGroups = _getCategoryList(
        assortment: assortment,
        groupId: group.id,
      ).toList();

      final productMapByStatus = _getProductList(
        assortment: assortment,
        groupID: group.id,
      ).toList().groupBy((e) => e.status);

      final products = [
        ...?productMapByStatus[StockStatus.inStock],
        if (remoteConfigRepository.config.outOfStockBehavior ==
            OutOfStockBehavior.show)
          ...?productMapByStatus[StockStatus.outOfStock],
      ];

      if (subGroups.isEmpty && products.isEmpty) {
        continue;
      }

      yield Group(
        id: group.id,
        name: group.name,
        subGroups: subGroups,
        products: products,
        image: group.image,
      );
    }
  }

  Iterable<Product> _getAllProducts({
    required AssortmentResponse assortment,
  }) sync* {
    for (final product in assortment.products) {
      yield _parseProduct(
        assortment: assortment,
        product: product,
      );
    }
  }

  Iterable<Product> _getProductList({
    required AssortmentResponse assortment,
    String? groupID,
  }) sync* {
    for (final product in assortment.products) {
      if (groupID != product.groupId) {
        continue;
      }
      yield _parseProduct(
        assortment: assortment,
        product: product,
      );
    }
  }

  Product? getProduct({
    required AssortmentResponse assortment,
    required String id,
  }) {
    final product =
        assortment.products.firstWhere((element) => element.id == id);
    return _parseProduct(
      assortment: assortment,
      product: product,
    );
  }

  Product? getProductByBarcode({
    required AssortmentResponse assortment,
    required String barcode,
  }) {
    final product = assortment.products.firstWhereOrNull(
        (element) => element.barcodes?.contains(barcode) ?? false);
    if (product == null) {
      return null;
    }
    return _parseProduct(
      assortment: assortment,
      product: product,
    );
  }

  Product? getProductBySKU({
    required AssortmentResponse assortment,
    required int sku,
  }) {
    final product =
        assortment.products.firstWhereOrNull((element) => element.sku == sku);
    if (product == null) {
      return null;
    }
    return _parseProduct(
      assortment: assortment,
      product: product,
    );
  }

  Group? getGroup({
    required AssortmentResponse assortment,
    required String id,
  }) {
    final group = assortment.groups.firstWhere((element) => element.id == id);
    final subGroups = _getCategoryList(
      assortment: assortment,
      groupId: group.id,
    ).toList();

    final products = _getProductList(
      assortment: assortment,
      groupID: group.id,
    ).toList();

    return Group(
      id: group.id,
      name: group.name,
      subGroups: subGroups,
      products: products,
      image: group.image,
    );
  }

  List<Product> searchProductByName({
    required AssortmentResponse assortment,
    required String query,
  }) {
    return assortment.products
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()))
        .map((e) => _parseProduct(
              assortment: assortment,
              product: e,
            ))
        .whereNotNull()
        .toList();
  }

  Iterable<ModifierGroup> _getModifierGroups({
    required AssortmentResponse assortment,
    required List<String> ids,
  }) sync* {
    for (final modifierGroup in assortment.modifiersGroups) {
      if (!ids.contains(modifierGroup.id)) {
        continue;
      }
      final options = _getmodifierGroups(
        assortment: assortment,
        modifierGroupID: modifierGroup.id,
      ).toList();

      yield ModifierGroup(
        id: modifierGroup.id,
        name: modifierGroup.name,
        modifiers: options,
        selectedModifiers:
            options.where((element) => element.byDefault).toList(),
        maxOptions: modifierGroup.restrictions.maxQuantity,
        minOptions: modifierGroup.restrictions.minQuantity,
        required: modifierGroup.restrictions.required,
        modifierSelectionType: modifierGroup.modifierSelectionType,
      );
    }
  }

  Iterable<Modifier> _getmodifierGroups({
    required AssortmentResponse assortment,
    required String modifierGroupID,
  }) sync* {
    for (final modifier in assortment.modifiers) {
      if (modifierGroupID != modifier.groupId) {
        continue;
      }
      yield Modifier(
        id: modifier.id,
        name: modifier.name,
        maxOptions: modifier.restrictions.maxQuantity,
        minOptions: modifier.restrictions.minQuantity,
        amount: modifier.restrictions.byDefault > 0
            ? modifier.restrictions.byDefault
            : 1,
        price: modifier.price,
        required: modifier.restrictions.required,
        byDefault: modifier.restrictions.byDefault > 0,
      );
    }
  }

  Product _parseProduct({
    required AssortmentResponse assortment,
    required ProductResponse product,
  }) {
    String getKeywords(ProductResponse product) =>
        '${product.name}${product.barcodes?.join() ?? ''}'.trim().toLowerCase();

    final status =
        product.quantity > 0 ? StockStatus.inStock : StockStatus.outOfStock;

    return Product(
      id: product.id,
      groupId: product.groupId,
      name: product.name,
      price: product.price,
      imageUrl: switch (product.image) {
        String value when value.isNotEmpty => value,
        _ => null,
      },
      currencySymbol: product.currencySymbol,
      modifierGroups: _getModifierGroups(
        assortment: assortment,
        ids: product.modifiersGroup,
      ).toList(),
      description: product.description,
      calorieIntake: product.calorieIntake,
      shortName: product.shortName ?? product.name,
      isDefault: product.isDefault,
      ingredientsDescription: product.ingredientsDescription,
      sizeDescription: product.sizeDescription,
      stores: product.stores,
      itemCode: product.itemCode,
      descriptionHTML: product.descriptionHTML,
      status: status,
      keywords: getKeywords(product),
      weight: product.weight,
      folderId: product.folderId,
      volume: product.volume,
    );
  }
}
