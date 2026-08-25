import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/presentation/components/store_card/store_card.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/map_utils/map_utils.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

typedef OnPointPressed = void Function(Store? store);

class _NetworkIcon {
  const _NetworkIcon({required this.descriptor, required this.widthPx});

  final BitmapDescriptor descriptor;
  final double widthPx;
}

class FridgeMapWidget2 extends StatefulWidget {
  const FridgeMapWidget2({
    super.key,
    this.cameraPosition,
    this.focusRect,
    this.selectedStore,
    this.onPointPressed,
    this.onMapCreated,
    required this.pointList,
  });

  final CameraPosition? cameraPosition;
  final ScreenRect? focusRect;
  final List<Store> pointList;
  final Store? selectedStore;
  final OnPointPressed? onPointPressed;
  final MapCreatedCallback? onMapCreated;

  @override
  State createState() => FridgeMapWidget2State();
}

class FridgeMapWidget2State extends State<FridgeMapWidget2> {
  final Completer<YandexMapController> _mapControllerCompleter = Completer();

  Future<YandexMapController> _getMapController() {
    return _mapControllerCompleter.future;
  }

  List<Store> get pointList => widget.pointList;

  Store? get selectedPoint => widget.selectedStore;

  static const _markerAsset = 'assets/images/marker.png';
  static const _selectedMarkerAsset = 'assets/images/selected-marker.png';
  static const _groupMarkerAsset = 'assets/images/group_marker.png';
  static const _kMarkerLogicalWidth = 44.0;
  static const _kSelectedMarkerLogicalWidth = 52.0;
  static const _kClusterLogicalWidth = 48.0;
  static const _kAssetMarkerWidthPx = 51.0;
  static const _kAssetGroupMarkerWidthPx = 70.0;

  final Map<String, _NetworkIcon> _networkIcons = {};

  Future<void> _loadNetworkIcons() async {
    for (final point in pointList) {
      final markerUrl = point.markerUrl;
      if (markerUrl == null || markerUrl.isEmpty) {
        continue;
      }
      if (_networkIcons.containsKey(markerUrl)) {
        continue;
      }
      try {
        final icon = await _loadNetworkIcon(markerUrl);
        if (icon != null && mounted) {
          setState(() {
            _networkIcons[markerUrl] = icon;
          });
        }
      } catch (e) {
        log(e.toString());
      }
    }
  }

  Future<_NetworkIcon?> _loadNetworkIcon(String url) async {
    if (!mounted) {
      return null;
    }
    final completer = Completer<ImageInfo>();
    final image = CachedNetworkImageProvider(
      url,
      scale: 4.0,
    );
    final stream = image.resolve(
      createLocalImageConfiguration(context),
    );
    final listener = ImageStreamListener(
      (imageInfo, _) => completer.complete(imageInfo),
      onError: (err, trace) => completer.completeError(err, trace),
    );
    stream.addListener(listener);
    try {
      final imageInfo = await completer.future;
      final ByteData? bytes =
          await imageInfo.image.toByteData(format: ImageByteFormat.png);
      if (bytes == null) {
        return null;
      }
      return _NetworkIcon(
        descriptor: BitmapDescriptor.fromBytes(bytes.buffer.asUint8List()),
        widthPx: imageInfo.image.width.toDouble(),
      );
    } finally {
      stream.removeListener(listener);
    }
  }

  void _onMapCreated(YandexMapController controller) async {
    if (!_mapControllerCompleter.isCompleted) {
      _mapControllerCompleter.complete(controller);
    }
    widget.onMapCreated?.call(controller);
    try {
      await controller.toggleUserLayer(
        visible: true,
        headingEnabled: false,
        autoZoomEnabled: false,
      );
    } catch (e) {
      log(e.toString());
    }
    final cameraPosition = widget.cameraPosition;
    if (cameraPosition != null) {
      await controller.moveCamera(
        CameraUpdate.newCameraPosition(cameraPosition),
        animation: const MapAnimation(duration: 0.0),
      );
    }
    await _loadNetworkIcons();
    final selected = widget.selectedStore;
    if (selected != null && mounted) {
      context.router.push(StoreInfoRoute(store: selected)).then(
        (value) {
          if (value is bool && value) {
            return null;
          }
          _unselectPoint();
        },
      );
    }
  }

  List<MapObject> _buildMapObjects() {
    final mapObjects = <MapObject>[];
    final placemarks = <PlacemarkMapObject>[];

    for (final point in pointList) {
      if (point.id == selectedPoint?.id) {
        continue;
      }
      placemarks.add(_buildPlacemark(point, isSelected: false));
    }

    if (placemarks.isNotEmpty) {
      mapObjects.add(
        ClusterizedPlacemarkCollection(
          mapId: const MapObjectId('places'),
          placemarks: placemarks,
          radius: 50,
          minZoom: 0,
          onClusterAdded: _onClusterAdded,
          onClusterTap: _onClusterTap,
        ),
      );
    }

    final selected = selectedPoint;
    if (selected != null) {
      mapObjects.add(_buildPlacemark(selected, isSelected: true));
    }

    return mapObjects;
  }

