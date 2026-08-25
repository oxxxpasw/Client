import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';

class StoreCard extends StatelessWidget {
  const StoreCard({
    super.key,
    required this.store,
    this.isSelected = false,
    this.distance,
    this.onPressed,
    this.height,
    this.width,
  });

  final Store store;

  ///Дистанция до точки в метрах
  final double? distance;

  final bool isSelected;

  final VoidCallback? onPressed;

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final color = isSelected
        ? ColorScheme.of(context).surfaceContainer
        : Theme.of(context)
            .extension<CustomThemeExtension>()!
            .secondaryBackground;
    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: onPressed,
        child: Card(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppBorderRadius.medium),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppInsets.padding16),
            child: Row(
              children: [
                if (store.logoUrl != null)
                  Container(
                    width: 45,
                    height: 45,
                    margin: const EdgeInsets.only(right: AppInsets.padding16),
                    child: CachedNetworkImage(
                      fit: BoxFit.contain,
                      imageUrl: store.logoUrl!,
                    ),
                  ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        store.name ?? '',
                        style: Theme.of(context).textTheme.titleMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: AppInsets.padding4,
                      ),
                      Text(
                        store.address ?? '',
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                if (distance != null)
                  Padding(
                    padding: const EdgeInsets.only(left: AppInsets.padding16),
                    child: _LocationWidget(
                      distance: distance!,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LocationWidget extends StatelessWidget {
  const _LocationWidget({
    super.key,
    required this.distance,
  });

  final double distance;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    final textStyle = Theme.of(context).textTheme.labelMedium!.copyWith(
          color: color,
        );

    final String value;

    if (distance < 1) {
      value = context.tr(
        LocaleKeys.fridge_distance_inMeters,
        args: [(distance * 1000).toInt().toString()],
      );
    } else {
      value = context.tr(
        LocaleKeys.fridge_distance_inKiloMeters,
        args: [distance.toInt().toString()],
      );
    }

    return Row(
      children: [
        Icon(
          CupertinoIcons.location,
          color: color,
          size: textStyle.fontSize,
        ),
        const SizedBox(
          width: AppInsets.padding4,
        ),
        Text(
          value,
          style: textStyle,
        ),
      ],
    );
  }
}
