import 'dart:convert';

import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/review_request/review_request.dart'
    as request;
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/domain/models/order/ordered_modifier/ordered_modifier.dart';
import 'package:sosedifedi/domain/models/order/ordered_options/ordered_options.dart';
import 'package:sosedifedi/domain/models/order/ordered_product/ordered_product.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/domain/models/review/review.dart';
import 'package:sosedifedi/data/models/review_response/review_response.dart'
    as response;
import 'package:sosedifedi/domain/models/user_review/user_review.dart';

@singleton
class ReviewMapper {
  const ReviewMapper();

  request.ReviewRequest mapToRequest({
    required Review review,
    required List<String> imageUrlList,
  }) {
    request.ObjectType? type;
    String? objectId;
    String? subTargetId;
    request.ReviewDataRequest? reviewData;

    if (review.store case Store store) {
      type = request.ObjectType.storeID;
      objectId = store.id;
      subTargetId = null;
      reviewData = request.ReviewDataRequest(
        store: request.ReviewStoreDataRequest(
          id: store.id,
          name: store.name,
          address: store.address,
        ),
      );
    } else if (review.product case Product product) {
      type = request.ObjectType.productID;
      objectId = product.id;
      subTargetId = null;
      reviewData = request.ReviewDataRequest(
        product: request.ReviewProductDataRequest(
          id: product.id,
          name: product.name,
        ),
      );
    } else if (review.order case AcceptedOrder order) {
      type = request.ObjectType.purchaseID;
      objectId = order.purchaseId;
      subTargetId = order.id;
      reviewData = request.ReviewDataRequest(
        purchase: request.ReviewPurchaseDataRequest(
          id: order.purchaseId ?? '',
          createdDatetime: order.createdDateTime,
          total: order.totalSum,
          products: _mapOrderedProducts(order.products),
          store: request.ReviewStoreDataRequest(
            id: order.storeId ?? '',
            name: order.storeName,
            address: order.storeAddress,
          ),
        ),
      );
    }

    if (type == null) {
      throw Exception('Review type is not defined');
    }

    return request.ReviewRequest(
      comment: review.comment,
      rating: review.rating,
      objectType: type,
      objectId: objectId,
      images: imageUrlList,
      subTargetId: subTargetId,
      reviewData: reviewData,
      htmlContent: '',
    );
  }

  Future<String> mapImageToBase64({
    required XFile image,
  }) async =>
      base64Encode(await image.readAsBytes());

  List<request.ReviewOrderedProductRequest> _mapOrderedProducts(
      List<OrderedProduct> products) {
    return products.map((product) {
      return request.ReviewOrderedProductRequest(
        id: product.id,
        price: product.price,
        name: product.name,
        image: product.image,
        modifiers: _mapOrderedModifierGroups(product.modifiers),
        quantity: product.quantity,
        currencySymbol: product.currencySymbol,
      );
    }).toList();
  }

  // String _wrapComment(String comment) {
  //   return '<html><body>$comment</body></html>';
  // }

  //
  List<request.ReviewOrderedModifierGroupRequest> _mapOrderedModifierGroups(
    List<OrderedModifier> modifiers,
  ) {
    return modifiers.map((modifier) {
      return request.ReviewOrderedModifierGroupRequest(
        name: modifier.name,
        options: _mapOrderedModifiers(
          modifier.options,
        ),
      );
    }).toList();
  }

  //
  List<request.ReviewOrderedModifierRequest> _mapOrderedModifiers(
      List<OrderedOption> options) {
    return options.map((option) {
      return request.ReviewOrderedModifierRequest(
        id: option.id,
        name: option.name,
        price: option.price,
      );
    }).toList();
  }

  UserReview mapFromResponse(response.ReviewResponse review) {
    return UserReview(
      id: review.id,
      objectType: review.objectType,
      comment: review.comment,
      rating: review.rating,
      images: review.imageLinks ?? [],
      ownerCustomerId: review.ownerCustomerId,
      objectId: review.objectId,
      htmlContent: review.htmlContent,
      dataOwnerID: review.dataOwnerID,
      createDate: review.createDate,
      mobileNumber: review.mobileNumber,
      store: _mapStoreData(review.data?.store),
      product: _mapProductData(review.data?.product),
      purchase: _mapPurchaseData(review.data?.purchase),
    );
  }

  UserReviewStoreData? _mapStoreData(response.ReviewStoreDataResponse? store) {
    if (store == null) return null;
    return UserReviewStoreData(
      id: store.id,
      name: store.name,
      address: store.address,
    );
  }

  UserReviewProductData? _mapProductData(
      response.ReviewProductDataResponse? product) {
    if (product == null) return null;
    return UserReviewProductData(
      id: product.id,
      name: product.name,
    );
  }

  UserReviewPurchaseData? _mapPurchaseData(
      response.ReviewPurchaseDataResponse? purchase) {
    if (purchase == null) return null;
    return UserReviewPurchaseData(
      id: purchase.id,
      createdDatetime: purchase.createdDatetime,
      products: _mapUserReviewOrderedProducts(purchase.products),
      total: purchase.total,
      store: _mapStoreData(purchase.store),
    );
  }

  List<UserReviewOrderedProduct> _mapUserReviewOrderedProducts(
      List<response.ReviewOrderedProductResponse> products) {
    return products.map((product) {
      return UserReviewOrderedProduct(
        id: product.id,
        price: product.price,
        name: product.name,
        image: product.image,
        modifiers: _mapUserReviewOrderedModifierGroups(product.modifiers),
        quantity: product.quantity,
        currencySymbol: product.currencySymbol,
      );
    }).toList();
  }

  //
  List<UserReviewOrderedModifierGroup> _mapUserReviewOrderedModifierGroups(
    List<response.ReviewOrderedModifierGroupResponse> modifiers,
  ) {
    return modifiers.map((modifier) {
      return UserReviewOrderedModifierGroup(
        name: modifier.name,
        options: _mapUserReviewOrderedModifiers(
          modifier.options,
        ),
      );
    }).toList();
  }

  //
  List<UserReviewOrderedModifier> _mapUserReviewOrderedModifiers(
      List<response.ReviewOrderedModifierResponse> options) {
    return options.map((option) {
      return UserReviewOrderedModifier(
        id: option.id,
        name: option.name,
        price: option.price,
      );
    }).toList();
  }
}
