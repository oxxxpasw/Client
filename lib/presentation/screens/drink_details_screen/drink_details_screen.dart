import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/custom_leading_button/custom_leading_button.dart';

import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';

const _kImageHeaderHeight = 350.0;

@RoutePage()
class DrinkDetailsScreen extends StatelessWidget {
  const DrinkDetailsScreen({
    super.key,
    @PathParam() required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.paddingOf(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverCustomAppBar(
            leading: CustomLeadingButton(
              backgroundColor: Theme.of(context).colorScheme.surface,
            ),
            stretch: true,
            collapsedHeight: _kImageHeaderHeight + padding.top,
            expandedHeight: _kImageHeaderHeight + padding.top,
            flexibleSpace: const FlexibleSpaceBar(
              background: Placeholder(),
            ),
            pinned: false,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(AppInsets.padding16),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Американо',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        '100/150 BYN',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: AppInsets.padding8,
                  ),
                  const Text('Эспрессо с добавлением горячей воды')
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(AppInsets.padding16),
            sliver: SliverList.separated(
              itemCount: 3,
              itemBuilder: (context, index) => const ProductCaloriesCard(),
              separatorBuilder: (context, index) => const SizedBox(
                height: AppInsets.padding8,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProductCaloriesCard extends StatelessWidget {
  const ProductCaloriesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final colorExtension = theme.extension<CustomThemeExtension>();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppInsets.padding16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: ProductCaloriesCardDetailsItem(
                    title: 'Энергетическая ценность',
                    value: '20 ккал',
                  ),
                ),
                const SizedBox(
                  width: AppInsets.padding8,
                ),
                Material(
                  color: theme.colorScheme.primary,
                  shape: const StadiumBorder(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppInsets.padding12,
                      vertical: AppInsets.padding8,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '250 мл',
                          textAlign: TextAlign.right,
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: theme.colorScheme.onPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppInsets.padding8,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductCaloriesCardDetailsItem(
                  title: 'Белки',
                  value: '20 г',
                ),
                ProductCaloriesCardDetailsItem(
                  title: 'Жиры',
                  value: '20 г',
                ),
                ProductCaloriesCardDetailsItem(
                  title: 'Углеводы',
                  value: '20 г',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProductCaloriesCardDetailsItem extends StatelessWidget {
  const ProductCaloriesCardDetailsItem({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final colorExtension = theme.extension<CustomThemeExtension>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.labelMedium?.copyWith(
            color: colorExtension?.labelColor,
          ),
        ),
        const SizedBox(
          height: AppInsets.padding4,
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.headlineMedium,
        )
      ],
    );
  }
}

// class DrinkImageHeaderDelegate extends SliverPersistentHeaderDelegate {
//   const DrinkImageHeaderDelegate({
//     required this.height,
//   });
//
//   final double height;
//
//   @override
//   OverScrollHeaderStretchConfiguration? get stretchConfiguration =>
//       OverScrollHeaderStretchConfiguration();
//
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return const Placeholder();
//   }
//
//   @override
//   bool shouldRebuild(covariant DrinkImageHeaderDelegate oldDelegate) =>
//       oldDelegate.height != height;
//
//   @override
//   double get maxExtent => height;
//
//   @override
//   double get minExtent => height;
// }
