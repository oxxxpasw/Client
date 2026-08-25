import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/auth_bloc/auth_bloc.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/stream_listener.dart';

@RoutePage()
class AuthScreen extends StatefulWidget implements AutoRouteWrapper {
  const AuthScreen({
    super.key,
    this.onComplete,
    this.canSkipAuth = true,
  });

  final VoidCallback? onComplete;
  final bool canSkipAuth;

  @override
  State<AuthScreen> createState() => _AuthScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => GetIt.I.get()..add(const AuthEvent.started()),
      child: this,
    );
  }
}

class _AuthScreenState extends State<AuthScreen> {
  final _navigatorKey = GlobalKey<AutoRouterState>();

  StackRouter? get router => _navigatorKey.currentState?.controller;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 600), () {
        if (mounted && router != null && (router?.current.name == AuthLoadingRoute.name || router?.current.name == null)) {
          router?.replace(PhoneInputRoute(canSkipAuth: widget.canSkipAuth));
        }
      });
    });
  }

  void _handleSr(AuthSr sr, VoidCallback onComplete) {
    void execute() {
      if (router == null) {
        Future.delayed(const Duration(milliseconds: 80), execute);
        return;
      }
      sr.map(
        loading: (state) => router?.replace(const AuthLoadingRoute()),
        ready: (state) =>
            router?.replace(PhoneInputRoute(canSkipAuth: widget.canSkipAuth)),
        authenticated: (state) => onComplete(),
        error: (state) =>
            Messenger.showMessage(context: context, message: state.error),
        codeSent: (state) => router?.push(CodeInputRoute()),
        withoutAuth: (state) => onComplete(),
      );
    }
    execute();
  }

  @override
  Widget build(BuildContext context) {
    final effectiveOnComplete = widget.onComplete ??
        () => context.router.canNavigateBack
            ? context.router.root.pop()
            : context.router.navigate(const MainRoute());
    return StreamListener<AuthSr>(
      stream: context.read<AuthBloc>().singleResults,
      onData: (sr) => _handleSr(sr, effectiveOnComplete),
      child: Theme(
        data: Theme.of(context).copyWith(
          appBarTheme: Theme.of(context).appBarTheme.copyWith(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                systemOverlayStyle: SystemUiOverlayStyle.dark,
              ),
        ),
        child: AutoRouter(
          key: _navigatorKey,
        ),
      ),
    );
  }
}
