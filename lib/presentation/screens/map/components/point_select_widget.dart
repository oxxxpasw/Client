import 'package:flutter/material.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/presentation/icons/custom_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';

const _kNavigateButtonSize = 30.0;

class PointSelectWidget extends StatelessWidget {
  const PointSelectWidget({
    super.key,
    required this.point,
    required this.onSelect,
    required this.onCancel,
  });

  final Store point;
  final VoidCallback onSelect;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context)
          .extension<CustomThemeExtension>()!
          .secondaryBackground,
      elevation: 2,
      clipBehavior: Clip.hardEdge,
      child: SafeArea(
        top: false,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppInsets.padding24,
                horizontal: AppInsets.padding16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Кофе-бар',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: AppInsets.padding4,
                  ),
                  Text(
                    point.address ?? '',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: AppInsets.padding24,
                  ),
                  if (point.scheduleDescription != null)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Theme.of(context)
                              .extension<CustomThemeExtension>()!
                              .labelColor,
                        ),
                        const SizedBox(
                          width: AppInsets.padding8,
                        ),
                        Text(
                          point.scheduleDescription!,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: AppInsets.padding24,
                  ),
                  TextButton(
                    onPressed: onSelect,
                    child: const Text('Заказать здесь'),
                  )
                ],
              ),
            ),
            Positioned(
              right: 0.0,
              top: 0.0,
              child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: const Icon(CustomICons.closeBig),
                onPressed: onCancel,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum PointSelectState {
  open,
  closed,
}

class PointSelectAnimatedWidget extends StatefulWidget {
  const PointSelectAnimatedWidget({
    super.key,
    this.point,
    required this.onSelect,
    required this.onCancel,
    required this.pointSelectController,
    required this.onUserLocationPressed,
    this.defaultState = PointSelectState.closed,
  }) : assert(defaultState == PointSelectState.closed || point != null);

  final Store? point;
  final PointSelectState defaultState;
  final VoidCallback onSelect;
  final VoidCallback onCancel;
  final VoidCallback onUserLocationPressed;
  final PointSelectController pointSelectController;

  @override
  State<PointSelectAnimatedWidget> createState() =>
      _PointSelectAnimatedWidgetState();
}

class _PointSelectAnimatedWidgetState extends State<PointSelectAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _sizeAnimation;

  Store? _point;
  bool _isPanelVisible = false;
  late final PointSelectController _pointSelectController;

  @override
  initState() {
    super.initState();
    _pointSelectController = widget.pointSelectController;
    _pointSelectController._addState(this);
    _point = widget.point;
    _isPanelVisible = widget.defaultState == PointSelectState.open;
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
      value: _isPanelVisible ? 1.0 : 0.0,
    );
    _controller.addListener(() {});
    _sizeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(AppInsets.padding16),
              child: Material(
                shape: const CircleBorder(),
                clipBehavior: Clip.hardEdge,
                color: Theme.of(context)
                    .extension<CustomThemeExtension>()!
                    .labelColor,
                child: IconButton(
                  iconSize: _kNavigateButtonSize,
                  highlightColor: Theme.of(context).splashColor,
                  icon: const Icon(Icons.navigation),
                  onPressed: widget.onUserLocationPressed,
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 0.0,
                minHeight:
                    kToolbarHeight + MediaQuery.of(context).padding.bottom,
                maxHeight: double.infinity,
                maxWidth: double.infinity,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizeTransition(
                  axisAlignment: -1,
                  sizeFactor: _sizeAnimation,
                  child: _isPanelVisible
                      ? PointSelectWidget(
                          point: _point!,
                          onSelect: widget.onSelect,
                          onCancel: widget.onCancel,
                        )
                      : const SizedBox.shrink(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _show(Store point) {
    setState(() {
      _isPanelVisible = true;
      _point = point;
    });
    return _controller.fling(velocity: 1.0);
  }

  Future<void> _hide() {
    return _controller.fling(velocity: -1.0).then((x) {
      setState(() {
        _isPanelVisible = false;
      });
    });
  }

  bool get _isPointSelectAnimating => _controller.isAnimating;

  //returns whether or not the
  //panel is open
  bool get _isPointSelectOpen => _controller.value == 1.0;

  bool get _isPointSelectShown => _isPanelVisible;
}

class PointSelectController {
  _PointSelectAnimatedWidgetState? widgetState;

  void _addState(_PointSelectAnimatedWidgetState widgetState) {
    this.widgetState = widgetState;
  }

  bool get isAttached => widgetState != null;

  Future<void> show(Store point) {
    assert(isAttached,
        "PointSelectController must be attached to a PointSelectAnimatedWidget");
    return widgetState!._show(point);
  }

  Future<void> hide() {
    assert(isAttached,
        "PointSelectController must be attached to a PointSelectAnimatedWidget");
    return widgetState!._hide();
  }

  bool get isPointSelectAnimating {
    assert(isAttached,
        "PointSelectController must be attached to a PointSelectAnimatedWidget");
    return widgetState!._isPointSelectAnimating;
  }

  bool get isPointSelectOpen {
    assert(isAttached,
        "PointSelectController must be attached to a PointSelectAnimatedWidget");
    return widgetState!._isPointSelectOpen;
  }

  bool get isPointSelectShown {
    assert(isAttached,
        "PointSelectController must be attached to a PointSelectAnimatedWidget");
    return widgetState!._isPointSelectShown;
  }
}
