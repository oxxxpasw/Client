import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_request.freezed.dart';
part 'review_request.g.dart';

@freezed
abstract class ReviewRequest with _$ReviewRequest {
  const ReviewRequest._();

  const factory ReviewRequest({
    required String comment,
    required int rating,
    required ObjectType objectType,
    required String? objectId,
    required String? subTargetId,
    required List<String> images,
    ReviewDataRequest? reviewData,
    String? htmlContent,
  }) = _ReviewRequest;

  List<dynamic> toJson() {
    final String? jsonContent;

    if (reviewData case ReviewDataRequest data) {
      jsonContent = jsonEncode(data.toJson());
    } else {
      jsonContent = '';
    }

    return [
      comment,
      rating,
      objectType.value,
      objectId,
      subTargetId,
      images,
      jsonContent,
      htmlContent,
    ];
  }
}

enum ObjectType {
  storeID('StoreID'),
  productID('ProductID'),
  purchaseID('PurchaseID');

  const ObjectType(this.value);

  final String value;
}

@Freezed(toJson: true, fromJson: false)
abstract class ReviewDataRequest with _$ReviewDataRequest {
  const factory ReviewDataRequest({
    ReviewStoreDataRequest? store,
    ReviewProductDataRequest? product,
    ReviewPurchaseDataRequest? purchase,
  }) = _ReviewDataRequest;
}

@Freezed(toJson: true, fromJson: false)
abstract class ReviewStoreDataRequest with _$ReviewStoreDataRequest {
  const factory ReviewStoreDataRequest({
    required String id,
    String? name,
    String? address,
  }) = _ReviewStoreDataRequest;
}

@Freezed(toJson: true, fromJson: false)
abstract class ReviewProductDataRequest with _$ReviewProductDataRequest {
  const factory ReviewProductDataRequest({
    required String id,
    String? name,
  }) = _ReviewProductDataRequest;
}

@Freezed(toJson: true, fromJson: false)
abstract class ReviewPurchaseDataRequest with _$ReviewPurchaseDataRequest {
  const factory ReviewPurchaseDataRequest({
    required String id,
    DateTime? createdDatetime,
    @Default([]) List<ReviewOrderedProductRequest> products,
    double? total,
    ReviewStoreDataRequest? store,
  }) = _ReviewPurchaseDataRequest;
}

@Freezed(toJson: true, fromJson: false)
abstract class ReviewOrderedProductRequest with _$ReviewOrderedProductRequest {
  const factory ReviewOrderedProductRequest({
    required String id,
    required double price,
    String? name,
    String? image,
    @Default([]) List<ReviewOrderedModifierGroupRequest> modifiers,
    double? quantity,
    String? currencySymbol,
  }) = _ReviewOrderedProductRequest;
}

@Freezed(toJson: true, fromJson: false)
abstract class ReviewOrderedModifierGroupRequest
    with _$ReviewOrderedModifierGroupRequest {
  const factory ReviewOrderedModifierGroupRequest({
    String? name,
    required List<ReviewOrderedModifierRequest> options,
  }) = _ReviewOrderedModifierGroupRequest;
}

@Freezed(toJson: true, fromJson: false)
abstract class ReviewOrderedModifierRequest with _$ReviewOrderedModifierRequest {
  const factory ReviewOrderedModifierRequest({
    required String id,
    String? name,
    double? quantity,
    double? price,
  }) = _ReviewOrderedModifierRequest;
}
