import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sosedifedi/data/models/review_response/review_response.dart';
import 'package:sosedifedi/domain/models/user_review/user_review.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/screens/photo_view_screen/photo_view_screen.dart';
import 'package:sosedifedi/presentation/screens/reviews_screen/components/rating_widget.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:auto_route/auto_route.dart';

const _kDateFormat = 'dd.MM.yyyy HH:mm';

@RoutePage()
class ReviewDetailsScreen extends StatelessWidget {
  const ReviewDetailsScreen({
    super.key,
    required this.review,
  });

  final UserReview review;

  @override
  Widget build(BuildContext context) {
    final date = switch (review.createDate) {
      DateTime dateTime => DateFormat(_kDateFormat).format(dateTime),
      _ => '',
    };

    final children = _buildChildren(context, date);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      appBar: CustomAppBar(
        backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
        leadingBackgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(
          LocaleKeys.reviewDetailsScreen_title.tr(
            context: context,
            args: [date],
          ),
        ),
      ),
      body: SafeArea(
        child: DividerTheme(
          data: DividerTheme.of(context).copyWith(
            space: AppInsets.padding24,
            thickness: 0.5,
          ),
          child: ListView.separated(
            padding: const EdgeInsets.all(AppInsets.padding16),
            physics: const ScrollPhysics(),
            itemCount: children.length,
            itemBuilder: (context, index) => children[index],
            separatorBuilder: (context, index) => const Divider(),
          ),
        ),
      ),
    );
  }

  void _open(BuildContext context, final int index) {
    // MultiImageProvider multiImageProvider = MultiImageProvider(
    //   review.images?.map((image) {
    //         return CachedNetworkImageProvider(image);
    //       }).toList() ??
    //       [],
    // );
    //
    // showImageViewerPager(context, multiImageProvider, onPageChanged: (page) {
    //   print("page changed to $page");
    // }, onViewerDismissed: (page) {
    //   print("dismissed while on page $page");
    // });
    Navigator.push(
      context,
      PageRouteBuilder(
        fullscreenDialog: true,
        opaque: false,
        pageBuilder: (_, anim, ___) => PhotoViewScreen(
          images: review.images ?? [],
          initialIndex: index,
          animation: anim,
        ),
      ),
    );
  }

  List<Widget> _buildChildren(BuildContext context, String date) {
    return [
      if (review.objectType != ObjectType.unknown)
        ReviewTopDetailWidget(review: review),
      ReviewDetailItemWidget(
        title: Text(
          LocaleKeys.reviewDetailsScreen_score_label.tr(
            context: context,
            args: [date],
          ),
        ),
        child: RatingWidget(
          rating: review.rating ?? 0,
        ),
      ),
      ReviewDetailItemWidget(
        title: Text(
          LocaleKeys.reviewDetailsScreen_comment_label.tr(
            context: context,
            args: [date],
          ),
        ),
        child: SelectableText(review.comment ?? ''),
      ),
      if (review.purchase != null)
        ReviewPurchaseDetails(purchase: review.purchase!),
      if (review.images != null && review.images!.isNotEmpty)
        ReviewDetailItemWidget(
          title: Text(
            LocaleKeys.reviewDetailsScreen_attachments_label.tr(
              context: context,
              args: [date],
            ),
          ),
          child: GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: AppInsets.padding8,
              crossAxisSpacing: AppInsets.padding8,
              mainAxisExtent: 100,
            ),
            children: review.images!.map((image) {
              return ImageThumbnail(
                image: image,
                onPressed: () => _open(
                  context,
                  review.images!.indexOf(image),
                ),
              );
            }).toList(),
          ),
        ),
    ];
  }
}

class ReviewTopDetailWidget extends StatelessWidget {
  const ReviewTopDetailWidget({
    super.key,
    required this.review,
  });

  final UserReview review;

