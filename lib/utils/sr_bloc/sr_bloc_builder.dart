import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_mixin.dart';
import 'package:sosedifedi/utils/stream_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef SingleResultListener<SR> = void Function(
    BuildContext context, SR singleResult);

/// Виджет-прослойка над bloc-builder для работы с SrBloc
class SrBlocBuilder<B extends SingleResultMixin<S, SR>, S, SR>
    extends StatelessWidget {
  final B? bloc;
  final SingleResultListener<SR> onSR;
  final BlocWidgetBuilder<S> builder;
  final BlocBuilderCondition<S>? buildWhen;

  const SrBlocBuilder({
    required this.onSR,
    required this.builder,
    this.bloc,
    this.buildWhen,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamListener<SR>(
      stream: (bloc ?? context.read<B>()).singleResults,
      onData: (data) => onSR(context, data),
      child: BlocBuilder(
        bloc: bloc,
        builder: builder,
        buildWhen: buildWhen,
      ),
    );
  }
}

class SrBlocListener<B extends SrBloc<Object?, S, SR>, S, SR>
    extends StatelessWidget {
  final B? bloc;
  final SingleResultListener<SR> onSR;
  final Widget? child;
  final BlocBuilderCondition<S>? listenWhen;
  final BlocWidgetListener<S> listener;

  const SrBlocListener({
    required this.onSR,
    required this.listener,
    this.child,
    this.bloc,
    this.listenWhen,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamListener<SR>(
      stream: (bloc ?? context.read<B>()).singleResults,
      onData: (data) => onSR(context, data),
      child: BlocListener(
        bloc: bloc,
        listenWhen: listenWhen,
        listener: listener,
      ),
    );
  }
}
