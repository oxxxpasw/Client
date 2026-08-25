import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sosedifedi/domain/bloc/cart_bloc/cart_bloc.dart';
import 'package:sosedifedi/presentation/screens/choose_payment_type_screen/choose_payment_type_screen.dart';

import '../components/cart_bonuses_spend.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ChoosePaymentTypeScreen2 extends StatelessWidget {
  const ChoosePaymentTypeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      buildWhen: (previous, current) =>
          previous.orderPrice != current.orderPrice ||
          previous.store != current.store ||
          previous.isFullBonusPayment != current.isFullBonusPayment,
      builder: (context, state) {
        if (state.store == null) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
        return ChoosePaymentTypeWidget(
          storeId: state.store!.id,
          onPaymentSelected: (type) {
            context.read<CartBloc>().add(
                  CartEvent.onPaymentTypeSelected(type),
                );
          },
          onPaymentChanged: (type) {
            context.read<CartBloc>().add(
                  CartEvent.onPaymentTypeChanged(type),
                );
          },
          sum: state.orderPrice,
          enabled: !state.isFullBonusPayment,
          child: const CartBonusesSpend(),
        );
      },
    );
  }
}
