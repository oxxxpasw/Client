import 'package:sosedifedi/domain/bloc/map_bloc/map_bloc.dart';
import 'package:sosedifedi/presentation/icons/custom_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarCountryDropdown extends StatelessWidget {
  const AppBarCountryDropdown({
    super.key,
    this.onCountryPressed,
  });

  final VoidCallback? onCountryPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      // buildWhen: (oldState, newState) =>
      //     oldState.selectedCountry != newState.selectedCountry,
      builder: (context, state) {
        return GestureDetector(
          onTap: onCountryPressed,
          child: Row(
            children: [
              // Text(
              //   state.selectedCountry?.name ?? 'Выберите страну',
              //   style: Theme.of(context)
              //       .textTheme
              //       .titleLarge!
              //       .copyWith(fontWeight: FontWeight.w700),
              // ),
              const SizedBox(
                width: AppInsets.padding4,
              ),
              Icon(
                CustomICons.chevronDown,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ],
          ),
        );
      },
    );
  }
}
