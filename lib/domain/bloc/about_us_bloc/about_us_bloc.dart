import 'dart:async';

import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/data/repository/customer_account_repository.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'about_us_state.dart';
part 'about_us_bloc.freezed.dart';

@injectable
class AboutUsBloc extends SrCubit<AboutUsState, AboutUsSr> {
  AboutUsBloc({
    required this.customerAccountRepository,
    required this.appRouter,
  }) : super(const AboutUsState());

  @protected
  final CustomerAccountRepository customerAccountRepository;
  @protected
  final AppRouter appRouter;

  StreamSubscription? _subscription;

  Future<void> loadData() async {
    // final response = await customerAccountRepository.getGlobalPromotions();
    // if (response.hasError) {
    //   addError(response.error);
    //   addSr(AboutUsSr.error(ErrorMessages.getMessage(response.error)));
    // }
    //
    // final promotion = response.result.promotions
    //     .where((element) =>
    //         element.publicationPlace.hasPlace(PublicationPlaceEnum.aboutUs))
    //     .toList()
    //     .firstOrNull;
    //
    // if (promotion == null) {
    //   return;
    // }

    final promotionResponse = await customerAccountRepository
        .getPromotion('eddfe282-78d0-4505-84c6-b2ce00d61b1b');

    if (promotionResponse.hasError) {
      addError(promotionResponse.error);
      addSr(AboutUsSr.error(ErrorMessages.getMessage(promotionResponse.error)));
    }

    emit(
      state.copyWith(
        status: AboutUsStatus.ready,
        data: promotionResponse.result,
      ),
    );
  }

  Future<void> openLink(String url) async {
    try {
      final uri = Uri.parse(url);

      if (uri.hasAuthority && await canLaunchUrlString(url)) {
        await launchUrlString(url);
        return;
      }
      appRouter.pushPath(url);
    } catch (e, stack) {
      addError(e, stack);
      addSr(AboutUsSr.error(ErrorMessages.undefinedError));
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
