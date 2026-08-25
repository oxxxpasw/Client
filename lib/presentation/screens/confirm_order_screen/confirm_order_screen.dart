import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/order_bloc/order_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/stream_listener.dart';

@RoutePage()
class ConfirmOrderScreen extends StatefulWidget implements AutoRouteWrapper {
  ConfirmOrderScreen({
    super.key,
    this.store,
  });

  final Store? store;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<OrderBloc>(
      create: (context) => GetIt.I.get(param1: store)..loadData(),
      child: this,
    );
  }

  @override
  State<ConfirmOrderScreen> createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {
  final _innerRouterKey = GlobalKey<AutoRouterState>();

  StackRouter get router => _innerRouterKey.currentState!.controller!;

  @override
  Widget build(BuildContext context) {
    return StreamListener<OrderSr>(
      stream: context.read<OrderBloc>().singleResults,
      onData: (sr) => sr.map(
        loading: (sr) {
          return router.replace(const OrderLoadingRoute());
        },
        needUserData: (sr) {
          return router.replace(const OrderFormRoute());
        },
        needOrderData: (sr) {
          return router.replace(const OrderFormRoute());
        },
        submit: (sr) {
          context.router.navigate(const MainRoute());
          return context.router.push(
            const NewOrderInfoRoute(),
          );
        },
        processPayment: (sr) {
          if (sr.isSBP) {
            // return router
            //     .push(
            //   ChooseSpbPaymentRoute(
            //     qrUrl: sr.paymentUrl,
            //     paymentId: sr.,
            //     onPayment: () {
            //       router.pop();
            //     },
            //   ),
            // )
            //     .then(
            //   (value) {
            //     if (mounted) context.read<OrderBloc>().onSuccessPayment();
            //   },
            // );
          }
          // return router.replace(
          //   WebViewPaymentRoute(
          //     paymentUri: sr.paymentUrl,
          //     onSuccessPayment: context.read<OrderBloc>().onSuccessPayment,
          //     onFailurePayment: context.read<OrderBloc>().onFailurePayment,
          //   ),
          // );
        },
        error: (sr) {
          return Messenger.showMessage(context: context, message: sr.error);
        },
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.tr(LocaleKeys.confirmOrder_confirm),
          ),
        ),
        body: AutoRouter(
          key: _innerRouterKey,
        ),
      ),
    );
  }
}
