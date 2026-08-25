import 'package:sosedifedi/presentation/components/shimmer.dart';
import 'package:flutter/material.dart';

class TextLoadingPlaceholder extends StatelessWidget {
  const TextLoadingPlaceholder({Key? key, this.width, this.height})
      : super(key: key);

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      isLoading: true,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000.0),
          color: Colors.white,
        ),
        width: width,
        height: height,
      ),
    );
  }
}

class LoadingContainerPlaceholder extends StatelessWidget {
  const LoadingContainerPlaceholder({
    Key? key,
    this.width,
    this.height,
    this.borderRadius,
  }) : super(key: key);

  final double? width;
  final double? height;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      isLoading: true,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: Colors.white,
        ),
        width: width,
        height: height,
      ),
    );
  }
}
