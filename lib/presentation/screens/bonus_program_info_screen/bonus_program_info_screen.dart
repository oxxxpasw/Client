import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sosedifedi/data/models/bonus_card/bonus_card_model/bonus_card_model.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/domain/bloc/bonus_program_info_bloc/bonus_program_info_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/bonus_balance_widget/bonus_balance_widget.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:sosedifedi/utils/utils.dart';

@RoutePage()
class BonusProgramInfoScreen extends StatelessWidget implements AutoRouteWrapper {
  const BonusProgramInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          height: double.infinity,
          child: BonusProgramInfoBody(),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<BonusProgramInfoBloc>(
      create: (context) => GetIt.I.get(),
      child: this,
    );
  }
}

class BonusProgramInfoBody extends StatelessWidget {
  const BonusProgramInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SrBlocBuilder<BonusProgramInfoBloc, BonusProgramInfoState,
        BonusProgramInfoSr>(
      onSR: (context, sr) => switch (sr) {
        BonusProgramInfoErrorSr(:final error) =>
          Messenger.showMessage(context: context, message: error),
        BonusProgramInfoShowAccountDetailsSr(:final account) =>
          context.router.push(
            BonusAccountInfoRoute(account: account),
          ),
      },
      builder: (context, state) {
        if (state.status == BonusProgramInfoStatus.init ||
            state.status == BonusProgramInfoStatus.loading) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
        final isAuth = GetIt.I.isRegistered<AuthRepository>() &&
            GetIt.I.get<AuthRepository>().isAuthorized();
        if (!isAuth) {
          return BonusProgramUnauthorizedWidget(
            onRefresh: () => context.read<BonusProgramInfoBloc>().refresh(),
          );
        }

        return BonusProgramInfoWidget(
          bonusCards: state.bonusCards,
          onRefresh: () => context.read<BonusProgramInfoBloc>().refresh(),
          onAccountPressed: (account) =>
              context.read<BonusProgramInfoBloc>().onAccountPressed(account),
        );
      },
    );
  }
}

