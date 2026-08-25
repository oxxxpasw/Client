import 'package:auto_route/auto_route.dart';
import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/domain/bloc/promotion_details_bloc/promotion_details_bloc.dart';
import 'package:sosedifedi/presentation/components/page_error.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../generated/locale_keys.g.dart';
import 'components/simple_promotion_view.dart';
import 'components/survey_promotion_vew.dart';
import 'components/unknown_promotion_view.dart';

@RoutePage()
class PromotionScreen extends StatelessWidget implements AutoRouteWrapper {
  const PromotionScreen({
    super.key,
    @PathParam() required this.promotionId,
  });

  final String promotionId;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PromotionDetailsBloc>(
      create: (context) => GetIt.I.get()..loadData(promotionId),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
      ),
      body: SafeArea(
        child: SrBlocBuilder<PromotionDetailsBloc, PromotionDetailsState,
            PromotionDetailsSr>(
          onSR: (context, sr) => sr.when(
            error: (error) =>
                Messenger.showMessage(context: context, message: error),
            send: () {
              Messenger.showMessage(
                context: context,
                message: context.tr(LocaleKeys.messages_success_dataSent),
                messageType: MessageType.success,
              );
              context.router.pop();
              return null;
            },
          ),
          builder: _build,
        ),
      ),
    );
  }

  Widget _build(BuildContext context, PromotionDetailsState state) {
    if (state.status == PromotionDetailsStatus.init ||
        state.status == PromotionDetailsStatus.loading) {
      return _buildLoading(context);
    }
    if (state.status == PromotionDetailsStatus.error) {
      return _buildError(context);
    }
    return _buildView(context, state.promotion!, false);
  }

  Widget _buildView(
          BuildContext context, Promotion promotion, bool isSending) =>
      promotion.map(
        simple: (promotion) => SimplePromotionView(promotion: promotion),
        survey: (promotion) => SurveyPromotionView(
          promotion: promotion,
          isSending: isSending,
        ),
        unknown: (promotion) => UnknownPromotionView(promotion: promotion),
      );

  Widget _buildLoading(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }

  Widget _buildError(BuildContext context) {
    return PageError(
      onReload: () =>
          context.read<PromotionDetailsBloc>().loadData(promotionId),
    );
  }
}
