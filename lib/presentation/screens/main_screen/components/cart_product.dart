import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/data/models/assortment_response/assortment_response.dart';
import 'package:sosedifedi/domain/models/cart/cart_model.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/input_number.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/cart_utils/cart_utils.dart';
import 'package:sosedifedi/utils/currency.dart';

class CartProduct extends StatelessWidget {
  const CartProduct({
    super.key,
    required this.cartItem,
    this.onDecrement,
    this.onDelete,
    this.onIncrement,
    this.onPressed,
  });

  final CartItem cartItem;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;
  final VoidCallback? onDelete;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final product = cartItem.product;

    return GestureDetector(
      onTap: onPressed,
      child: Material(
        type: MaterialType.transparency,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppInsets.padding16,
            vertical: AppInsets.padding16,
          ),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          Padding(
                            padding: const EdgeInsets.only(
                              top: AppInsets.padding2,
                            ),
                            child: Text(
                              product.name,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                          CartProductWeightWidget(
                            cartItem: cartItem,
                          ),
                          if (product.hasCaloriesIntake)
                            Padding(
                              padding: const EdgeInsets.only(
                                top: AppInsets.padding4,
                              ),
                              child: Text(
                                _buildCaloriesIntake(
                                  context,
                                  product.calorieIntake,
                                ),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .extension<CustomThemeExtension>()!
                                          .labelColor,
                                    ),
                              ),
                            ),
                          if (product.modifierGroups.isNotEmpty) ...[
                            const SizedBox(
                              height: AppInsets.padding8,
                            ),
                            _buildModifiersList(
                                product.modifierGroups
                                    .where((element) =>
                                        element.selectedModifiers.isNotEmpty)
                                    .toList(),
                                product.currencySymbol,
                                cartItem.amount,
                                context)
                          ],
                          const SizedBox(
                            height: AppInsets.padding8,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildPrice(context),
                        ],
                      ),
                    ],
                  ),
                ),
                if (product.weight)
                  const SizedBox()
                else
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: AppInsets.padding8,
                      ),
                      child: InputNumber(
                        value: cartItem.amount.toInt(),
                        onPressedMinus: onDecrement,
                        onPressedPlus: onIncrement,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildModifiersList(List<ModifierGroup> modifiers,
      String currencySymbol, double amount, BuildContext context) {
    final titleList = modifiers.map((modifier) {
      final optionList =
          modifier.selectedModifiers.map((option) => option.name).toList();
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

  Widget _buildPrice(BuildContext context) {
    final summ = cartItem.summ;
    final summWithoutDiscount = cartItem.summWithoutDiscount;

    if (summ == null) {
      return const SizedBox.shrink();
    }

    if (!cartItem.hasDiscount) {
      return Text(
        Currency.convertToPrice(
          cartItem.product.currencySymbol,
          summ,
        ),
        style: Theme.of(context).textTheme.titleSmall,
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          Currency.convertToPrice(
            cartItem.product.currencySymbol,
            summ,
          ),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          width: AppInsets.padding4,
        ),
        Text(
          Currency.convertToPrice(
            cartItem.product.currencySymbol,
            summWithoutDiscount ?? summ,
          ),
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                decoration: TextDecoration.lineThrough,
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
              ),
        ),
      ],
    );
  }

  String _buildCaloriesIntake(
      BuildContext context, CalorieIntake calorieIntake) {
    String getValue(double value) => value.toInt().toString();
    return context.tr(LocaleKeys.products_caloriesIntake_short, namedArgs: {
      'energy': getValue(calorieIntake.energyAmount ?? 0.0),
      'proteins': getValue(calorieIntake.proteinsAmount ?? 0.0),
      'fat': getValue(calorieIntake.fatAmount ?? 0.0),
      'carbohydrates': getValue(calorieIntake.carbohydratesAmount ?? 0.0),
    });
  }
}

class CartProductWeightWidget extends StatelessWidget {
  const CartProductWeightWidget({super.key, required this.cartItem});

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    final text = getFormattedProductWeight(context, cartItem);

    if (text == null || text.isEmpty) {
      return const SizedBox.shrink();
    }
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
    );
  }
}
