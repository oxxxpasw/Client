import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/onboarding_bloc/onboarding_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/router/app_router.gr.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/stream_listener.dart';

import '../../onboarding/main_onboarding/onboarding_overlay.dart';
import 'components/main_bottom_bar2.dart';

class _Route {
  const _Route({
    required this.icon,
    required this.route,
    this.labelKey,
    this.isPrimary = false,
  });

  final IconData icon;
  final String? labelKey;
  final PageRouteInfo route;
  final bool isPrimary;
}

const routes = [
  _Route(
    labelKey: LocaleKeys.mainScreen_navBarLabels_home,
    icon: DerevenkaDobrenkaIcons.coffeeSwipeSearch,
    route: FridgeMapRoute(),
  ),
  _Route(
    labelKey: LocaleKeys.mainScreen_navBarLabels_promotions,
    icon: DerevenkaDobrenkaIcons.star,
    route: PromotionsRoute(),
  ),
  _Route(
    icon: DerevenkaDobrenkaIcons.scanOutline,
    route: ScanToStartRoute(),
    isPrimary: true,
    labelKey: LocaleKeys.mainScreen_navBarLabels_scan,
  ),
  _Route(
    labelKey: LocaleKeys.mainScreen_navBarLabels_support,
    icon: DerevenkaDobrenkaIcons.coffeeSwipeSupport,
    route: FeedbackMainRoute(),
  ),
  _Route(
    labelKey: LocaleKeys.mainScreen_navBarLabels_profile,
    icon: DerevenkaDobrenkaIcons.coffeeSwipeUser,
    route: UserProfileRoute(),
  ),
];

@RoutePage()
class MainScreen extends StatefulWidget implements AutoRouteWrapper {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
      create: (context) => GetIt.I.get(),
      child: this,
    );
  }
}

class _MainScreenState extends State<MainScreen> {
  OverlayEntry? _entry;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<OnboardingBloc>().init();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamListener(
      stream: context.read<OnboardingBloc>().singleResults,
      onData: (sr) => sr.when(
        showOnboarding: () {
          _entry = OverlayEntry(
            builder: (_) => OnboardingOverlay(
              onClose: () {
                _entry?.remove();
                _entry = null;
              },
            ),
          );
          Overlay.of(context).insert(_entry!);
          return context.read<OnboardingBloc>().onboardingComplete();
        },
      ),
      child: AutoTabsRouter(
        navigatorObservers: () => [
          AutoRouteObserver(),
        ],
        routes: routes.map((e) => e.route).toList(),
        homeIndex: 0,
        builder: (context, child) {
          return Scaffold(
            extendBody: true,
            // ignore: prefer_const_constructors
            bottomNavigationBar: _MainNavigator(),
            body: child,
          );
        },
      ),
    );
  }
}

class _MainNavigator extends StatelessWidget {
  const _MainNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AutoTabsRouter.of(context);
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: AppInsets.padding16,
          vertical: AppInsets.padding8,
        ),
        child: MainNavigatorWidget(
          selectedIndex: router.activeIndex,
          onDestinationSelected: (index) {
            if (routes[index].isPrimary || routes[index].route is ScanToStartRoute) {
              context.router.root.push(QrScanRoute());
              return;
            }
            router.setActiveIndex(index);
          },
        ),
      ),
    );
  }
}

class MainNavigatorWidget extends StatelessWidget {
  const MainNavigatorWidget({
    super.key,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final int selectedIndex;

  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return MainNavigationBar(
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      padding: const EdgeInsets.symmetric(
        horizontal: AppInsets.padding8,
      ),
      height: AppMinButtonSize.large.height,
      shapeBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      // radius: const Radius.circular(AppInsets.padding24),
      destinations: routes
          .map(
            (e) => _buildIcon(context, e),
          )
          .toList(),
    );
  }

  Widget _buildIcon(BuildContext context, _Route route) {
    final colors = ColorScheme.of(context);
    Widget icon = Icon(
      route.icon,
      size: route.isPrimary ? 40 : null,
      color: route.isPrimary ? colors.onSecondary : null,
    );
    if (route.isPrimary) {
      icon = Ink(
        decoration: BoxDecoration(
          color: colors.secondary,
          borderRadius: BorderRadius.circular(AppBorderRadius.medium),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppInsets.padding4),
          child: icon,
        ),
      );
    }
    return MainNavigationDestination(
      icon: icon,
      label: route.isPrimary ? null : context.tr(route.labelKey!),
      tooltip: context.tr(route.labelKey!),
    );
  }
}
