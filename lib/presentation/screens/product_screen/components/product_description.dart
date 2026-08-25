import 'package:sosedifedi/data/models/assortment_response/assortment_response.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr(LocaleKeys.products_in100g),
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(
          height: AppInsets.padding8,
        ),
        buildCalorieIntake(context, product.calorieIntake),
      ],
    );
  }

  Widget buildCalorieIntake(BuildContext context, CalorieIntake calorieIntake) {
    String getValue(double value) => value.toInt().toString();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (calorieIntake.energyAmount != null)
          FoodValueItem(
            value: getValue(calorieIntake.energyAmount!),
            title: context.tr(LocaleKeys.products_caloriesIntake_energy),
          ),
        if (calorieIntake.proteinsAmount != null)
          FoodValueItem(
            value: getValue(calorieIntake.proteinsAmount!),
            title: context.tr(LocaleKeys.products_caloriesIntake_proteins),
          ),
        if (calorieIntake.fatAmount != null)
          FoodValueItem(
            value: getValue(calorieIntake.fatAmount!),
            title: context.tr(LocaleKeys.products_caloriesIntake_fat),
          ),
        if (calorieIntake.carbohydratesAmount != null)
          FoodValueItem(
            value: getValue(calorieIntake.carbohydratesAmount!),
            title: context.tr(LocaleKeys.products_caloriesIntake_carbohydrates),
          ),
      ],
    );
  }
}

class FoodValueItem extends StatelessWidget {
  const FoodValueItem({
    super.key,
    required this.title,
    required this.value,
  });

  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
