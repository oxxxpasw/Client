import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/domain/models/assortment/assortment.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/currency.dart';
import 'package:sosedifedi/utils/utils.dart';

@Deprecated('Не должен использоваться.')
class ProductGroupCard extends StatelessWidget {
  const ProductGroupCard({
    super.key,
    this.onPressed,
    required this.group,
    this.onButtonPressed,
    this.color,
  });

  final VoidCallback? onPressed;
  final VoidCallback? onButtonPressed;
  final Group group;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: color,
        clipBehavior: Clip.hardEdge,
        child: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final price = group.price;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppBorderRadius.large),
          child: LayoutBuilder(builder: (context, constraints) {
            return CachedNetworkImage(
              width: constraints.maxWidth,
              height: constraints.maxWidth,
              fit: BoxFit.contain,
              imageUrl: group.image!,
            );
          }),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(AppInsets.padding8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  group.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: AppInsets.padding4,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '800гр',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context)
                                .extension<CustomThemeExtension>()!
                                .labelColor,
                          ),
                      textAlign: TextAlign.right,
                    ),
                    Text(
                      price != null
                          ? Currency.convertToPrice(
                              group.currencySymbol!, price)
                          : '',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppInsets.padding8,
                ),
                TextButton(
                  onPressed: onButtonPressed,
                  style: TextButton.styleFrom(
                    minimumSize: const Size.fromHeight(0.0),
                    padding: const EdgeInsets.symmetric(
                      vertical: AppInsets.padding8,
                      horizontal: AppInsets.padding16,
                    ),
                    backgroundColor: Theme.of(context).colorScheme.background,
                    foregroundColor: Theme.of(context).colorScheme.primary,
                    textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(context.tr(LocaleKeys.products_showOnMap)),
                      const SizedBox(
                        width: AppInsets.padding4,
                      ),
                      const Icon(DerevenkaDobrenkaIcons.arrowRight),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.onPressed,
    this.onButtonPressed,
    required this.product,
    this.available = true,
    this.labelStyle,
    this.priceStyle,
    this.productWeightStyle,
    this.isSelected = false,
  });

  final VoidCallback? onPressed;

  ///Если значение равно null, то кнопка не отображается
  final VoidCallback? onButtonPressed;

  final Product product;

  final bool available;

  final bool isSelected;

  final TextStyle? labelStyle;
  final TextStyle? priceStyle;
  final TextStyle? productWeightStyle;

  @override
  Widget build(BuildContext context) {
    Widget productInfo = Padding(
      padding: const EdgeInsets.all(AppBorderRadius.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: _ProductInfo(
              product: product,
              labelStyle: labelStyle,
              priceStyle: priceStyle,
              productWeightStyle: productWeightStyle,
            ),
          ),
          if (onButtonPressed != null)
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: _buildActionButton(context),
            )
        ],
      ),
    );

    Widget image = LayoutBuilder(
      builder: (context, constraints) {
        final imageUrl = product.imageUrl;
        if (imageUrl == null || imageUrl.isEmpty) {
          return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxWidth,
          );
        }
        return CachedNetworkImage(
          width: constraints.maxWidth,
          height: constraints.maxWidth,
          fit: BoxFit.contain,
          imageUrl: imageUrl,
        );
      },
    );

    if (!available) {
      final color =
          Theme.of(context).extension<CustomThemeExtension>()?.labelColor ??
              Colors.grey;
      productInfo = ColorFiltered(
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.srcIn,
        ),
        child: productInfo,
      );
      image = Opacity(
        opacity: 0.5,
        child: image,
      );
    }

    final border = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppBorderRadius.medium),
      side: isSelected
          ? BorderSide(
              color: ColorScheme.of(context).primary,
              width: 2.0,
            )
          : BorderSide.none,
    );

    return GestureDetector(
      onTap: onPressed,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: border,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppBorderRadius.medium),
              child: image,
            ),
            Expanded(
              child: productInfo,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(BuildContext context) {
    const size = Size.fromHeight(32.0);
    if (available) {
      return TextButton(
        onPressed: onButtonPressed,
        style: TextButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: size,
          padding: const EdgeInsets.symmetric(
            vertical: AppInsets.padding8,
            horizontal: AppInsets.padding16,
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          foregroundColor: Theme.of(context).colorScheme.primary,
          textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.tr(LocaleKeys.products_showOnMap)),
            const SizedBox(
              width: AppInsets.padding4,
            ),
            const Icon(
              DerevenkaDobrenkaIcons.arrowRight,
              size: 20.0,
            ),
          ],
        ),
      );
    }
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: size.width,
        minHeight: size.height,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppInsets.padding8,
          horizontal: AppInsets.padding16,
        ),
        child: Center(
          child: Text(
            context.tr(LocaleKeys.products_notAvailable),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }
}

