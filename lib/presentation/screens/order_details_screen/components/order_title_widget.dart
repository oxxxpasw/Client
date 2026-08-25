import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class OrderTitleCard extends StatelessWidget {
  const OrderTitleCard({
    super.key,
    required this.order,
  });

  final AcceptedOrder order;

  @override
  Widget build(BuildContext context) {
    final TextStyle style = switch (order.type) {
      AcceptedOrderType.unpaid ||
      AcceptedOrderType.cancelled ||
      AcceptedOrderType.refund =>
        TextStyle(color: Theme.of(context).colorScheme.error),
      AcceptedOrderType.paid => const TextStyle(),
    };

    final String text;

    if (order.type == AcceptedOrderType.paid) {
      text = context.tr(LocaleKeys.orderDetails_purchase);
    } else {
      text = context.tr(LocaleKeys.orderDetails_purchaseWithStatus, args: [
        switch (order.type) {
          AcceptedOrderType.unpaid =>
            context.tr(LocaleKeys.orderDetails_statuses_unpaid),
          AcceptedOrderType.cancelled =>
            context.tr(LocaleKeys.orderDetails_statuses_cancelled),
          AcceptedOrderType.refund =>
            context.tr(LocaleKeys.orderDetails_statuses_refunded),
          _ => '',
        }
      ]);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrderTitleProperty(
          title: Text(
            text,
            style: style,
          ),
          value: Text(
              DateFormat('dd.MM.yyyy HH:mm').format(order.createdDateTime)),
        ),
        if (order.storeName != null) ...[
          Padding(
            padding: const EdgeInsets.only(top: AppInsets.padding16),
            child: OrderTitleProperty(
              title: Text(context.tr(LocaleKeys.orderDetails_microMarket)),
              value: Text(
                LocaleKeys.orderHistory_orderCard_title.tr(
                  context: context,
                  namedArgs: {
                    'name': order.storeName ?? '',
                    'address': order.storeAddress ?? '',
                  },
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class OrderTitleProperty extends StatelessWidget {
  const OrderTitleProperty({
    super.key,
    required this.title,
    required this.value,
  });

  final Widget title;
  final Widget value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTextStyle.merge(
          style: Theme.of(context).textTheme.labelLarge,
          child: title,
        ),
        const SizedBox(
          height: AppInsets.padding4,
        ),
        DefaultTextStyle.merge(
          style: Theme.of(context).textTheme.bodyMedium,
          child: value,
        )
      ],
    );
  }
}
