import 'package:cached_network_image/cached_network_image.dart';
import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    super.key,
    required this.promotion,
    this.isViewed = false,
    this.onPressed,
  });

  final PromotionShortInfo promotion;
  final bool isViewed;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      excludeSemantics: true,
      onTap: onPressed,
      label: promotion.name,
      child: GestureDetector(
        onTap: onPressed,
        child: SizedBox(
          width: 80.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              LayoutBuilder(builder: (context, constraint) {
                return Container(
                  width: 80.0,
                  height: 80.0,
                  padding: const EdgeInsets.all(AppInsets.padding2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: isViewed
                        ? Border.all(
                            color: Colors.transparent,
                            width: AppInsets.padding2)
                        : Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: AppInsets.padding2),
                  ),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CachedNetworkImage(
                      imageUrl: promotion.title.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }),
              Expanded(
                child: Center(
                  child: Text(
                    promotion.name,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
