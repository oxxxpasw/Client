import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/map_bloc/map_bloc.dart';
import 'package:sosedifedi/domain/bloc/search_value_bloc/search_value_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

import '../components/app_bar_country_dropdown.dart';
import '../components/search_field.dart';

abstract class _CityFormKeys {
  static const city = 'city';
}

class CityListScreen extends StatelessWidget {
  const CityListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SearchValueBloc<City>>(
        create: (context) => GetIt.I.get(
          param1: [],
        ),
        // create: (context) => GetIt.I.get(
        //     param1: context.read<MapBloc>().state.selectedCountry?.cityList ??
        //         <City>[]),
        child: Builder(builder: (context) {
          return BlocConsumer<MapBloc, MapState>(
            // listenWhen: (oldState, newState) =>
            //     oldState.selectedCountry != newState.selectedCountry,
            listener: (context, state) {
              // context
              //     .read<SearchValueBloc<City>>()
              //     .setItems(state.selectedCountry?.cityList ?? []);
            },
            buildWhen: (oldState, newState) =>
                oldState.status != newState.status,
            builder: (context, state) {
              if (state.status == MapStateStatus.init) {
                return buildLoading(context);
              }
              return CityListContent();
            },
          );
        }),
      ),
    );
  }

  Widget buildLoading(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AutoLeadingButton(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      body: const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}

class CityListContent extends StatelessWidget {
  CityListContent({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<MapBloc, MapState>(
      listenWhen: (oldState, newState) =>
          oldState.selectedCity != newState.selectedCity,
      listener: (context, state) {
        _formKey.currentState?.patchValue({
          _CityFormKeys.city: state.selectedCity,
        });
      },
      child: Scaffold(
        appBar: AppBar(
          leading: AutoLeadingButton(
            color: Theme.of(context).colorScheme.onBackground,
          ),
          titleSpacing: 0.0,
          title: Row(
            children: [
              const SizedBox(
                width: AppInsets.padding16,
              ),
              AppBarCountryDropdown(
                onCountryPressed: () {
                  // context.router.push(const CountryListRoute());
                },
              ),
              const SizedBox(
                width: AppInsets.padding8,
              ),
              Expanded(child: SearchField(
                onChanged: (text) {
                  context.read<SearchValueBloc<City>>().search(text);
                },
              )),
            ],
          ),
        ),
        body: SafeArea(
          child: FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                Expanded(
                  child: BlocBuilder<SearchValueBloc<City>,
                      SearchValueState<City>>(
                    builder: (context, state) {
                      return FormBuilderRadioGroup<City>(
                        name: _CityFormKeys.city,
                        initialValue:
                            context.read<MapBloc>().state.selectedCity,
                        controlAffinity: ControlAffinity.trailing,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                        options: state.items
                            .map(
                              (e) => FormBuilderFieldOption<City>(
                                value: e,
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    e.name,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(AppInsets.padding16),
                  child: TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.saveAndValidate()) {
                        context.read<MapBloc>().changeCity(
                            _formKey.currentState!.value[_CityFormKeys.city]);
                        context.router.pop();
                      }
                    },
                    child: Text(context.tr(LocaleKeys.save)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
