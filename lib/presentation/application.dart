import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/constants.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/components/shimmer.dart';
import 'package:sosedifedi/presentation/router/analyst_router_observer.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/router/current_route_to_stream_observer.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';

import 'components/scroll_behaviors.dart';
import 'screens/splash_screen/screens/splash_loading_screen.dart';

class Application extends StatefulWidget {
  const Application({
    super.key,
    required this.appEnvironment,
    this.initialDeepLink,
  });

  final AppEnvironment appEnvironment;
  final String? initialDeepLink;

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('MILESTONE 5: Application.build executing');
    final appRouter = GetIt.I.get<AppRouter>();
    return MaterialApp.router(
      onGenerateTitle: (context) => context.tr(LocaleKeys.title),
      restorationScopeId: 'sosedifedi_root_scope_id',
      theme: GetIt.I.isRegistered<ThemeData>()
          ? GetIt.I.get<ThemeData>()
          : ThemeData.light(),
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FormBuilderLocalizations.delegate,
        if (EasyLocalization.of(context) != null)
          EasyLocalization.of(context)!.delegate,
      ],
      builder: (context, child) {
        final shimmerGradient = (Theme.of(context).extensions.isNotEmpty)
            ? Theme.of(context).extension<CustomThemeExtension>()?.shimmerGradient ??
                const LinearGradient(
                  colors: [
                    Color(0xFFEBEBF4),
                    Color(0xFFF4F4F4),
                    Color(0xFFEBEBF4),
                  ],
                )
            : const LinearGradient(
                colors: [
                  Color(0xFFEBEBF4),
                  Color(0xFFF4F4F4),
                  Color(0xFFEBEBF4),
                ],
              );
        return ScrollConfiguration(
          behavior: const StretchingScrollBehavior(),
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: kDefaultSystemUiOverlayStyle,
            child: Shimmer(
              linearGradient: shimmerGradient,
              child: child ?? const SizedBox.shrink(),
            ),
          ),
        );
      },
      routerConfig: appRouter.config(
        navigatorObservers: () => [
          GetIt.I.get<AnalyticsRouteObserver>(),
          GetIt.I.get<CurrentRouteToStreamObserver>(),
          GetIt.I.get<AutoRouteObserver>(),
        ],
        navRestorationScopeId: 'sosedifedi_router_restoration_id',
      ),
    );
  }
}
