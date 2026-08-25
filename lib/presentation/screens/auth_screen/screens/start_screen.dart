import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sosedifedi/domain/bloc/auth_bloc/auth_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';

@RoutePage()
class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
    this.canSkipAuth = true,
  });

  final bool canSkipAuth;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor:
            Theme.of(context).extension<CustomThemeExtension>()!.primary,
        body: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(AppInsets.padding16),
                  child: Center(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final size = math.min(
                            constraints.maxHeight, constraints.maxWidth);
                        return Image.asset(
                          'assets/images/logo_white.png',
                          width: size,
                          height: size,
                          fit: BoxFit.contain,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: AppInsets.padding16,
                  vertical: AppInsets.padding32,
                ),
                child: SafeArea(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextButton(
                        onPressed: () {
                          context.router.push(PhoneInputRoute());
                        },
                        child: Text(context.tr(LocaleKeys.auth_createAccount)),
                      ),
                      const SizedBox(
                        height: AppInsets.padding16,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          context.router.push(PhoneInputRoute());
                        },
                        child: Text(context.tr(LocaleKeys.auth_enter)),
                      ),
                      if (canSkipAuth)
                        Padding(
                          padding: const EdgeInsets.only(
                            top: AppInsets.padding16,
                          ),
                          child: OutlinedButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Theme.of(context)
                                  .extension<CustomThemeExtension>()!
                                  .textColor,
                              side: const BorderSide(
                                color: Colors.transparent,
                                width: 0.0,
                              ),
                            ),
                            onPressed: () {
                              context.read<AuthBloc>().add(
                                    const AuthEvent.skipAuth(),
                                  );
                            },
                            child: Text(context.tr(LocaleKeys.auth_skip)),
                          ),
                        ),
                    ],
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
