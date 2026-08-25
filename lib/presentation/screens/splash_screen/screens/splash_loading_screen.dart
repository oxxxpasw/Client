import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sosedifedi/generated/assets.gen.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SplashLoadingScreen extends StatelessWidget {
  const SplashLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashWidget();
  }
}

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.paddingOf(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: padding.top + AppInsets.padding48,
                right: AppInsets.padding48,
                left: AppInsets.padding48,
                child: Center(child: Assets.svg.splashTopText.svg()),
              ),
              Assets.images.logo.image(),
              const Positioned(
                bottom: 80,
                child: Text(
                  'DEBUG: SPLASH SCREEN',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Positioned(
                bottom: padding.bottom + AppInsets.padding16,
                right: AppInsets.padding48,
                left: AppInsets.padding48,
                child: Center(
                  child: Text(
                    context.tr(LocaleKeys.title),
                    textAlign: TextAlign.center,
                    style: TextTheme.of(context).headlineSmall?.copyWith(
                          color: ColorScheme.of(context).onPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
