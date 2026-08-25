import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PageError extends StatelessWidget {
  const PageError({
    Key? key,
    required this.onReload,
  }) : super(key: key);

  final VoidCallback? onReload;

  @override
  Widget build(BuildContext context) {
    Color getButtonsColor(Set<MaterialState> state) {
      if (state.contains(MaterialState.disabled)) {
        return Colors.black.withAlpha(55);
      } else if (state.contains(MaterialState.error)) {
        return Theme.of(context).colorScheme.error;
      }
      return Theme.of(context).colorScheme.primary;
    }

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(context.tr(LocaleKeys.messages_error_somethingWentWrong)),
          const SizedBox(
            height: 10.0,
          ),
          TextButton(
            onPressed: onReload,
            child: Text(context.tr(LocaleKeys.reload)),
            style: Theme.of(context).textButtonTheme.style!.copyWith(
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color>(getButtonsColor),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).colorScheme.onPrimary),
                ),
          )
        ],
      ),
    );
  }
}
