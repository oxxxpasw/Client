import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:sosedifedi/domain/bloc/about_us_bloc/about_us_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/about_us_html_widget/about_us_html_widget.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class AboutUsScreen extends StatelessWidget implements AutoRouteWrapper {
  const AboutUsScreen({super.key});

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
      appBar: CustomAppBar(
        title: Text(
          LocaleKeys.aboutUsScreen_title.tr(context: context),
        ),
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
                    // context.router.pushNamed(
                    //     'https://pitsburg.crm4retail.ru/about-us/bfd651a3-8e53-4fe6-b219-b0ad006fe77e');
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
