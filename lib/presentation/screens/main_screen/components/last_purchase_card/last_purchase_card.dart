import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/last_purchase_bloc/last_purchase_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/currency.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

import 'banner_widget.dart';
import 'feedback_banner.dart';

class LastPurchaseCard extends StatelessWidget {
  const LastPurchaseCard({
    super.key,
    this.shouldShowFeedbackBanner = false,
  });

  final bool shouldShowFeedbackBanner;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LastPurchaseBloc>(
      create: (context) => GetIt.I.get(param1: shouldShowFeedbackBanner),
      child: const _LastPurchaseView(),
    );
  }
}

class _LastPurchaseView extends StatelessWidget {
  const _LastPurchaseView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SrBlocBuilder<LastPurchaseBloc, LastPurchaseState, LastPurchaseSr>(
      onSR: (context, sr) => switch (sr) {
        OpenUnpaidOrderDetailsSr() =>
          context.router.push(const UnpaidOrderDetailsRoute()),
        OpenFridgeQrScanner() => context.router.push(
            FridgeQrScanRoute2(shouldSkipUnfinishedPurchaseGuard: true),
          ),
      },
      builder: (context, state) {
        if (!state.hasPurchase) {
          return state.showFeedbackBanner
              ? const FeedbackBannerWidget()
              : const SizedBox.shrink();
        }

        final Widget title;
        final Widget subtitle;
        Widget? trailing;
        if (state.unpaidOrder != null) {
          final order = state.unpaidOrder!;
          title = Text(context.tr(LocaleKeys.lastPurchase_unpaidOrder));
          subtitle =
              Text(context.tr(LocaleKeys.lastPurchase_clickToPayOrCancel));
          trailing = Text(
            Currency.convertToPrice(order.currencySymbol, order.totalSum),
          );
        } else {
          title = Text(context.tr(LocaleKeys.lastPurchase_notCompleted));
          subtitle = Text(context.tr(LocaleKeys.lastPurchase_clickToAddAndBuy));
        }
        return BannerWidget(
          title: title,
          subtitle: subtitle,
          trailing: trailing,
          textColor:
              Theme.of(context).extension<CustomThemeExtension>()?.onAccent,
          color: Theme.of(context).extension<CustomThemeExtension>()?.accent,
          onPressed: () => context.read<LastPurchaseBloc>().onActionPressed(),
        );
      },
    );
  }
}
