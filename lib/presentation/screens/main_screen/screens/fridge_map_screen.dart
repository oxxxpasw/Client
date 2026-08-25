import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/domain/bloc/map_bloc/map_bloc.dart';
import 'package:sosedifedi/domain/bloc/promotions_bloc/promotions_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/fake_search_bar/fake_search_bar.dart';
import 'package:sosedifedi/presentation/components/map_widget/map_widget.dart';
import 'package:sosedifedi/presentation/components/store_card/store_card.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/screens/main_screen/components/city_button.dart';
import 'package:sosedifedi/presentation/screens/main_screen/components/home_stories_row.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/map_utils/map_utils.dart';
import 'package:sosedifedi/utils/stream_listener.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../components/last_purchase_card/last_purchase_card.dart';

const _kNavigateButtonSize = 30.0;

Point get _defaultTarget {
  final location = GetIt.I.get<AppEnvironment>().defaultLocation;
  return Point(
    longitude: location[0].toDouble(),
    latitude: location[1].toDouble(),
  );
}

@RoutePage()
class FridgeMapScreen extends StatelessWidget implements AutoRouteWrapper {
  const FridgeMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: false,
        titleTextStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
        title: Text(context.tr(LocaleKeys.title)),
        centerTitle: false,
        leadingWidth: 0.0,
        actions: const [
          Center(
            child: CityButton2(),
          ),
        ],
      ),
      body: const FridgeMapWidget(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<MapBloc>(
      create: (context) => GetIt.I.get(),
      child: BlocProvider<PromotionsBloc>(
        create: (context) => GetIt.I.get(),
        child: this,
      ),
    );
  }
}

class FridgeMapWidget extends StatefulWidget {
  const FridgeMapWidget({super.key});

  @override
  State createState() => FridgeMapWidgetState();
}

class FridgeMapWidgetState extends State<FridgeMapWidget> {
  final Completer<YandexMapController> _mapControllerCompleter = Completer();

  Future<YandexMapController> _getMapController() {
    return _mapControllerCompleter.future;
  }

  static const markerImage = 'selectedMarker';
  static const selectedMarkerImage = 'marker';
  static const groupMarker = 'groupMarker';

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

  Future<void> _showChangeCityDialog(City newCity) async {
    final result = await context.router.push(
      ChangeCityPopup(newCity: newCity),
    );
    if (result == true && mounted) {
      context.read<MapBloc>().changeCity(newCity);
    }
  }

  Future<void> _showStoreList(List<Store> stores) async {
    final result = await context.router.push(
      PointListModalRoute(stores: stores, autofocusOnSearch: true),
    );
    if (result is Store && mounted) {
      _selectPoint(result);
    }
  }

