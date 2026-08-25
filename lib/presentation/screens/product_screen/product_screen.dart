import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/product_details_bloc/product_details_bloc.dart';
import 'package:sosedifedi/domain/models/assortment/assortment.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/screens/product_screen/components/views/loading_product_view.dart';
import 'package:sosedifedi/presentation/screens/product_screen/components/views/product_view.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class ProductScreen extends StatelessWidget implements AutoRouteWrapper {
  const ProductScreen({
    super.key,
    @PathParam() required this.productId,
    @PathParam() required this.assortmentFile,
  });

  final String productId;
  final String assortmentFile;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ProductDetailsBloc>(
      create: (context) =>
          GetIt.I.get(param1: assortmentFile)..loadData(productId),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: SrBlocBuilder<ProductDetailsBloc, ProductDetailsState,
            ProductDetailsSr>(
          onSR: (context, sr) => sr.when(
            added: () {
              Fluttertoast.showToast(
                  msg: context
                      .tr(LocaleKeys.messages_success_productAddedToCart));
              context.router.pop();
              return null;
            },
            error: (error) =>
                Messenger.showMessage(context: context, message: error),
          ),
          builder: (context, state) {
            if (state.status == ProductDetailsStateStatus.loading) {
              return const LoadingProductView();
            }
            return ProductView(
              product: state.product!,
              onModifierChange: (List<ModifierGroup> modifierGroups) {
                context
                    .read<ProductDetailsBloc>()
                    .changeModifiers(modifierGroups);
              },
              onSelectGroup: (Group group) {
                context.read<ProductDetailsBloc>().selectGroup(group);
              },
              onProductSelect: (product) {
                context.read<ProductDetailsBloc>().selectProduct(product);
              },
            );
          },
        ),
      ),
    );
  }
}
