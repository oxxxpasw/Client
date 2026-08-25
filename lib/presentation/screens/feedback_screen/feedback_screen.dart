import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/feedback_cubit/feedback_cubit.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/stream_listener.dart';

@RoutePage()
class FeedbackScreen extends StatefulWidget implements AutoRouteWrapper {
  const FeedbackScreen({
    super.key,
    required this.type,
    this.order,
  });

  final FeedbackType type;
  final AcceptedOrder? order;

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<FeedbackCubit>(
      create: (context) => GetIt.I.get(param1: type, param2: order)..init(),
      child: this,
    );
  }
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final _routerKey = GlobalKey<AutoRouterState>();

  StackRouter get _router => _routerKey.currentState!.controller!;

  @override
  Widget build(BuildContext context) {
    return StreamListener(
      stream: context.read<FeedbackCubit>().singleResults,
      onData: (sr) => switch (sr) {
        FeedbackShowStoreListSr() => _router.push(
            FeedbackStoreListRoute(
              onStoreSelected: (store) {
                context.read<FeedbackCubit>().onStoreSelected(store);
              },
              onScanQrPressed: () =>
                  context.read<FeedbackCubit>().onQrScannerPressed(),
            ),
          ),
        FeedbackShowOrderListSr() => _router.push(
            FeedbackPurchaseListRoute(
              onOrderSelected: (order) {
                context.read<FeedbackCubit>().onPurchaseSelected(order);
              },
            ),
          ),
        FeedbackSuccessSr() => context.router.pop(),
        FeedbackErrorSr(:final error) =>
          Messenger.showMessage(context: context, message: error),
        FeedbackShowFormForStoreSr(:final store) => _router.push(
            AppFeedbackRoute(store: store),
          ),
        FeedbackShowFormForPurchaseSr(:final order) => _router.push(
            AppFeedbackRoute(order: order),
          ),
        FeedbackShowQrScannerSr() => _router.push(
            FeedbackQrScanRoute(
              onStoreSelected: (store) {
                _router.pop();
                context.read<FeedbackCubit>().onStoreSelected(store);
              },
            ),
          ),
      },
      child: AutoRouter(
        key: _routerKey,
        placeholder: (_) => const Scaffold(),
      ),
    );
  }
}
