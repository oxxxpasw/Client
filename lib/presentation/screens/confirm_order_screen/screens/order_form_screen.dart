import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sosedifedi/domain/bloc/order_bloc/order_bloc.dart';
import 'package:sosedifedi/domain/models/cart/cart_model.dart';
import 'package:sosedifedi/domain/models/order/order_data/order_data.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/separated_widgets.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/currency.dart';
import 'package:auto_route/auto_route.dart';

abstract class _ConfirmOrderFieldKeys {
  static const _paymentType = 'paymentType';
}

@RoutePage()
class OrderFormScreen extends StatelessWidget {
  const OrderFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      buildWhen: (oldState, newState) => oldState.status != newState.status,
      builder: buildView,
    );
  }

  Widget buildView(BuildContext context, OrderState state) {
    if (state.status == OrderCreateStatus.init) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }
    return CreateOrderFormView(
      order: state.order!,
    );
  }
}

class CreateOrderFormView extends StatefulWidget {
  const CreateOrderFormView({
    super.key,
    required this.order,
  });

  final OrderModel order;

  @override
  State<CreateOrderFormView> createState() => _CreateOrderFormViewState();
}

class _CreateOrderFormViewState extends State<CreateOrderFormView> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final order = widget.order;
    return SafeArea(
      child: FormBuilder(
        key: _formKey,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(AppInsets.padding16),
                children: [
                  const ProductsList(),
                  const SizedBox(
                    height: AppInsets.padding32,
                  ),
                  // FormBuilderModalDropdownField<PaymentType>(
                  //   name: _ConfirmOrderFieldKeys._paymentType,
                  //   validator: FormBuilderValidators.compose(
                  //     [
                  //       FormBuilderValidators.required(),
                  //     ],
                  //   ),
                  //   listTitle: Padding(
                  //     padding: const EdgeInsets.all(AppInsets.padding16),
                  //     child: Center(
                  //       child: Text(
                  //         context.tr(LocaleKeys.confirmOrder_paymentType),
                  //         style: Theme.of(context).textTheme.titleMedium,
                  //       ),
                  //     ),
                  //   ),
                  //   initialValue:
                  //       order.paymentType != null ? [order.paymentType!] : null,
                  //   valueTransformer: (value) => value?.firstOrNull,
                  //   minOptions: 1,
                  //   maxOptions: 1,
                  //   decoration: InputDecoration(
                  //     labelText:
                  //         context.tr(LocaleKeys.confirmOrder_paymentType),
                  //     labelStyle: Theme.of(context)
                  //         .inputDecorationTheme
                  //         .labelStyle!
                  //         .copyWith(
                  //           fontSize:
                  //               Theme.of(context).textTheme.bodyLarge!.fontSize,
                  //         ),
                  //   ),
                  //   style: Theme.of(context).textTheme.bodyLarge,
                  //   buildTitle: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return const Text('');
                  //     }
                  //     final item = value.first;
                  //     return Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         CachedNetworkImage(
                  //           imageUrl: item.imageUrl,
                  //           width: 30.0,
                  //           height: 20.0,
                  //           fit: BoxFit.contain,
                  //         ),
                  //         const SizedBox(
                  //           width: AppInsets.padding16,
                  //         ),
                  //         Expanded(
                  //           child: Text(
                  //             item.name,
                  //             style: Theme.of(context).textTheme.bodyLarge,
                  //           ),
                  //         ),
                  //       ],
                  //     );
                  //   },
                  //   items: order.paymentTypes
                  //       .map(
                  //         (e) => DropdownMenuItem<PaymentType>(
                  //           value: e,
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               CachedNetworkImage(
                  //                 imageUrl: e.imageUrl,
                  //                 width: 30.0,
                  //                 height: 20.0,
                  //                 fit: BoxFit.contain,
                  //               ),
                  //               const SizedBox(
                  //                 width: AppInsets.padding16,
                  //               ),
                  //               Expanded(
                  //                 child: Text(
                  //                   e.name,
                  //                   style:
                  //                       Theme.of(context).textTheme.bodyLarge,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       )
                  //       .toList(),
                  // ),
                ],
              ),
            ),
            BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                final order = state.order!;
                return Padding(
                  padding: const EdgeInsets.all(AppInsets.padding16),
                  child: Column(
                    children: [
                      DefaultTextStyle(
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              context.tr(LocaleKeys.confirmOrder_toPayment),
                            ),
                            Text(Currency.convertToPrice(
                                order.currencySymbol, order.finalSum)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: AppInsets.padding16,
                      ),
                      buildButton(context, state.status),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, OrderCreateStatus status) {
    final isNotSending = status != OrderCreateStatus.sending;
    return TextButton(
      onPressed: isNotSending ? () => sendOrder(context) : null,
      child: isNotSending
          ? Text(
              context.tr(LocaleKeys.confirmOrder_goToPayment),
            )
          : const SizedBox(
              width: 17.0,
              height: 17.0,
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
              ),
            ),
    );
  }

  void sendOrder(BuildContext context) {
    if (_formKey.currentState!.saveAndValidate()) {
      final value = _formKey.currentState!.value;
      context.read<OrderBloc>().send(
            OrderData(
              pickUpDate: DateTime.now(),
              paymentType: value[_ConfirmOrderFieldKeys._paymentType],
              offerCheck: true,
            ),
          );
    }
  }
}

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      buildWhen: (oldState, newState) =>
          oldState.order?.cart.products != newState.order?.cart.products,
      builder: (context, state) {
        if (state.order == null || state.order!.cart.products.isEmpty) {
          return const SizedBox.shrink();
        }
        final products = state.order!.cart.products;
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(AppInsets.padding16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${context.plural(LocaleKeys.cart_cartItemsCount, products.length)}:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                SeparatedColumn(
                  mainAxisSize: MainAxisSize.min,
                  children: products.map((e) => buildItem(context, e)).toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildItem(BuildContext context, CartItem cartItem) {
    return Row(
      children: [
        Expanded(
          child: Text(
            cartItem.product.name,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const SizedBox(
          width: AppInsets.padding8,
        ),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Theme.of(context)
                      .extension<CustomThemeExtension>()!
                      .labelColor,
                ),
            children: [
              TextSpan(
                text: cartItem.amount.toString(),
              ),
              TextSpan(
                text: ' x ',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context)
                          .extension<CustomThemeExtension>()!
                          .labelColor,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              TextSpan(
                text: Currency.convertToPrice(
                  cartItem.product.currencySymbol,
                  cartItem.product.finalPriceByOne,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
