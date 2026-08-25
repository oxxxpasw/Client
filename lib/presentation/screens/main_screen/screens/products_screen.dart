import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:scrollview_observer/scrollview_observer.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/domain/bloc/products_bloc/products_bloc.dart';
import 'package:sosedifedi/domain/models/assortment/assortment.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_search_bar.dart';
import 'package:sosedifedi/presentation/components/product_card/product_card.dart';
import 'package:sosedifedi/presentation/components/shimmer.dart';
import 'package:sosedifedi/presentation/components/text_loading_placeholder.dart';
import 'package:sosedifedi/presentation/icons/custom_icons.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

import '../components/last_purchase_card/last_purchase_card.dart';

typedef ProductBuilder = Widget Function(BuildContext context, Product product);

class ProductSliverGridDelegate extends SliverGridDelegate {
  const ProductSliverGridDelegate({
    required this.maxCrossAxisExtent,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.fixedMainExtent = 0.0,
  });

  final double maxCrossAxisExtent;

  final double mainAxisSpacing;

  final double crossAxisSpacing;

  final double fixedMainExtent;

  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    int crossAxisCount =
        (constraints.crossAxisExtent / (maxCrossAxisExtent + crossAxisSpacing))
            .ceil();
    crossAxisCount = math.max(1, crossAxisCount);
    final double usableCrossAxisExtent = math.max(
      0.0,
      constraints.crossAxisExtent - crossAxisSpacing * (crossAxisCount - 1),
    );
    final double childCrossAxisExtent = usableCrossAxisExtent / crossAxisCount;
    final double childMainAxisExtent = childCrossAxisExtent + fixedMainExtent;
    return SliverGridRegularTileLayout(
      crossAxisCount: crossAxisCount,
      mainAxisStride: childMainAxisExtent + mainAxisSpacing,
      crossAxisStride: childCrossAxisExtent + crossAxisSpacing,
      childMainAxisExtent: childMainAxisExtent,
      childCrossAxisExtent: childCrossAxisExtent,
      reverseCrossAxis: axisDirectionIsReversed(constraints.crossAxisDirection),
    );
  }

  @override
  bool shouldRelayout(ProductSliverGridDelegate oldDelegate) {
    return oldDelegate.maxCrossAxisExtent != maxCrossAxisExtent ||
        oldDelegate.mainAxisSpacing != mainAxisSpacing ||
        oldDelegate.crossAxisSpacing != crossAxisSpacing ||
        oldDelegate.fixedMainExtent != fixedMainExtent;
  }
}

