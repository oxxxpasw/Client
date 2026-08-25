import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/point_list_bloc/point_list_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_search_bar.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

import './point_list_screen.dart';

@RoutePage()
class PointListModalScreen extends StatelessWidget implements AutoRouteWrapper {
  const PointListModalScreen({
    super.key,
    this.stores,
    this.autofocusOnSearch = false,
    this.title,
  });

  final List<Store>? stores;
  final bool autofocusOnSearch;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.viewInsetsOf(context).bottom,
        ),
        child: SrBlocBuilder<PointListBloc, PointListState, PointListSr>(
          onSR: (context, sr) => switch (sr) {
            ErrorSr(error: final error) => Messenger.showMessage(
                context: context,
                message: error,
              ),
            PointListSelectedSr() => null,
          },
          builder: (context, state) {
            if (state.status == PointListStatus.init ||
                state.status == PointListStatus.loading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title != null)
                  Padding(
                    padding: const EdgeInsets.only(
                      top: AppInsets.padding24,
                      left: AppInsets.padding16,
                      right: AppInsets.padding16,
                    ),
                    child: DefaultTextStyle(
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                              ) ??
                          const TextStyle(),
                      child: title!,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: AppInsets.padding16,
                    left: AppInsets.padding16,
                    right: AppInsets.padding16,
                    bottom: AppInsets.padding8,
                  ),
                  child: CustomSearchBar(
                    autoFocus: autofocusOnSearch,
                    leading: const Icon(DerevenkaDobrenkaIcons.search),
                    hintText: context.tr(LocaleKeys.search_label),
                    onChanged: (value) {
                      context.read<PointListBloc>().search(value);
                    },
                  ),
                ),
                Expanded(
                  child: state.points!.isNotEmpty
                      ? PointListWidget(
                          stores: state.points!,
                          onStorePressed: (store) {
                            context.router.pop(store);
                          },
                        )
                      : Padding(
                          padding:
                              const EdgeInsets.only(top: AppInsets.padding16),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              context.tr(LocaleKeys.search_nothingFound),
                            ),
                          ),
                        ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PointListBloc>(
      create: (context) => GetIt.I.get()..init(stores),
      child: this,
    );
  }
}
