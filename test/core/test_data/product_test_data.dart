import 'package:sosedifedi/data/models/category/category.dart';
import 'package:sosedifedi/data/models/product/product.dart';
import 'package:sosedifedi/data/models/short_product/short_product.dart';

abstract class ProductTestData {
  static const assortmentFile = 'some_file_id';

  static const productList = [
    ShortProduct(
      id: 1,
      labelKey: 'Product1',
      type: ProductType.defaultProduct,
      nomenclatureCode: '',
      stockStatus: StockStatus.inStock,
      currencySymbol: '',
      categoryId: 1,
    ),
    ShortProduct(
      id: 2,
      labelKey: 'Product2',
      type: ProductType.defaultProduct,
      nomenclatureCode: '',
      stockStatus: StockStatus.inStock,
      currencySymbol: '',
      categoryId: 1,
    )
  ];
  static const categoryItems = [
    CategoryTreeItem(id: 1, labelKey: 'Category1', count: 2, subCats: []),
    CategoryTreeItem(id: 2, labelKey: 'Category2', count: 0, subCats: []),
  ];
  static const categoryWithProducts = [
    CategoryWithProducts(
      termId: 1,
      labelKey: 'Category1',
      products: productList,
      subCats: [],
    )
  ];
}
