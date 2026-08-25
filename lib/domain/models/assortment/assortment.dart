import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/domain/models/product/product.dart';

part 'assortment.freezed.dart';

@freezed
abstract class Group with _$Group {
  const Group._();
  factory Group({
    required String id,
    List<Product>? products,
    List<Group>? subGroups,
    required String name,
    String? image,
  }) = _Group;

  bool get isNotEmpty =>
      (subGroups != null && subGroups!.any((element) => element.isNotEmpty)) ||
      (products != null && products!.isNotEmpty);

  bool get isEmpty => !isNotEmpty;

  double? get price => products != null && products!.isNotEmpty
      ? products!.first.price
      : subGroups?.firstOrNull?.price;

  String? get currencySymbol => products != null && products!.isNotEmpty
      ? products!.first.currencySymbol
      : subGroups?.firstOrNull?.currencySymbol;
}
