import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/data/models/review_response/review_response.dart';

part 'user_review.freezed.dart';

@freezed
abstract class UserReview with _$UserReview {
  const factory UserReview({
    required String id,
    required ObjectType objectType,
    String? comment,
    int? rating,
    List<String>? images,
    String? ownerCustomerId,
    String? objectId,
    String? htmlContent,
    String? dataOwnerID,
    DateTime? createDate,
    String? mobileNumber,
    UserReviewStoreData? store,
    UserReviewProductData? product,
    UserReviewPurchaseData? purchase,
  }) = _UserReview;
}

@freezed
abstract class UserReviewStoreData with _$UserReviewStoreData {
  const factory UserReviewStoreData({
    required String id,
    String? name,
    String? address,
  }) = _UserReviewStoreData;
}

@freezed
abstract class UserReviewProductData with _$UserReviewProductData {
  const factory UserReviewProductData({
    required String id,
    String? name,
  }) = _UserReviewProductData;
}

@freezed
abstract class UserReviewPurchaseData with _$UserReviewPurchaseData {
  const factory UserReviewPurchaseData({
    required String id,
    DateTime? createdDatetime,
    @Default([]) List<UserReviewOrderedProduct> products,
    double? total,
    UserReviewStoreData? store,
  }) = _UserReviewPurchaseData;
}

@freezed
abstract class UserReviewOrderedProduct with _$UserReviewOrderedProduct {
  const factory UserReviewOrderedProduct({
    required String id,
    required double price,
    String? name,
    String? image,
    required List<UserReviewOrderedModifierGroup> modifiers,
    double? quantity,
    required String currencySymbol,
  }) = _UserReviewOrderedProduct;
}

@freezed
abstract class UserReviewOrderedModifierGroup with _$UserReviewOrderedModifierGroup {
  const factory UserReviewOrderedModifierGroup({
    String? name,
    required List<UserReviewOrderedModifier> options,
  }) = _UserReviewOrderedModifierGroup;
}

@freezed
abstract class UserReviewOrderedModifier with _$UserReviewOrderedModifier {
  const factory UserReviewOrderedModifier({
    required String id,
    String? name,
    double? quantity,
    double? price,
  }) = _UserReviewOrderedModifier;
}
