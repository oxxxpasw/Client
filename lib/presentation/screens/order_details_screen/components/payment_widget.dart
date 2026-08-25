import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/currency.dart';

class PaymentInfoWidget extends StatelessWidget {
  const PaymentInfoWidget({
    super.key,
    required this.paymentType,
    required this.totalPrice,
    this.currencySymbol,
  });

  final PaymentType? paymentType;
  final double totalPrice;
  final String? currencySymbol;

  @override
  Widget build(BuildContext context) {
    final Widget child;
    if (paymentType != null) {
      child = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (paymentType!.imageUrl != null)
            Padding(
              padding: const EdgeInsets.only(right: AppInsets.padding8),
              child: CachedNetworkImage(
                width: 24.0,
                height: 24.0,
                imageUrl: paymentType!.imageUrl!,
                fit: BoxFit.contain,
              ),
            ),
          Text(
            context.tr(LocaleKeys.cart_payment, args: [paymentType!.name]),
          ),
        ],
      );
    } else {
      child = Text(
        context.tr(LocaleKeys.cart_finalSumForPayment),
      );
    }

    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleSmall!,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          child,
          Text(
            Currency.convertToPrice(
              currencySymbol ?? '',
              totalPrice,
            ),
          ),
        ],
      ),
    );
  }
}
