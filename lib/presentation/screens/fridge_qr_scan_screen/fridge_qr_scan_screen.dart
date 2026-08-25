import 'dart:async';

import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:sosedifedi/domain/bloc/cart_bloc/cart_bloc.dart';
import 'package:sosedifedi/domain/bloc/fridge_qr_scanner_bloc/fridge_qr_scanner_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/components/error_button/error_button.dart';
import 'package:sosedifedi/presentation/components/qr_scanner/qr_scanner.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/keys/onboarding_keys.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import 'components/scanner_message_card.dart';

@RoutePage()
class FridgeQrScanScreen extends StatefulWidget implements AutoRouteWrapper {
  const FridgeQrScanScreen({
    super.key,
    @QueryParam(kFridgeIdKey) this.fridgeId,
    this.shouldSkipUnfinishedPurchaseGuard = false,
  });

  final String? fridgeId;
  final bool shouldSkipUnfinishedPurchaseGuard;

  @override
  State<FridgeQrScanScreen> createState() => _FridgeQrScanScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>(
          create: (context) => GetIt.I.get(),
        ),
        BlocProvider<FridgeQrScannerBloc>(
          create: (context) => GetIt.I.get(),
        ),
      ],
      child: this,
    );
  }
}

class _FridgeQrScanScreenState extends State<FridgeQrScanScreen>
    with WidgetsBindingObserver {
  static const _kAnimationDuration = Duration(milliseconds: 500);
  static const _kScanMinHeight = 350.0;
  static const _kScanMaxPanelHeight = 80.0;
  static const _kFridgeScannerAspectRatio = 3 / 5;

  final _cameraController = MobileScannerController(
    autoStart: false,
    detectionTimeoutMs: 100,
  );
  final _innerRouterKey = GlobalKey<AutoRouterState>();

  String currentRoute = ScanFridgeRoute.name;

  var _resumeFromBackground = false;

  StackRouter get _innerRouter => _innerRouterKey.currentState!.controller!;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    if (widget.fridgeId != null) {
      context.read<FridgeQrScannerBloc>().add(
            FridgeQrScannerEvent.onOpenFridge(widget.fridgeId!),
          );
    }
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _innerRouter.addListener(_listenRouteChange);
    });
    unawaited(_initScanner());
    unawaited(WakelockPlus.enable());
  }

  Future<void> _initScanner() async {
    try {
      await _cameraController.stop();
    } finally {
      try {
        if (await Permission.camera.isPermanentlyDenied && mounted) {
          await _showPermissionDialog(context);
        }
        await _cameraController.start();
      } catch (e) {
        final isPermissionDenied = (e is MobileScannerException &&
                e.errorCode == MobileScannerErrorCode.permissionDenied) ||
            await Permission.camera.isDenied;
        if (isPermissionDenied && mounted) {
          await _showPermissionDialog(context);
        }
      }
    }
  }

  Future<void> _showPermissionDialog(BuildContext context) async {
    final result = await showAdaptiveConfirmDialog(
      context: context,
      defaultAction: ConfirmDialogAction.confirm,
      title: Text(context.tr(LocaleKeys.fridge_permissionRequest_title)),
      message: Text(context.tr(LocaleKeys.fridge_permissionRequest_message)),
      cancelLabel: context.tr(LocaleKeys.fridge_permissionRequest_cancelLabel),
      confirmLabel:
          context.tr(LocaleKeys.fridge_permissionRequest_goToSettingsLabel),
    );
    if (result == ConfirmDialogResult.confirm) {
      await openAppSettings();
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // if (_cameraController.isStarting) {
    //   return;
    // }

    switch (state) {
      case AppLifecycleState.resumed:
        if (_resumeFromBackground) {
          _resumeFromBackground = false;
          unawaited(_initScanner());
        }
        break;
      case AppLifecycleState.inactive:
        _resumeFromBackground = true;
        _cameraController.stop();
        break;
      default:
        break;
    }
  }

  @override
  void didUpdateWidget(covariant FridgeQrScanScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.fridgeId != widget.fridgeId &&
        widget.fridgeId != null &&
        currentRoute != ScanCartRoute.name) {
      context.read<FridgeQrScannerBloc>().add(
            FridgeQrScannerEvent.onOpenFridge(widget.fridgeId!),
          );
    }
  }

  void _listenRouteChange() {
    final current = _innerRouter.current;
    if (currentRoute != current.name) {
      if (current.name == ScanCartRoute.name) {
        context.read<FridgeQrScannerBloc>().add(
              const FridgeQrScannerEvent.onCartOpened(),
            );
      }
      setState(() {
        currentRoute = current.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        iconTheme: Theme.of(context).appBarTheme.iconTheme!.copyWith(
              color: Colors.white,
            ),
        shadowColor: Colors.transparent,
        actions: [
          AutoLeadingButton(
            builder: (context, _, action) {
              return const ActionIconTheme(
                data: ActionIconThemeData(),
                child: CloseButton(),
              );
            },
          ),
        ],
        leading: IconButton(
          color: Colors.white,
          icon: ValueListenableBuilder(
            valueListenable: _cameraController,
            builder: (context, state, child) {
              switch (state.torchState) {
                case TorchState.off:
                  return const Icon(DerevenkaDobrenkaIcons.flashOffOutline);
                case TorchState.on:
                  return const Icon(DerevenkaDobrenkaIcons.flashOutline);
                case TorchState.auto:
                  return const Icon(Icons.flash_auto);
                case TorchState.unavailable:
                  return const Icon(Icons.no_flash);
              }
            },
          ),
          onPressed: () => _cameraController.toggleTorch(),
        ),
        title: const Center(
          child: ErrorButtonWidget(),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return LayoutBuilder(
            builder: (context, constraints) {
              assert(constraints.maxHeight.isFinite);

              final double scannerHeight = currentRoute == ScanCartRoute.name
                  ? _kScanMinHeight
                  : constraints.maxHeight;

              final double bottomPadding = currentRoute == ScanCartRoute.name
                  ? _kScanMaxPanelHeight +
                      AppInsets.padding32 +
                      AppBorderRadius.large
                  : constraints.maxHeight * (1 - _kFridgeScannerAspectRatio);

              final bannerTopPoint =
                  scannerHeight - bottomPadding + AppInsets.padding16;

              var cartTopPoint = bannerTopPoint;

              if (state.products.isEmpty) {
                cartTopPoint += _kScanMaxPanelHeight + AppInsets.padding16;
              }

              final double cartHeight = constraints.maxHeight - cartTopPoint;

              return Stack(
                children: [
                  AnimatedPositioned(
                    top: 0.0,
                    right: 0.0,
                    left: 0.0,
                    height: scannerHeight,
                    duration: _kAnimationDuration,
                    curve: Curves.easeOutCubic,
                    child: _QrScannerWidget(
                      bottomPadding: bottomPadding,
                      controller: _cameraController,
                    ),
                  ),
                  AnimatedPositioned(
                    duration: _kAnimationDuration,
                    curve: Curves.easeOutCubic,
                    top: bannerTopPoint,
                    height: _kScanMaxPanelHeight,
                    left: 0,
                    right: 0,
                    child:
                        BlocBuilder<FridgeQrScannerBloc, FridgeQrScannerState>(
                      buildWhen: (oldState, state) =>
                          oldState.status != state.status ||
                          oldState.banner != state.banner,
                      builder: (context, fridgeState) {
                        return SizedBox(
                          key: OnboardingKeys.scannerBannerKey,
                          child: PageTransitionSwitcher(
                            duration: _kAnimationDuration,
                            transitionBuilder: (
                              Widget child,
                              Animation<double> primaryAnimation,
                              Animation<double> secondaryAnimation,
                            ) {
                              return SlideTransition(
                                position: Tween<Offset>(
                                  begin: Offset.zero,
                                  end: const Offset(-1, 0.0),
                                ).animate(
                                  CurvedAnimation(
                                    parent: secondaryAnimation,
                                    curve: Curves.ease,
                                  ),
                                ),
                                child: SlideTransition(
                                  position: Tween<Offset>(
                                    begin: const Offset(1, 0.0),
                                    end: Offset.zero,
                                  ).animate(
                                    CurvedAnimation(
                                      parent: primaryAnimation,
                                      curve: Curves.ease,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: AppInsets.padding16,
                                    ),
                                    child: child,
                                  ),
                                ),
                              );
                            },
                            child: ConstrainedBox(
                              key: ValueKey(fridgeState.banner),
                              constraints: const BoxConstraints(
                                maxHeight: _kScanMaxPanelHeight,
                              ),
                              child: _getChild(context, fridgeState.banner),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  AnimatedPositioned(
                    duration: _kAnimationDuration,
                    curve: Curves.easeOutCubic,
                    top: cartTopPoint,
                    height: cartHeight,
                    left: 0,
                    right: 0,
                    child: Provider<MobileScannerController>.value(
                      value: _cameraController,
                      child: Column(
                        children: [
                          Expanded(
                            child: AutoRouter(
                              key: _innerRouterKey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _getChild(BuildContext context, FridgeScanQrBanner banner) {
    return switch (banner) {
      FridgeScanQrBanner.openFridge => ScannerMessageCard(
          child: Text(
            context.tr(LocaleKeys.fridge_helpers_scanFridge),
          ),
        ),
      FridgeScanQrBanner.waitOpenFridge => ScannerMessageCard(
          child: BlocBuilder<FridgeQrScannerBloc, FridgeQrScannerState>(
            buildWhen: (oldState, state) =>
                oldState.fridgeTimerSecondsLeft != state.fridgeTimerSecondsLeft,
            builder: (context, state) {
              return Column(
                children: [
                  Text(
                    context.tr(LocaleKeys.fridge_helpers_openFridge),
                  ),
                  Text(
                    context.plural(
                        LocaleKeys.seconds, state.fridgeTimerSecondsLeft),
                    style: DefaultTextStyle.of(context).style.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                ],
              );
            },
          ),
        ),
      FridgeScanQrBanner.fridgeOpened => ScannerMessageCard(
          child: Text(
            context.tr(LocaleKeys.fridge_helpers_scanProduct),
          ),
        ),
    };
  }

  @override
  void dispose() {
    _cameraController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    unawaited(WakelockPlus.disable());
    super.dispose();
  }
}

class _QrScannerWidget extends StatefulWidget {
  const _QrScannerWidget({
    super.key,
    required this.controller,
    this.bottomPadding = 0.0,
  });

  final MobileScannerController controller;
  final double bottomPadding;

  @override
  State<_QrScannerWidget> createState() => _QrScannerWidgetState();
}

class _QrScannerWidgetState extends State<_QrScannerWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      buildWhen: (oldState, state) =>
          oldState.scannerStatus != state.scannerStatus,
      builder: (context, cartState) {
        return BlocBuilder<FridgeQrScannerBloc, FridgeQrScannerState>(
          buildWhen: (oldState, state) =>
              oldState.status != state.status ||
              oldState.banner != state.banner,
          builder: (context, fridgeState) {
            final isLoading =
                cartState.scannerStatus == ScannerStatus.loading ||
                    fridgeState.status == FridgeQrScannerStatus.loading;
            return QrScanner(
              bottomPadding: widget.bottomPadding,
              startDelay: true,
              controller: widget.controller,
              isLoading: isLoading,
              onDetect: (_) {},
            );
          },
        );
      },
    );
  }
}
