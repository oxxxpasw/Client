import 'dart:async';

import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/data/repository/customer_account_repository.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'about_us_item_state.dart';

part 'about_us_item_bloc.freezed.dart';

@injectable
class AboutUsItemBloc extends SrCubit<AboutUsItemState, AboutUsItemSr> {
  AboutUsItemBloc({
    required this.customerAccountRepository,
    required this.appRouter,
  }) : super(const AboutUsItemState());

  @protected
  final CustomerAccountRepository customerAccountRepository;
  @protected
  final AppRouter appRouter;

  StreamSubscription? _subscription;

  Future<void> loadData(String id) async {
    final promotionResponse = await customerAccountRepository.getPromotion(id);

    if (promotionResponse.hasError) {
      addError(promotionResponse.error);
      addSr(AboutUsItemSr.error(
          ErrorMessages.getMessage(promotionResponse.error)));
    }

    emit(
      state.copyWith(
        status: AboutUsItemStatus.ready,
        data: promotionResponse.result,
      ),
    );
  }

  Future<void> openLink(String url) async {
    try {
      final uri = Uri.parse(url);

      if (uri.isAbsolute && await canLaunchUrlString(url)) {
        await launchUrlString(url);
        return;
      }
      appRouter.pushPath(url);
    } catch (e, stack) {
      addError(e, stack);
      addSr(AboutUsItemSr.error(ErrorMessages.undefinedError));
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
