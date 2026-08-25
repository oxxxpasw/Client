import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

Future<bool> showPopup({
  required BuildContext context,
  Widget? title,
  Widget? confirmLabel,
  bool useRootNavigator = true,
}) async {
  final result =
      await Navigator.of(context, rootNavigator: useRootNavigator).push<bool>(
    modalPopupBuilder(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox.shrink(),
            if (title != null) title,
            if (confirmLabel != null)
              Padding(
                padding: const EdgeInsets.only(top: AppInsets.padding16),
                child: FilledButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(200, AppMinButtonSize.large.height),
                  ),
                  onPressed: () => Navigator.of(context).pop(true),
                  child: confirmLabel,
                ),
              ),
          ],
        );
      },
    ),
  );
  return result == true;
}

Route<T> modalDialogBuilder<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  RouteSettings? settings,
}) {
  return DialogRoute<T>(
    builder: (context) => Padding(
      padding: const EdgeInsets.all(AppInsets.padding32),
      child: Center(
        child: builder(context),
      ),
    ),
    barrierColor: const Color(0x55000000),
    settings: settings,
    context: context,
  );
}

Route<T> modalPopupBuilder<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  RouteSettings? settings,
}) {
  Widget cardBuilder(BuildContext context) => Card(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 230.0,
          ),
          child: Stack(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minHeight: 230.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: AppInsets.padding48,
                    left: AppInsets.padding24,
                    right: AppInsets.padding24,
                    bottom: AppInsets.padding24,
                  ),
                  child: DefaultTextStyle.merge(
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                    textAlign: TextAlign.center,
                    child: builder(context),
                  ),
                ),
              ),
              Positioned(
                right: AppInsets.padding8,
                top: AppInsets.padding8,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
        ),
      );
  return modalDialogBuilder(
    context: context,
    builder: cardBuilder,
    settings: settings,
  );
}
