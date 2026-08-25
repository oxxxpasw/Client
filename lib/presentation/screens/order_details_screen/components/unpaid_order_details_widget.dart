import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/keys/onboarding_keys.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/currency.dart';

import 'order_product_list_widget.dart';
import 'order_title_widget.dart';

class UnpaidOrderDetailsWidget extends StatelessWidget {
  const UnpaidOrderDetailsWidget({
    super.key,
    required this.order,
    this.canPayOrder = false,
    this.onPayOrderPressed,
    this.onCancelPressed,
    this.isLoading = false,
  });

  final AcceptedOrder order;
  final bool canPayOrder;

  final bool isLoading;

  final VoidCallback? onPayOrderPressed;
  final VoidCallback? onCancelPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            clipBehavior: Clip.none,
            controller: ModalScrollController.of(context),
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewPadding.bottom,
            ),
            child: Padding(
              padding: const EdgeInsets.all(
                AppInsets.padding24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  OrderTitleCard(
                    order: order,
                  ),
                  const Divider(
                    height: AppInsets.padding40,
                  ),
                  OrderProductsList(
                    products: order.products,
                    currencySymbol: order.currencySymbol,
                    price: order.totalSum,
                  ),
                  const Divider(
                    height: AppInsets.padding40,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      spacing: AppInsets.padding8,
                      runSpacing: AppInsets.padding8,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        if (order.bonusesSum > 0)
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                              children: [
                                TextSpan(
                                  text: context
                                      .tr(LocaleKeys.orderDetails_bonusPayment),
                                ),
                                TextSpan(
                                  text: Currency.convertToPrice(
                                    '',
                                    order.bonusesSum,
                                  ),
                                  style: TextStyle(
                                    color: ColorScheme.of(context).primary,
                                  ),
                                )
                              ],
                            ),
                          )
                        else
                          const SizedBox.shrink(),
                        Text(
                          '${context.tr(LocaleKeys.orderHistory_summ)}: ${Currency.convertToPrice(order.currencySymbol, order.totalSum)}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: AppInsets.padding40,
                  ),
                ],
              ),
            ),
          ),
        ),
        OrderDetailsPaymentInfoWidget(
          canPayOrder: canPayOrder,
          order: order,
          onPayOrderPressed: onPayOrderPressed,
          onCancelPressed: onCancelPressed,
          isLoading: isLoading,
        ),
      ],
    );
  }
}

class OrderDetailsPaymentInfoWidget extends StatelessWidget {
  const OrderDetailsPaymentInfoWidget({
    super.key,
    required this.order,
    this.canPayOrder = false,
    this.onPayOrderPressed,
    this.onCancelPressed,
    this.isLoading = false,
  });

  final AcceptedOrder order;
  final bool canPayOrder;

  final bool isLoading;

  final VoidCallback? onPayOrderPressed;
  final VoidCallback? onCancelPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            AppInsets.padding16,
          ),
          child: Column(
            children: [
              if (canPayOrder) ...[
                // PaymentInfoWidget(
                //   paymentType: paymentType,
                //   totalPrice: order.totalPrice,
                //   currencySymbol: order.currencySymbol,
                // ),
                // const SizedBox(
                //   height: AppInsets.padding24,
                // ),
                SizedBox(
                  width: double.infinity,
                  child: Builder(builder: (context) {
                    if (isLoading) {
                      return FilledButton(
                        key: OnboardingKeys.unpaidOrderActionButtonKey,
                        onPressed: null,
                        child: const CircularProgressIndicator.adaptive(),
                      );
                    }
                    return FilledButtonWithArrow(
                      key: OnboardingKeys.unpaidOrderActionButtonKey,
                      onPressed: isLoading ? null : onPayOrderPressed,
                      label: isLoading
                          ? const CircularProgressIndicator.adaptive()
                          : Text(
                              "${context.tr(LocaleKeys.cart_checkout)} | ${Currency.convertToPrice(order.currencySymbol, order.totalSum)}",
                            ),
                    );
                  }),
                ),
              ],
              if (onCancelPressed != null)
                Padding(
                  padding: const EdgeInsets.only(top: AppInsets.padding8),
                  child: SizedBox(
                    width: 260.0,
                    child: TextButton(
                      key: OnboardingKeys.unpaidOrderCancelButtonKey,
                      style: TextButton.styleFrom(
                        side: BorderSide.none,
                      ),
                      onPressed: onCancelPressed,
                      child: Text(
                        context.tr(LocaleKeys.orderDetails_cancelOrder),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
