import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/simple_text_button/simple_text_button.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class CheckAddressScreen extends StatelessWidget {
  const CheckAddressScreen({
    super.key,
    required this.store,
    this.onNextPressed,
  });

  final Store store;
  final VoidCallback? onNextPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppInsets.padding16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.tr(LocaleKeys.checkAddressScreen_title),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: AppInsets.padding8,
                  ),
                  Text(
                    store.address ?? '',
                  ),
                  const SizedBox(
                    height: AppInsets.padding8,
                  ),
                  SimpleTextButton(
                    onPressed: () {},
                    child: Text(
                      context.tr(
                          LocaleKeys.checkAddressScreen_wrongAddressBtnText),
                    ),
                  ),
                  const SizedBox(
                    height: AppInsets.padding40,
                  ),
                  Text(
                    context.tr(LocaleKeys.checkAddressScreen_title),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: AppInsets.padding8,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        DerevenkaDobrenkaIcons.coffeeSwipeBonuses,
                        size: 24,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(
                        width: AppInsets.padding4,
                      ),
                      Text(
                        context.plural(
                          LocaleKeys.checkAddressScreen_bonusesValue,
                          100,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppInsets.padding16),
            child: FilledButton(
              onPressed: onNextPressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.tr(
                      LocaleKeys.checkAddressScreen_actionText,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
