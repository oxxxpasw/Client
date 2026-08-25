import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/currency.dart';

enum _AcceptedOrderCardType {
  defaultOrder,
  cancelledOrder,
  unpaidOrder,
}

class AcceptedOrderCard extends StatelessWidget {
  const AcceptedOrderCard({
    super.key,
    required this.order,
    this.onPressed,
  });

  final AcceptedOrder order;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final type = _getType();

    final cardColor = Theme.of(context).colorScheme.surface;

    final titleColor =
        Theme.of(context).extension<CustomThemeExtension>()?.accent ??
            Colors.red;
    final titleStyle = Theme.of(context).textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w600,
        );

    Widget orderDetails = AcceptedOrderDetails(
      order: order,
    );

    if (type == _AcceptedOrderCardType.cancelledOrder) {
      orderDetails = ColorFiltered(
        colorFilter: ColorFilter.mode(
          cardColor.withOpacity(0.7),
          BlendMode.srcATop,
        ),
        child: orderDetails,
      );
    }

    return Card(
      color: cardColor,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppBorderRadius.medium),
        side: type == _AcceptedOrderCardType.unpaidOrder
            ? BorderSide(color: titleColor, width: 2.0)
            : BorderSide.none,
      ),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(AppInsets.padding16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (type == _AcceptedOrderCardType.cancelledOrder)
                Text(
                  order.type == AcceptedOrderType.refund
                      ? context.tr(LocaleKeys.orderHistory_refundedOrder)
                      : context.tr(LocaleKeys.orderHistory_cancelledOrder),
                  style: titleStyle?.copyWith(color: titleColor),
                ),
              if (type == _AcceptedOrderCardType.unpaidOrder)
                Text(
                  context.tr(LocaleKeys.orderHistory_unpaidOrder),
                  style: titleStyle?.copyWith(color: titleColor),
                ),
              orderDetails,
            ],
          ),
        ),
      ),
    );
  }

  _AcceptedOrderCardType _getType() => switch (order.type) {
        AcceptedOrderType.cancelled ||
        AcceptedOrderType.refund =>
          _AcceptedOrderCardType.cancelledOrder,
        AcceptedOrderType.unpaid => _AcceptedOrderCardType.unpaidOrder,
        AcceptedOrderType.paid => _AcceptedOrderCardType.defaultOrder,
      };
}

class AcceptedOrderDetails extends StatelessWidget {
  const AcceptedOrderDetails({
    super.key,
    required this.order,
  });

  final AcceptedOrder order;

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w600,
        );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                LocaleKeys.orderHistory_orderCard_title.tr(
                  context: context,
                  namedArgs: {
                    'name': order.storeName ?? '',
                    'address': order.storeAddress ?? '',
                  },
                ),
                style: titleStyle,
              ),
            ),
            Text(
              Currency.convertToPrice(order.currencySymbol, order.totalSum),
              style: titleStyle,
            ),
          ],
        ),
        const SizedBox(
          height: AppInsets.padding8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              DateFormat('dd.MM.yyyy, HH:mm').format(order.createdDateTime),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              context.plural(
                  LocaleKeys.cart_cartItemsCount, order.products.length),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}
