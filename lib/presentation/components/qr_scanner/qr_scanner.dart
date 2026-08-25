import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';

const _kMaxHeight = 200.0;
const _kMaxWidth = 240.0;
const _kCardHeight = 80.0;

class QrScanner extends StatelessWidget {
  const QrScanner({
    super.key,
    this.controller,
    this.isLoading = false,
    this.startDelay = false,
    required this.onDetect,
    this.bottomPadding = 0.0,
  });

  final MobileScannerController? controller;

  final void Function(BarcodeCapture barcodes) onDetect;

  final bool isLoading;

  final bool startDelay;

  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final view = MediaQueryData.fromView(View.of(context));
      final maxWidth = (constraints.maxWidth.isFinite
          ? constraints.maxWidth
          : view.size.width);

      final maxHeight = (constraints.maxHeight.isFinite
              ? constraints.maxHeight
              : view.size.height) -
          bottomPadding;
      final topPadding = MediaQuery.of(context).padding.top;
      final maxQrHeight = maxHeight - topPadding;
      final width = math.min(maxWidth - AppInsets.padding64 * 2, _kMaxWidth);
      final height = math.min(
        maxQrHeight,
        _kMaxHeight,
      );
      final rect = Rect.fromLTWH(
        (maxWidth - width) / 2,
        maxHeight - height,
        width,
        height,
      );
      return Container(
        color: Colors.black,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            MobileScanner(
              // startDelay: startDelay,
              controller: controller,
              onDetect: onDetect,
            ),
            Positioned.fromRect(
              rect: rect,
              child: _ScanArea(
                isLoading: isLoading,
              ),
            ),
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
    final color = isLoading
        ? Theme.of(context).extension<CustomThemeExtension>()!.labelColor
        : Colors.white;

    final side = BorderSide(
      width: 2.0,
      color: color,
    );
    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: side,
                    left: side,
                    bottom: side,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: 2.0,
                  color: color,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
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
