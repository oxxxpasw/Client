// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewResponse _$ReviewResponseFromJson(Map<String, dynamic> json) =>
    _ReviewResponse(
      id: json['ID'] as String,
      ownerCustomerId: json['OwnerCustomerId'] as String?,
      comment: json['Comment'] as String?,
      rating: (json['Rating'] as num?)?.toInt(),
      objectType:
          $enumDecodeNullable(
            _$ObjectTypeEnumMap,
            json['ObjectType'],
            unknownValue: ObjectType.unknown,
          ) ??
          ObjectType.unknown,
      objectId: json['ObjectId'] as String?,
      htmlContent: json['HtmlContent'] as String?,
      dataOwnerID: json['DataOwnerID'] as String?,
      createDate: json['CreateDate'] == null
          ? null
          : DateTime.parse(json['CreateDate'] as String),
      mobileNumber: json['MobileNumber'] as String?,
      data: const ReviewDataResponseConverter().fromJson(
        json['JsonContent'] as String?,
      ),
      imageLinks: (json['ImageLinks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ReviewResponseToJson(_ReviewResponse instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'OwnerCustomerId': instance.ownerCustomerId,
      'Comment': instance.comment,
      'Rating': instance.rating,
      'ObjectType': _$ObjectTypeEnumMap[instance.objectType]!,
      'ObjectId': instance.objectId,
      'HtmlContent': instance.htmlContent,
      'DataOwnerID': instance.dataOwnerID,
      'CreateDate': instance.createDate?.toIso8601String(),
      'MobileNumber': instance.mobileNumber,
      'JsonContent': const ReviewDataResponseConverter().toJson(instance.data),
      'ImageLinks': instance.imageLinks,
    };

const _$ObjectTypeEnumMap = {
  ObjectType.storeID: 'StoreID',
  ObjectType.productID: 'ProductID',
  ObjectType.purchaseID: 'PurchaseID',
  ObjectType.unknown: 'unknown',
};

_ReviewDataResponse _$ReviewDataResponseFromJson(Map<String, dynamic> json) =>
    _ReviewDataResponse(
      store: json['store'] == null
          ? null
          : ReviewStoreDataResponse.fromJson(
              json['store'] as Map<String, dynamic>,
            ),
      product: json['product'] == null
          ? null
          : ReviewProductDataResponse.fromJson(
              json['product'] as Map<String, dynamic>,
            ),
      purchase: json['purchase'] == null
          ? null
          : ReviewPurchaseDataResponse.fromJson(
              json['purchase'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ReviewDataResponseToJson(_ReviewDataResponse instance) =>
    <String, dynamic>{
      'store': instance.store?.toJson(),
      'product': instance.product?.toJson(),
      'purchase': instance.purchase?.toJson(),
    };

_ReviewStoreDataResponse _$ReviewStoreDataResponseFromJson(
  Map<String, dynamic> json,
) => _ReviewStoreDataResponse(
  id: json['id'] as String,
  name: json['name'] as String?,
  address: json['address'] as String?,
);

Map<String, dynamic> _$ReviewStoreDataResponseToJson(
  _ReviewStoreDataResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'address': instance.address,
};

_ReviewProductDataResponse _$ReviewProductDataResponseFromJson(
  Map<String, dynamic> json,
) => _ReviewProductDataResponse(
  id: json['id'] as String,
  name: json['name'] as String?,
);

Map<String, dynamic> _$ReviewProductDataResponseToJson(
  _ReviewProductDataResponse instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

_ReviewPurchaseDataResponse _$ReviewPurchaseDataResponseFromJson(
  Map<String, dynamic> json,
) => _ReviewPurchaseDataResponse(
  id: json['id'] as String,
  createdDatetime: json['created_datetime'] == null
      ? null
      : DateTime.parse(json['created_datetime'] as String),
  products:
      (json['products'] as List<dynamic>?)
          ?.map(
            (e) => ReviewOrderedProductResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [],
  total: (json['total'] as num?)?.toDouble(),
  store: json['store'] == null
      ? null
      : ReviewStoreDataResponse.fromJson(json['store'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReviewPurchaseDataResponseToJson(
  _ReviewPurchaseDataResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'created_datetime': instance.createdDatetime?.toIso8601String(),
  'products': instance.products.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'store': instance.store?.toJson(),
};

_ReviewOrderedProductResponse _$ReviewOrderedProductResponseFromJson(
  Map<String, dynamic> json,
) => _ReviewOrderedProductResponse(
  id: json['id'] as String,
  price: (json['price'] as num).toDouble(),
  name: json['name'] as String?,
  image: json['image'] as String?,
  modifiers:
      (json['modifiers'] as List<dynamic>?)
          ?.map(
            (e) => ReviewOrderedModifierGroupResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [],
  quantity: (json['quantity'] as num?)?.toDouble(),
  currencySymbol: json['currencySymbol'] as String? ?? '',
);

Map<String, dynamic> _$ReviewOrderedProductResponseToJson(
  _ReviewOrderedProductResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'price': instance.price,
  'name': instance.name,
  'image': instance.image,
  'modifiers': instance.modifiers.map((e) => e.toJson()).toList(),
  'quantity': instance.quantity,
  'currencySymbol': instance.currencySymbol,
};

_ReviewOrderedModifierGroupResponse
_$ReviewOrderedModifierGroupResponseFromJson(Map<String, dynamic> json) =>
    _ReviewOrderedModifierGroupResponse(
      name: json['name'] as String?,
      options: (json['options'] as List<dynamic>)
          .map(
            (e) => ReviewOrderedModifierResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$ReviewOrderedModifierGroupResponseToJson(
  _ReviewOrderedModifierGroupResponse instance,
) => <String, dynamic>{
  'name': instance.name,
  'options': instance.options.map((e) => e.toJson()).toList(),
};

_ReviewOrderedModifierResponse _$ReviewOrderedModifierResponseFromJson(
  Map<String, dynamic> json,
) => _ReviewOrderedModifierResponse(
  id: json['id'] as String,
  name: json['name'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  price: (json['price'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ReviewOrderedModifierResponseToJson(
  _ReviewOrderedModifierResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'quantity': instance.quantity,
  'price': instance.price,
};
