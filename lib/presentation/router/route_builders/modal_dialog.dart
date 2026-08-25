import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

Route<T> modalDialogBuilder<T>(
    BuildContext context, Widget child, AutoRoutePage<T> page) {
  return DialogRoute<T>(
    builder: (context) => Padding(
      padding: const EdgeInsets.all(AppInsets.padding32),
      child: Center(
        child: child,
      ),
    ),
    barrierColor: const Color(0x55000000),
    settings: page,
    context: context,
  );
}

Route<T> modalBottomDialogBuilder<T>(
    BuildContext context, Widget child, AutoRoutePage<T> page) {
  return DialogRoute<T>(
    builder: (context) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppInsets.padding8,
          horizontal: AppInsets.padding16,
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: child,
        ),
      ),
    ),
    barrierColor: const Color(0x55000000),
    settings: page,
    context: context,
  );
}

Route<T> modalPopupBuilder<T>(
    BuildContext context, Widget child, AutoRoutePage<T> page) {
  child = Card(
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
                child: FilledButtonTheme(
                  data: FilledButtonThemeData(
                    style: FilledButtonTheme.of(context).style?.copyWith(
                          maximumSize: WidgetStatePropertyAll(
                            Size(200.0, AppMinButtonSize.large.height),
                          ),
                          minimumSize: WidgetStatePropertyAll(
                            Size(200.0, AppMinButtonSize.large.height),
                          ),
                        ),
                  ),
                  child: child,
                ),
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
  return modalDialogBuilder(context, child, page);
}
