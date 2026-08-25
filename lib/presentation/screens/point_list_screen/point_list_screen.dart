import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/point_list_bloc/point_list_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_search_bar.dart';
import 'package:sosedifedi/presentation/components/store_card/store_card.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/screens/main_screen/components/city_button.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class PointListScreen extends StatelessWidget implements AutoRouteWrapper {
  const PointListScreen({
    super.key,
    this.stores,
  });

  final List<Store>? stores;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.all(AppInsets.padding8),
              child: CityButton(),
            ),
          ),
        ],
      ),
      body: SafeArea(
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

class PointListWidget extends StatefulWidget {
  const PointListWidget({
    super.key,
    required this.stores,
    this.onStorePressed,
  });

  final List<StoreItem> stores;
  final void Function(Store store)? onStorePressed;

  @override
  State<PointListWidget> createState() => _PointListWidgetState();
}

class _PointListWidgetState extends State<PointListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        horizontal: AppInsets.padding16,
        vertical: AppInsets.padding8,
      ),
      itemBuilder: (context, index) {
        final item = widget.stores[index];
        return StoreCard(
          store: item.store,
          distance: item.distance,
          onPressed: () => widget.onStorePressed?.call(item.store),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: AppInsets.padding8,
      ),
      itemCount: widget.stores.length,
    );
  }
}

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
    required this.distance,
  });

  final double distance;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    final textStyle = Theme.of(context).textTheme.labelMedium!.copyWith(
          color: color,
        );

    final String value;

    if (distance < 1) {
      value = context.tr(
        LocaleKeys.fridge_distance_inMeters,
        args: [(distance * 1000).toInt().toString()],
      );
    } else {
      value = context.tr(
        LocaleKeys.fridge_distance_inKiloMeters,
        args: [distance.toInt().toString()],
      );
    }

    return Row(
      children: [
        Icon(
          CupertinoIcons.location,
          color: color,
          size: textStyle.fontSize,
        ),
        const SizedBox(
          width: AppInsets.padding4,
        ),
        Text(
          value,
          style: textStyle,
        ),
      ],
    );
  }
}
