import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/city_list_bloc/city_list_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/custom_search_bar.dart';
import 'package:sosedifedi/presentation/components/separated_widgets.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/extensions.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

typedef OnCityPressed = void Function(City city);

@RoutePage()
class CityListScreen extends StatelessWidget implements AutoRouteWrapper {
  const CityListScreen({super.key, this.onSelectSelected});

  final VoidCallback? onSelectSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          context.tr(LocaleKeys.cityChoose_label),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: SrBlocBuilder<CityListBloc, CityListState, CityListSr>(
          onSR: (context, sr) {
            switch (sr) {
              case CityListErrorSr(message: final message):
                Messenger.showMessage(context: context, message: message);
                break;
              case CityListSelectedSr():
                _onCitySelected(context);
                break;
            }
          },
          buildWhen: (oldState, state) => oldState.status != state.status,
          builder: (context, state) {
            return switch (state.status) {
              CityListStatus.init => const CityListLoadingWidget(),
              CityListStatus.loading => const CityListLoadingWidget(),
              CityListStatus.ready => const CityListView(),
            };
          },
        ),
      ),
    );
  }

  _onCitySelected(BuildContext context) {
    if (onSelectSelected != null) {
      onSelectSelected!.call();
      return;
    }
    context.router.pop();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CityListBloc>(
      create: (context) => GetIt.I.get()..loadData(),
      child: this,
    );
  }
}

class CityListView extends StatelessWidget {
  const CityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: AppInsets.padding24,
            left: AppInsets.padding16,
            right: AppInsets.padding16,
            bottom: AppInsets.padding20,
          ),
          child: CustomSearchBar(
            hintText: context.tr(LocaleKeys.cityChoose_findCity),
            leading: const Icon(DerevenkaDobrenkaIcons.search),
            onChanged: (value) {
              context.read<CityListBloc>().search(value);
            },
          ),
        ),
        const Divider(
          indent: AppInsets.padding16,
          endIndent: AppInsets.padding16,
          height: 1.0,
        ),
        Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: ListTileTheme.merge(
            tileColor: Theme.of(context).colorScheme.background,
            child: Expanded(
              child: BlocBuilder<CityListBloc, CityListState>(
                buildWhen: (oldState, state) =>
                    oldState.searchResult != state.searchResult ||
                    oldState.cities != state.cities,
                builder: (context, state) {
                  if (state.searchResult != null) {
                    return SearchCityList(
                      cities: state.searchResult!,
                      onCityPressed: (city) =>
                          context.read<CityListBloc>().setCity(city),
                    );
                  }
                  return CityList(
                    cities: state.cities!,
                    selected: state.selected,
                    onCityPressed: (city) =>
                        context.read<CityListBloc>().setCity(city),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CityList extends StatelessWidget {
  const CityList({
    super.key,
    required this.cities,
    required this.onCityPressed,
    this.selected,
  });

  final List<City> cities;
  final City? selected;
  final OnCityPressed onCityPressed;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    if (selected != null) {
      children.add(
        ListTile(
          title: Text(
            selected!.name,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          onTap: () => onCityPressed(selected!),
        ),
      );
    }
    final cityGroupsByFirstLetter = cities
        .groupBy(
            (value) => value.name.isEmpty ? null : value.name[0].toUpperCase())
        .entries
        .sorted((a, b) => compareKeys(a.key, b.key));

    children.addAll(
      cityGroupsByFirstLetter.map(
        (e) => CityListByLetter(
          letter: e.key,
          cities: e.value,
          onCityPressed: onCityPressed,
        ),
      ),
    );
    return ListView.separated(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).padding.bottom,
      ),
      itemBuilder: (_, index) => children[index],
      separatorBuilder: (_, __) => const Divider(
        indent: AppInsets.padding16,
        endIndent: AppInsets.padding16,
        height: 1.0,
      ),
      itemCount: children.length,
    );
  }

  int compareKeys(String? a, String? b) {
    if (a == null) {
      return 1;
    }
    if (b == null) {
      return -1;
    }
    return a.compareTo(b);
  }
}

class CityListByLetter extends StatelessWidget {
  const CityListByLetter({
    super.key,
    required this.cities,
    required this.letter,
    required this.onCityPressed,
  });

  final String? letter;
  final List<City> cities;
  final OnCityPressed onCityPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (letter != null) ...[
          Padding(
            padding: const EdgeInsets.only(
              top: AppInsets.padding16,
              left: AppInsets.padding16,
              right: AppInsets.padding16,
            ),
            child: Text(
              letter!,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context)
                        .extension<CustomThemeExtension>()!
                        .labelColor,
                  ),
            ),
          ),
          const Divider(
            indent: AppInsets.padding16,
            endIndent: AppInsets.padding16,
            height: 1.0,
          ),
        ],
        SeparatedColumn(
          separator: const Divider(),
          children: cities
              .map(
                (e) => ListTile(
                  title: Text(
                    e.name,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  onTap: () => onCityPressed(e),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class SearchCityList extends StatelessWidget {
  const SearchCityList({
    super.key,
    required this.cities,
    required this.onCityPressed,
  });

  final List<City> cities;
  final OnCityPressed onCityPressed;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        left: AppInsets.padding16,
        right: AppInsets.padding16,
        bottom: MediaQuery.of(context).padding.bottom,
      ),
      children: cities
          .map(
            (e) => ListTile(
              title: Text(e.name),
              onTap: () => onCityPressed(e),
            ),
          )
          .toList(),
    );
  }

  int compareKeys(String? a, String? b) {
    if (a == null) {
      return 1;
    }
    if (b == null) {
      return -1;
    }
    return a.compareTo(b);
  }
}

class CityListLoadingWidget extends StatelessWidget {
  const CityListLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
