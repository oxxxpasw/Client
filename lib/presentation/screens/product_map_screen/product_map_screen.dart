import 'dart:async';
import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/product_map_bloc/product_map_bloc.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/components/custom_search_bar.dart';
import 'package:sosedifedi/presentation/components/map_widget/map_widget.dart';
import 'package:sosedifedi/presentation/components/store_card/store_card.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/router/app_router.gr.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/map_utils/map_utils.dart';
import 'package:sosedifedi/utils/stream_listener.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

const _kNavigateButtonSize = 30.0;

@RoutePage()
class ProductMapScreen extends StatelessWidget implements AutoRouteWrapper {
  const ProductMapScreen({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return const FridgeMapWidget();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ProductMapBloc>(
      create: (context) => GetIt.I.get(param1: product),
      child: this,
    );
  }
}

const _kPanelHeight = 220.0;

class FridgeMapWidget extends StatefulWidget {
  const FridgeMapWidget({super.key});

  @override
  State createState() => ProductMapWidgetState();
}

class ProductMapWidgetState extends State<FridgeMapWidget> {
  final Completer<YandexMapController> _mapControllerCompleter = Completer();

  Future<YandexMapController> _getMapController() {
    return _mapControllerCompleter.future;
  }

  static const markerImage = 'app-marker';
  static const selectedMarkerImage = 'app-selected-marker';
  static const groupMarker = 'app-group-marker';

  void _onMapCreated(YandexMapController controller) async {
    if (!_mapControllerCompleter.isCompleted) {
      _mapControllerCompleter.complete(controller);
    }
  }

  Future<void> _setInitialCameraPosition(List<Store>? stores) async {
    final controller = await _getMapController();
    if (stores == null || stores.isEmpty) {
      try {
        final location = await getUserLocation();
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
        );
      } catch (_) {}
      return;
    }

    if (stores.length == 1) {
      await controller.moveCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: Point(
              latitude: stores.first.latitude,
              longitude: stores.first.longitude,
            ),
            zoom: 13,
          ),
        ),
      );
      return;
    }

    final boundingBox = _storesBoundingBox(stores);
    await controller.moveCamera(
      CameraUpdate.newGeometry(
        Geometry.fromBoundingBox(boundingBox),
      ),
    );
  }

  BoundingBox _storesBoundingBox(List<Store> stores) {
    double minLat = stores.first.latitude;
    double maxLat = stores.first.latitude;
    double minLng = stores.first.longitude;
    double maxLng = stores.first.longitude;

    for (final store in stores.skip(1)) {
      minLat = math.min(minLat, store.latitude);
      maxLat = math.max(maxLat, store.latitude);
      minLng = math.min(minLng, store.longitude);
      maxLng = math.max(maxLng, store.longitude);
    }

    final latPadding = math.max((maxLat - minLat) * 0.25, 0.001);
    final lngPadding = math.max((maxLng - minLng) * 0.25, 0.001);

    return BoundingBox(
      southWest: Point(
        latitude: minLat - latPadding,
        longitude: minLng - lngPadding,
      ),
      northEast: Point(
        latitude: maxLat + latPadding,
        longitude: maxLng + lngPadding,
      ),
    );
  }

  Rect? get globalPaintBounds {
    final renderObject = context.findRenderObject();
    final translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null && renderObject?.paintBounds != null) {
      final offset = Offset(translation.x, translation.y);
      return renderObject!.paintBounds.shift(offset);
    } else {
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    try {
      return StreamListener<ProductMapSr>(
        stream: context.read<ProductMapBloc>().singleResults,
        onData: (sr) =>
            sr.whenOrNull(setCameraToInitPosition: _setInitialCameraPosition),
        child: Stack(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return BlocBuilder<ProductMapBloc, ProductMapState>(
                  builder: (context, state) {
                    if (state.status == ProductMapStateStatus.loading) {
                      return const SizedBox();
                    }
                    return SafeArea(
                      top: false,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: _kPanelHeight),
                        child: FridgeMapWidget2(
                          onPointPressed: (store) {
                            if (store != null) {
                              context.router.root
                                  .push(StoreInfoRoute(store: store));
                            }
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
                          onMapCreated: _onMapCreated,
                          pointList:
                              state.stores?.map((e) => e.store).toList() ?? [],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            Positioned(
              right: AppInsets.padding16,
              top: AppInsets.padding16,
              child: Material(
                elevation: 4.0,
                shape: const CircleBorder(),
                clipBehavior: Clip.hardEdge,
                color: Theme.of(context)
                    .extension<CustomThemeExtension>()!
                    .secondaryBackground,
                child: IconButton(
                  iconSize: _kNavigateButtonSize,
                  highlightColor: Theme.of(context).splashColor,
                  icon: const Icon(Icons.navigation),
                  onPressed: () => navigateToUserLocation(),
                ),
              ),
            ),
            Positioned.fill(
              child: BlocBuilder<ProductMapBloc, ProductMapState>(
                builder: (context, state) {
                  if (state.status == ProductMapStateStatus.loading) {
                    return const SizedBox();
                  }
                  return BottomPanelWidget(
                    stores: state.stores ?? [],
                    searchResult: state.searchResult,
                    onSearch: (text) {
                      context.read<ProductMapBloc>().search(text);
                    },
                  );
                },
              ),
            )
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

class BottomPanelWidget extends StatefulWidget {
  const BottomPanelWidget({
    super.key,
    required this.stores,
    this.searchResult,
    this.onSearch,
  });

  final List<StoreItem> stores;
  final List<StoreItem>? searchResult;
  final ValueChanged<String>? onSearch;

  @override
  State<BottomPanelWidget> createState() => _BottomPanelWidgetState();
}

class _BottomPanelWidgetState extends State<BottomPanelWidget> {
  final _focusNode = FocusNode();
  var _isPanelOpened = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_listenFocus);
  }

  void _listenFocus() {
    setState(() {
      _isPanelOpened = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: AnimatedSize(
          alignment: Alignment.topCenter,
          curve: Curves.easeOutCubic,
          duration: const Duration(milliseconds: 300),
          child: Card(
            color: Theme.of(context).colorScheme.background,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppInsets.padding16,
                vertical: AppInsets.padding32,
              ),
              child: SafeArea(
                child: LayoutBuilder(builder: (context, constraints) {
                  final stores =
                      (_isPanelOpened ? widget.searchResult : widget.stores) ??
                          widget.stores;

                  final child = ListView.builder(
                    controller: ModalScrollController.of(context),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          bottom: AppInsets.padding4,
                          top: AppInsets.padding4,
                        ),
                        child: StoreCard(
                          store: stores[index].store,
                          distance: stores[index].distance,
                          onPressed: () {
                            context.router.root.push(
                              StoreInfoRoute(store: stores[index].store),
                            );
                          },
                        ),
                      );
                    },
                    itemCount: stores.length,
                  );

                  return Column(
                    mainAxisSize:
                        _isPanelOpened ? MainAxisSize.max : MainAxisSize.min,
                    children: [
                      CustomSearchBar(
                        focusNode: _focusNode,
                        leading: const Icon(DerevenkaDobrenkaIcons.search),
                        hintText: context.tr(LocaleKeys.search_label),
                        onChanged: (value) {
                          widget.onSearch?.call(value);
                        },
                      ),
                      const SizedBox(
                        height: AppInsets.padding4,
                      ),
                      if (_isPanelOpened)
                        Expanded(child: child)
                      else
                        SizedBox(
                          height: _kPanelHeight,
                          child: child,
                        )
                    ],
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
