import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/data/models/review_response/review_response.dart';
import 'package:sosedifedi/domain/models/user_review/user_review.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

import 'rating_widget.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
    required this.review,
    this.onPressed,
  });

  final UserReview review;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final date = switch (review.createDate) {
      DateTime dateTime => DateFormat('dd.MM.yyyy HH:mm').format(dateTime),
      _ => '',
    };

    final borderRadius = BorderRadius.circular(AppBorderRadius.large);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
        side: BorderSide.none,
      ),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppInsets.padding16,
            horizontal: AppInsets.padding12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.review_title.tr(context: context, args: [date]),
                style: TextTheme.of(context).titleMedium,
              ),
              _ReviewInfoWidget(review: review),
              RatingWidget(
                rating: review.rating ?? 0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ReviewInfoWidget extends StatelessWidget {
  const _ReviewInfoWidget({super.key, required this.review});

  final UserReview review;

  @override
  Widget build(BuildContext context) {
    final info = switch (review.objectType) {
      ObjectType.storeID => _getStoreString(context, review.store),
      ObjectType.productID => review.product?.name ?? '',
      ObjectType.purchaseID => _getStoreString(context, review.purchase?.store),
      ObjectType.unknown => null,
    };

    if (info == null || info.isEmpty) {
      return const SizedBox(
        height: AppInsets.padding8,
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppInsets.padding8),
      child: Text(
        info,
      ),
    );
  }

  String? _getStoreString(BuildContext context, UserReviewStoreData? store) {
    if (store == null) return null;
    return LocaleKeys.reviewDetailsScreen_store_text.tr(
      namedArgs: {
        'name': store.name ?? '',
        'address': store.address ?? '',
      },
    );
  }
}
