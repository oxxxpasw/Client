import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/edit_product_bloc/edit_product_bloc.dart';
import 'package:sosedifedi/domain/models/cart/cart_model.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/screens/product_screen/components/views/loading_product_view.dart';
import 'package:sosedifedi/presentation/screens/product_screen/components/views/product_view.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class EditProductScreen extends StatelessWidget implements AutoRouteWrapper {
  const EditProductScreen({
    super.key,
    required this.product,
  });

  final CartItem product;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<EditProductBloc>(
      create: (context) => GetIt.I.get()..loadData(product),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
      ),
      body: SafeArea(
        child: SrBlocBuilder<EditProductBloc, EditProductState, EditProductSr>(
          onSR: (context, sr) => sr.when(
            added: () {
              Fluttertoast.showToast(
                  msg: context.tr(LocaleKeys.messages_success_productSaved));
              context.router.pop();
              return null;
            },
            error: (error) =>
                Messenger.showMessage(context: context, message: error),
          ),
          builder: (context, state) {
            if (state.status == EditProductStateStatus.loading) {
              return const LoadingProductView();
            }
            return ProductView(
              onConfirm: () {
                context.read<EditProductBloc>().save();
              },
              product: state.product!,
              actionButton: Text(context.tr(LocaleKeys.save)),
              onModifierChange: (List<ModifierGroup> modifierGroups) {
                context.read<EditProductBloc>().changeModifiers(modifierGroups);
              },
              onSelectGroup: (_) {},
              onProductSelect: (product) {
                context.read<EditProductBloc>().selectProduct(product);
              },
            );
          },
        ),
      ),
    );
  }
}
