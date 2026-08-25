import 'package:auto_route/auto_route.dart';
import 'package:sosedifedi/domain/bloc/about_us_item_bloc/about_us_item_bloc.dart';
import 'package:sosedifedi/presentation/components/about_us_html_widget/about_us_html_widget.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class AboutUsItemScreen extends StatelessWidget implements AutoRouteWrapper {
  const AboutUsItemScreen({
    super.key,
    @pathParam required this.id,
  });

  final String id;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AboutUsItemBloc>(
      create: (context) => GetIt.I.get()..loadData(id),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<AboutUsItemBloc, AboutUsItemState>(
          builder: (context, state) {
            if (state.data == null) {
              return const SizedBox.shrink();
            }
            return Text(state.data!.name);
          },
        ),
      ),
      body: SafeArea(
        child: SrBlocBuilder<AboutUsItemBloc, AboutUsItemState, AboutUsItemSr>(
          onSR: (context, sr) => sr.when(
            error: (error) =>
                Messenger.showMessage(context: context, message: error),
          ),
          builder: (context, state) {
            if (state.status == AboutUsItemStatus.init ||
                state.status == AboutUsItemStatus.loading) {
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
                    // context.router.pushNamed(url);
                    context.read<AboutUsItemBloc>().openLink(url);
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
