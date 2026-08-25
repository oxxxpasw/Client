import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';

class QrScanner extends StatelessWidget {
  const QrScanner({
    super.key,
    this.controller,
    this.isLoading = false,
    this.startDelay = false,
    required this.onDetect,
    this.padding = EdgeInsets.zero,
    this.backgroundColor = Colors.black,
    this.scannerHeight,
    this.banner,
    this.aspectRatio = 1.0,
  });

  final MobileScannerController? controller;

  final void Function(BarcodeCapture barcodes) onDetect;

  final bool isLoading;

  final bool startDelay;

  final EdgeInsetsGeometry padding;

  final Color backgroundColor;

  final double? scannerHeight;

  final Widget? banner;

  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final padding = this.padding.resolve(Directionality.maybeOf(context));

      final maxWidth = constraints.maxWidth - padding.horizontal;

      final maxHeight = constraints.maxHeight - padding.vertical;

      final height =
          scannerHeight ?? math.min(maxWidth / aspectRatio, maxHeight);

      final topPadding = padding.top + ((maxHeight - height) / 2);

      final rect = Rect.fromLTWH(
        padding.left,
        topPadding,
        maxWidth,
        height,
      );
      return Container(
        width: double.infinity,
        height: double.infinity,
        color: backgroundColor,
        child: Stack(
          children: [
            MobileScanner(
              // startDelay: startDelay,
              controller: controller,
              onDetect: onDetect,
              scanWindow: rect,
            ),
            Positioned.fill(
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.srcOut,
                ),
                child: Stack(
                  children: [
                    const Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          backgroundBlendMode: BlendMode.dstOut,
                        ),
                      ),
                    ),
                    Positioned.fromRect(
                      rect: rect,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppBorderRadius.medium,
                          ),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned.fromRect(
              rect: rect,
              child: _ScanArea(
                isLoading: isLoading,
              ),
            ),
            if (banner != null)
              Positioned(
                top: topPadding + height + AppInsets.padding32,
                left: 0,
                right: 0,
                child: banner!,
              )
          ],
        ),
      );
    });
  }
}

class _ScanArea extends StatelessWidget {
  const _ScanArea({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final color = isLoading
        ? theme.extension<CustomThemeExtension>()!.labelColor
        : theme.colorScheme.primary;

    final side = BorderSide(
      width: 3.0,
      color: color,
      strokeAlign: BorderSide.strokeAlignOutside,
    );

    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(AppBorderRadius.medium),
                    bottomLeft: Radius.circular(AppBorderRadius.medium),
                  ),
                  border: Border(
                    top: side,
                    left: side,
                    bottom: side,
                  ),
                ),
              ),
            ),
            const Spacer(flex: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(AppBorderRadius.medium),
                    bottomRight: Radius.circular(AppBorderRadius.medium),
                  ),
                  border: Border(
                    top: side,
                    right: side,
                    bottom: side,
                  ),
                ),
              ),
            ),
          ],
        ),
        if (isLoading)
          const Center(
            child: CircularProgressIndicator(),
          ),
      ],
    );
  }
}
