import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/order_coupon_cubit/order_coupon_cubit.dart';
import 'package:sosedifedi/generated/assets.gen.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/shimmer.dart';
import 'package:sosedifedi/presentation/components/text_loading_placeholder.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'dart:math' as math;

const _kCouponHeight = 194.0;

class CouponWidget2 extends StatefulWidget {
  const CouponWidget2({super.key});

  @override
  State<CouponWidget2> createState() => _CouponWidget2State();
}

class _CouponWidget2State extends State<CouponWidget2> {
  late AssetGenImage coupon;

  final _couponList = [
    Assets.images.coupon1,
    Assets.images.coupon2,
    Assets.images.coupon3,
    Assets.images.coupon4,
  ];

  @override
  void initState() {
    super.initState();
    coupon = _couponList[math.Random().nextInt(4)];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        coupon.image(
          width: double.infinity,
          height: _kCouponHeight,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          height: AppInsets.padding8,
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: AppInsets.padding4,
          ),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: context.tr(LocaleKeys.coupon_expires_1),
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                TextSpan(
                  text: context.plural(LocaleKeys.coupon_expires_2, 14),
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        color: ColorScheme.of(context).primary,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          context.tr(LocaleKeys.coupon_couponPlace),
          style: TextTheme.of(context).labelMedium,
        ),
      ],
    );
  }
}

class CouponWidget extends StatelessWidget {
  const CouponWidget({
    super.key,
    required this.purchaseId,
  });

  final String purchaseId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderCouponCubit>(
      create: (context) => GetIt.I.get()..init(purchaseId),
      child: const CouponBuilderWidget(),
    );
  }
}

class CouponBuilderWidget extends StatelessWidget {
  const CouponBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCouponCubit, OrderCouponState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return switch (state.status) {
          OrderCouponStatus.init ||
          OrderCouponStatus.loading =>
            const CouponLoadingWidget(),
          OrderCouponStatus.ready => const CouponReadyWidget(),
          OrderCouponStatus.error => const SizedBox.shrink(),
        };
      },
    );
  }
}

class CouponLoadingWidget extends StatelessWidget {
  const CouponLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      isLoading: true,
      child: LoadingContainerPlaceholder(
        width: double.infinity,
        height: _kCouponHeight,
        borderRadius: BorderRadius.circular(
          AppBorderRadius.small,
        ),
      ),
    );
  }
}

class CouponReadyWidget extends StatelessWidget {
  const CouponReadyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BlocBuilder<OrderCouponCubit, OrderCouponState>(
          buildWhen: (previous, current) => previous.coupon != current.coupon,
          builder: (context, state) {
            return Image.network(
              state.coupon!.title.imageUrl,
              width: double.infinity,
              height: _kCouponHeight,
              fit: BoxFit.contain,
            );
          },
        ),
        const SizedBox(
          height: AppInsets.padding8,
        ),
        BlocBuilder<OrderCouponCubit, OrderCouponState>(
          buildWhen: (previous, current) => previous.coupon != current.coupon,
          builder: (context, state) {
            if (state.expiresInDays == null) {
              return const SizedBox.shrink();
            }
            return Padding(
              padding: const EdgeInsets.only(
                bottom: AppInsets.padding4,
              ),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: context.tr(LocaleKeys.coupon_expires_1),
                      style: TextTheme.of(context).bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    TextSpan(
                      text: context.plural(
                          LocaleKeys.coupon_expires_2, state.expiresInDays!),
                      style: TextTheme.of(context).bodyMedium?.copyWith(
                            color: ColorScheme.of(context).primary,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
        Text(
          context.tr(LocaleKeys.coupon_couponPlace),
          style: TextTheme.of(context).labelMedium,
        ),
      ],
    );
  }
}
