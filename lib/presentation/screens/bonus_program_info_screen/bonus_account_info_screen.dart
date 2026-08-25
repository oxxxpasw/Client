import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/account_transaction/account_transaction.dart';
import 'package:sosedifedi/data/models/bonus_card/bonus_card_model/bonus_card_model.dart';
import 'package:sosedifedi/domain/bloc/bonus_account_info_cubit/bonus_account_info_cubit.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/bonus_balance_widget/bonus_balance_widget.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:sosedifedi/utils/utils.dart';

@RoutePage()
class BonusAccountInfoScreen extends StatelessWidget
    implements AutoRouteWrapper {
  const BonusAccountInfoScreen({
    super.key,
    required this.account,
  });

  final BonusProgramAccount account;

  @override
  Widget build(BuildContext context) {
    final titleStyle = TextTheme.of(context).titleMedium?.copyWith(
          color: ColorScheme.of(context).primary,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        );

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.only(
                    bottom: AppInsets.padding8,
                    left: AppInsets.padding16,
                    right: AppInsets.padding16,
                    top: AppInsets.padding32,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            account.name ?? '',
                            style: titleStyle,
                          ),
                        ),
                        BonusBalanceChipWidget(
                          balance: account.bonuses,
                        )
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(
                    bottom: AppInsets.padding20,
                    left: AppInsets.padding16,
                    right: AppInsets.padding16,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Html(
                      data: account.comment ?? '',
                      style: {
                        "body": Style(
                          margin: Margins.zero,
                          padding: HtmlPaddings.zero,
                        ),
                      },
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(
                    bottom: AppInsets.padding12,
                    left: AppInsets.padding16,
                    right: AppInsets.padding16,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      LocaleKeys
                          .bonusProgramAccountInfoScreen_transactions_title
                          .tr(context: context),
                      style: titleStyle,
                    ),
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.only(
                    bottom: AppInsets.padding16,
                    left: AppInsets.padding16,
                    right: AppInsets.padding16,
                  ),
                  sliver: BonusAccountTransactionsWidget(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppInsets.padding16),
            child: FilledButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                LocaleKeys.bonusProgramAccountInfoScreen_action
                    .tr(context: context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<BonusAccountInfoCubit>(
      create: (context) =>
          GetIt.I.get(param1: account.bonusProgramId ?? '')..loadData(),
      child: this,
    );
  }
}

class BonusAccountTransactionsWidget extends StatelessWidget {
  const BonusAccountTransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SrBlocBuilder<BonusAccountInfoCubit, BonusAccountInfoState,
        BonusAccountInfoSr>(
      onSR: (context, sr) => switch (sr) {
        BonusAccountInfoErrorSr(:final message) => Messenger.showMessage(
            context: context,
            message: message,
          ),
      },
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) => switch (state.status) {
        BonusAccountInfoStateStatus.init ||
        BonusAccountInfoStateStatus.loading =>
          const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
        BonusAccountInfoStateStatus.ready =>
          const BonusAccountTransactionsDataWidget(),
      },
    );
  }
}

class BonusAccountTransactionsDataWidget extends StatelessWidget {
  const BonusAccountTransactionsDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final transactions =
        context.read<BonusAccountInfoCubit>().state.transactions ?? [];

    return SliverList.separated(
      itemBuilder: (context, index) => AccountTransactionWidget(
        transaction: transactions[index],
      ),
      separatorBuilder: (context, index) => const Divider(
        height: AppInsets.padding24,
      ),
      itemCount: transactions.length,
    );
  }
}

class AccountTransactionWidget extends StatelessWidget {
  const AccountTransactionWidget({super.key, required this.transaction});

  final AccountTransaction transaction;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CustomThemeExtension>();

    final isPositive = transaction.value >= 0;

    final color = isPositive ? colors?.positive : colors?.negative;

    final date = DateFormat('dd.MM.yyyy').format(transaction.date);

    final typeString = context.tr(
      switch (transaction.transactionType) {
        TransactionType.purchase => LocaleKeys
            .bonusProgramAccountInfoScreen_transactions_statuses_purchase,
        TransactionType.directBonusCharge => LocaleKeys
            .bonusProgramAccountInfoScreen_transactions_statuses_directBonusCharge,
        TransactionType.bonusBurn => LocaleKeys
            .bonusProgramAccountInfoScreen_transactions_statuses_bonusBurn,
        TransactionType.smmBonus => LocaleKeys
            .bonusProgramAccountInfoScreen_transactions_statuses_smmBonus,
        TransactionType.purchaseReturn => LocaleKeys
            .bonusProgramAccountInfoScreen_transactions_statuses_purchaseReturn,
        TransactionType.replaceCard => LocaleKeys
            .bonusProgramAccountInfoScreen_transactions_statuses_replaceCard,
        TransactionType.another => LocaleKeys
            .bonusProgramAccountInfoScreen_transactions_statuses_another,
      },
    );

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                date,
                style: TextTheme.of(context).labelSmall?.copyWith(
                      color: ColorScheme.of(context).surfaceContainerHighest,
                    ),
              ),
              const SizedBox(
                height: AppInsets.padding4,
              ),
              Text(
                typeString,
              )
            ],
          ),
        ),
        Row(
          children: [
            Text(
              '${isPositive ? '+' : ''}${transaction.value.toFormatString()}',
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: AppInsets.padding4,
            ),
            Icon(
              DerevenkaDobrenkaIcons.coffeeSwipeBonuses,
              size: 20.0,
              color: color,
            ),
          ],
        )
      ],
    );
  }
}
