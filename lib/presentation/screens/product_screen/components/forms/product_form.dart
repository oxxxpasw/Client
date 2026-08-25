import 'package:flutter_html/flutter_html.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/screens/product_screen/components/hidden_content.dart';
import 'package:sosedifedi/presentation/screens/product_screen/components/product_description.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

typedef OnProductSelect = void Function(Product product);

class ProductForm extends StatelessWidget {
  const ProductForm({
    super.key,
    required this.selectedProduct,
    required this.onProductSelect,
    this.controller,
  });

  final Product selectedProduct;
  final HiddenContentController? controller;
  final OnProductSelect onProductSelect;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            if (selectedProduct.hasCaloriesIntake)
              Padding(
                padding: const EdgeInsets.only(bottom: AppInsets.padding16),
                child: ProductDescription(
                  product: selectedProduct,
                ),
              ),
            const Divider(
              height: 1.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: AppInsets.padding16),
              child: SelectionArea(
                child: _buildDescription(
                  context,
                  selectedProduct,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDescription(BuildContext context, Product product) {
    if (product.descriptionHTML != null &&
        product.descriptionHTML!.isNotEmpty) {
      return HtmlDescription(data: product.descriptionHTML!);
    }
    return TextDescription(
      product: product,
    );
  }
}

class TextDescription extends StatelessWidget {
  const TextDescription({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildItem(
          context,
          context.tr(LocaleKeys.products_descr),
          product.description,
        ),
        _buildItem(
          context,
          context.tr(LocaleKeys.products_ingredients),
          product.ingredientsDescription,
        ),
      ],
    );
  }

  Widget _buildItem(BuildContext context, String title, String? data) {
    if (data == null || data.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: AppInsets.padding8,
        ),
        Text(
          data,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: AppInsets.padding24,
        ),
      ],
    );
  }
}

class HtmlDescription extends StatelessWidget {
  const HtmlDescription({
    super.key,
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    final styles = {
      'body': Style(
        padding: HtmlPaddings.zero,
      )
    };

    return Html(
      data: data,
      style: styles,
    );
  }
}
