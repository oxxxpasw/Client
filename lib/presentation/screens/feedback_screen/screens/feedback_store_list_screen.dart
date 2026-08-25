import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/point_list_bloc/point_list_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/custom_search_bar.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

import '../../point_list_screen/point_list_screen.dart';

@RoutePage()
class FeedbackStoreListScreen extends StatelessWidget
    implements AutoRouteWrapper {
  const FeedbackStoreListScreen({
    super.key,
    required this.onStoreSelected,
    required this.onScanQrPressed,
  });

  final void Function(Store order) onStoreSelected;
  final VoidCallback onScanQrPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          context.tr(LocaleKeys.feedbackScreen_chooseStore),
        ),
      ),
      body: SafeArea(
        child: SrBlocBuilder<PointListBloc, PointListState, PointListSr>(
          onSR: (context, sr) => switch (sr) {
            ErrorSr(error: final error) => Messenger.showMessage(
                context: context,
                message: error,
              ),
            PointListSelectedSr(:final store) => onStoreSelected(store),
          },
          builder: (context, state) {
            if (state.status == PointListStatus.init ||
                state.status == PointListStatus.loading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: AppInsets.padding16,
                    left: AppInsets.padding16,
                    right: AppInsets.padding16,
                    bottom: AppInsets.padding8,
                  ),
                  child: CustomSearchBar(
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
                          onStorePressed: (store) => context
                              .read<PointListBloc>()
                              .onPointPressed(store),
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
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: AppInsets.padding16,
                    right: AppInsets.padding16,
                    left: AppInsets.padding16,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: onScanQrPressed,
                      child: Text(
                        LocaleKeys.feedbackScreen_scanQr.tr(context: context),
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
      create: (context) => GetIt.I.get()..init(null),
      child: this,
    );
  }
}
