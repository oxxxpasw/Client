import 'package:auto_route/auto_route.dart';
import 'package:sosedifedi/domain/bloc/map_bloc/map_bloc.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/stream_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class MapScreen extends StatelessWidget implements AutoRouteWrapper {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamListener<MapSr>(
      stream: context.read<MapBloc>().singleResults,
      onData: (sr) => sr.whenOrNull(
        error: (error) =>
            Messenger.showMessage(context: context, message: error),
        submit: () => context.router.pop(),
      ),
      child: const AutoRouter(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<MapBloc>(
      create: (context) => GetIt.I.get(),
      child: this,
    );
  }
}