class ProductCardWithoutImage extends StatelessWidget {
  const ProductCardWithoutImage({
    super.key,
    this.onPressed,
    this.onButtonPressed,
    required this.product,
    this.available = true,
    this.isSelected = false,
  });

  final VoidCallback? onPressed;

  ///Если значение равно null, то кнопка не отображается
  final VoidCallback? onButtonPressed;

  final Product product;

  final bool available;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    Widget productInfo = Padding(
      padding: const EdgeInsets.all(AppBorderRadius.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: _ProductInfo(
              product: product,
              labelMaxLines: 3,
              showWeight: true,
            ),
          ),
          if (onButtonPressed != null)
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: _buildActionButton(context),
            )
        ],
      ),
    );

    if (!available) {
      final color =
          Theme.of(context).extension<CustomThemeExtension>()?.labelColor ??
              Colors.grey;
      productInfo = ColorFiltered(
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.srcIn,
        ),
        child: productInfo,
      );
    }

    final border = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppBorderRadius.medium),
      side: isSelected
          ? BorderSide(
              color: ColorScheme.of(context).primary,
              width: 2.0,
            )
          : BorderSide.none,
    );

    return GestureDetector(
      onTap: onPressed,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: border,
        child: productInfo,
      ),
    );
  }

  Widget _buildActionButton(BuildContext context) {
    const size = Size.fromHeight(32.0);
    if (available) {
      return TextButton(
        onPressed: onButtonPressed,
        style: TextButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: size,
          padding: const EdgeInsets.symmetric(
            vertical: AppInsets.padding8,
            horizontal: AppInsets.padding16,
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          foregroundColor: Theme.of(context).colorScheme.primary,
          textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.tr(LocaleKeys.products_showOnMap)),
            const SizedBox(
              width: AppInsets.padding4,
            ),
            const Icon(
              DerevenkaDobrenkaIcons.arrowRight,
              size: 20.0,
            ),
          ],
        ),
      );
    }
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: size.width,
        minHeight: size.height,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppInsets.padding8,
          horizontal: AppInsets.padding16,
        ),
        child: Center(
          child: Text(
            context.tr(LocaleKeys.products_notAvailable),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }
}

class _ProductInfo extends StatelessWidget {
  const _ProductInfo({
    super.key,
    required this.product,
    this.labelStyle,
    this.priceStyle,
    this.productWeightStyle,
    this.labelMaxLines = 2,
    this.showWeight = false,
  });

  final Product product;

  final TextStyle? labelStyle;
  final TextStyle? priceStyle;
  final TextStyle? productWeightStyle;

  final int labelMaxLines;

  final bool showWeight;

  @override
  Widget build(BuildContext context) {
    final effectiveLabelStyle = labelStyle ??
        TextTheme.of(context).bodyMedium!.copyWith(fontWeight: FontWeight.w600);
    final effectivePriceStyle = priceStyle ??
        TextTheme.of(context).bodyMedium!.copyWith(
              fontWeight: FontWeight.w500,
            );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.name,
          style: effectiveLabelStyle,
          textAlign: TextAlign.left,
          maxLines: labelMaxLines,
          overflow: TextOverflow.ellipsis,
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (showWeight)
              ProductWeight(
                weight: product.calorieIntake.weight,
                weightMeasure: product.calorieIntake.weightMeasure,
                style: effectivePriceStyle.copyWith(
                  color: ColorScheme.of(context).surfaceContainerHighest,
                ),
              )
            else
              const SizedBox.shrink(),
            Text(
              Currency.convertToPrice(
                product.currencySymbol,
                product.price,
              ),
              style: effectivePriceStyle.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ],
    );
  }
}

class ProductWeight extends StatelessWidget {
  const ProductWeight({
    super.key,
    this.weight,
    this.weightMeasure,
    this.style,
  });

  final double? weight;
  final String? weightMeasure;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final weight = this.weight;
    if (weight == null || weight <= 0.0) {
      return const SizedBox.shrink();
    }
    return Text(
      '${weight?.toFormatString()}${weightMeasure ?? ''}',
      style: style,
      textAlign: TextAlign.right,
    );
  }
}
