import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/domain/bloc/map_bloc/map_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/components/bonus_balance_widget/bonus_balance_widget.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/map_widget/map_widget.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/map_utils/map_utils.dart';
import 'package:sosedifedi/utils/stream_listener.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class HomeScreen extends StatelessWidget implements AutoRouteWrapper {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: AppInsets.padding16,
        title: Text(context.tr(LocaleKeys.title)),
        actions: const [
          Center(child: CurrentBonusBalanceWidget()),
        ],
      ),
      body: const FridgeMapWidget(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<MapBloc>(
      create: (context) => GetIt.I.get(),
      child: this,
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
  }

  @override
  Widget build(BuildContext context) {
    try {
      return StreamListener<MapSr>(
        stream: context.read<MapBloc>().singleResults,
        onData: (sr) => sr.whenOrNull(
          setCameraToInitPosition: _setInitialCameraPosition,
          showChangeCityDialog: _showChangeCityDialog,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return BlocBuilder<MapBloc, MapState>(
              builder: (context, state) {
                return switch (state.status) {
                  MapStateStatus.init => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  MapStateStatus.ready ||
                  MapStateStatus.loading =>
                    FridgeMapBodyWidget(
                      onMapPressed: () {
                        context.router.push(const MapRoute());
                      },
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
                      storeList: state.selectedCity?.storeList ?? [],
                      selectedStore: state.selectedStore,
                      onMapCreated: _onMapCreated,
                    ),
                };
              },
            );
          },
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

class FridgeMapBodyWidget extends StatelessWidget {
  const FridgeMapBodyWidget({
    super.key,
    required this.storeList,
    required this.selectedStore,
    required this.cameraPosition,
    required this.onMapCreated,
    this.onMapPressed,
  });

  final List<Store> storeList;
  final Store? selectedStore;
  final CameraPosition cameraPosition;

  final void Function(YandexMapController)? onMapCreated;
  final VoidCallback? onMapPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 100,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: AppInsets.padding16,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const Placeholder(
                fallbackHeight: 100,
                fallbackWidth: 100,
              );
            },
            separatorBuilder: (_, __) => const SizedBox(
              width: AppInsets.padding16,
            ),
          ),
        ),
        const SizedBox(
          height: AppInsets.padding16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppInsets.padding16),
          child: FilledButton(
            onPressed: () {
              // context.router.push(const MapRoute());
            },
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppInsets.padding8),
              ),
              minimumSize: const Size(0.0, 70.0),
            ),
            child: const Text('Приведи друга и получи 100 бонусов'),
          ),
        ),
        const SizedBox(
          height: AppInsets.padding16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppInsets.padding16),
          child: Text(
            'Кофе на карте',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        const SizedBox(
          height: AppInsets.padding8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: onMapPressed,
            behavior: HitTestBehavior.translucent,
            child: IgnorePointer(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(AppInsets.padding16),
                  topLeft: Radius.circular(
                    AppInsets.padding16,
                  ),
                ),
                child: FridgeMapWidget2(
                  cameraPosition: cameraPosition,
                  onMapCreated: onMapCreated,
                  pointList: storeList,
                  selectedStore: selectedStore,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