  Future<void> _selectPoint(Store? point) async {
    if (point != null) {
      _getMapController().then((controller) async {
        await controller.moveCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: Point(
                latitude: point.latitude,
                longitude: point.longitude,
              ),
              zoom: 16,
            ),
          ),
          animation: const MapAnimation(duration: 0.5),
        );
      });
      context.router.push(StoreInfoRoute(store: point));
      GetIt.I.get<AnalystService>().selectStore(storeId: point.id);
    }
  }

  @override
  void initState() {
    super.initState();
    context.read<PromotionsBloc>().loadData();
  }

  @override
  Widget build(BuildContext context) {
    try {
      final mapButtonPadding = MediaQuery.paddingOf(context).bottom;      return StreamListener<MapSr>(
        stream: context.read<MapBloc>().singleResults,
        onData: (sr) => sr.whenOrNull(
          setCameraToInitPosition: _setInitialCameraPosition,
          showChangeCityDialog: _showChangeCityDialog,
          showStoreList: _showStoreList,
        ),
        child: Stack(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return BlocBuilder<MapBloc, MapState>(
                  builder: (context, state) {
                    return switch (state.status) {
                      MapStateStatus.init => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      MapStateStatus.ready ||
                      MapStateStatus.loading =>
                        state.selectedCity != null
                            ? FridgeMapWidget2(
                                onPointPressed: _selectPoint,
                                cameraPosition: CameraPosition(
                                  target: _defaultTarget,
                                  zoom: 11,
                                ),
                                onMapCreated: _onMapCreated,
                                pointList: state.selectedCity?.storeList ?? [],
                                selectedStore: state.selectedStore,
                              )
                            : const CityNotSelectedWidget(),
                    };
                  },
                );
              },
            ),
            Positioned(
              right: AppInsets.padding16,
              left: AppInsets.padding16,
              top: AppInsets.padding16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: LastPurchaseCard(
                      shouldShowFeedbackBanner: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: AppInsets.padding4,
                    ),
                    child: BlocBuilder<MapBloc, MapState>(
                      buildWhen: (oldState, newState) =>
                          oldState.selectedCity != newState.selectedCity,
                      builder: (context, state) {
                        if (state.selectedCity == null) {
                          return const SizedBox.shrink();
                        }
                        return IconButton.filled(
                          iconSize: _kNavigateButtonSize,
                          icon: const Icon(Icons.navigation),
                          style: IconButton.styleFrom(
                            foregroundColor: ColorScheme.of(context).onSurface,
                            backgroundColor: ColorScheme.of(context).surface,
                          ),
                          onPressed: () => navigateToUserLocation(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: AppInsets.padding16,
              right: AppInsets.padding16,
              bottom: mapButtonPadding + AppInsets.padding8,
              child: FakeSearchBar(
                onTap: () => context.read<MapBloc>().showStoreList(),
                hintText: LocaleKeys.fridge_searchPoint.tr(context: context),
                leading: const Icon(DerevenkaDobrenkaIcons.search),
                side: WidgetStatePropertyAll(
                  BorderSide(
                    width: 1,
                    color: ColorScheme.of(context).primary,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } catch (e) {
      return const SizedBox();
    }
  }

  Future<void> navigateToUserLocation() async {
    try {
      final location = await getUserLocation();
      _selectPoint(null);
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

  @override
  void dispose() {
    super.dispose();
  }
}

class PointListWidget extends StatefulWidget {
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
  State<PointListWidget> createState() => _PointListWidgetState();
}

class _PointListWidgetState extends State<PointListWidget> {
  TabController? _controller;

  void _listenTabController() {
    setState(() {});
  }

  void _changeController() {
    _controller?.removeListener(_listenTabController);
    _controller = widget.controller ?? DefaultTabController.maybeOf(context);
    _controller?.addListener(_listenTabController);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _changeController();
  }

  @override
  void didUpdateWidget(covariant PointListWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      _changeController();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _controller != null ? _controller!.index == 0 : false,
      child: Material(
        color: Theme.of(context).colorScheme.surface,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: kToolbarHeight),
            child: buildContent(),
          ),
        ),
      ),
    );
  }

  Widget buildContent() {
    if (widget.stores == null) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }
    return ListView.separated(
      padding: const EdgeInsets.all(AppInsets.padding16),
      itemBuilder: (context, index) {
        final item = widget.stores![index];
        return StoreCard(
          store: item,
          isSelected: widget.selected == item,
          onPressed: () => widget.onStorePressed?.call(item),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: AppInsets.padding16,
      ),
      itemCount: widget.stores!.length,
    );
  }

  @override
  void dispose() {
    _controller?.removeListener(_listenTabController);
    super.dispose();
  }
}

class CityNotSelectedWidget extends StatelessWidget {
  const CityNotSelectedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.tr(LocaleKeys.fridge_chooseCity),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: AppInsets.padding24,
          ),
          TextButton(
            onPressed: () => context.router.push(CityListRoute()),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(context.tr(LocaleKeys.fridge_chooseCityAction)),
                const Icon(DerevenkaDobrenkaIcons.arrowRight),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
