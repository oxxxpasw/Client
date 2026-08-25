import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sosedifedi/data/models/bonus_card/bonus_card_model/bonus_card_model.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/domain/bloc/bonus_program_info_bloc/bonus_program_info_bloc.dart';
import 'package:sosedifedi/domain/bloc/promotions_bloc/promotions_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/screens/bonus_program_info_screen/bonus_program_info_screen.dart';
import 'package:sosedifedi/presentation/screens/main_screen/components/banner.dart';
import 'package:sosedifedi/presentation/screens/main_screen/components/main_app_bar.dart';
import 'package:sosedifedi/presentation/screens/main_screen/components/story_widget.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';

@RoutePage()
class PromotionsScreen extends StatefulWidget
    implements AutoRouteWrapper {
  const PromotionsScreen({super.key});

  @override
  State<PromotionsScreen> createState() => _PromotionsScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PromotionsBloc>(
          create: (context) => GetIt.I.get()..loadData(),
        ),
        BlocProvider<BonusProgramInfoBloc>(
          create: (context) => GetIt.I.get(),
        ),
      ],
      child: this,
    );
  }
}

class _PromotionsScreenState extends State<PromotionsScreen>
    with AutoRouteAwareStateMixin<PromotionsScreen> {
  @override
  void didInitTabRoute(TabPageRoute? previousRoute) {
    context.read<PromotionsBloc>().loadData();
    context.read<BonusProgramInfoBloc>().refresh();
  }

  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {
    context.read<PromotionsBloc>().loadData();
    context.read<BonusProgramInfoBloc>().refresh();
  }

  void _showBonusHowItWorks(BuildContext context) {
    showMaterialModalBottomSheet(
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
                  context.tr(LocaleKeys.bonusProgramInfoScreen_infoDialog_message),
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
                    context.tr(LocaleKeys.bonusProgramInfoScreen_infoDialog_action),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        title: Text('Акции и Бонусы'),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<PromotionsBloc>().loadData();
            await context.read<BonusProgramInfoBloc>().refresh();
          },
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            slivers: [
              // 1. Stories Section
              BlocBuilder<PromotionsBloc, PromotionsState>(
                builder: (context, promoState) {
                  final stories = promoState.stories;
                  if (stories.isEmpty) {
                    return const SliverToBoxAdapter(child: SizedBox.shrink());
                  }
                  return SliverPadding(
                    padding: const EdgeInsets.only(top: AppInsets.padding16),
                    sliver: SliverToBoxAdapter(
                      child: SizedBox(
                        height: AppInsets.padding128,
                        width: double.infinity,
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppInsets.padding16,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemCount: stories.length,
                          itemBuilder: (BuildContext context, int index) =>
                              StoryWidget(
                            promotion: stories[index],
                            isViewed: promoState.viewedStoriesIDs
                                .contains(stories[index].id),
                            onPressed: () {
                              context.router.push(
                                StoryRoute(
                                  index: index,
                                  stories: stories,
                                  onStoryShown: (story) {
                                    context
                                        .read<PromotionsBloc>()
                                        .viewStory(story);
                                  },
                                ),
                              );
                            },
                          ),
                          separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(
                            width: AppInsets.padding16,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),

              // 2. Bonus Info Button
              SliverPadding(
                padding: const EdgeInsets.only(
                  top: AppInsets.padding20,
                  bottom: AppInsets.padding8,
                  left: AppInsets.padding16,
                  right: AppInsets.padding16,
                ),
                sliver: SliverToBoxAdapter(
                  child: FilledButton.icon(
                    iconAlignment: IconAlignment.end,
                    onPressed: () => _showBonusHowItWorks(context),
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

              // 3. Bonuses Cards or Auth Invitation
              BlocBuilder<BonusProgramInfoBloc, BonusProgramInfoState>(
                builder: (context, bonusState) {
                  final isAuth = GetIt.I.isRegistered<AuthRepository>() &&
                      GetIt.I.get<AuthRepository>().isAuthorized();

                  if (!isAuth) {
                    return SliverPadding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppInsets.padding16,
                        vertical: AppInsets.padding8,
                      ),
                      sliver: SliverToBoxAdapter(
                        child: Card(
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 0,
                          color: Theme.of(context)
                              .colorScheme
                              .primaryContainer
                              .withOpacity(0.35),
                          child: Padding(
                            padding: const EdgeInsets.all(AppInsets.padding16),
                            child: Column(
                              children: [
                                Text(
                                  'Для того, чтобы копить бонусы, необходимо войти в профиль',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: AppInsets.padding12),
                                FilledButton(
                                  onPressed: () =>
                                      context.router.push(AuthRoute()),
                                  child: const Text('Войти / Зарегистрироваться'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }

                  if (bonusState.bonusCards.isEmpty) {
                    return const SliverToBoxAdapter(
                      child: EmptyBonusPrograms(),
                    );
                  }

                  return SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppInsets.padding16,
                      vertical: AppInsets.padding8,
                    ),
                    sliver: SliverList.separated(
                      itemCount: bonusState.bonusCards.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: AppInsets.padding8),
                      itemBuilder: (context, index) {
                        final card = bonusState.bonusCards[index];
                        final account = BonusProgramAccount(
                          name: card.bonusProgramName,
                          bonuses: card.bonuses ?? 0.0,
                          holdedBonuses: card.holdedBonuses ?? 0.0,
                          bonusProgramId: card.bonusProgramName ?? "",
                          comment: card.name,
                        );
                        return BonusProgramCardWidget(
                          account: account,
                          onPressed: () {
                            if (card.name?.isNotEmpty ?? false) {
                              context.router.push(
                                BonusAccountInfoRoute(account: account),
                              );
                            }
                          },
                        );
                      },
                    ),
                  );
                },
              ),

              // 4. Promotions / Banners List
              BlocBuilder<PromotionsBloc, PromotionsState>(
                builder: (context, promoState) {
                  final promotions = promoState.promotions;
                  if (promotions.isEmpty) {
                    return const SliverToBoxAdapter(child: SizedBox.shrink());
                  }
                  return SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppInsets.padding16,
                      vertical: AppInsets.padding16,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          final int itemIndex = index ~/ 2;
                          if (index.isEven) {
                            return BannerWidget(
                              promotion: promotions[itemIndex],
                              onPressed: () => context.router.push(
                                PromotionRoute(
                                  promotionId: promotions[itemIndex].id,
                                ),
                              ),
                            );
                          } else {
                            return const SizedBox(
                              height: AppInsets.padding16,
                            );
                          }
                        },
                        childCount: math.max(0, promotions.length * 2 - 1),
                        semanticIndexCallback: (Widget _, int index) {
                          return index.isEven ? index ~/ 2 : null;
                        },
                      ),
                    ),
                  );
                },
              ),

              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.paddingOf(context).bottom +
                      AppInsets.padding24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
