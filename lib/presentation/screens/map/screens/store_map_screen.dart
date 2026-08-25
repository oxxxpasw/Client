import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/map_bloc/map_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/custom_leading_button/custom_leading_button.dart';
import 'package:sosedifedi/presentation/components/custom_tab_bar/custom_tab_bar.dart';
import 'package:sosedifedi/presentation/components/custom_toggle_button/custom_toggle_button.dart';
import 'package:sosedifedi/presentation/components/fake_search_bar/fake_search_bar.dart';
import 'package:sosedifedi/presentation/components/map_widget/map_widget.dart';
import 'package:sosedifedi/presentation/components/store_card/store_card.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/router/app_router.gr.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/map_utils/map_utils.dart';
import 'package:sosedifedi/utils/stream_listener.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

@RoutePage()
class StoreMapScreen extends StatefulWidget {
  const StoreMapScreen({super.key});

  @override
  State createState() => StoreMapScreenState();
}

class StoreMapScreenState extends State<StoreMapScreen> {
  final Completer<YandexMapController> _mapControllerCompleter = Completer();

  Future<YandexMapController> _getMapController() {
    return _mapControllerCompleter.future;
  }

  static const markerImage = 'selectedMarker';
  static const selectedMarkerImage = 'marker';
  static const groupMarker = 'groupMarker';

