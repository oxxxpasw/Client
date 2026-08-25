import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key, required this.rating});

  final int rating;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<CustomThemeExtension>()?.rating ??
        Colors.amber;

    final children = List.generate(
      rating,
      (index) => Icon(
        DerevenkaDobrenkaIcons.starFilled,
        color: color,
      ),
    );

    return Row(
      children: children,
    );
  }
}
