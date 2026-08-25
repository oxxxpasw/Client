import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/data/repository/customer_account_repository.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'promotion_details_bloc.freezed.dart';
part 'promotion_details_state.dart';

@injectable
class PromotionDetailsBloc
    extends SrCubit<PromotionDetailsState, PromotionDetailsSr> {
  PromotionDetailsBloc({
    required this.customerAccountRepository,
    required this.analystService,
  }) : super(PromotionDetailsState());

  @protected
  final CustomerAccountRepository customerAccountRepository;
  @protected
  AnalystService analystService;

  Future<void> loadData(String promotionId) async {
    emit(
      state.copyWith(status: PromotionDetailsStatus.loading),
    );
    final response = await customerAccountRepository.getPromotion(promotionId);
    if (response.hasError) {
      addError(response.error);
      emit(state.copyWith(status: PromotionDetailsStatus.error));
      return;
    }
    emit(state.copyWith(
      status: PromotionDetailsStatus.ready,
      promotion: response.result,
    ));
  }

  Future<void> openLink(String url) async {
    if (await canLaunchUrlString(url)) {
      try {
        await launchUrlString(url);
      } catch (e, stack) {
        analystService.error('$e\n$stack');
      }
    }
  }

  Future<void> setPromotionResult(String id, Map<String, dynamic> data) async {
    emit(
      state.copyWith(
        isSending: true,
      ),
    );
    final response =
        await customerAccountRepository.setPromotionResult(id: id, data: data);
    if (response.hasError) {
      emit(
        state.copyWith(
          isSending: false,
        ),
      );
      addSr(
        PromotionDetailsSr.error(ErrorMessages.getMessage(response.error)),
      );
      addError(response.error);
      return;
    }
    addSr(const PromotionDetailsSr.send());
  }
}
