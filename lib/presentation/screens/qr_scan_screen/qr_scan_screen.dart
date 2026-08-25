import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sosedifedi/constants.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/fridge_qr_scanner_bloc/fridge_qr_scanner_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/keys/onboarding_keys.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../fridge_qr_scan_screen/fridge_qr_scan_screen_2.dart';
import 'components/scanner.dart';

@RoutePage()
class QrScanScreen extends StatefulWidget implements AutoRouteWrapper {
  const QrScanScreen({
    super.key,
    this.shouldSkipUnfinishedPurchaseGuard = false,
    this.isCoffee = false,
  });

  final bool shouldSkipUnfinishedPurchaseGuard;

  final bool isCoffee;

  @override
  State<QrScanScreen> createState() => _QrScanScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<FridgeQrScannerBloc>(
      create: (context) => GetIt.I.get(),
      child: this,
    );
  }
}

class _QrScanScreenState extends State<QrScanScreen>
    with WidgetsBindingObserver {
  final _cameraController = MobileScannerController(
    autoStart: false,
  );

  String currentRoute = ScanFridgeRoute.name;

  var _resumeFromBackground = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    unawaited(_initScanner());
    unawaited(WakelockPlus.enable());
  }

  Future<void> _initScanner() async {
    try {
      await _cameraController.stop();
    } finally {
      try {
        await Future.delayed(const Duration(seconds: 1));
        if (await Permission.camera.isPermanentlyDenied && mounted) {
          await _showPermissionDialog(context);
        }
        await _cameraController.start();

        _cameraController.barcodes.listen(
          (barcode) {
            if (!mounted) return;
            context.read<FridgeQrScannerBloc>().add(
                  FridgeQrScannerEvent.onScanQr(barcode),
                );
          },
        );
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        scrolledUnderElevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      extendBody: true,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            AppInsets.padding16,
          ),
          child: FilledButton(
            key: OnboardingKeys.scannerHaveProductsButtonKey,
            child: Text(
              context.tr(LocaleKeys.fridge_haveProducts),
            ),
            onPressed: () {
              context.read<FridgeQrScannerBloc>().add(
                    const FridgeQrScannerEvent.onHaveProductsPressed(),
                  );
            },
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: AppInsets.padding24,
                left: AppInsets.padding16,
                right: AppInsets.padding16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                      children: [
                        TextSpan(
                          text: context.tr(
                            LocaleKeys.createOrderScreen_pageProgress,
                            namedArgs: {
                              'current': '1',
                              'count': '5',
                            },
                          ),
                        ),
                        const TextSpan(
                          text: 'Отсканируйте QR-код',
                        )
                      ],
                    ),
                  ),
                  const StepProgressIndicator(
                    currentStep: 0,
                    stepCount: 5,
                    height: AppInsets.padding24,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ColoredBox(
                color: const Color(0xFF464646),
                child: _QrScannerWidget(
                  controller: _cameraController,
                  isCoffee: widget.isCoffee,
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
    required this.controller,
    this.isCoffee = false,
  });

  final MobileScannerController controller;

  final bool isCoffee;

  @override
  State<_QrScannerWidget> createState() => _QrScannerWidgetState();
}

class _QrScannerWidgetState extends State<_QrScannerWidget> {
  @override
  Widget build(BuildContext context) {
    return SrBlocBuilder<FridgeQrScannerBloc, FridgeQrScannerState,
        FridgeQrScannerSr>(
      onSR: (context, sr) => sr.when(
        error: (error) {
          return context.router.navigate(
            QrReportProblemPopup(error: error),
          );
        },
        fridgeScanned: () => HapticFeedback.mediumImpact(),
        openStore: (
          store,
          fridgeId,
          barcode,
        ) {
          context.router.replace(
            FridgeQrScanRoute2(
              store: store!,
              fridgeId: fridgeId,
              barcode: barcode,
            ),
          );
          // if (barcode != null) {
          //   WidgetsBinding.instance.addPostFrameCallback((_) {
          //     context
          //         .read<CartBloc>()
          //         .add(CartEvent.onDetectQR(barcode: barcode));
          //   });
          // }
          return;
        },
        openCoffeeMachine: (store, coffeeMachine) {
          context.router.replace(
            CreateOrderRoute(
              store: store,
              coffeeMachine: coffeeMachine,
            ),
          );
        },
        restoreCart: () => context.router.replace(FridgeQrScanRoute2()),
        userBanned: () => context.router.push(const UserBannedPopup()),
        showStoreList: (barcode) async {
          final result = await context.router.push(
            PointListModalRoute(
              title: Text(
                LocaleKeys.cart_orderFrom.tr(context: context),
              ),
            ),
          );
          if (result is Store? && context.mounted) {
            context.read<FridgeQrScannerBloc>().add(
                  FridgeQrScannerEvent.storeSelected(
                    store: result,
                    barcode: barcode,
                  ),
                );
          }
          return null;
        },
        showQrScannerOnboarding: () =>
            WidgetsBinding.instance.addPostFrameCallback(
          (_) {
            // if (!mounted) return;
            // _entry = OverlayEntry(
            //   builder: (_) => QrScannerOnboarding(
            //     onClose: () {
            //       _entry?.remove();
            //       _entry = null;
            //     },
            //   ),
            // );
            // Overlay.of(context, rootOverlay: true).insert(_entry!);
            // return context.read<FridgeQrScannerBloc>().add(
            //       const FridgeQrScannerEvent.onQrScannerOnboardingComplete(),
            //     );
          },
        ),
      ),
      buildWhen: (oldState, state) =>
          oldState.status != state.status || oldState.banner != state.banner,
      builder: (context, fridgeState) {
        final isLoading = fridgeState.status == FridgeQrScannerStatus.loading;
        final padding = MediaQuery.paddingOf(context);
        return QrScanner(
          padding: EdgeInsets.only(
            bottom: padding.bottom + AppInsets.padding128,
            top: AppInsets.padding72,
            left: AppInsets.padding32,
            right: AppInsets.padding32,
          ),
          banner: _QrScanScreenBottomBar(
            torchState: widget.controller,
            onToggleTorch: () => widget.controller.toggleTorch(),
          ),
          backgroundColor: kScannerBgColor,
          controller: widget.controller,
          startDelay: true,
          isLoading: isLoading,
          onDetect: (_) {},
        );
      },
    );
  }
}

class _QrScanScreenBottomBar extends StatelessWidget {
  const _QrScanScreenBottomBar({
    super.key,
    required this.torchState,
    this.onToggleTorch,
  });

  final MobileScannerController torchState;
  final VoidCallback? onToggleTorch;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: AppInsets.padding16,
          vertical: AppInsets.padding8,
        ),
        child: SizedBox(
          height: AppMinButtonSize.large.height,
          child: Material(
            color: const Color(0xFF2B2B2B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppBorderRadius.large),
            ),
            child: DefaultTextStyle.merge(
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.w500,
                  ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: AppInsets.padding24,
                  right: AppInsets.padding16,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        context.tr(LocaleKeys.qrScanScreen_title),
                      ),
                    ),
                    IconButton(
                      color: Colors.white,
                      icon: ValueListenableBuilder(
                        valueListenable: torchState,
                        builder: (context, state, child) {
                          switch (state.torchState) {
                            case TorchState.off:
                              return const Icon(
                                  DerevenkaDobrenkaIcons.flashOffOutline);
                            case TorchState.on:
                              return const Icon(
                                  DerevenkaDobrenkaIcons.flashOutline);
                            case TorchState.auto:
                              return const Icon(Icons.flash_auto);
                            case TorchState.unavailable:
                              return const Icon(Icons.no_flash);
                          }
                        },
                      ),
                      onPressed: onToggleTorch,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
