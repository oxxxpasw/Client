import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_response.freezed.dart';
part 'review_response.g.dart';

@freezed
abstract class ReviewResponse with _$ReviewResponse {
  const ReviewResponse._();

  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory ReviewResponse({
    @JsonKey(name: 'ID') required String id,
    String? ownerCustomerId,
    String? comment,
    int? rating,
    @JsonKey(
      unknownEnumValue: ObjectType.unknown,
      defaultValue: ObjectType.unknown,
    )
    required ObjectType objectType,
    String? objectId,
    String? htmlContent,
    String? dataOwnerID,
    DateTime? createDate,
    String? mobileNumber,
    @JsonKey(name: 'JsonContent')
    @ReviewDataResponseConverter()
    ReviewDataResponse? data,
    List<String>? imageLinks,
  }) = _ReviewResponse;

  factory ReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseFromJson(json);
}

enum ObjectType {
  @JsonValue('StoreID')
  storeID,
  @JsonValue('ProductID')
  productID,
  @JsonValue('PurchaseID')
  purchaseID,
  unknown;
}

class ReviewDataResponseConverter
    implements JsonConverter<ReviewDataResponse?, String?> {
  const ReviewDataResponseConverter();

  @override
  ReviewDataResponse? fromJson(String? json) {
    try {
      if (json == null) return null;

      final jsonMap = jsonDecode(json) as Map<String, dynamic>;

      return ReviewDataResponse.fromJson(jsonMap);
    } catch (_) {
      return null;
    }
  }

  @override
  String? toJson(ReviewDataResponse? data) {
    throw UnimplementedError(
      'ReviewDataResponseConverter does not support toJson.',
    );
  }
}

@freezed
abstract class ReviewDataResponse with _$ReviewDataResponse {
  const factory ReviewDataResponse({
    ReviewStoreDataResponse? store,
    ReviewProductDataResponse? product,
    ReviewPurchaseDataResponse? purchase,
  }) = _ReviewDataResponse;

  factory ReviewDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewDataResponseFromJson(json);
}

@freezed
abstract class ReviewStoreDataResponse with _$ReviewStoreDataResponse {
  const factory ReviewStoreDataResponse({
    required String id,
    String? name,
    String? address,
  }) = _ReviewStoreDataResponse;

  factory ReviewStoreDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewStoreDataResponseFromJson(json);
}

@freezed
abstract class ReviewProductDataResponse with _$ReviewProductDataResponse {
  const factory ReviewProductDataResponse({
    required String id,
    String? name,
  }) = _ReviewProductDataResponse;

  factory ReviewProductDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewProductDataResponseFromJson(json);
}

@freezed
abstract class ReviewPurchaseDataResponse with _$ReviewPurchaseDataResponse {
  const factory ReviewPurchaseDataResponse({
    required String id,
    DateTime? createdDatetime,
    @Default([]) List<ReviewOrderedProductResponse> products,
    double? total,
    ReviewStoreDataResponse? store,
  }) = _ReviewPurchaseDataResponse;

  factory ReviewPurchaseDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewPurchaseDataResponseFromJson(json);
}

@freezed
abstract class ReviewOrderedProductResponse with _$ReviewOrderedProductResponse {
  const factory ReviewOrderedProductResponse({
    required String id,
    required double price,
    String? name,
    String? image,
    @Default([]) List<ReviewOrderedModifierGroupResponse> modifiers,
    double? quantity,
    @Default('') @JsonKey(name: 'currencySymbol') String currencySymbol,
  }) = _ReviewOrderedProductResponse;

  factory ReviewOrderedProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewOrderedProductResponseFromJson(json);
}

@freezed
abstract class ReviewOrderedModifierGroupResponse
    with _$ReviewOrderedModifierGroupResponse {
  const factory ReviewOrderedModifierGroupResponse({
    String? name,
    required List<ReviewOrderedModifierResponse> options,
  }) = _ReviewOrderedModifierGroupResponse;

  factory ReviewOrderedModifierGroupResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ReviewOrderedModifierGroupResponseFromJson(json);
}

@freezed
abstract class ReviewOrderedModifierResponse with _$ReviewOrderedModifierResponse {
  const factory ReviewOrderedModifierResponse({
    required String id,
    String? name,
    double? quantity,
    double? price,
  }) = _ReviewOrderedModifierResponse;

  factory ReviewOrderedModifierResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewOrderedModifierResponseFromJson(json);
}
