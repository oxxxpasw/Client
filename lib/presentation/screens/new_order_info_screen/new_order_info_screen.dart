import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class NewOrderInfoScreen extends StatelessWidget {
  const NewOrderInfoScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Positioned(
            right: AppInsets.padding8,
            top: AppInsets.padding8,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppInsets.padding24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 110.0,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                Text(
                  context.tr(LocaleKeys.messages_success_newOrder),
                  style: Theme.of(context).textTheme.headlineSmall,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
