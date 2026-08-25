import 'package:auto_route/auto_route.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/domain/bloc/products_bloc/products_bloc.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/presentation/components/product_card/product_card.dart';
import 'package:sosedifedi/presentation/router/app_router.gr.dart';
import 'package:sosedifedi/presentation/screens/main_screen/screens/products_screen.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

@RoutePage()
class FridgeProductsScreen extends StatelessWidget implements AutoRouteWrapper {
  const FridgeProductsScreen({
    super.key,
    @pathParam required this.fridgeFileName,
    this.isCoffee = false,
  });

  final String fridgeFileName;
  final bool isCoffee;

  @override
  Widget build(BuildContext context) {
    final delegate = isCoffee
        ? const ProductSliverGridDelegate(
            maxCrossAxisExtent: 140,
            mainAxisSpacing: AppInsets.padding8,
            crossAxisSpacing: AppInsets.padding8,
            fixedMainExtent: 80.0,
          )
        : const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: AppInsets.padding8,
            crossAxisSpacing: AppInsets.padding8,
            mainAxisExtent: 110.0,
          );

    return ProductsView(
      controller: ModalScrollController.of(context),
      gridDelegate: delegate,
      productBuilder: (context, product) {
        if (isCoffee) {
          return ProductCard(
            product: product,
            available: product.status == StockStatus.inStock,
            labelStyle: TextTheme.of(context).bodyMedium?.copyWith(
                  height: 1.2,
                  fontWeight: FontWeight.w600,
                ),
            onPressed: product.isDescriptionEmpty
                ? null
                : () {
                    context.router.push(
                      ProductRoute(
                        productId: product.id,
                        assortmentFile: fridgeFileName,
                      ),
                    );
                    GetIt.I.get<AnalystService>().productClick(product.id);
                  },
          );
        }
        return ProductCardWithoutImage(
          product: product,
          available: product.status == StockStatus.inStock,
          onPressed: product.isDescriptionEmpty
              ? null
              : () {
                  context.router.push(
                    ProductRoute(
                      productId: product.id,
                      assortmentFile: fridgeFileName,
                    ),
                  );
                  GetIt.I.get<AnalystService>().productClick(product.id);
                },
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ProductsBloc>(
      create: (context) =>
          GetIt.I.get<StoreProductsBloc>(param1: fridgeFileName)
            ..loadData(isCoffee: isCoffee),
      child: this,
    );
  }
}
