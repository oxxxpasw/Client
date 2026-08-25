import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/bonus_details_by_store/bonus_details_by_store.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/store_details/store_details_cubit.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/store_info_widget.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

@RoutePage()
class StoreInfoScreen extends StatelessWidget implements AutoRouteWrapper {
  const StoreInfoScreen({
    super.key,
    required this.store,
  });

  final Store store;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreDetailsCubit, StoreDetailsState>(
      builder: (context, state) => switch (state.status) {
        StoreDetailsStateStatus.init ||
        StoreDetailsStateStatus.loading =>
          const Card(
            child: SizedBox(
              width: double.infinity,
              height: 285.0,
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          ),
        StoreDetailsStateStatus.ready => StoreInfoWidget1(
            store: state.store!,
            bonusDetails: state.bonusDetails,
          ),
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<StoreDetailsCubit>(
      create: (context) => GetIt.I.get(param1: store)..loadData(),
      child: this,
    );
  }
}

class StoreInfoWidget1 extends StatelessWidget {
  const StoreInfoWidget1({
    super.key,
    required this.store,
    this.bonusDetails,
  });

  final Store store;
  final BonusDetailsByStore? bonusDetails;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: StoreInfoWidget(
        point: store,
        actionsSpacing: AppInsets.padding16,
        bonusProgramName: bonusDetails?.name,
        bonuses: bonusDetails?.bonuses,
        actions: [
          if (store.coffeeMachine.isNotEmpty)
            _StoreInfoButton(
              onPressed: () {
                final coffeeMachine =
                    store.coffeeMachine.entries.firstOrNull?.value;
                if (coffeeMachine == null) return;

                context.router.pushAndPopUntil(
                    FridgeProductsRoute(
                      fridgeFileName: coffeeMachine.menuFileName,
                      isCoffee: true,
                    ),
                    predicate: (route) =>
                        route.settings.name == MainRoute.name);
              },
              child: Text(
                context.tr(LocaleKeys.fridge_coffee),
              ),
            ),
          if (store.fridge.isNotEmpty)
            _StoreInfoButton(
              onPressed: () => context.router.pushAndPopUntil(
                  FridgeProductsRoute(fridgeFileName: store.menuFileName),
                  predicate: (route) => route.settings.name == MainRoute.name),
              child: Text(
                context.tr(LocaleKeys.fridge_food),
              ),
            ),
        ],
      ),
    );
  }
}

class _StoreInfoButton extends StatelessWidget {
  const _StoreInfoButton({
    super.key,
    this.onPressed,
    required this.child,
  });

  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: AppInsets.padding8,
          horizontal: AppInsets.padding24,
        ),
      ),
      child: Row(
        children: [
          child,
          const Spacer(),
          const Icon(
            DerevenkaDobrenkaIcons.arrowRight2,
            size: 26,
          ),
        ],
      ),
    );
  }
}
