import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:sosedifedi/domain/models/barcode/barcode.dart';
import 'package:sosedifedi/domain/models/cart/cart_model.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/utils/utils.dart';

const int _kGInKg = 1000;

String? getFormattedProductWeight(BuildContext context, CartItem cartItem) {
  if (!cartItem.product.weight) {
    final calorieIntake = cartItem.product.calorieIntake;
    final weight = calorieIntake.weight;
    if (weight != null && weight > 0) {
      return '${weight.toFormatString()}${calorieIntake.weightMeasure}';
    }
    return null;
  }

  final barcode = cartItem.barcodes.firstOrNull;
  if (barcode == null) {
    return null;
  }

  final weightG = barcode.getComponent<WeightGComponent>()?.value ?? 0;
  final weightKG = barcode.getComponent<WeightKGComponent>()?.value ?? 0;
  final totalWeightInG = weightG + (weightKG * _kGInKg);

  if (totalWeightInG <= 0) {
    return null;
  }

  if (totalWeightInG < _kGInKg) {
    return context
        .tr(LocaleKeys.cart_weightInG, args: [totalWeightInG.toString()]);
  } else {
    final weightInKg = totalWeightInG / _kGInKg;
    return context
        .tr(LocaleKeys.cart_weightInKG, args: [weightInKg.toFormatString()]);
  }
}
