import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sosedifedi/domain/bloc/order_details_bloc/order_details_bloc.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/currency.dart';

import 'order_product_list_widget.dart';
import 'order_title_widget.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({
    super.key,
    required this.order,
    this.onCreateReviewPressed,
  });

  final AcceptedOrder order;
  final VoidCallback? onCreateReviewPressed;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        clipBehavior: Clip.none,
        controller: ModalScrollController.of(context),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: AppInsets.padding24,
              left: AppInsets.padding24,
              right: AppInsets.padding24,
              bottom: AppInsets.padding24 +
                  MediaQuery.of(context).viewPadding.bottom,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    text: context.tr(
                                        LocaleKeys.orderDetails_bonusPayment),
                                  ),
                                  TextSpan(
                                    text: Currency.convertToPrice(
                                        '', order.bonusesSum),
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
                    if (order.ofdReceiptUrl != null) ...[
                      const DownloadReceiptButton(),
                      const Divider(
                        height: AppInsets.padding40,
                      ),
                    ],
                  ],
                ),
                FilledButtonWithArrow(
                  onPressed: onCreateReviewPressed,
                  label: Text(
                    context.tr(LocaleKeys.orderDetails_createReview),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class _OrderDetailsButtonWrapper extends StatelessWidget {
  const _OrderDetailsButtonWrapper({
    super.key,
    this.onPressed,
    required this.child,
  });

  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      button: true,
      enabled: true,
      child: GestureDetector(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppInsets.padding4,
          ),
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ) ??
                const TextStyle(),
            child: child,
          ),
        ),
      ),
    );
  }
}

class DownloadReceiptButton extends StatelessWidget {
  const DownloadReceiptButton({super.key});

  @override
  Widget build(BuildContext context) {
    return _OrderDetailsButtonWrapper(
      onPressed: () => context.read<OrderDetailsBloc>().onOpenReceiptPressed(),
      child: Text(
        context.tr(LocaleKeys.orderDetails_downloadReceipt),
      ),
    );
  }
}

class ReportProblemButton extends StatelessWidget {
  const ReportProblemButton({super.key});

  @override
  Widget build(BuildContext context) {
    return _OrderDetailsButtonWrapper(
      onPressed: () {
        context.router.push(const ReportProblemPopup());
      },
      child: Text(
        context.tr(LocaleKeys.orderDetails_reportProblem),
        style: TextStyle(
          color: Theme.of(context).colorScheme.error,
        ),
      ),
    );
  }
}