class BonusProgramUnauthorizedWidget extends StatelessWidget {
  const BonusProgramUnauthorizedWidget({
    super.key,
    required this.onRefresh,
  });

  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: RefreshIndicator(
              onRefresh: onRefresh,
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.only(
                      top: AppInsets.padding40,
                      bottom: AppInsets.padding16,
                      left: AppInsets.padding16,
                      right: AppInsets.padding16,
                    ),
                    sliver: SliverToBoxAdapter(
                      child: FilledButton.icon(
                        iconAlignment: IconAlignment.end,
                        onPressed: () => _onPressed(context),
                        label: SizedBox(
                          width: double.infinity,
                          child: Text(
                            context.tr(
                              LocaleKeys
                                  .bonusProgramInfoScreen_howBonusesAccrued,
                            ),
                          ),
                        ),
                        icon: const Icon(
                          DerevenkaDobrenkaIcons.arrowRight2,
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppInsets.padding24,
                        horizontal: AppInsets.padding16,
                      ),
                      child: Text(
                        LocaleKeys
                            .bonusProgramInfoScreen_unauthorizedView_message
                            .tr(
                          context: context,
                        ),
                        style: TextTheme.of(context).bodyLarge?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              AppInsets.padding16,
            ),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => context.router.push(
                  AuthRoute(),
                ),
                child: Text(
                  LocaleKeys.bonusProgramInfoScreen_unauthorizedView_action.tr(
                    context: context,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _onPressed(BuildContext context) {
    return showMaterialModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppInsets.padding32,
              horizontal: AppInsets.padding24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: AppInsets.padding8,
                ),
                Text(
                  context
                      .tr(LocaleKeys.bonusProgramInfoScreen_infoDialog_message),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const SizedBox(
                  height: AppInsets.padding40,
                ),
                FilledButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    context.tr(
                        LocaleKeys.bonusProgramInfoScreen_infoDialog_action),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class BonusProgramInfoWidget extends StatelessWidget {
  const BonusProgramInfoWidget({
    super.key,
    required this.bonusCards,
    required this.onRefresh,
    required this.onAccountPressed,
  });

  final List<BonusCardModel> bonusCards;

  final void Function(BonusProgramAccount account) onAccountPressed;

  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(
              top: AppInsets.padding40,
              bottom: AppInsets.padding16,
              left: AppInsets.padding16,
              right: AppInsets.padding16,
            ),
            sliver: SliverToBoxAdapter(
              child: FilledButton.icon(
                iconAlignment: IconAlignment.end,
                onPressed: () => _onPressed(context),
                label: SizedBox(
                  width: double.infinity,
                  child: Text(
                    context.tr(
                        LocaleKeys.bonusProgramInfoScreen_howBonusesAccrued),
                  ),
                ),
                icon: const Icon(
                  DerevenkaDobrenkaIcons.arrowRight2,
                ),
              ),
            ),
          ),
          if (bonusCards.isNotEmpty)
            SliverPadding(
              padding: const EdgeInsets.only(
                left: AppInsets.padding16,
                right: AppInsets.padding16,
                bottom: AppInsets.padding16,
              ),
              sliver: SliverList.separated(
                itemBuilder: (context, index) {
                  // We map each BonusCardModel to a visual card
                  // In the original design it mapped bonusCard.bonusProgramAccounts to BonusProgramCardWidget
                  // Since we now have a list of actual BonusCardModels, we can just display them
                  // Wait, how does BonusProgramCardWidget work? It takes a BonusProgramAccount.
                  // We can either map BonusCardModel to BonusProgramAccount or create a new widget.
                  // Let's create a mapped account object.
                  final card = bonusCards[index];
                  final account = BonusProgramAccount(
                    name: card.bonusProgramName,
                    bonuses: card.bonuses ?? 0.0,
                    holdedBonuses: card.holdedBonuses ?? 0.0,
                    bonusProgramId: card.bonusProgramName ?? "", // Just use name as id fallback
                    comment: card.name,
                  );
                  return BonusProgramCardWidget(
                    account: account,
                    onPressed: () {
                      onAccountPressed(account);
                    },
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: AppInsets.padding8,
                ),
                itemCount: bonusCards.length,
              ),
            )
          else
            const SliverToBoxAdapter(
              child: EmptyBonusPrograms(),
            ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.paddingOf(context).bottom,
            ),
          )
        ],
      ),
    );
  }

  Future<void> _onPressed(BuildContext context) {
    return showMaterialModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppInsets.padding32,
              horizontal: AppInsets.padding24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: AppInsets.padding8,
                ),
                Text(
                  context
                      .tr(LocaleKeys.bonusProgramInfoScreen_infoDialog_message),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const SizedBox(
                  height: AppInsets.padding40,
                ),
                FilledButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    context.tr(
                        LocaleKeys.bonusProgramInfoScreen_infoDialog_action),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class BonusAmountWidget extends StatelessWidget {
  const BonusAmountWidget({
    super.key,
    required this.amount,
  });

  final double amount;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppBorderRadius.large),
      ),
      color: Theme.of(context).colorScheme.primary,
      child: DefaultTextStyle.merge(
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
              fontWeight: FontWeight.w500,
            ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: AppInsets.padding24,
            right: AppInsets.padding16,
            top: AppInsets.padding16,
            bottom: AppInsets.padding16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.tr(LocaleKeys.bonusProgramInfoScreen_all),
              ),
              Row(
                children: [
                  Text(amount.toFormatString()),
                  const SizedBox(
                    width: AppInsets.padding4,
                  ),
                  Icon(
                    DerevenkaDobrenkaIcons.coffeeSwipeBonuses,
                    color: Theme.of(context).colorScheme.onPrimary,
                    size: 20.0,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BonusProgramTitleWidget extends StatelessWidget {
  const BonusProgramTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          context.tr(
            LocaleKeys.bonusProgramInfoScreen_byStoreTitle,
          ),
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        IconButton(
          color: Theme.of(context).colorScheme.primary,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          padding: const EdgeInsets.all(AppInsets.padding4),
          constraints: BoxConstraints.tight(
            const Size(
              AppInsets.padding24,
              AppInsets.padding24,
            ),
          ),
          onPressed: () => _onPressed(context),
          icon: const Icon(Icons.info_outline),
          iconSize: 18.0,
        ),
      ],
    );
  }

  Future<void> _onPressed(BuildContext context) {
    return showMaterialModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppInsets.padding32,
              horizontal: AppInsets.padding24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: AppInsets.padding8,
                ),
                Text(
                  context
                      .tr(LocaleKeys.bonusProgramInfoScreen_infoDialog_message),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const SizedBox(
                  height: AppInsets.padding40,
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    context.tr(
                        LocaleKeys.bonusProgramInfoScreen_infoDialog_action),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class EmptyBonusPrograms extends StatelessWidget {
  const EmptyBonusPrograms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppInsets.padding24,
        horizontal: AppInsets.padding16,
      ),
      child: Text(
        context.tr(LocaleKeys.bonusProgramInfoScreen_emptyBonusPrograms),
        style: TextTheme.of(context).bodyLarge?.copyWith(
              fontWeight: FontWeight.w500,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class BonusProgramCardWidget extends StatelessWidget {
  const BonusProgramCardWidget({
    super.key,
    required this.account,
    this.onPressed,
  });

  final BonusProgramAccount account;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final name = account.name;
    final address = account.address;
    final comment = account.comment;

    final borderRadius = BorderRadius.circular(AppBorderRadius.large);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(AppInsets.padding16),
          child: Row(
            children: [
              if (account.logoUrl != null)
                Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(right: AppInsets.padding16),
                  child: CachedNetworkImage(
                    fit: BoxFit.contain,
                    imageUrl: account.logoUrl!,
                  ),
                ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? '',
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (address != null && address.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: AppInsets.padding8),
                        child: Text(
                          address,
                          style: Theme.of(context).textTheme.bodySmall,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    if (comment != null && comment.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: AppInsets.padding4),
                        child: Text(
                          LocaleKeys.bonusProgramInfoScreen_storeList
                              .tr(context: context),
                          style: TextTheme.of(context).bodySmall?.copyWith(
                                color: ColorScheme.of(context).primary,
                              ),
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: AppInsets.padding16),
                child: BonusBalanceChipWidget(
                  balance: account.bonuses,
                  logoPosition: LogoPosition.right,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
