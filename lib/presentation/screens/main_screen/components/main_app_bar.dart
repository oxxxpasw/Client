import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/components/bonus_balance_widget/bonus_balance_widget.dart';
import 'package:sosedifedi/presentation/icons/custom_icons.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    this.title,
  });

  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: [
        const CurrentBonusBalanceWidget(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CustomICons.notificationOutline,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