  PlacemarkMapObject _buildPlacemark(Store store, {required bool isSelected}) {
    return PlacemarkMapObject(
      mapId: MapObjectId('store_${store.id}'),
      point: Point(
        latitude: store.latitude,
        longitude: store.longitude,
      ),
      icon: _iconFor(store, isSelected),
      opacity: 1.0,
      zIndex: isSelected ? 2.0 : 1.0,
      consumeTapEvents: true,
      onTap: (_, __) => _selectPoint(store),
    );
  }

  double _scaleForWidth(double widthPx, double targetLogicalWidth) {
    if (widthPx <= 0) {
      return 1.0;
    }
    final dpr = MediaQuery.of(context).devicePixelRatio;
    return (targetLogicalWidth * dpr) / widthPx;
  }

  PlacemarkIcon _iconFor(Store store, bool isSelected) {
    if (isSelected) {
      return PlacemarkIcon.single(
        PlacemarkIconStyle(
          image: BitmapDescriptor.fromAssetImage(_selectedMarkerAsset),
          anchor: const Offset(0.5, 1.0),
          scale: _scaleForWidth(
            _kAssetMarkerWidthPx,
            _kSelectedMarkerLogicalWidth,
          ),
        ),
      );
    }
    final markerUrl = store.markerUrl;
    final networkIcon =
        markerUrl != null && markerUrl.isNotEmpty
            ? _networkIcons[markerUrl]
            : null;
    if (networkIcon != null) {
      return PlacemarkIcon.single(
        PlacemarkIconStyle(
          image: networkIcon.descriptor,
          anchor: const Offset(0.5, 1.0),
          scale: _scaleForWidth(networkIcon.widthPx, _kMarkerLogicalWidth),
        ),
      );
    }
    return PlacemarkIcon.single(
      PlacemarkIconStyle(
        image: BitmapDescriptor.fromAssetImage(_markerAsset),
        anchor: const Offset(0.5, 1.0),
        scale: _scaleForWidth(_kAssetMarkerWidthPx, _kMarkerLogicalWidth),
      ),
    );
  }

  Future<Cluster?> _onClusterAdded(
    ClusterizedPlacemarkCollection self,
    Cluster cluster,
  ) async {
    return cluster.copyWith(
      appearance: cluster.appearance.copyWith(
        zIndex: 1.5,
        opacity: 1.0,
        icon: PlacemarkIcon.single(
          PlacemarkIconStyle(
            image: BitmapDescriptor.fromAssetImage(_groupMarkerAsset),
            anchor: const Offset(0.5, 0.5),
            scale: _scaleForWidth(
              _kAssetGroupMarkerWidthPx,
              _kClusterLogicalWidth,
            ),
          ),
        ),
        text: PlacemarkText(
          text: cluster.size.toString(),
          style: const PlacemarkTextStyle(
            size: 18,
            color: Colors.white,
            placement: TextStylePlacement.center,
          ),
        ),
      ),
    );
  }

  Future<void> _onClusterTap(
    ClusterizedPlacemarkCollection self,
    Cluster cluster,
  ) async {
    final controller = await _getMapController();
    final zoom = (await controller.getCameraPosition()).zoom;
    await controller.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: cluster.appearance.point,
          zoom: zoom + 2,
        ),
      ),
      animation: const MapAnimation(duration: 0.5),
    );
  }

  Future<void> _selectPoint(Store point) async {
    widget.onPointPressed?.call(point);
  }

  Future<void> _unselectPoint() async {
    widget.onPointPressed?.call(null);
  }

  @override
  void didUpdateWidget(covariant FridgeMapWidget2 oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.pointList != oldWidget.pointList) {
      _loadNetworkIcons();
    }
    if (widget.selectedStore != oldWidget.selectedStore &&
        widget.selectedStore != null) {
      _navigateToStore(widget.selectedStore!);
    }
  }

  Future<void> _navigateToStore(Store store) async {
    final controller = await _getMapController();
    await controller.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(
            latitude: store.latitude,
            longitude: store.longitude,
          ),
          zoom: 16,
        ),
      ),
      animation: const MapAnimation(duration: 0.5),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YandexMap(
      gestureRecognizers: {
        Factory<EagerGestureRecognizer>(
          () => EagerGestureRecognizer(),
        ),
      },
      rotateGesturesEnabled: false,
      tiltGesturesEnabled: false,
      focusRect: widget.focusRect,
      mapObjects: _buildMapObjects(),
      onMapCreated: _onMapCreated,
      onMapTap: (_) => _unselectPoint(),
    );
  }

  Future<void> navigateToUserLocation() async {
    try {
      final location = await getUserLocation();
      _unselectPoint();
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
        color: Theme.of(context).colorScheme.background,
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
