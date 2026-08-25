// import 'package:auto_route/auto_route.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:sosedifedi/data/models/stores/stores.dart';
// import 'package:sosedifedi/domain/bloc/map_bloc/map_bloc.dart';
// import 'package:sosedifedi/domain/bloc/search_value_bloc/search_value_bloc.dart';
// import 'package:sosedifedi/presentation/screens/map/components/app_bar_country_dropdown.dart';
// import 'package:sosedifedi/presentation/screens/map/components/search_field.dart';
// import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:get_it/get_it.dart';
//
// abstract class _CountryFormKeys {
//   static const country = 'country';
// }
//
// class CountryListScreen extends StatelessWidget {
//   const CountryListScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocProvider<SearchValueBloc<Country>>(
//         create: (context) =>
//             GetIt.I.get(param1: context.read<MapBloc>().state.countryList),
//         child: Builder(builder: (context) {
//           return BlocConsumer<MapBloc, MapState>(
//             // listenWhen: (oldState, newState) =>
//             //     oldState.countryMap != newState.countryMap,
//             listener: (context, state) {
//               context
//                   .read<SearchValueBloc<Country>>()
//                   .setItems(state.countryList);
//             },
//             buildWhen: (oldState, newState) =>
//                 oldState.status != newState.status,
//             builder: (context, state) {
//               if (state.status == MapStateStatus.loading) {
//                 return buildLoading(context);
//               }
//               return CountryListContent();
//             },
//           );
//         }),
//       ),
//     );
//   }
//
//   Widget buildLoading(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: AutoLeadingButton(
//           color: Theme.of(context).colorScheme.onBackground,
//         ),
//       ),
//       body: const Center(
//         child: CircularProgressIndicator.adaptive(),
//       ),
//     );
//   }
// }
//
// class CountryListContent extends StatelessWidget {
//   CountryListContent({super.key});
//
//   final _formKey = GlobalKey<FormBuilderState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<MapBloc, MapState>(
//       // listenWhen: (oldState, newState) =>
//       //     oldState.selectedCountry != newState.selectedCountry,
//       listener: (context, state) {
//         // _formKey.currentState?.patchValue({
//         //   _CountryFormKeys.country: state.selectedCountry,
//         // });
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           leading: AutoLeadingButton(
//             color: Theme.of(context).colorScheme.onBackground,
//           ),
//           titleSpacing: 0.0,
//           title: Row(
//             children: [
//               const SizedBox(
//                 width: AppInsets.padding16,
//               ),
//               const AppBarCountryDropdown(),
//               const SizedBox(
//                 width: AppInsets.padding8,
//               ),
//               Expanded(child: SearchField(
//                 onChanged: (text) {
//                   context.read<SearchValueBloc<Country>>().search(text);
//                 },
//               )),
//             ],
//           ),
//         ),
//         body: SafeArea(
//           child: FormBuilder(
//             key: _formKey,
//             // initialValue: {
//             //   _CountryFormKeys.country:
//             //       context.read<MapBloc>().state.selectedCountry,
//             // },
//             child: Column(
//               children: [
//                 Expanded(
//                   child: BlocBuilder<SearchValueBloc<Country>,
//                       SearchValueState<Country>>(
//                     builder: (context, state) {
//                       return FormBuilderRadioGroup<Country>(
//                         name: _CountryFormKeys.country,
//                         controlAffinity: ControlAffinity.trailing,
//                         decoration: const InputDecoration(
//                           border: InputBorder.none,
//                           enabledBorder: InputBorder.none,
//                           errorBorder: InputBorder.none,
//                           disabledBorder: InputBorder.none,
//                           focusedBorder: InputBorder.none,
//                           focusedErrorBorder: InputBorder.none,
//                         ),
//                         options: state.items
//                             .map(
//                               (e) => FormBuilderFieldOption<Country>(
//                                 value: e,
//                                 child: Row(
//                                   children: [
//                                     if (e.flagImageUrl != null) ...[
//                                       SizedBox(
//                                         width: AppInsets.padding48,
//                                         height: AppInsets.padding24,
//                                         child: CachedNetworkImage(
//                                           fit: BoxFit.contain,
//                                           imageUrl: e.flagImageUrl!,
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         width: AppInsets.padding8,
//                                       ),
//                                     ],
//                                     Expanded(
//                                       child: Text(
//                                         e.name,
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .bodyLarge,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             )
//                             .toList(),
//                       );
//                     },
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(AppInsets.padding16),
//                   child: TextButton(
//                     style: TextButton.styleFrom(
//                       minimumSize: AppInsets.mainButtonSize,
//                     ),
//                     onPressed: () {
//                       // if (_formKey.currentState!.saveAndValidate()) {
//                       //   context.read<MapBloc>().changeCountry(_formKey
//                       //       .currentState!.value[_CountryFormKeys.country]);
//                       //   context.router.pop();
//                       // }
//                     },
//                     child: const Text('Сохранить'),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