@RoutePage()
class ProductsScreen extends StatelessWidget implements AutoRouteWrapper {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppInsets.padding16),
      child: ProductsView(
        banner: const LastPurchaseCard(),
        productBuilder: (context, product) {
          return ProductCard(
            product: product,
            available: product.status == StockStatus.inStock,
            onButtonPressed: () {
              context.router.push(
                ProductMapRoute(product: product),
              );
              GetIt.I.get<AnalystService>().productClick(product.id);
            },
            onPressed: () {
              final router = context.router;
              GetIt.I.get<CityRepository>().selectedCityStream.first.then(
                (value) {
                  if (value == null) {
                    return;
                  }
                  router.push(
                    ProductWithMapRoute(
                      productId: product.id,
                      assortmentFile: value.menuFileName!,
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ProductsBloc>(
      create: (context) => GetIt.I.get<HomeProductsBloc>(),
      child: this,
    );
  }
}

class ProductsView extends StatefulWidget {
  const ProductsView({
    super.key,
    required this.productBuilder,
    this.gridDelegate,
    this.controller,
    this.banner,
  });

  final ProductBuilder productBuilder;
  final SliverGridDelegate? gridDelegate;
  final ScrollController? controller;
  final Widget? banner;

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  ScrollController get _effectiveScrollController =>
      widget.controller ?? _scrollController!;

  ScrollController? _scrollController;
  late SliverObserverController _observerController;

  BuildContext? _sliverListCtx;
  final _hitIndexForCtx1 = ValueNotifier<int>(0);

  SliverGridDelegate get gridDelegate =>
      widget.gridDelegate ??
      const ProductSliverGridDelegate(
        maxCrossAxisExtent: 200.0,
        mainAxisSpacing: AppInsets.padding16,
        crossAxisSpacing: AppInsets.padding16,
        fixedMainExtent: 150.0,
      );

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      _scrollController = ScrollController();
    }
    _observerController =
        SliverObserverController(controller: _effectiveScrollController);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (_sliverListCtx != null) {
        _observerController.dispatchOnceObserve(
          sliverContext: _sliverListCtx!,
        );
      }
    });
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SrBlocBuilder<ProductsBloc, ProductsState, ProductsSr>(
      onSR: (context, sr) => sr.when(
        error: (error) =>
            Messenger.showMessage(context: context, message: error),
      ),
      buildWhen: (oldState, newState) => oldState.status != newState.status,
      builder: (context, state) {
        if (state.status == ProductsStateStatus.loading ||
            state.status == ProductsStateStatus.init) {
          return const LoadingHomeWidget();
        }
        if (state.status == ProductsStateStatus.error) {
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(AppInsets.padding24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.coffee_outlined,
                        size: 64,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: AppInsets.padding16),
                      Text(
                        'Не удалось загрузить меню напитков',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: AppInsets.padding16),
                      FilledButton(
                        onPressed: () => context.read<ProductsBloc>().loadData(
                              refresh: true,
                            ),
                        child: const Text('Повторить попытку'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                if (widget.banner != null)
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AppInsets.padding16,
                      right: AppInsets.padding16,
                      bottom: AppInsets.padding16,
                    ),
                    child: widget.banner!,
                  ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: AppInsets.padding8,
                    left: AppInsets.padding16,
                    right: AppInsets.padding16,
                  ),
                  child: CustomSearchBar(
                    side: WidgetStatePropertyAll(
                      BorderSide(
                        color: ColorScheme.of(context).primary,
                      ),
                    ),
                    leading: const Icon(DerevenkaDobrenkaIcons.search),
                    hintText: context.tr(LocaleKeys.search_label),
                    onChanged: (value) {
                      context.read<ProductsBloc>().search(value);
                    },
                  ),
                ),
                Expanded(
                  child: _wrapSliverViewObserver(
                    child: CustomScrollView(
                      controller: _effectiveScrollController,
                      physics: const ClampingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics(),
                      ),
                      slivers: <Widget>[
                        const SliverToBoxAdapter(
                          child: SizedBox(
                            height: AppInsets.padding16,
                          ),
                        ),
                        BlocBuilder<ProductsBloc, ProductsState>(
                          buildWhen: (oldState, newState) =>
                              oldState.categoryWithProducts !=
                                  newState.categoryWithProducts ||
                              oldState.searchResult != newState.searchResult,
                          builder: (context, state) {
                            if (state.searchResult == null) {
                              return SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  (context, index) {
                                    _sliverListCtx = context;
                                    return _buildGroup(
                                        state.categoryWithProducts![index],
                                        index);
                                  },
                                  childCount:
                                      state.categoryWithProducts?.length ?? 0,
                                ),
                              );
                            }

                            if (state.searchResult!.isEmpty) {
                              return SliverToBoxAdapter(
                                child: Center(
                                  child: Text(context
                                      .tr(LocaleKeys.search_nothingFound)),
                                ),
                              );
                            }
                            return SliverPadding(
                              padding: const EdgeInsets.all(AppInsets.padding16)
                                  .copyWith(top: 0),
                              sliver: SliverGrid.builder(
                                gridDelegate: gridDelegate,
                                itemBuilder: (BuildContext context,
                                        int index) =>
                                    widget.productBuilder(
                                        context, state.searchResult![index]),
                                itemCount: state.searchResult!.length,
                              ),
                            );
                          },
                        ),
                        const SliverToBoxAdapter(
                          child: SizedBox(
                            height: AppInsets.padding16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _wrapSliverViewObserver({required Widget child}) {
    return SliverViewObserver(
      sliverContexts: () {
        return [
          if (_sliverListCtx != null) _sliverListCtx!,
        ];
      },
      triggerOnObserveType: ObserverTriggerOnObserveType.directly,
      onObserveAll: (resultMap) {
        final model1 = resultMap[_sliverListCtx];
        if (model1 != null &&
            model1.visible &&
            model1 is ListViewObserveModel) {
          final percentage = model1.displayingChildModelList
              .map((e) => e.displayPercentage)
              .toList();
          if (percentage.isEmpty) {
            return;
          }
          final maxIndex =
              percentage.foldIndexed<int>(0, (index, previous, element) {
            if (percentage[previous] < element) {
              return index;
            }
            return previous;
          });
          final position = model1.displayingChildModelList[maxIndex].index;
          if (position != _hitIndexForCtx1.value) {
            setState(() {
              _hitIndexForCtx1.value = position;
            });
          }
        }
      },
      child: child,
    );
  }

  void animateToIndex(int index) {
    _observerController.animateTo(
      sliverContext: _sliverListCtx,
      index: index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      offset: (offset) {
        return kToolbarHeight * 2 +
            MediaQueryData.fromView(View.of(context)).viewPadding.top +
            AppInsets.padding16;
      },
    );
  }

  Widget _buildGroup(Group group, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: AppInsets.padding16),
          child: Text(
            group.name,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        const SizedBox(
          height: AppInsets.padding16,
        ),
        if (group.products != null && group.products!.isNotEmpty)
          _buildProductCard(group)
      ],
    );
  }

  Widget _buildProductCard(Group group) {
    return GridView.builder(
      padding: const EdgeInsets.all(AppInsets.padding16).copyWith(top: 0),
      gridDelegate: gridDelegate,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) =>
          widget.productBuilder(context, group.products![index]),
      itemCount: group.products?.length ?? 0,
    );
  }
}

class ProductsTabBarWrapper extends StatefulWidget {
  ProductsTabBarWrapper({
    super.key,
    required this.indexNotifier,
    required this.groups,
    this.indexChanged,
  }) : assert(groups.isNotEmpty);

  final ValueNotifier<int> indexNotifier;
  final List<Group> groups;
  final ValueChanged<int>? indexChanged;

  @override
  State<ProductsTabBarWrapper> createState() => _ProductsTabBarWrapperState();
}

class _ProductsTabBarWrapperState extends State<ProductsTabBarWrapper>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    widget.indexNotifier.addListener(_indexListener);
    _tabController = TabController(
      length: widget.groups.length,
      vsync: this,
      initialIndex: widget.indexNotifier.value,
    );
  }

  void _indexListener() {
    _tabController.index = widget.indexNotifier.value;
  }

  @override
  void didUpdateWidget(covariant ProductsTabBarWrapper oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.indexNotifier != widget.indexNotifier) {
      oldWidget.indexNotifier.removeListener(_indexListener);
      widget.indexNotifier.addListener(_indexListener);
    }
    if (oldWidget.groups != widget.groups) {
      _tabController.dispose();
      int newIndex;
      if (widget.indexNotifier.value >= widget.groups.length) {
        newIndex = math.max(0, widget.groups.length - 1);
      } else {
        newIndex = widget.indexNotifier.value;
      }
      _tabController = TabController(
        length: widget.groups.length,
        vsync: this,
        initialIndex: newIndex,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ProductsTabBar(
      categories: widget.groups,
      tabController: _tabController,
      onTap: widget.indexChanged,
    );
  }

  @override
  void dispose() {
    widget.indexNotifier.removeListener(_indexListener);
    _tabController.dispose();
    super.dispose();
  }
}

class ProductsTabBar extends StatelessWidget {
  const ProductsTabBar({
    super.key,
    required this.categories,
    required this.tabController,
    this.onTap,
  });

  final List<Group> categories;
  final TabController tabController;
  final ValueChanged<int>? onTap;

  @override
  Widget build(BuildContext context) {
    final FlexibleSpaceBarSettings settings =
        context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>()!;
    final double deltaExtent = settings.maxExtent - settings.minExtent;

    // 0.0 -> Expanded
    // 1.0 -> Collapsed to toolbar
    final double t = clampDouble(
        1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent,
        0.0,
        1.0);

    final double fadeStart = math.max(0.0, 1.0 - kToolbarHeight / deltaExtent);
    const double fadeEnd = 1.0;
    assert(fadeStart <= fadeEnd);
    // If the min and max extent are the same, the app bar cannot collapse
    // and the content should be visible, so opacity = 1.
    final double opacity = settings.maxExtent == settings.minExtent
        ? 1.0
        : 1.0 - Interval(fadeStart, fadeEnd).transform(t);
    return Opacity(
      opacity: 1 - opacity,
      child: Container(
        color: Theme.of(context).colorScheme.surfaceContainer,
        height: kToolbarHeight,
        child: TabBar(
          controller: tabController,
          onTap: onTap,
          labelColor: Theme.of(context).colorScheme.primary,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              width: 2.0,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          tabs: categories
              .map(
                (e) => Tab(
                  child: Text(
                    e.name,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class LoadingHomeWidget extends StatelessWidget {
  const LoadingHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ShimmerLoading(
          isLoading: true,
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: AppInsets.padding16,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              LoadingContainerPlaceholder(
                width: double.infinity,
                height: 36.0,
                borderRadius: BorderRadius.circular(
                  AppBorderRadius.medium,
                ),
              ),
              const SizedBox(
                height: AppInsets.padding16,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const ProductSliverGridDelegate(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: AppInsets.padding16,
                  crossAxisSpacing: AppInsets.padding16,
                  fixedMainExtent: 150.0,
                ),
                itemBuilder: (_, __) => LoadingContainerPlaceholder(
                  width: 200.0,
                  borderRadius: BorderRadius.circular(
                    AppBorderRadius.large,
                  ),
                ),
                itemCount: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PointCard extends StatelessWidget {
  const PointCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      // buildWhen: (oldState, newState) => oldState.point != newState.point,
      builder: (context, state) {
        return Card(
          color: Theme.of(context).colorScheme.surfaceContainer,
          child: const Padding(
            padding: EdgeInsets.all(AppInsets.padding16),
            child: Row(
              children: [
                Icon(CustomICons.locationOutline),
                SizedBox(
                  width: AppInsets.padding4,
                ),
                Text('Выберите кофе-бар')
              ],
            ),
          ),
        );
      },
    );
  }
}
