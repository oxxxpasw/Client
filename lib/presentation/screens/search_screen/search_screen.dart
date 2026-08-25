import 'package:auto_route/auto_route.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/domain/bloc/search_bloc/search_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/product_card/product_card.dart';
import 'package:sosedifedi/presentation/icons/custom_icons.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class SearchScreen extends StatefulWidget implements AutoRouteWrapper {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => GetIt.I.get(),
      child: this,
    );
  }
}

class _SearchScreenState extends State<SearchScreen> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(() {
      context.read<SearchBloc>().add(
            SearchEvent.onSearch(_controller.text),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        title: TextField(
          controller: _controller,
          autofocus: true,
          decoration: const InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding: EdgeInsets.zero,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => _controller.clear(),
            icon: Icon(
              CustomICons.closeBig,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SrBlocBuilder<SearchBloc, SearchState, SearchSr>(
          onSR: (context, sr) => sr.when(
            error: (error) =>
                Messenger.showMessage(context: context, message: error),
          ),
          builder: (context, state) => state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const SizedBox.shrink(),
            ready: (result) {
              if (result.isEmpty) {
                return const SizedBox.shrink();
              }
              return CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.all(AppInsets.padding16),
                    sliver: SliverToBoxAdapter(
                      child: Text(
                        LocaleKeys.search_searchResultCount,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ).plural(
                        result.length,
                        format: NumberFormat.compact(
                          locale: context.locale.toString(),
                        ),
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(AppInsets.padding16)
                        .copyWith(top: 0.0),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => ProductGroupCard(
                          group: result[index],
                          onPressed: () {
                            final router = context.router;
                            GetIt.I
                                .get<CityRepository>()
                                .selectedCityStream
                                .first
                                .then(
                              (value) {
                                if (value == null) {
                                  return;
                                }
                                router.push(
                                  ProductWithMapRoute(
                                    productId: result[index].id,
                                    assortmentFile: value.menuFileName!,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        childCount: result.length,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200.0,
                        mainAxisSpacing: AppInsets.padding16,
                        crossAxisSpacing: AppInsets.padding16,
                        childAspectRatio: 1,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
