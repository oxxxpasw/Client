import 'dart:async';

import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/data/repository/customer_account_repository.dart';
import 'package:sosedifedi/domain/models/customer_account_model/customer_account_model.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'promotions_bloc.freezed.dart';
part 'promotions_state.dart';

@injectable
class PromotionsBloc extends SrCubit<PromotionsState, PromotionsSr> {
  PromotionsBloc({
    required this.customerAccountRepository,
  }) : super(const PromotionsState()) {
    _subscription = customerAccountRepository.customerAccount.listen(
      (event) {
        emit(
          state.copyWith(
            status: PromotionsStatus.ready,
            stories: event?.promotions
                    .where(
                      (element) => element.publicationPlace.hasPlace(
                        PublicationPlaceEnum.stories,
                      ),
                    )
                    .toList() ??
                [],
            promotions: event?.promotions
                    .where(
                      (element) => element.publicationPlace.hasPlace(
                        PublicationPlaceEnum.action,
                      ),
                    )
                    .toList() ??
                [],
          ),
        );
      },
      onError: (error) {
        addError(error);
        addSr(
          PromotionsSr.error(
            error is CommonResponseError
                ? ErrorMessages.getMessage(error)
                : ErrorMessages.undefinedError,
          ),
        );
      },
    );
  }

  @protected
  final CustomerAccountRepository customerAccountRepository;

  StreamSubscription<CustomerAccountModel?>? _subscription;

  Future<void> loadData() async {
    emit(state.copyWith(status: PromotionsStatus.loading));
    await customerAccountRepository.refreshCustomerAccount();
  }

  void viewStory(PromotionShortInfo story) {
    emit(
      state.copyWith(
        viewedStoriesIDs: Set.from(state.viewedStoriesIDs)..add(story.id),
      ),
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
