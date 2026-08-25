import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/about_us_bloc/about_us_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/about_us_html_widget/about_us_html_widget.dart';
import 'package:sosedifedi/presentation/components/bonus_balance_widget/bonus_balance_widget.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class BonusProgramScreen extends StatelessWidget implements AutoRouteWrapper {
  const BonusProgramScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AboutUsBloc>(
      create: (context) => GetIt.I.get()..loadData(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        actions: const [
          Padding(
            padding: EdgeInsets.all(AppInsets.padding8),
            child: Center(
              child: CurrentBonusBalanceWidget(),
            ),
          ),
        ],
        title: Text(context.tr(LocaleKeys.bonusPoints)),
      ),
      body: SafeArea(
        child: SrBlocBuilder<AboutUsBloc, AboutUsState, AboutUsSr>(
          onSR: (context, sr) => sr.when(
            error: (error) =>
                Messenger.showMessage(context: context, message: error),
          ),
          builder: (context, state) {
            if (state.status == AboutUsStatus.init ||
                state.status == AboutUsStatus.loading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            if (state.data == null) {
              return const SizedBox.shrink();
            }
            final data = state.data!;
            return SingleChildScrollView(
              child: AboutUsHtmlWidget(
                data: data.htmlContent ?? '',
                onUrlPressed: (url) {
                  if (url != null) {
                    context.read<AboutUsBloc>().openLink(url);
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
