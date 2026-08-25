import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/repository/review_repository.dart';
import 'package:sosedifedi/domain/models/user_review/user_review.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'reviews_cubit.freezed.dart';
part 'reviews_state.dart';

@injectable
class ReviewsCubit extends SrCubit<ReviewsState, ReviewsSr> {
  ReviewsCubit({
    required this.reviewRepository,
    @factoryParam this.storeId,
  }) : super(const ReviewsState());

  @protected
  final ReviewRepository reviewRepository;
  @protected
  final String? storeId;

  Future<void> loadData() async {
    if (state.status == ReviewsStatus.initial) {
      emit(state.copyWith(status: ReviewsStatus.loading));
    }
    final response = await reviewRepository.getReviews();

    if (response.hasError) {
      addError(response.error);
      addSr(
        ReviewsSr.error(
          ErrorMessages.getMessage(response.error),
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        status: ReviewsStatus.ready,
        reviews: response.result,
      ),
    );
  }
}
