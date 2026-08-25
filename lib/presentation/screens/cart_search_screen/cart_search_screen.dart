import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/cart_search_bloc/cart_search_bloc.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/components/popup/popup.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

import 'components/product_card.dart';

@RoutePage()
class CartSearchScreen extends StatefulWidget implements AutoRouteWrapper {
  const CartSearchScreen({
    super.key,
    required this.store,
  });

  final Store store;

  @override
  State<CartSearchScreen> createState() => _CartSearchScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CartSearchBloc>(
      create: (context) => GetIt.I.get(param1: store),
      child: this,
    );
  }
}

class _CartSearchScreenState extends State<CartSearchScreen> {
  bool _needShowDialog = true;
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          if (!_needShowDialog) return true;
          final result = await _showDialog();
          return result == ConfirmDialogResult.confirm;
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: AppInsets.padding16,
                right: AppInsets.padding16,
                top: AppInsets.padding16,
                bottom: AppInsets.padding8,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SearchBar(
                      focusNode: _focusNode,
                      hintText:
                          context.tr(LocaleKeys.cartSearchScreen_inputHint),
                      onChanged: (query) {
                        context
                            .read<CartSearchBloc>()
                            .add(CartSearchEvent.onSearch(query));
                      },
                      leading: const Icon(DerevenkaDobrenkaIcons.search),
                    ),
                  ),
                  const SizedBox(
                    width: AppInsets.padding16,
                  ),
                  BlocBuilder<CartSearchBloc, CartSearchState>(
                    buildWhen: (previous, current) =>
                        previous.productsToAddToCart !=
                        current.productsToAddToCart,
                    builder: (context, state) {
                      if (state.productsToAddToCart.isEmpty) {
                        return CancelButton(
                          onCancel: context.router.pop,
                        );
                      }
                      return NextButton(
                        onNext: () {
                          context
                              .read<CartSearchBloc>()
                              .add(const CartSearchEvent.onNextButtonPressed());
                        },
                      );
                    },
                  )
                ],
              ),
            ),
            Expanded(
              child:
                  SrBlocBuilder<CartSearchBloc, CartSearchState, CartSearchSr>(
                onSR: (context, sr) => sr.when(
                  error: (error) =>
                      Messenger.showMessage(context: context, message: error),
                  addToCart: (result) {
                    _needShowDialog = false;
                    return context.router.pop(result);
                  },
                  showWeightProductMessage: () => showPopup(
                    context: context,
                    title: Text(
                      context.tr(
                        LocaleKeys.cartSearchScreen_weightProductPopUp_title,
                      ),
                    ),
                    confirmLabel: Text(
                      context.tr(
                        LocaleKeys.cartSearchScreen_weightProductPopUp_action,
                      ),
                    ),
                  ),
                ),
                buildWhen: (previous, current) =>
                    previous.status != current.status ||
                    previous.searchResult != current.searchResult,
                builder: (context, state) => switch (state.status) {
                  CartSearchStatus.init => const EmptyCartSearchView(),
                  CartSearchStatus.loading => const LoadingCartSearchView(),
                  CartSearchStatus.ready => CartSearchView(
                      products: state.searchResult,
                    ),
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<ConfirmDialogResult> _showDialog() => showAdaptiveConfirmDialog(
        useRootNavigator: false,
        context: context,
        defaultAction: ConfirmDialogAction.cancel,
        title: Text(
          context.tr(LocaleKeys.cartSearchScreen_exitDialog_message),
        ),
      );
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
    required this.onCancel,
  });

  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCancel,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppInsets.padding8,
        ),
        child: Text(
          context.tr(
            LocaleKeys.cancel,
          ),
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required this.onNext,
  });

  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onNext,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppInsets.padding8,
        ),
        child: BlocBuilder<CartSearchBloc, CartSearchState>(
          buildWhen: (previous, current) =>
              previous.productsToAddToCart != current.productsToAddToCart,
          builder: (context, state) {
            return Text(
              context.tr(
                LocaleKeys.cartSearchScreen_ready,
                args: [
                  state.productsToAddToCart.entries
                      .fold<double>(
                        0.0,
                        (previousValue, element) =>
                            previousValue + element.value,
                      )
                      .toInt()
                      .toString(),
                ],
              ),
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            );
          },
        ),
      ),
    );
  }
}

class CartSearchView extends StatelessWidget {
  const CartSearchView({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: products
          .map((e) => ProductCard(
                product: e,
                onAddToCartPressed: () {},
              ))
          .toList(),
    );
  }
}

class EmptyCartSearchView extends StatelessWidget {
  const EmptyCartSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.tr(
          LocaleKeys.cartSearchScreen_emptyLabel,
        ),
      ),
    );
  }
}

class LoadingCartSearchView extends StatelessWidget {
  const LoadingCartSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
