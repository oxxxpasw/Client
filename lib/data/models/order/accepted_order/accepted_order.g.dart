// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accepted_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AcceptedOrderResponse _$AcceptedOrderResponseFromJson(
  Map<String, dynamic> json,
) => _AcceptedOrderResponse(
  data: AcceptedOrderResponseData.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  createdDatetime: DateTime.parse(json['created_datetime'] as String),
  id: json['id'] as String,
  externalId: json['external_id'] as String?,
  publicId: json['public_id'] as String?,
  status:
      $enumDecodeNullable(
        _$OrderStatusEnumMap,
        json['status'],
        unknownValue: OrderStatus.unknown,
      ) ??
      OrderStatus.unknown,
  statusH: _readStatusH(json, 'status_h') as String?,
);

Map<String, dynamic> _$AcceptedOrderResponseToJson(
  _AcceptedOrderResponse instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'created_datetime': instance.createdDatetime.toIso8601String(),
  'id': instance.id,
  'external_id': instance.externalId,
  'public_id': instance.publicId,
  'status': _$OrderStatusEnumMap[instance.status]!,
  'status_h': instance.statusH,
};

const _$OrderStatusEnumMap = {
  OrderStatus.readyToStart: 'readyToStart',
  OrderStatus.paid: 'paid',
  OrderStatus.inProgress: 'inProgress',
  OrderStatus.complete: 'printedCheck',
  OrderStatus.cancel: 'cancel',
  OrderStatus.newOrder: 'newOrder',
  OrderStatus.issued: 'issued',
  OrderStatus.overdue: 'overdue',
  OrderStatus.refund: 'refund',
  OrderStatus.unknown: 'unknown',
};

_AcceptedOrderResponseData _$AcceptedOrderResponseDataFromJson(
  Map<String, dynamic> json,
) => _AcceptedOrderResponseData(
  payment:
      (json['payment'] as List<dynamic>?)
          ?.map(
            (e) => AcceptedOrderPaymentResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [],
  products:
      (json['products'] as List<dynamic>?)
          ?.map(
            (e) => AcceptedOrderProductResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [],
  deliveryName: json['delivery_name'] as String?,
  phone: json['phone'] as String?,
  datetime: json['datetime'] == null
      ? null
      : DateTime.parse(json['datetime'] as String),
  deliveryAddress: json['delivery_address'] == null
      ? null
      : DeliveryAddress.fromJson(
          json['delivery_address'] as Map<String, dynamic>,
        ),
  comment: json['comment'] as String?,
  name: json['name'] as String?,
  persons: (json['persons'] as num?)?.toInt(),
  status:
      $enumDecodeNullable(
        _$OrderStatusEnumMap,
        json['status'],
        unknownValue: OrderStatus.unknown,
      ) ??
      OrderStatus.unknown,
  statusH: _readStatusH(json, 'status_h') as String?,
  originalSumm: (json['originalSumm'] as num?)?.toDouble() ?? 0.0,
  point: json['point'] as String?,
  pointName: json['pointName'] as String?,
  ofdReceiptUrl: json['ofd_receipt_url'] as String?,
  purchaseId: json['purchase_id'] as String?,
  cardNumber: json['card_number'] as String?,
  pointData: json['point_data'] == null
      ? null
      : Store.fromJson(json['point_data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AcceptedOrderResponseDataToJson(
  _AcceptedOrderResponseData instance,
) => <String, dynamic>{
  'payment': instance.payment.map((e) => e.toJson()).toList(),
  'products': instance.products.map((e) => e.toJson()).toList(),
  'delivery_name': instance.deliveryName,
  'phone': instance.phone,
  'datetime': instance.datetime?.toIso8601String(),
  'delivery_address': instance.deliveryAddress?.toJson(),
  'comment': instance.comment,
  'name': instance.name,
  'persons': instance.persons,
  'status': _$OrderStatusEnumMap[instance.status]!,
  'status_h': instance.statusH,
  'originalSumm': instance.originalSumm,
  'point': instance.point,
  'pointName': instance.pointName,
  'ofd_receipt_url': instance.ofdReceiptUrl,
  'purchase_id': instance.purchaseId,
  'card_number': instance.cardNumber,
  'point_data': instance.pointData?.toJson(),
};

_AcceptedOrderPaymentResponse _$AcceptedOrderPaymentResponseFromJson(
  Map<String, dynamic> json,
) => _AcceptedOrderPaymentResponse(
  sum: (json['sum'] as num?)?.toDouble(),
  type: json['type'] as String?,
  name: json['name'] as String?,
);

Map<String, dynamic> _$AcceptedOrderPaymentResponseToJson(
  _AcceptedOrderPaymentResponse instance,
) => <String, dynamic>{
  'sum': instance.sum,
  'type': instance.type,
  'name': instance.name,
};

_AcceptedOrderProductResponse _$AcceptedOrderProductResponseFromJson(
  Map<String, dynamic> json,
) => _AcceptedOrderProductResponse(
  id: json['id'] as String,
  price: (json['price'] as num).toDouble(),
  name: json['name'] as String?,
  image: json['image'] as String?,
  modifiers:
      (json['modifiers'] as List<dynamic>?)
          ?.map(
            (e) =>
                AcceptedOrderModifierGroup.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  quantity: (json['quantity'] as num?)?.toDouble(),
  amount: (json['amount'] as num?)?.toDouble(),
  currencySymbol: json['currencySymbol'] as String? ?? 'BYN',
);

Map<String, dynamic> _$AcceptedOrderProductResponseToJson(
  _AcceptedOrderProductResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'price': instance.price,
  'name': instance.name,
  'image': instance.image,
  'modifiers': instance.modifiers.map((e) => e.toJson()).toList(),
  'quantity': instance.quantity,
  'amount': instance.amount,
  'currencySymbol': instance.currencySymbol,
};

_AcceptedOrderModifierGroup _$AcceptedOrderModifierGroupFromJson(
  Map<String, dynamic> json,
) => _AcceptedOrderModifierGroup(
  id: json['id'] as String,
  name: json['name'] as String?,
  options: (json['options'] as List<dynamic>)
      .map((e) => AcceptedOrderModifier.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AcceptedOrderModifierGroupToJson(
  _AcceptedOrderModifierGroup instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'options': instance.options.map((e) => e.toJson()).toList(),
};

_AcceptedOrderModifier _$AcceptedOrderModifierFromJson(
  Map<String, dynamic> json,
) => _AcceptedOrderModifier(
  id: json['id'] as String,
  name: json['name'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble(),
  price: (json['price'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AcceptedOrderModifierToJson(
  _AcceptedOrderModifier instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'quantity': instance.quantity,
  'price': instance.price,
};

_DeliveryAddress _$DeliveryAddressFromJson(Map<String, dynamic> json) =>
    _DeliveryAddress(
      street: json['street'] as String?,
      building: json['building'] as String?,
      city: json['city'] as String?,
      house: json['house'] as String?,
      entrance: json['entrance'] as String?,
      doorphone: json['doorphone'] as String?,
      floor: json['floor'] as String?,
      flat: json['flat'] as String?,
    );

Map<String, dynamic> _$DeliveryAddressToJson(_DeliveryAddress instance) =>
    <String, dynamic>{
      'street': instance.street,
      'building': instance.building,
      'city': instance.city,
      'house': instance.house,
      'entrance': instance.entrance,
      'doorphone': instance.doorphone,
      'floor': instance.floor,
      'flat': instance.flat,
    };
