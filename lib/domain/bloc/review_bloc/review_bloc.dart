import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/repository/review_repository.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/domain/models/review/review.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'review_bloc.freezed.dart';
part 'review_event.dart';
part 'review_state.dart';

@injectable
class ReviewBloc extends SrBloc<ReviewEvent, ReviewState, ReviewSr> {
  ReviewBloc({
    required this.reviewRepository,
  }) : super(const ReviewState()) {
    on<_Init>(_onInit);
    on<_Submit>(_onSubmit);
  }

  @protected
  final ReviewRepository reviewRepository;

  Future<void> _onInit(_Init event, Emitter<ReviewState> emit) async {
    emit(
      state.copyWith(
        status: ReviewStateStatus.ready,
        store: event.store,
        order: event.order,
        product: event.product,
      ),
    );
  }

  Future<void> _onSubmit(_Submit event, Emitter<ReviewState> emit) async {
    emit(
      state.copyWith(
        status: ReviewStateStatus.loading,
      ),
    );
    final response = await reviewRepository.createReview(
      Review(
        comment: event.comment,
        rating: event.rating,
        images: event.images,
        store: state.store,
        order: state.order,
        product: state.product,
      ),
    );

    if (response.hasError) {
      addError(response.error);
      addSr(
        ReviewSr.error(
          ErrorMessages.getMessage(response.error),
        ),
      );
      emit(
        state.copyWith(
          status: ReviewStateStatus.ready,
        ),
      );
      return;
    }

    addSr(const ReviewSr.success());
  }
}
