import 'dart:ui' as ui show TextDirection;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/bonus_balance_bloc/bonus_balance_bloc.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/currency.dart';
import 'package:sosedifedi/utils/utils.dart';

class CurrentBonusBalanceWidget extends StatelessWidget {
  const CurrentBonusBalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BonusBalanceBloc>(
      create: (context) => GetIt.I.get(),
      child: const _CurrentBonusBalanceBody(),
    );
  }
}

class _CurrentBonusBalanceBody extends StatelessWidget {
  const _CurrentBonusBalanceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BonusBalanceBloc, BonusBalanceState>(
      builder: (context, state) {
        if (state.bonusBalance == null) {
          return const SizedBox.shrink();
        }
        return BonusBalanceChipWidget(
          balance: state.bonusBalance!,
        );
      },
    );
  }
}

enum LogoPosition {
  left,
  right,
}

class BonusBalanceChipWidget extends StatelessWidget {
  const BonusBalanceChipWidget({
    super.key,
    required this.balance,
    this.logoPosition = LogoPosition.right,
    this.onPressed,
  });

  final double balance;
  final LogoPosition logoPosition;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: switch (logoPosition) {
        LogoPosition.left => ui.TextDirection.ltr,
        LogoPosition.right => ui.TextDirection.rtl,
      },
      child: RawChip(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        labelPadding: const EdgeInsets.only(
          right: AppInsets.padding4,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: AppInsets.padding4,
          horizontal: AppInsets.padding8,
        ),
        elevation: 0.0,
        pressElevation: 0.0,
        labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: Theme.of(context).colorScheme.onSecondary,
            ),
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppBorderRadius.medium),
        ),
        label: Text(balance.toFormatString()),
        avatarBoxConstraints: BoxConstraints.tight(
          const Size(
            AppInsets.padding16,
            AppInsets.padding16,
          ),
        ),
        avatar: const Icon(
          DerevenkaDobrenkaIcons.coffeeSwipeBonuses,
          size: AppInsets.padding16,
        ),
      ),
    );
  }
}
