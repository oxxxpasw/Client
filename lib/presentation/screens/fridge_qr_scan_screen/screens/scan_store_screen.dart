import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/cart_bloc/cart_bloc.dart';
import 'package:sosedifedi/domain/bloc/fridge_qr_scanner_bloc/fridge_qr_scanner_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/keys/onboarding_keys.dart';
import 'package:sosedifedi/presentation/onboarding/qr_scanner_onboardong/qr_scanner_onboarding.dart';
import 'package:sosedifedi/presentation/router/app_router.gr.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/stream_listener.dart';

@RoutePage()
class ScanFridgeScreen extends StatefulWidget {
  const ScanFridgeScreen({super.key});

  @override
  State<ScanFridgeScreen> createState() => _ScanFridgeScreenState();
}

class _ScanFridgeScreenState extends State<ScanFridgeScreen> {
  StreamSubscription? _subscription;
  OverlayEntry? _entry;

  @override
  void initState() {
    super.initState();
    context
        .read<FridgeQrScannerBloc>()
        .add(const FridgeQrScannerEvent.onInit());
    final controller =
        Provider.of<MobileScannerController>(context, listen: false);
    _subscription = controller.barcodes.listen(
      (barcodes) {
        if (!mounted) return;
        context.read<FridgeQrScannerBloc>().add(
              FridgeQrScannerEvent.onScanQr(barcodes),
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewPadding.bottom),
      child: WillPopScope(
        onWillPop: () async {
          final result = await showAdaptiveConfirmDialog(
            context: context,
            defaultAction: ConfirmDialogAction.cancel,
            title: Text(context.tr(LocaleKeys.cart_cancelOrderQuestion)),
          );
          if (result == ConfirmDialogResult.confirm) {
            return true;
          }
          return false;
        },
        child: StreamListener<FridgeQrScannerSr>(
          stream: context.read<FridgeQrScannerBloc>().singleResults,
          onData: (sr) => sr.when(
            error: (error) {
              return context.router.navigate(
                QrReportProblemPopup(error: error),
              );
            },
            fridgeScanned: () => HapticFeedback.mediumImpact(),
            openStore: (store, fridgeId, barcode) {
              context.router.push(
                ScanCartRoute(store: store, fridgeId: fridgeId),
              );
              if (barcode != null) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  context
                      .read<CartBloc>()
                      .add(CartEvent.onDetectQR(barcode: barcode));
                });
              }
              return;
            },
            openCoffeeMachine: (_, __) {},
            restoreCart: () => context.router.push(
              ScanCartRoute(restoreCart: true),
            ),
            userBanned: () => context.router.push(const UserBannedPopup()),
            showStoreList: (barcode) async {
              final result = await context.router.push(
                PointListModalRoute(
                  title: Text(
                    context.tr(LocaleKeys.cart_orderFrom),
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
                if (!mounted) return;
                _entry = OverlayEntry(
                  builder: (_) => QrScannerOnboarding(
                    onClose: () {
                      _entry?.remove();
                      _entry = null;
                    },
                  ),
                );
                Overlay.of(context, rootOverlay: true).insert(_entry!);
                return context.read<FridgeQrScannerBloc>().add(
                      const FridgeQrScannerEvent
                          .onQrScannerOnboardingComplete(),
                    );
              },
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: AppInsets.padding16,
                left: AppInsets.padding16,
                right: AppInsets.padding16,
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
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
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
