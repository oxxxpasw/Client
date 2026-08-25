import 'dart:async';

import 'package:animations/animations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sosedifedi/constants.dart';
import 'package:sosedifedi/domain/bloc/cart_bloc/cart_bloc.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/currency.dart';
import 'package:sosedifedi/utils/stream_listener.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../qr_scan_screen/components/scanner.dart';
import 'cart_screen.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ScanProductScreen extends StatefulWidget {
  const ScanProductScreen({
    super.key,
    required this.onPressedNext,
  });

  final VoidCallback onPressedNext;

  @override
  State<ScanProductScreen> createState() => _ScanProductScreenState();
}

class _ScanProductScreenState extends State<ScanProductScreen>
    with WidgetsBindingObserver {
  final _cameraController = MobileScannerController(
    autoStart: false,
    detectionTimeoutMs: 100,
  );

  var _resumeFromBackground = false;

  StreamSubscription<BarcodeCapture>? _subscription;

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
      await Future.delayed(const Duration(milliseconds: 1000));
    } finally {
      try {
        if (await Permission.camera.isPermanentlyDenied && mounted) {
          await _showPermissionDialog(context);
        }
        await _cameraController.start();
        _subscription ??= _cameraController.barcodes.listen(
          (barcode) {
            if (!mounted) return;
            context.read<CartBloc>().add(
                  CartEvent.onDetectQR(barcode: barcode),
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
      bottomNavigationBar: _QrScanScreenBottomBar(
        onPressedNext: widget.onPressedNext,
        torchState: _cameraController,
        onToggleTorch: () => _cameraController.toggleTorch(),
      ),
      extendBody: true,
      body: Stack(
        children: [
          _QrScannerWidget(
            controller: _cameraController,
          ),
          const Positioned(
            top: AppInsets.padding16,
            left: AppInsets.padding16,
            right: AppInsets.padding16,
            child: CartHeader(),
          )
        ],
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
  });

  final MobileScannerController controller;

  @override
  State<_QrScannerWidget> createState() => _QrScannerWidgetState();
}

class _QrScannerWidgetState extends State<_QrScannerWidget> {
  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.viewPaddingOf(context);
    return BlocBuilder<CartBloc, CartState>(
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.scannerStatus != current.scannerStatus,
      builder: (context, state) {
        final isLoading = state.status == CartStateStatus.updating ||
            state.scannerStatus == ScannerStatus.loading;
        return QrScanner(
          aspectRatio: 2.0,
          padding: EdgeInsets.only(
            bottom: padding.bottom + 220,
            top: padding.top + AppInsets.padding128,
            left: AppInsets.padding32,
            right: AppInsets.padding32,
          ),
          banner: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppInsets.padding16,
            ),
            child: SizedBox(
              height: AppMinButtonSize.large.height,
              child: Material(
                color: Colors.black,
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
                      right: AppInsets.padding8,
                      left: AppInsets.padding16,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            context.tr(
                                'Расположите штрих-код товара в выделенной области'),
                          ),
                        ),
                        IconButton(
                          color: Colors.white,
                          icon: ValueListenableBuilder(
                              valueListenable: widget.controller,
                              builder: (context, state, child) {
                                switch (state.torchState) {
                                  case TorchState.off:
                                    return const Icon(
                                      DerevenkaDobrenkaIcons.flashOffOutline,
                                    );
                                  case TorchState.on:
                                    return const Icon(
                                      DerevenkaDobrenkaIcons.flashOutline,
                                    );
                                  case TorchState.auto:
                                    return const Icon(
                                      Icons.flash_auto,
                                    );
                                  case TorchState.unavailable:
                                    return const Icon(
                                      Icons.no_flash,
                                    );
                                }
                              }),
                          onPressed: widget.controller.toggleTorch,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
    required this.onPressedNext,
  });

  final MobileScannerController torchState;
  final VoidCallback? onToggleTorch;

  final VoidCallback onPressedNext;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              const NewProductBannerWidget(),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  if (state.orderPrice == 0) {
                    return const SizedBox.shrink();
                  }
                  return Padding(
                    padding: const EdgeInsets.all(
                      AppInsets.padding16,
                    ),
                    child: FilledButton(
                      onPressed: onPressedNext,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.cart_toCart.tr(
                              context: context,
                              args: [
                                Currency.convertToPrice(
                                    state.currencySymbol, state.orderPrice)
                              ],
                            ),
                          ),
                          const Icon(
                            DerevenkaDobrenkaIcons.arrowRight2,
                            size: 26.0,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NewProductBannerWidget extends StatefulWidget {
  const NewProductBannerWidget({super.key});

  @override
  State<NewProductBannerWidget> createState() => _NewProductBannerWidgetState();
}

class _NewProductBannerWidgetState extends State<NewProductBannerWidget> {
  Product? _lastProduct;

  @override
  Widget build(BuildContext context) {
    final Widget child;

    if (_lastProduct == null) {
      child = const SizedBox.shrink();
    } else {
      child = PageTransitionSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (
          Widget child,
          Animation<double> primaryAnimation,
          Animation<double> secondaryAnimation,
        ) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: Offset.zero,
              end: const Offset(1, 0.0),
            ).animate(
              CurvedAnimation(
                parent: secondaryAnimation,
                curve: Curves.ease,
              ),
            ),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1, 0.0),
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
        child: Builder(
          key: UniqueKey(),
          builder: (context) {
            final product = _lastProduct;
            return NewProductBanner(
              product: product,
              onDestroy: () {
                setState(() {
                  if (product?.id == _lastProduct?.id) {
                    _lastProduct = null;
                  }
                });
              },
            );
          },
        ),
      );
    }

    return StreamListener(
      stream: context.read<CartBloc>().singleResults,
      onData: (sr) => switch (sr) {
        NewProductAddedSr(:final product) => setState(() {
            _lastProduct = product;
          }),
        _ => null,
      },
      child: child,
    );
  }
}

class NewProductBanner extends StatefulWidget {
  const NewProductBanner({
    super.key,
    this.onDestroy,
    this.product,
  });

  final Product? product;
  final VoidCallback? onDestroy;

  @override
  State<NewProductBanner> createState() => _NewProductBannerState();
}

class _NewProductBannerState extends State<NewProductBanner>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    final child = SizedBox(
      width: double.infinity,
      child: Card(
        color: ColorScheme.of(context).surface,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppInsets.padding12,
            horizontal: AppInsets.padding20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.cart_productAdded.tr(context: context),
                style: TextTheme.of(context).bodySmall?.copyWith(
                      color: ColorScheme.of(context).primary,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(
                height: AppInsets.padding4,
              ),
              Text(
                widget.product?.name ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: ColorScheme.of(context).onSurface,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return FadeTransition(
      opacity: _animation!,
      child: child,
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    _timer?.cancel();
    super.dispose();
  }

  _initTimer() {
    final from = _controller?.value ?? 0.0;

    _controller ??= AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
      reverseDuration: const Duration(
        milliseconds: 500,
      ),
    );

    _animation = _controller!
        .drive(
          CurveTween(
            curve: Curves.ease,
          ),
        )
        .drive(
          Tween<double>(
            begin: 0.0,
            end: 1.0,
          ),
        );

    _controller!.forward(from: from);

    _timer?.cancel();
    _timer = Timer(const Duration(seconds: 5), () {
      _controller!.addListener(() {
        if (_controller!.status.isDismissed && _controller!.value == 0.0) {
          widget.onDestroy?.call();
        }
      });
      _controller!.reverse(from: _controller?.value ?? 1.0);
      setState(() {});
    });
  }
}
