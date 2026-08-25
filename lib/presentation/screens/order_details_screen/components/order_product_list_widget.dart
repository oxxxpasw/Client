import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/domain/models/order/ordered_modifier/ordered_modifier.dart';
import 'package:sosedifedi/domain/models/order/ordered_product/ordered_product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/separated_widgets.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/currency.dart';
import 'package:sosedifedi/utils/utils.dart';

class OrderProductsList extends StatelessWidget {
  const OrderProductsList({
    super.key,
    required this.products,
    required this.currencySymbol,
    required this.price,
  });

  final List<OrderedProduct> products;
  final double price;
  final String currencySymbol;

  @override
  Widget build(BuildContext context) {
    return SeparatedColumn(
      separator: const SizedBox(
        height: AppInsets.padding16,
      ),
      children: products
          .map(
            (e) => OrderedProductCard(
              product: e,
              currencySymbol: currencySymbol,
            ),
          )
          .toList(),
    );
  }
}

class OrderedProductCard extends StatelessWidget {
  const OrderedProductCard({
    super.key,
    required this.product,
    required this.currencySymbol,
  });

  final OrderedProduct product;
  final String currencySymbol;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      product.name,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    if (product.modifiers.isNotEmpty) ...[
                      const SizedBox(
                        height: AppInsets.padding4,
                      ),
                      _buildModifiersList(
                          product.modifiers
                              .where((element) => element.options.isNotEmpty)
                              .toList(),
                          currencySymbol,
                          context)
                    ],
                    const SizedBox(
                      height: AppInsets.padding4,
                    ),
                    Text(
                      context.tr(
                        LocaleKeys.orderHistory_amount,
                        args: [product.quantity.toFormatString()],
                      ),
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                Currency.convertToPrice(
                  currencySymbol,
                  product.price,
                ),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              if (product.price != product.amount)
                Text(
                  Currency.convertToPrice(
                    currencySymbol,
                    product.amount,
                  ),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: ColorScheme.of(context).surfaceContainerHighest,
                        decoration: TextDecoration.lineThrough,
                      ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildModifiersList(
    List<OrderedModifier> modifiers,
    String currencySymbol,
    BuildContext context,
  ) {
    final titleList = modifiers.map((modifier) {
      final optionList = modifier.options.map((option) => option.name).toList();
      return '${modifier.name}: ${optionList.join(', ')}';
    }).toList();
    final children = <Widget>[];
    for (var i = 0; i < titleList.length; i++) {
      children.add(
        Text(
          titleList[i],
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context)
                    .extension<CustomThemeExtension>()!
                    .labelColor,
              ),
        ),
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
