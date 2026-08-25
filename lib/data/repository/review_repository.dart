import 'package:flutter/cupertino.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/mappers/review_mapper.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_service.dart';
import 'package:sosedifedi/domain/models/review/review.dart';
import 'package:sosedifedi/domain/models/user_review/user_review.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

abstract class ReviewRepository {
  const ReviewRepository();

  Future<DefaultResponse<void>> createReview(Review review);

  Future<DefaultResponse<List<UserReview>>> getReviews();
}

@Singleton(as: ReviewRepository)
class ReviewRepositoryImpl implements ReviewRepository {
  const ReviewRepositoryImpl({
    required this.customerApiService,
    required this.reviewMapper,
    required this.authRepository,
  });

  @protected
  final CustomerApiService customerApiService;
  @protected
  final ReviewMapper reviewMapper;
  @protected
  final AuthRepository authRepository;

  @override
  Future<DefaultResponse<void>> createReview(Review review) async {
    try {
      final token = authRepository.authData?.user.token;

      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }

      Future<String> uploadImage(XFile image) async {
        final response = await customerApiService.uploadImage(
          base64Image: await reviewMapper.mapImageToBase64(image: image),
          token: token,
        );
        if (response.hasError) {
          throw response.error;
        }
        return response.result;
      }

      final imageUrlList = await Future.wait(
        review.images.map(uploadImage),
        eagerError: true,
      );

      final response = await customerApiService.createReview(
        request: reviewMapper.mapToRequest(
          review: review,
          imageUrlList: imageUrlList,
        ),
        token: token,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<UserReview>>> getReviews() async {
    try {
      final token = authRepository.authData?.user.token;

      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }

      final response = await customerApiService.getReviewsByUser(token: token);

      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        response.result.map(reviewMapper.mapFromResponse).toList(),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
