import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/reviews_cubit/reviews_cubit.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

import 'components/review_widget.dart';

class ReviewsScreen extends StatelessWidget implements AutoRouteWrapper {
  const ReviewsScreen({
    super.key,
    @queryParam this.storeId,
    @queryParam this.storeName,
    @queryParam this.storeAddress,
  });

  final String? storeId;
  final String? storeName;
  final String? storeAddress;

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);

    return Scaffold(
      backgroundColor: colors.surfaceContainer,
      appBar: CustomAppBar(
        title: Text(_getTitle(context)),
        leadingBackgroundColor: colors.surface,
        backgroundColor: colors.surfaceContainer,
      ),
      body: SafeArea(
        bottom: false,
        child: SrBlocBuilder<ReviewsCubit, ReviewsState, ReviewsSr>(
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
              const ReviewsLoadingView(),
            ReviewsStatus.ready => const ReviewsView(),
          },
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ReviewsCubit>(
      create: (context) => GetIt.I.get(param1: storeId)..loadData(),
      child: this,
    );
  }

  String _getTitle(BuildContext context) {
    if (storeName != null && storeAddress != null) {
      return LocaleKeys.reviewsScreen_titleForStore.tr(
        context: context,
        namedArgs: {
          'name': storeName!,
          'address': storeAddress!,
        },
      );
    }

    return LocaleKeys.reviewsScreen_title.tr(context: context);
  }
}

class ReviewsLoadingView extends StatelessWidget {
  const ReviewsLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
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
        return RefreshIndicator(
          onRefresh: () => context.read<ReviewsCubit>().loadData(),
          child: ListView.separated(
            padding: EdgeInsets.only(
              top: AppInsets.padding16,
              left: AppInsets.padding16,
              right: AppInsets.padding16,
              bottom:
                  MediaQuery.paddingOf(context).bottom + AppInsets.padding16,
            ),
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
          ),
        );
      },
    );
  }
}
