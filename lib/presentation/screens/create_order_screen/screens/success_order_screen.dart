import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/generated/assets.gen.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/screens/main_screen/main_screen.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

@RoutePage()
class SuccessOrderScreen extends StatelessWidget {
  const SuccessOrderScreen({
    super.key,
    required this.isCoffee,
  });

  final bool isCoffee;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTextStyle.merge(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppInsets.padding16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Assets.svg.logo3.svg(),
              const SizedBox(height: AppInsets.padding10),
              Text(
                LocaleKeys.successOrderScreen_title.tr(context: context),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: AppInsets.padding10),
              Text(
                LocaleKeys.successOrderScreen_message.tr(context: context),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const Spacer(),
              FilledButtonWithArrow(
                onPressed: () {
                  final router = context.router.root;
                  router.pop();
                  router.navigate(QrScanRoute());
                },
                label: Text(
                  LocaleKeys.successOrderScreen_buyMore.tr(context: context),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: AppInsets.padding16,
                  bottom: AppInsets.padding8,
                ),
                child: MainNavigatorWidget(
                  selectedIndex: 2,
                  onDestinationSelected: (_) {
                    context.router.root.popUntil(
                      ModalRoute.withName(MainRoute.name),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