  @override
  Widget build(BuildContext context) {
    String? title;
    String? child;

    switch (review.objectType) {
      case ObjectType.storeID:
        title = LocaleKeys.reviewDetailsScreen_store_label.tr();
        child = LocaleKeys.reviewDetailsScreen_store_text.tr(namedArgs: {
          'name': review.store?.name ?? '',
          'address': review.store?.address ?? '',
        });
        break;
      case ObjectType.productID:
        title = LocaleKeys.reviewDetailsScreen_product_label.tr();
        child = review.product?.name ?? '';
        break;
      case ObjectType.purchaseID:
        title = LocaleKeys.reviewDetailsScreen_store_label.tr();
        child = LocaleKeys.reviewDetailsScreen_store_text.tr(namedArgs: {
          'name': review.purchase?.store?.name ?? '',
          'address': review.purchase?.store?.address ?? '',
        });
        break;
      case ObjectType.unknown:
        return const SizedBox.shrink();
    }

    return ReviewDetailItemWidget(
      title: Text(title),
      child: Text(child),
    );
  }
}

class ReviewPurchaseDetails extends StatelessWidget {
  const ReviewPurchaseDetails({super.key, required this.purchase});

  final UserReviewPurchaseData purchase;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];

    for (final product in purchase.products) {
      children.add(_buildItem(product));
    }

    final date = switch (purchase.createdDatetime) {
      DateTime dateTime => DateFormat(_kDateFormat).format(dateTime),
      _ => '',
    };

    return ReviewDetailItemWidget(
      title: Text(
        LocaleKeys.reviewDetailsScreen_purchase_label.tr(args: [date]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppInsets.padding8,
        children: children,
      ),
    );
  }

  Widget _buildItem(UserReviewOrderedProduct product) {
    final quantity = product.quantity ?? 1.0;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppInsets.padding8,
      children: [
        Expanded(
          child: Text(product.name ?? ''),
        ),
        Text(LocaleKeys.orderHistory_amount.tr(
          args: [
            if (quantity % 1 == 0)
              quantity.toInt().toString()
            else
              quantity.toString(),
          ],
        )),
      ],
    );
  }
}

class ReviewDetailItemWidget extends StatelessWidget {
  const ReviewDetailItemWidget({
    super.key,
    required this.title,
    required this.child,
  });

  final Widget title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final inputTheme = theme.inputDecorationTheme;

    final fontSize = inputTheme.floatingLabelStyle?.fontSize ??
        DefaultTextStyle.of(context).style.fontSize ??
        14.0;

    final titleTextStyle = inputTheme.floatingLabelStyle?.copyWith(
      height: 1.0,
      fontSize: MediaQuery.textScalerOf(context).scale(0.75 * fontSize),
    );

    final childTextStyle = theme.textTheme.bodyMedium?.copyWith(
      fontWeight: FontWeight.w500,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppInsets.padding4,
      children: [
        DefaultTextStyle.merge(
          style: titleTextStyle?.copyWith(
            color: const Color(0xFF868686),
          ),
          child: title,
        ),
        DefaultTextStyle.merge(
          style: childTextStyle,
          child: child,
        ),
      ],
    );
  }
}

class ImageThumbnail extends StatelessWidget {
  const ImageThumbnail({
    super.key,
    required this.image,
    required this.onPressed,
  });

  final String image;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Hero(
        tag: image,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppBorderRadius.medium),
          child: CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.cover,
            width: 100.0,
            height: 100.0,
          ),
        ),
      ),
    );
  }
}

class PhoneField extends StatelessWidget {
  const PhoneField({super.key, required this.phone});

  final String phone;

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => _copyToClipboard(context),
      child: Row(
        spacing: AppInsets.padding8,
        children: [
          Expanded(
            child: Text(
              phone,
              style: TextTheme.of(context).titleMedium?.copyWith(
                    color: colorScheme.primary,
                  ),
            ),
          ),
          Icon(
            DerevenkaDobrenkaIcons.copy,
            color: colorScheme.primary,
          ),
        ],
      ),
    );
  }

  void _copyToClipboard(BuildContext context) {
    Clipboard.setData(ClipboardData(text: phone));
    context.showToast(
      Row(
        spacing: AppInsets.padding8,
        children: [
          Icon(
            DerevenkaDobrenkaIcons.check,
            color: ColorScheme.of(context).primary,
          ),
          Text(
            LocaleKeys.reviewDetailsScreen_phone_copied.tr(
              context: context,
            ),
          ),
        ],
      ),
    );
  }
}
