import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sosedifedi/data/models/assortment_response/assortment_response.dart';
import 'package:sosedifedi/domain/bloc/cart_search_bloc/cart_search_bloc.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/input_number.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/currency.dart';

const _kImageSize = 82.0;

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.onAddToCartPressed,
  });

  final Product product;
  final VoidCallback onAddToCartPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        const SizedBox(
                          height: AppInsets.padding4,
                        ),
                        Text(
                          '${product.calorieIntake.weight} ${product.calorieIntake.weightMeasure}',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context)
                                        .extension<CustomThemeExtension>()!
                                        .labelColor,
                                  ),
                        ),
                        if (product.hasCaloriesIntake)
                          Text(
                            _buildCaloriesIntake(
                              context,
                              product.calorieIntake,
                            ),
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Theme.of(context)
                                          .extension<CustomThemeExtension>()!
                                          .labelColor,
                                    ),
                          ),
                        const SizedBox(
                          height: AppInsets.padding4,
                        ),
                      ],
                    ),
                    Text(
                      Currency.convertToPrice(
                        product.currencySymbol,
                        product.price,
                      ),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: AppInsets.padding16,
              ),
              Center(
                child: SizedBox(
                  height: 40.0,
                  child: ProductAmountWidget(
                    product: product,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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

class ProductAmountWidget extends StatelessWidget {
  const ProductAmountWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<CartSearchBloc, CartSearchState>(
        buildWhen: (previous, current) =>
            previous.productsToAddToCart != current.productsToAddToCart,
        builder: (context, state) {
          final amount = state.productsToAddToCart[product] ?? 0;
          return AnimatedAmountWidget(
            product: product,
            amount: amount.toInt(),
          );
        },
      ),
    );
  }
}

const _kAnimatedAmountDuration = Duration(milliseconds: 300);

class AnimatedAmountWidget extends StatefulWidget {
  const AnimatedAmountWidget({
    super.key,
    required this.product,
    required this.amount,
  });

  final Product product;
  final int amount;

  @override
  State<AnimatedAmountWidget> createState() => _AnimatedAmountWidgetState();
}

class _AnimatedAmountWidgetState extends State<AnimatedAmountWidget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final notInCart = widget.amount <= 0;

    final colorScheme = ColorScheme.of(context);

    return AnimatedContainer(
      clipBehavior: Clip.antiAlias,
      duration: _kAnimatedAmountDuration,
      decoration: ShapeDecoration(
        color: widget.amount <= 0
            ? colorScheme.surfaceContainer
            : colorScheme.primary,
        shape: const StadiumBorder(),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: AnimatedCrossFade(
          sizeCurve: Curves.easeOutCubic,
          alignment: Alignment.centerRight,
          crossFadeState:
              notInCart ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: _kAnimatedAmountDuration,
          firstChild: Align(
            alignment: Alignment.centerRight,
            heightFactor: 1.0,
            child: SizedBox(
              width: kInputNumberButtonSize.width,
              height: kInputNumberButtonSize.height,
              child: IconButton(
                padding: EdgeInsets.zero,
                iconSize: kInputNumberIconSize,
                onPressed: () {
                  context
                      .read<CartSearchBloc>()
                      .add(CartSearchEvent.onProductIncrement(widget.product));
                  HapticFeedback.mediumImpact();
                },
                color: colorScheme.primary,
                icon: const Icon(Icons.add),
              ),
            ),
          ),
          secondChild: Wrap(
            direction: Axis.vertical,
            children: [
              InputNumber(
                value: widget.amount,
                onPressedMinus: () {
                  context
                      .read<CartSearchBloc>()
                      .add(CartSearchEvent.onProductDecrement(widget.product));
                  HapticFeedback.mediumImpact();
                },
                onPressedPlus: () {
                  context
                      .read<CartSearchBloc>()
                      .add(CartSearchEvent.onProductIncrement(widget.product));
                  HapticFeedback.mediumImpact();
                },
                backgroundColor: Colors.transparent,
                foregroundColor: Theme.of(context).colorScheme.background,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
