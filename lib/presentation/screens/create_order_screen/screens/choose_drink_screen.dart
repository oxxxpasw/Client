import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/drink_list_cubit/drink_list_cubit.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/components/product_card/product_card.dart';
import 'package:sosedifedi/presentation/screens/main_screen/screens/products_screen.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/currency.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class ChooseDrinkScreen extends StatelessWidget implements AutoRouteWrapper {
  const ChooseDrinkScreen({
    super.key,
    required this.storeFile,
    this.onProductSelected,
  });

  final void Function(Product)? onProductSelected;
  final String storeFile;

  @override
  Widget build(BuildContext context) {
    return SrBlocBuilder<DrinkListCubit, DrinkListState, DrinkListSr>(
      onSR: (context, sr) => switch (sr) {
        DrinkListSelectionConfirmedSr(:final drink) =>
          onProductSelected?.call(drink),
      },
      builder: (context, state) {
        return switch (state.status) {
          DrinkListStatus.initial ||
          DrinkListStatus.loading ||
          DrinkListStatus.error =>
            const Center(
              child: CircularProgressIndicator(),
            ),
          DrinkListStatus.ready => const DrinkListWidgetContent(),
        };
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<DrinkListCubit>(
      create: (context) => GetIt.I.get(param1: storeFile)..loadData(),
      child: this,
    );
  }
}

class DrinkListWidgetContent extends StatelessWidget {
  const DrinkListWidgetContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
            child: BlocBuilder<DrinkListCubit, DrinkListState>(
              buildWhen: (previous, current) =>
                  previous.selectedDrink != current.selectedDrink ||
                  previous.drinks != current.drinks,
              builder: (context, state) {
                final drinkList = state.drinks ?? [];
                final selectedDrink = state.selectedDrink;
                return GridView.builder(
                  padding: const EdgeInsets.only(
                    top: AppInsets.padding40,
                    bottom: AppInsets.padding16,
                    left: AppInsets.padding16,
                    right: AppInsets.padding16,
                  ),
                  gridDelegate: const ProductSliverGridDelegate(
                    maxCrossAxisExtent: 140,
                    mainAxisSpacing: AppInsets.padding8,
                    crossAxisSpacing: AppInsets.padding8,
                    fixedMainExtent: 80.0,
                  ),
                  itemBuilder: (context, index) => ProductCard(
                    product: drinkList[index],
                    isSelected: drinkList[index] == selectedDrink,
                    onPressed: () => context.read<DrinkListCubit>().selectDrink(
                          drinkList[index],
                        ),
                  ),
                  itemCount: drinkList.length,
                );
              },
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(AppInsets.padding16),
          child: ChooseDrinkActionButton(),
        ),
      ],
    );
  }
}

class ChooseDrinkActionButton extends StatelessWidget {
  const ChooseDrinkActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrinkListCubit, DrinkListState>(
      buildWhen: (previous, current) =>
          previous.selectedDrink != current.selectedDrink ||
          previous.isSelectionConfirmed != current.isSelectionConfirmed,
      builder: (context, state) {
        final isEnabled =
            state.selectedDrink != null && !state.isSelectionConfirmed;

        if (state.isSelectionConfirmed) {
          return FilledButton(
            onPressed: isEnabled ? () => _onNextPressed(context) : null,
            child: const SizedBox(
              height: 20.0,
              width: 20.0,
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }

        return FilledButtonWithArrow(
          onPressed: isEnabled ? () => _onNextPressed(context) : null,
          label: Text(
            context.tr(
              LocaleKeys.cart_checkout,
            ),
          ),
        );
      },
    );
  }

  void _onNextPressed(BuildContext context) {
    context.read<DrinkListCubit>().confirmSelection();
  }
}

class DrinkCard extends StatelessWidget {
  const DrinkCard({
    super.key,
    required this.drink,
    this.isSelected = false,
    this.onPressed,
  });

  final Product drink;
  final bool isSelected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final border = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppBorderRadius.medium),
      side: isSelected
          ? BorderSide(
              color: theme.colorScheme.primary,
              width: 2.0,
            )
          : BorderSide.none,
    );
    return Card(
      color: theme.colorScheme.surfaceContainer,
      shape: border,
      child: InkWell(
        onTap: onPressed,
        customBorder: border,
        child: Semantics(
          onTap: onPressed,
          selected: isSelected,
          child: Padding(
            padding: const EdgeInsets.all(AppInsets.padding8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (drink.volume != null)
                  Align(
                    alignment: Alignment.centerRight,
                    child: DecoratedBox(
                      decoration: ShapeDecoration(
                        color: theme.colorScheme.primary,
                        shape: const StadiumBorder(),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppInsets.padding8,
                          vertical: AppInsets.padding4,
                        ),
                        child: Text(
                          drink.volume!,
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: theme.colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: Image.network(
                    drink.imageUrl ?? '',
                    width: double.infinity,
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Text(
                  drink.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  Currency.convertToPrice(drink.currencySymbol, drink.price),
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
