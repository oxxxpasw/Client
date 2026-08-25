import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/user_profile_bloc/user_profile_bloc.dart';

@RoutePage()
class UserProfileScreen extends StatelessWidget implements AutoRouteWrapper {
  const UserProfileScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<UserProfileBloc>(
      create: (context) => GetIt.I.get(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
