import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/feedback_cubit/feedback_cubit.dart';
import 'package:sosedifedi/domain/bloc/feedback_tab_cubit/feedback_tab_cubit.dart';
import 'package:sosedifedi/domain/bloc/reviews_cubit/reviews_cubit.dart';
import 'package:sosedifedi/domain/bloc/splash_bloc/store_navigator.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/screens/reviews_screen/components/review_widget.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class FeedbackMainScreen extends StatelessWidget implements AutoRouteWrapper {
  const FeedbackMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SrBlocBuilder<FeedbackTabCubit, FeedbackTabState, FeedbackTabSr>(
        onSR: (context, sr) => switch (sr) {
          FeedbackTabOpenFeedbackScreenSr(:final type) =>
            _pushFeedbackRoute(context, type),
        },
        builder: (context, state) => switch (state.status) {
          FeedbackTabStatus.init ||
          FeedbackTabStatus.loading =>
            const FeedbackLoadingView(),
          FeedbackTabStatus.authorized => const FeedbackView(),
          FeedbackTabStatus.unauthorized => const FeedbackNotAuthorizedView(),
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeedbackTabCubit>(
          create: (context) => GetIt.I.get(),
        ),
        BlocProvider<ReviewsCubit>(
          create: (context) => GetIt.I.get(),
        )
      ],
      child: this,
    );
  }

  Future<void> _pushFeedbackRoute(
    BuildContext context,
    FeedbackType type,
  ) async {
    await context.router.push(
      FeedbackRoute(type: type),
    );

    if (!context.mounted) return;

    context.read<ReviewsCubit>().loadData();
  }
}

class FeedbackNotAuthorizedView extends StatelessWidget {
  const FeedbackNotAuthorizedView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: AppInsets.padding32,
          right: AppInsets.padding16,
          left: AppInsets.padding16,
          bottom: AppInsets.padding16,
        ),
        child: Column(
          children: [
            Text(
              LocaleKeys.feedbackTab_unauthorized_title.tr(
                context: context,
              ),
              style: TextTheme.of(context).bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            SizedBox(
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
            )
          ],
        ),
      ),
    );
  }
}

class FeedbackLoadingView extends StatelessWidget {
  const FeedbackLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}

class FeedbackView extends StatefulWidget {
  const FeedbackView({super.key});

  @override
  State<FeedbackView> createState() => _FeedbackViewState();
}

class _FeedbackViewState extends State<FeedbackView> {
  @override
  void initState() {
    super.initState();
    context.read<ReviewsCubit>().loadData();
  }

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.paddingOf(context);
    return MediaQuery.removePadding(
      removeLeft: true,
      removeTop: true,
      removeRight: true,
      removeBottom: true,
      context: context,
      child: RefreshIndicator(
        onRefresh: () => context.read<ReviewsCubit>().loadData(),
        edgeOffset: padding.top + AppInsets.padding16,
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(
                top: padding.top + AppInsets.padding16,
                left: padding.left + AppInsets.padding16,
                right: padding.right + AppInsets.padding16,
                bottom: AppInsets.padding10,
              ),
              sliver: SliverToBoxAdapter(
                child: Text(
                  context.tr(
                    LocaleKeys.feedbackTab_title,
                  ),
                  style: TextTheme.of(context).titleLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(
                bottom: AppInsets.padding10,
                left: AppInsets.padding16,
                right: AppInsets.padding16,
              ),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: AppInsets.padding10,
                  children: [
                    FilledButtonWithArrow(
                      onPressed: () => context
                          .read<FeedbackTabCubit>()
                          .onFeedbackButtonPressed(
                            FeedbackType.purchase,
                          ),
                      label: Text(
                        context.tr(
                          LocaleKeys.feedbackTab_feedbackType_purchase,
                        ),
                      ),
                    ),
                    FilledButtonWithArrow(
                      onPressed: () => context
                          .read<FeedbackTabCubit>()
                          .onFeedbackButtonPressed(
                            FeedbackType.store,
                          ),
                      label: Text(
                        context.tr(
                          LocaleKeys.feedbackTab_feedbackType_store,
                        ),
                      ),
                    ),
                    FilledButtonWithArrow(
                      onPressed: () =>
                          GetIt.I.get<StoreNavigator>().sendUserToStore(),
                      label: Text(
                        context.tr(
                          LocaleKeys.feedbackTab_feedbackType_app,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: AppInsets.padding16,
              ),
              sliver: SliverToBoxAdapter(
                child: ReviewsTitleWidget(),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                left: padding.left + AppInsets.padding16,
                right: padding.right + AppInsets.padding16,
                bottom: padding.bottom + AppInsets.padding16,
              ),
              sliver: const ReviewsWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewsTitleWidget extends StatelessWidget {
  const ReviewsTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewsCubit, ReviewsState>(
      buildWhen: (previous, current) =>
          previous.reviews?.length != current.reviews?.length ||
          previous.status != current.status,
      builder: (context, state) {
        return switch (state.status) {
          ReviewsStatus.initial ||
          ReviewsStatus.loading =>
            const SizedBox.shrink(),
          ReviewsStatus.ready => Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppInsets.padding10,
              ),
              child: Text(
                context.tr(
                  LocaleKeys.feedbackTab_userFeedbackList_title,
                  args: [
                    state.reviews?.length.toString() ?? '0',
                  ],
                ),
                style: TextTheme.of(context).titleLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
        };
      },
    );
  }
}

class ReviewsWidget extends StatefulWidget {
  const ReviewsWidget({
    super.key,
  });

  @override
  State<ReviewsWidget> createState() => _ReviewsWidgetState();
}

class _ReviewsWidgetState extends State<ReviewsWidget>
    with AutoRouteAwareStateMixin {
  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {
    context.read<ReviewsCubit>().loadData();
  }

  @override
  Widget build(BuildContext context) {
    return SrBlocBuilder<ReviewsCubit, ReviewsState, ReviewsSr>(
      onSR: (context, sr) => switch (sr) {
        ReviewsErrorSr(:final error) => Messenger.showMessage(
            context: context,
            message: error,
          ),
      },
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) => switch (state.status) {
        ReviewsStatus.initial ||
        ReviewsStatus.loading =>
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 60,
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          ),
        ReviewsStatus.ready => const ReviewsView(),
      },
    );
  }
}

class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewsCubit, ReviewsState>(
      buildWhen: (previous, current) => previous.reviews != current.reviews,
      builder: (context, state) {
        final reviews = state.reviews!;
        return SliverList.separated(
          itemCount: reviews.length,
          separatorBuilder: (context, index) =>
              const SizedBox(height: AppInsets.padding10),
          itemBuilder: (context, index) {
            return ReviewWidget(
              review: reviews[index],
              onPressed: () => context.router.push(
                ReviewDetailsRoute(review: reviews[index]),
              ),
            );
          },
        );
      },
    );
  }
}
