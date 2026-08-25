import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/domain/bloc/home_promotion_bloc/home_promotion_bloc.dart';
import 'package:sosedifedi/presentation/components/shimmer.dart';
import 'package:sosedifedi/presentation/components/text_loading_placeholder.dart';
import 'package:sosedifedi/presentation/router/app_router.gr.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BannerSliderWidget extends StatelessWidget {
  const BannerSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePromotionBloc, HomePromotionState>(
      builder: (context, state) {
        if (state.promotions == null) {
          return const _BannerSliderLoadingView();
        }
        return _BannerSliderView(promotions: state.promotions!);
      },
    );
  }
}

class _BannerSliderLoadingView extends StatelessWidget {
  const _BannerSliderLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShimmerLoading(
      isLoading: true,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppInsets.padding16,
        ),
        child: LoadingContainerPlaceholder(),
      ),
    );
  }
}

class _BannerSliderView extends StatefulWidget {
  const _BannerSliderView({
    super.key,
    required this.promotions,
  });

  final List<PromotionShortInfo> promotions;

  @override
  State<_BannerSliderView> createState() => _BannerSliderViewState();
}

class _BannerSliderViewState extends State<_BannerSliderView> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          items: widget.promotions
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppInsets.padding16,
                  ),
                  child: BannerWidget(
                    promotion: e,
                    onPressed: () => context.router.push(
                      PromotionRoute(promotionId: e.id),
                    ),
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            enableInfiniteScroll: false,
            height: double.infinity,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Positioned(
          bottom: AppInsets.padding8,
          left: 0.0,
          right: 0.0,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.promotions.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: AppInsets.padding8,
                    height: AppInsets.padding8,
                    margin: const EdgeInsets.symmetric(
                      vertical: AppInsets.padding8,
                      horizontal: AppInsets.padding8,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.promotion,
    this.onPressed,
  });

  final PromotionShortInfo promotion;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Semantics(
        button: true,
        label: promotion.name,
        onTap: onPressed,
        excludeSemantics: true,
        child: GestureDetector(
          onTap: onPressed,
          child: Material(
            child: CachedNetworkImage(
              imageUrl: promotion.title.imageUrl,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
    );
  }
}
