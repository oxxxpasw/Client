import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sosedifedi/generated/assets.gen.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

@RoutePage()
class ScanToStartScreen extends StatelessWidget {
  const ScanToStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ColoredBox(
                color: theme.colorScheme.primary,
                child: SafeArea(
                  bottom: false,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: AppInsets.padding40,
                      bottom: AppInsets.padding56,
                      left: AppInsets.padding16,
                      right: AppInsets.padding16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Assets.svg.scanToStart.svg(),
                        const SizedBox(
                          height: AppInsets.padding24,
                        ),
                        Text(
                          context.tr(
                            LocaleKeys.scanToStartScreen_title,
                          ),
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.onPrimary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: AppInsets.padding24,
                        ),
                        FilledButton(
                          style: FilledButton.styleFrom(
                            foregroundColor: theme.colorScheme.primary,
                            backgroundColor: theme.colorScheme.surface,
                          ),
                          onPressed: () => context.router.push(
                            QrScanRoute(),
                          ),
                          onLongPress: () => context.router.push(
                            QrScanRoute(
                              isCoffee: true,
                            ),
                          ),
                          child: Text(
                            context.tr(
                              LocaleKeys.scanToStartScreen_scanQr,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(AppBorderRadius.medium),
                    topLeft: Radius.circular(AppBorderRadius.medium),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: AppBorderRadius.medium + AppInsets.padding8,
                    bottom: AppInsets.padding8,
                    left: AppInsets.padding16,
                    right: AppInsets.padding16,
                  ),
                  child: Text(
                    context.tr(
                      LocaleKeys.scanToStartScreen_moreAbout,
                    ),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
            ),
            DecoratedSliver(
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
              ),
              sliver: SliverPadding(
                padding: EdgeInsets.only(
                  left: AppInsets.padding16,
                  right: AppInsets.padding16,
                  bottom: MediaQuery.paddingOf(context).bottom,
                ),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Card(
                      color: Theme.of(context).colorScheme.surfaceContainer,
                      child: InkWell(
                        customBorder: CardTheme.of(context).shape,
                        onTap: () => context.router.push(
                          DrinkDetailsRoute(id: index.toString()),
                        ),
                      ),
                    ),
                    childCount: 20,
                  ),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 140,
                    mainAxisSpacing: AppInsets.padding8,
                    crossAxisSpacing: AppInsets.padding8,
                    mainAxisExtent: 160.0,
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              fillOverscroll: true,
              child: Container(
                color: theme.colorScheme.surface,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
