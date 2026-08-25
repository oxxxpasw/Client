import 'dart:math' as math;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sosedifedi/domain/bloc/splash_bloc/splash_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/theme/models/additional_text_theme/additional_text_theme.dart';
import 'package:sosedifedi/presentation/theme/models/app_fonts.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SplashErrorScreen extends StatelessWidget {
  const SplashErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: AppInsets.padding48),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.rotate(
                      angle: -math.pi / 12.0,
                      child: Text(
                        context.tr(LocaleKeys.splash_error_label),
                        style: TextStyle(
                          fontFamily: AppFonts.vasekItalic,
                          fontSize: 60.0,
                          height: 0.7,
                          letterSpacing: 0.15,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppBorderRadius.large),
                      topRight: Radius.circular(AppBorderRadius.large),
                    ),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(AppInsets.padding16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Spacer(),
                          Text(
                            context.tr(LocaleKeys.splash_error_descr),
                            style: TextTheme.of(context).titleLarge?.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                            textAlign: TextAlign.center,
                          ),
                          const Spacer(),
                          FilledButtonWithArrow(
                            onPressed: () => context.read<SplashBloc>().init(),
                            label: Text(
                              context.tr(LocaleKeys.reload),
                            ),
                          ),
                          const Spacer(
                            flex: 5,
                          ),
                          Text(
                            LocaleKeys.title.tr(context: context),
                            style:
                                TextTheme.of(context).headlineSmall?.copyWith(
                                      color: ColorScheme.of(context).primary,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
