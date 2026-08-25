import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/splash_bloc/splash_bloc.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/splash_control.dart';
import 'package:sosedifedi/utils/stream_listener.dart';

@RoutePage()
class SplashScreen extends StatefulWidget implements AutoRouteWrapper {
  const SplashScreen({
    super.key,
    this.onLoad,
  });

  final void Function(String? initialDeepLink)? onLoad;

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => GetIt.I.get()..init(),
      child: this,
    );
  }
}

class _SplashScreenState extends State<SplashScreen> {
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    SplashControl.remove();
    Future.delayed(const Duration(milliseconds: 300), () => SplashControl.remove());

    Future.delayed(const Duration(milliseconds: 1200), () {
      if (mounted) {
        _onReady(null);
      }
    });
  }

  void _onReady(String? deepLink) {
    if (!_loaded) {
      _loaded = true;
      if (widget.onLoad != null) {
        widget.onLoad!(deepLink);
      }
      if (mounted) {
        context.router.root.replace(const MainRoute());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamListener<SplashSr>(
      stream: context.read<SplashBloc>().singleResults,
      onData: (sr) => switch (sr) {
        ReadySr(:var initialDeepLink) => _onReady(initialDeepLink),
        ErrorSr(:var error) => () {
            Messenger.showMessage(context: context, message: error);
            _onReady(null);
          }(),
        NeedUpdateSr() => context
            .innerRouterOf<StackRouter>(SplashRoute.name)
            ?.replace(const SplashUpdateRoute()),
      },
      child: const AutoRouter(),
    );
  }
}
