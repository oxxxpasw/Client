import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/current_city_bloc/current_city_bloc.dart';
import 'package:sosedifedi/domain/bloc/map_bloc/map_bloc.dart';
import 'package:sosedifedi/presentation/router/app_router.gr.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class CityButton extends StatelessWidget {
  const CityButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CurrentCityBloc>(
      create: (context) => GetIt.I.get(),
      child: const _CityButtonWidget(),
    );
  }
}

class _CityButtonWidget extends StatelessWidget {
  const _CityButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentCityBloc, CurrentCityState>(
      builder: (context, state) {
        if (state.city == null) {
          return const SizedBox.shrink();
        }
        return OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(
              horizontal: AppInsets.padding16,
              vertical: AppInsets.padding8,
            ),
            minimumSize: Size.zero,
            textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          onPressed: () => context.router.push(CityListRoute()),
          label: Text(
            state.city!.name,
          ),
          icon: const Icon(
            Icons.location_on,
            size: 20.0,
          ),
        );
      },
    );
  }
}

class CityButton2 extends StatelessWidget {
  const CityButton2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CurrentCityBloc>(
      create: (context) => GetIt.I.get(),
      child: const _CityButtonWidget2(),
    );
  }
}

class _CityButtonWidget2 extends StatelessWidget {
  const _CityButtonWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentCityBloc, CurrentCityState>(
      builder: (context, state) {
        if (state.city == null) {
          return const SizedBox.shrink();
        }
        return OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(
              horizontal: AppInsets.padding16,
              vertical: AppInsets.padding8,
            ),
            minimumSize: Size.zero,
            textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          onPressed: () => context.router.push(CityListRoute()),
          label: Text(
            state.city!.name,
          ),
          icon: BlocBuilder<MapBloc, MapState>(
            buildWhen: (previous, current) => previous.status != current.status,
            builder: (context, state) {
              const size = 20.0;

              if (state.status == MapStateStatus.loading) {
                return const SizedBox(
                  height: size,
                  width: size,
                  child: Padding(
                    padding: EdgeInsets.all(
                      AppInsets.padding2,
                    ),
                    child: CircularProgressIndicator(
                      strokeWidth: 2.0,
                    ),
                  ),
                );
              }
              return const Icon(
                Icons.location_on,
                size: size,
              );
            },
          ),
        );
      },
    );
  }
}
