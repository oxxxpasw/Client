import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

const kInputNumberButtonSize = Size(34.0, 30.0);
const kInputNumberIconSize = 20.0;

class InputNumber extends StatelessWidget {
  const InputNumber({
    super.key,
    required this.value,
    this.onPressedPlus,
    this.onPressedMinus,
    this.height,
    this.width,
    this.fontSize,
    this.backgroundColor,
    this.foregroundColor,
  });

  final void Function()? onPressedPlus;
  final void Function()? onPressedMinus;
  final int value;
  final double? height;
  final double? width;
  final double? fontSize;

  //styles
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    final buttonsNumberStyle = IconButton.styleFrom(
      minimumSize: const Size(25.0, 25.0),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: const CircleBorder(),
      foregroundColor:
          foregroundColor ?? Theme.of(context).colorScheme.onSurface,
    );
    return SizedBox(
      height: height,
      width: width,
      child: Material(
        clipBehavior: Clip.antiAlias,
        color:
            backgroundColor ?? Theme.of(context).colorScheme.surfaceContainer,
        shape: const StadiumBorder(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: kInputNumberButtonSize.width,
              height: kInputNumberButtonSize.height,
              child: IconButton(
                padding: EdgeInsets.zero,
                splashRadius: AppInsets.padding24,
                onPressed: onPressedMinus,
                style: buttonsNumberStyle,
                color: foregroundColor,
                icon: const Icon(
                  Icons.remove,
                  semanticLabel: 'minus',
                  size: kInputNumberIconSize,
                ),
              ),
            ),
            const SizedBox(
              width: AppInsets.padding4,
            ),
            Text(
              value.toString(),
              style: TextStyle(
                fontSize: 15.0,
                color: foregroundColor,
              ),
            ),
            const SizedBox(
              width: AppInsets.padding4,
            ),
            SizedBox(
              width: kInputNumberButtonSize.width,
              height: kInputNumberButtonSize.height,
              child: IconButton(
                padding: EdgeInsets.zero,
                splashRadius: AppInsets.padding24,
                onPressed: onPressedPlus,
                icon: const Icon(
                  Icons.add,
                  semanticLabel: 'plus',
                  size: kInputNumberIconSize,
                ),
                style: buttonsNumberStyle,
                color: foregroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
