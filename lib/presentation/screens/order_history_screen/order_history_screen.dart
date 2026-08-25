import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/order_hostory_bloc/order_history_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

import 'components/accepted_order_card.dart';

@RoutePage()
class OrderHistoryScreen extends StatelessWidget implements AutoRouteWrapper {
  const OrderHistoryScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<OrderHistoryBloc>(
      create: (context) => GetIt.I.get()..loadData(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          context.tr(LocaleKeys.orderHistory_label),
        ),
      ),
      body: SafeArea(
        child:
            SrBlocBuilder<OrderHistoryBloc, OrderHistoryState, OrderHistorySr>(
          onSR: (context, sr) => sr.when(
            error: (error) => Messenger.showMessage(
              context: context,
              message: error,
            ),
            selected: (order) => null,
          ),
          builder: (context, state) {
            if (state.status == OrderHistoryStatus.init ||
                state.status == OrderHistoryStatus.loading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            final orders = state.acceptedOrders;
            return RefreshIndicator(
              onRefresh: () => context.read<OrderHistoryBloc>().loadData(),
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  vertical: AppInsets.padding16,
                ),
                itemBuilder: (context, index) => AcceptedOrderCard(
                  order: orders[index],
                  onPressed: () async {
                    await context.router.push(
                      OrderDetailsRoute(
                        orderId: orders[index].id,
                      ),
                    );
                    if (context.mounted) {
                      context.read<OrderHistoryBloc>().loadData();
                    }
                  },
                ),
                separatorBuilder: (_, __) => Divider(
                  height: DividerTheme.of(context).thickness,
                ),
                itemCount: orders.length,
              ),
            );
          },
        ),
      ),
    );
  }
}