  @override
  Widget build(BuildContext context) {
    return StreamListener<MapSr>(
      stream: context.read<MapBloc>().singleResults,
      onData: (sr) => switch (sr) {
        MapErrorSr(:var error) =>
          Messenger.showMessage(context: context, message: error),
        MapSetCameraToInitPositionSr(:var options) =>
          _setInitialCameraPosition(options),
        MapShowStoreListSr(:var stores) => context.router
              .push(
            PointListModalRoute(stores: stores, autofocusOnSearch: true),
          )
              .then(
            (result) {
              if (result is Store && context.mounted) {
                context.read<MapBloc>().changeStore(result);
              }
            },
          ),
        _ => null,
      },
      child: Scaffold(
        appBar: buildAppBar(),
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: MapBottomBar(
          onPressed: () => context.read<MapBloc>().showStoreList(),
        ),
        body: SafeArea(
          top: false,
          child: Stack(
            children: [
              Builder(
                builder: (context) {
                  return BlocBuilder<MapBloc, MapState>(
                    builder: (context, state) {
                      return FridgeMapWidget2(
                        onPointPressed: _selectPoint,
                        pointList: state.selectedCity?.storeList ?? [],
                        selectedStore: state.selectedStore,
                        cameraPosition: CameraPosition(
                          target: Point(
                            longitude: GetIt.I
                                .get<AppEnvironment>()
                                .defaultLocation[0]
                                .toDouble(),
                            latitude: GetIt.I
                                .get<AppEnvironment>()
                                .defaultLocation[1]
                                .toDouble(),
                          ),
                          zoom: 11,
                        ),
                        onMapCreated: _onMapCreated,
                      );
                    },
                  );
                },
              ),
              Positioned(
                right: AppInsets.padding16,
                bottom: AppInsets.padding16,
                child: NavigateToUserButton(
                  onPressed: () => navigateToUserLocation(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      leading: CustomLeadingButton(
        color: Theme.of(context).colorScheme.onPrimary,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      title: const TabBarTest(),
      iconTheme: Theme.of(context).appBarTheme.iconTheme!.copyWith(
            color:
                Theme.of(context).extension<CustomThemeExtension>()!.textColor,
          ),
    );
  }

  Future<void> navigateToUserLocation() async {
    try {
      final location = await getUserLocation();
      final controller = await _getMapController();
      await controller.moveCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: Point(
              latitude: location.lat,
              longitude: location.lng,
            ),
            zoom: 13,
          ),
        ),
        animation: const MapAnimation(duration: 0.5),
      );
    } catch (_) {}
  }

  void _onMapCreated(YandexMapController controller) async {
    if (!_mapControllerCompleter.isCompleted) {
      _mapControllerCompleter.complete(controller);
    }
  }

  Future<void> _setInitialCameraPosition(CameraPosition? options) async {
    if (options == null) {
      return;
    }
    final controller = await _getMapController();
    await controller.moveCamera(
      CameraUpdate.newCameraPosition(options),
      animation: const MapAnimation(duration: 0.0),
    );
  }

  Future<void> _selectPoint(Store? store) async {
    context.read<MapBloc>().changeStore(store);
  }
}

class PointListWidget extends StatelessWidget {
  const PointListWidget({
    super.key,
    this.controller,
    this.stores,
    this.selected,
    this.onStorePressed,
  });

  final TabController? controller;
  final List<Store>? stores;
  final Store? selected;
  final void Function(Store store)? onStorePressed;

  @override
  Widget build(BuildContext context) {
    if (stores == null) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(AppInsets.padding16),
      child: Column(
        children: [
          const SearchBar(),
          const SizedBox(
            height: AppInsets.padding16,
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(AppInsets.padding16),
              itemBuilder: (context, index) {
                final item = stores![index];
                return StoreCard(
                  store: item,
                  isSelected: selected == item,
                  onPressed: () => onStorePressed?.call(item),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: AppInsets.padding16,
              ),
              itemCount: stores!.length,
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarTest extends StatefulWidget {
  const TabBarTest({super.key, this.onTap});

  final ValueChanged<int>? onTap;

  @override
  State<TabBarTest> createState() => _TabBarTestState();
}

class _TabBarTestState extends State<TabBarTest> with TickerProviderStateMixin {
  TabController? _controller;
  int selected = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 260.0,
        child: Material(
          type: MaterialType.transparency,
          child: ToggleButton(
            height: 31,
            iconSize: 18,
            labelStyle: Theme.of(context).textTheme.bodySmall,
            selectedIndex: selected,
            options: const [
              ToggleOption(
                label: Text('Все'),
              ),
              ToggleOption(
                label: Text('С бонусами'),
                icon: Icon(DerevenkaDobrenkaIcons.coffeeSwipeBonuses),
              ),
            ],
            onChanged: (value) {
              setState(() {
                selected = value;
              });
            },
          ),
        ),
      ),
    );

    return Center(
      child: SizedBox(
        width: 260.0,
        child: CustomTabBar(
          controller: _controller,
          tabs: const [
            Tab(
              height: 32,
              text: 'Все',
            ),
            Tab(
              height: 32,
              child: Row(
                children: [
                  Icon(DerevenkaDobrenkaIcons.coffeeSwipeBonuses),
                  SizedBox(width: AppInsets.padding2),
                  Text('С бонусами'),
                ],
              ),
            )
          ],
          onTap: (value) {
            widget.onTap?.call(value);
          },
        ),
      ),
    );
  }
}

class NavigateToUserButton extends StatelessWidget {
  const NavigateToUserButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      shape: const CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Theme.of(context)
          .extension<CustomThemeExtension>()!
          .secondaryBackground,
      child: IconButton(
        iconSize: 30.0,
        highlightColor: Theme.of(context).splashColor,
        icon: const Icon(Icons.navigation),
        onPressed: onPressed,
      ),
    );
  }
}

class MapBottomBar extends StatelessWidget {
  const MapBottomBar({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        maintainBottomViewPadding: true,
        child: Padding(
          padding: const EdgeInsets.all(AppInsets.padding16),
          child: BlocBuilder<MapBloc, MapState>(
            buildWhen: (previous, current) =>
                previous.selectedStore != current.selectedStore,
            builder: (context, state) {
              Widget child;

              if (state.selectedStore != null) {
                child = SelectedStoreInfoWidget(
                  store: state.selectedStore!,
                  city: state.selectedCity!,
                );
              } else {
                child = FakeSearchBar(
                  onTap: onPressed,
                  hintText: LocaleKeys.fridge_searchPoint.tr(context: context),
                  leading: const Icon(DerevenkaDobrenkaIcons.search),
                );
              }

              return AnimatedSize(
                curve: Curves.easeOutCubic,
                alignment: Alignment.topCenter,
                duration: const Duration(milliseconds: 300),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: child,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class SelectedStoreInfoWidget extends StatelessWidget {
  const SelectedStoreInfoWidget({
    super.key,
    required this.store,
    required this.city,
  });

  final Store store;
  final City city;

  @override
  Widget build(BuildContext context) {
    Widget? storeNameWidget;

    if (store.name != null) {
      storeNameWidget = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            store.name!,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          if (store.address != null) Text(store.address!),
        ],
      );
    } else if (store.address != null) {
      storeNameWidget = Text(
        store.address!,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
      );
    }

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                city.name,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: AppInsets.padding4,
                ),
                child: Text(
                  store.name ?? store.address ?? '',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              if (store.name != null && store.address != null)
                Padding(
                  padding: const EdgeInsets.only(
                    top: AppInsets.padding2,
                  ),
                  child: Text(
                    store.address!,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                )
            ],
          ),
        ),
      ],
    );
  }
}
