// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accepted_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AcceptedOrderResponse implements DiagnosticableTreeMixin {

@JsonKey(name: 'data') AcceptedOrderResponseData get data; DateTime get createdDatetime; String get id; String? get externalId; String? get publicId;@JsonKey(unknownEnumValue: OrderStatus.unknown) OrderStatus get status;@JsonKey(readValue: _readStatusH) String? get statusH;
/// Create a copy of AcceptedOrderResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptedOrderResponseCopyWith<AcceptedOrderResponse> get copyWith => _$AcceptedOrderResponseCopyWithImpl<AcceptedOrderResponse>(this as AcceptedOrderResponse, _$identity);

  /// Serializes this AcceptedOrderResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AcceptedOrderResponse'))
    ..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('createdDatetime', createdDatetime))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('externalId', externalId))..add(DiagnosticsProperty('publicId', publicId))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('statusH', statusH));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptedOrderResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.createdDatetime, createdDatetime) || other.createdDatetime == createdDatetime)&&(identical(other.id, id) || other.id == id)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.publicId, publicId) || other.publicId == publicId)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusH, statusH) || other.statusH == statusH));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,createdDatetime,id,externalId,publicId,status,statusH);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AcceptedOrderResponse(data: $data, createdDatetime: $createdDatetime, id: $id, externalId: $externalId, publicId: $publicId, status: $status, statusH: $statusH)';
}


}

/// @nodoc
abstract mixin class $AcceptedOrderResponseCopyWith<$Res>  {
  factory $AcceptedOrderResponseCopyWith(AcceptedOrderResponse value, $Res Function(AcceptedOrderResponse) _then) = _$AcceptedOrderResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') AcceptedOrderResponseData data, DateTime createdDatetime, String id, String? externalId, String? publicId,@JsonKey(unknownEnumValue: OrderStatus.unknown) OrderStatus status,@JsonKey(readValue: _readStatusH) String? statusH
});


$AcceptedOrderResponseDataCopyWith<$Res> get data;

}
/// @nodoc
class _$AcceptedOrderResponseCopyWithImpl<$Res>
    implements $AcceptedOrderResponseCopyWith<$Res> {
  _$AcceptedOrderResponseCopyWithImpl(this._self, this._then);

  final AcceptedOrderResponse _self;
  final $Res Function(AcceptedOrderResponse) _then;

/// Create a copy of AcceptedOrderResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? createdDatetime = null,Object? id = null,Object? externalId = freezed,Object? publicId = freezed,Object? status = null,Object? statusH = freezed,}) {
  return _then(AcceptedOrderResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AcceptedOrderResponseData,createdDatetime: null == createdDatetime ? _self.createdDatetime : createdDatetime // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,publicId: freezed == publicId ? _self.publicId : publicId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,statusH: freezed == statusH ? _self.statusH : statusH // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AcceptedOrderResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcceptedOrderResponseDataCopyWith<$Res> get data {
  
  return $AcceptedOrderResponseDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AcceptedOrderResponse].
extension AcceptedOrderResponsePatterns on AcceptedOrderResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcceptedOrderResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcceptedOrderResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcceptedOrderResponse value)  $default,){
final _that = this;
switch (_that) {
case _AcceptedOrderResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcceptedOrderResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AcceptedOrderResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  AcceptedOrderResponseData data,  DateTime createdDatetime,  String id,  String? externalId,  String? publicId, @JsonKey(unknownEnumValue: OrderStatus.unknown)  OrderStatus status, @JsonKey(readValue: _readStatusH)  String? statusH)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcceptedOrderResponse() when $default != null:
return $default(_that.data,_that.createdDatetime,_that.id,_that.externalId,_that.publicId,_that.status,_that.statusH);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  AcceptedOrderResponseData data,  DateTime createdDatetime,  String id,  String? externalId,  String? publicId, @JsonKey(unknownEnumValue: OrderStatus.unknown)  OrderStatus status, @JsonKey(readValue: _readStatusH)  String? statusH)  $default,) {final _that = this;
switch (_that) {
case _AcceptedOrderResponse():
return $default(_that.data,_that.createdDatetime,_that.id,_that.externalId,_that.publicId,_that.status,_that.statusH);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  AcceptedOrderResponseData data,  DateTime createdDatetime,  String id,  String? externalId,  String? publicId, @JsonKey(unknownEnumValue: OrderStatus.unknown)  OrderStatus status, @JsonKey(readValue: _readStatusH)  String? statusH)?  $default,) {final _that = this;
switch (_that) {
case _AcceptedOrderResponse() when $default != null:
return $default(_that.data,_that.createdDatetime,_that.id,_that.externalId,_that.publicId,_that.status,_that.statusH);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcceptedOrderResponse extends AcceptedOrderResponse with DiagnosticableTreeMixin {
  const _AcceptedOrderResponse({@JsonKey(name: 'data') required this.data, required this.createdDatetime, required this.id, this.externalId, this.publicId, @JsonKey(unknownEnumValue: OrderStatus.unknown) this.status = OrderStatus.unknown, @JsonKey(readValue: _readStatusH) this.statusH}): super._();
  factory _AcceptedOrderResponse.fromJson(Map<String, dynamic> json) => _$AcceptedOrderResponseFromJson(json);

@override@JsonKey(name: 'data') final  AcceptedOrderResponseData data;
@override final  DateTime createdDatetime;
@override final  String id;
@override final  String? externalId;
@override final  String? publicId;
@override@JsonKey(unknownEnumValue: OrderStatus.unknown) final  OrderStatus status;
@override@JsonKey(readValue: _readStatusH) final  String? statusH;

/// Create a copy of AcceptedOrderResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptedOrderResponseCopyWith<_AcceptedOrderResponse> get copyWith => __$AcceptedOrderResponseCopyWithImpl<_AcceptedOrderResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcceptedOrderResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AcceptedOrderResponse'))
    ..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('createdDatetime', createdDatetime))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('externalId', externalId))..add(DiagnosticsProperty('publicId', publicId))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('statusH', statusH));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptedOrderResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.createdDatetime, createdDatetime) || other.createdDatetime == createdDatetime)&&(identical(other.id, id) || other.id == id)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.publicId, publicId) || other.publicId == publicId)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusH, statusH) || other.statusH == statusH));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,createdDatetime,id,externalId,publicId,status,statusH);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AcceptedOrderResponse(data: $data, createdDatetime: $createdDatetime, id: $id, externalId: $externalId, publicId: $publicId, status: $status, statusH: $statusH)';
}


}

/// @nodoc
abstract mixin class _$AcceptedOrderResponseCopyWith<$Res> implements $AcceptedOrderResponseCopyWith<$Res> {
  factory _$AcceptedOrderResponseCopyWith(_AcceptedOrderResponse value, $Res Function(_AcceptedOrderResponse) _then) = __$AcceptedOrderResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') AcceptedOrderResponseData data, DateTime createdDatetime, String id, String? externalId, String? publicId,@JsonKey(unknownEnumValue: OrderStatus.unknown) OrderStatus status,@JsonKey(readValue: _readStatusH) String? statusH
});


@override $AcceptedOrderResponseDataCopyWith<$Res> get data;

}
/// @nodoc
class __$AcceptedOrderResponseCopyWithImpl<$Res>
    implements _$AcceptedOrderResponseCopyWith<$Res> {
  __$AcceptedOrderResponseCopyWithImpl(this._self, this._then);

  final _AcceptedOrderResponse _self;
  final $Res Function(_AcceptedOrderResponse) _then;

/// Create a copy of AcceptedOrderResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? createdDatetime = null,Object? id = null,Object? externalId = freezed,Object? publicId = freezed,Object? status = null,Object? statusH = freezed,}) {
  return _then(_AcceptedOrderResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AcceptedOrderResponseData,createdDatetime: null == createdDatetime ? _self.createdDatetime : createdDatetime // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,publicId: freezed == publicId ? _self.publicId : publicId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,statusH: freezed == statusH ? _self.statusH : statusH // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AcceptedOrderResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcceptedOrderResponseDataCopyWith<$Res> get data {
  
  return $AcceptedOrderResponseDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AcceptedOrderResponseData implements DiagnosticableTreeMixin {

 List<AcceptedOrderPaymentResponse> get payment; List<AcceptedOrderProductResponse> get products; String? get deliveryName; String? get phone; DateTime? get datetime; DeliveryAddress? get deliveryAddress; String? get comment; String? get name; int? get persons;@JsonKey(unknownEnumValue: OrderStatus.unknown) OrderStatus get status;@JsonKey(readValue: _readStatusH) String? get statusH;@JsonKey(name: 'originalSumm') double get originalSumm; String? get point;@JsonKey(name: 'pointName') String? get pointName; String? get ofdReceiptUrl; String? get purchaseId; String? get cardNumber; Store? get pointData;
/// Create a copy of AcceptedOrderResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptedOrderResponseDataCopyWith<AcceptedOrderResponseData> get copyWith => _$AcceptedOrderResponseDataCopyWithImpl<AcceptedOrderResponseData>(this as AcceptedOrderResponseData, _$identity);

  /// Serializes this AcceptedOrderResponseData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AcceptedOrderResponseData'))
    ..add(DiagnosticsProperty('payment', payment))..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('deliveryName', deliveryName))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('datetime', datetime))..add(DiagnosticsProperty('deliveryAddress', deliveryAddress))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('persons', persons))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('statusH', statusH))..add(DiagnosticsProperty('originalSumm', originalSumm))..add(DiagnosticsProperty('point', point))..add(DiagnosticsProperty('pointName', pointName))..add(DiagnosticsProperty('ofdReceiptUrl', ofdReceiptUrl))..add(DiagnosticsProperty('purchaseId', purchaseId))..add(DiagnosticsProperty('cardNumber', cardNumber))..add(DiagnosticsProperty('pointData', pointData));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptedOrderResponseData&&const DeepCollectionEquality().equals(other.payment, payment)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.deliveryName, deliveryName) || other.deliveryName == deliveryName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.name, name) || other.name == name)&&(identical(other.persons, persons) || other.persons == persons)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusH, statusH) || other.statusH == statusH)&&(identical(other.originalSumm, originalSumm) || other.originalSumm == originalSumm)&&(identical(other.point, point) || other.point == point)&&(identical(other.pointName, pointName) || other.pointName == pointName)&&(identical(other.ofdReceiptUrl, ofdReceiptUrl) || other.ofdReceiptUrl == ofdReceiptUrl)&&(identical(other.purchaseId, purchaseId) || other.purchaseId == purchaseId)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.pointData, pointData) || other.pointData == pointData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(payment),const DeepCollectionEquality().hash(products),deliveryName,phone,datetime,deliveryAddress,comment,name,persons,status,statusH,originalSumm,point,pointName,ofdReceiptUrl,purchaseId,cardNumber,pointData);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AcceptedOrderResponseData(payment: $payment, products: $products, deliveryName: $deliveryName, phone: $phone, datetime: $datetime, deliveryAddress: $deliveryAddress, comment: $comment, name: $name, persons: $persons, status: $status, statusH: $statusH, originalSumm: $originalSumm, point: $point, pointName: $pointName, ofdReceiptUrl: $ofdReceiptUrl, purchaseId: $purchaseId, cardNumber: $cardNumber, pointData: $pointData)';
}


}

/// @nodoc
abstract mixin class $AcceptedOrderResponseDataCopyWith<$Res>  {
  factory $AcceptedOrderResponseDataCopyWith(AcceptedOrderResponseData value, $Res Function(AcceptedOrderResponseData) _then) = _$AcceptedOrderResponseDataCopyWithImpl;
@useResult
$Res call({
 List<AcceptedOrderPaymentResponse> payment, List<AcceptedOrderProductResponse> products, String? deliveryName, String? phone, DateTime? datetime, DeliveryAddress? deliveryAddress, String? comment, String? name, int? persons,@JsonKey(unknownEnumValue: OrderStatus.unknown) OrderStatus status,@JsonKey(readValue: _readStatusH) String? statusH,@JsonKey(name: 'originalSumm') double originalSumm, String? point,@JsonKey(name: 'pointName') String? pointName, String? ofdReceiptUrl, String? purchaseId, String? cardNumber, Store? pointData
});


$DeliveryAddressCopyWith<$Res>? get deliveryAddress;$StoreCopyWith<$Res>? get pointData;

}
/// @nodoc
class _$AcceptedOrderResponseDataCopyWithImpl<$Res>
    implements $AcceptedOrderResponseDataCopyWith<$Res> {
  _$AcceptedOrderResponseDataCopyWithImpl(this._self, this._then);

  final AcceptedOrderResponseData _self;
  final $Res Function(AcceptedOrderResponseData) _then;

/// Create a copy of AcceptedOrderResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? payment = null,Object? products = null,Object? deliveryName = freezed,Object? phone = freezed,Object? datetime = freezed,Object? deliveryAddress = freezed,Object? comment = freezed,Object? name = freezed,Object? persons = freezed,Object? status = null,Object? statusH = freezed,Object? originalSumm = null,Object? point = freezed,Object? pointName = freezed,Object? ofdReceiptUrl = freezed,Object? purchaseId = freezed,Object? cardNumber = freezed,Object? pointData = freezed,}) {
  return _then(AcceptedOrderResponseData(
payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as List<AcceptedOrderPaymentResponse>,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<AcceptedOrderProductResponse>,deliveryName: freezed == deliveryName ? _self.deliveryName : deliveryName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as DateTime?,deliveryAddress: freezed == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as DeliveryAddress?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,persons: freezed == persons ? _self.persons : persons // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,statusH: freezed == statusH ? _self.statusH : statusH // ignore: cast_nullable_to_non_nullable
as String?,originalSumm: null == originalSumm ? _self.originalSumm : originalSumm // ignore: cast_nullable_to_non_nullable
as double,point: freezed == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as String?,pointName: freezed == pointName ? _self.pointName : pointName // ignore: cast_nullable_to_non_nullable
as String?,ofdReceiptUrl: freezed == ofdReceiptUrl ? _self.ofdReceiptUrl : ofdReceiptUrl // ignore: cast_nullable_to_non_nullable
as String?,purchaseId: freezed == purchaseId ? _self.purchaseId : purchaseId // ignore: cast_nullable_to_non_nullable
as String?,cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String?,pointData: freezed == pointData ? _self.pointData : pointData // ignore: cast_nullable_to_non_nullable
as Store?,
  ));
}
/// Create a copy of AcceptedOrderResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryAddressCopyWith<$Res>? get deliveryAddress {
    if (_self.deliveryAddress == null) {
    return null;
  }

  return $DeliveryAddressCopyWith<$Res>(_self.deliveryAddress!, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}/// Create a copy of AcceptedOrderResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get pointData {
    if (_self.pointData == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.pointData!, (value) {
    return _then(_self.copyWith(pointData: value));
  });
}
}


/// Adds pattern-matching-related methods to [AcceptedOrderResponseData].
extension AcceptedOrderResponseDataPatterns on AcceptedOrderResponseData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcceptedOrderResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcceptedOrderResponseData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcceptedOrderResponseData value)  $default,){
final _that = this;
switch (_that) {
case _AcceptedOrderResponseData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcceptedOrderResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _AcceptedOrderResponseData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AcceptedOrderPaymentResponse> payment,  List<AcceptedOrderProductResponse> products,  String? deliveryName,  String? phone,  DateTime? datetime,  DeliveryAddress? deliveryAddress,  String? comment,  String? name,  int? persons, @JsonKey(unknownEnumValue: OrderStatus.unknown)  OrderStatus status, @JsonKey(readValue: _readStatusH)  String? statusH, @JsonKey(name: 'originalSumm')  double originalSumm,  String? point, @JsonKey(name: 'pointName')  String? pointName,  String? ofdReceiptUrl,  String? purchaseId,  String? cardNumber,  Store? pointData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcceptedOrderResponseData() when $default != null:
return $default(_that.payment,_that.products,_that.deliveryName,_that.phone,_that.datetime,_that.deliveryAddress,_that.comment,_that.name,_that.persons,_that.status,_that.statusH,_that.originalSumm,_that.point,_that.pointName,_that.ofdReceiptUrl,_that.purchaseId,_that.cardNumber,_that.pointData);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AcceptedOrderPaymentResponse> payment,  List<AcceptedOrderProductResponse> products,  String? deliveryName,  String? phone,  DateTime? datetime,  DeliveryAddress? deliveryAddress,  String? comment,  String? name,  int? persons, @JsonKey(unknownEnumValue: OrderStatus.unknown)  OrderStatus status, @JsonKey(readValue: _readStatusH)  String? statusH, @JsonKey(name: 'originalSumm')  double originalSumm,  String? point, @JsonKey(name: 'pointName')  String? pointName,  String? ofdReceiptUrl,  String? purchaseId,  String? cardNumber,  Store? pointData)  $default,) {final _that = this;
switch (_that) {
case _AcceptedOrderResponseData():
return $default(_that.payment,_that.products,_that.deliveryName,_that.phone,_that.datetime,_that.deliveryAddress,_that.comment,_that.name,_that.persons,_that.status,_that.statusH,_that.originalSumm,_that.point,_that.pointName,_that.ofdReceiptUrl,_that.purchaseId,_that.cardNumber,_that.pointData);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AcceptedOrderPaymentResponse> payment,  List<AcceptedOrderProductResponse> products,  String? deliveryName,  String? phone,  DateTime? datetime,  DeliveryAddress? deliveryAddress,  String? comment,  String? name,  int? persons, @JsonKey(unknownEnumValue: OrderStatus.unknown)  OrderStatus status, @JsonKey(readValue: _readStatusH)  String? statusH, @JsonKey(name: 'originalSumm')  double originalSumm,  String? point, @JsonKey(name: 'pointName')  String? pointName,  String? ofdReceiptUrl,  String? purchaseId,  String? cardNumber,  Store? pointData)?  $default,) {final _that = this;
switch (_that) {
case _AcceptedOrderResponseData() when $default != null:
return $default(_that.payment,_that.products,_that.deliveryName,_that.phone,_that.datetime,_that.deliveryAddress,_that.comment,_that.name,_that.persons,_that.status,_that.statusH,_that.originalSumm,_that.point,_that.pointName,_that.ofdReceiptUrl,_that.purchaseId,_that.cardNumber,_that.pointData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcceptedOrderResponseData with DiagnosticableTreeMixin implements AcceptedOrderResponseData {
  const _AcceptedOrderResponseData({ List<AcceptedOrderPaymentResponse> payment = const [],  List<AcceptedOrderProductResponse> products = const [], this.deliveryName, this.phone, this.datetime, this.deliveryAddress, this.comment, this.name, this.persons, @JsonKey(unknownEnumValue: OrderStatus.unknown) this.status = OrderStatus.unknown, @JsonKey(readValue: _readStatusH) this.statusH, @JsonKey(name: 'originalSumm') this.originalSumm = 0.0, this.point, @JsonKey(name: 'pointName') this.pointName, this.ofdReceiptUrl, this.purchaseId, this.cardNumber, this.pointData}): _payment = payment,_products = products;
  factory _AcceptedOrderResponseData.fromJson(Map<String, dynamic> json) => _$AcceptedOrderResponseDataFromJson(json);

 final  List<AcceptedOrderPaymentResponse> _payment;
@override@JsonKey() List<AcceptedOrderPaymentResponse> get payment {
  if (_payment is EqualUnmodifiableListView) return _payment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payment);
}

 final  List<AcceptedOrderProductResponse> _products;
@override@JsonKey() List<AcceptedOrderProductResponse> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  String? deliveryName;
@override final  String? phone;
@override final  DateTime? datetime;
@override final  DeliveryAddress? deliveryAddress;
@override final  String? comment;
@override final  String? name;
@override final  int? persons;
@override@JsonKey(unknownEnumValue: OrderStatus.unknown) final  OrderStatus status;
@override@JsonKey(readValue: _readStatusH) final  String? statusH;
@override@JsonKey(name: 'originalSumm') final  double originalSumm;
@override final  String? point;
@override@JsonKey(name: 'pointName') final  String? pointName;
@override final  String? ofdReceiptUrl;
@override final  String? purchaseId;
@override final  String? cardNumber;
@override final  Store? pointData;

/// Create a copy of AcceptedOrderResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptedOrderResponseDataCopyWith<_AcceptedOrderResponseData> get copyWith => __$AcceptedOrderResponseDataCopyWithImpl<_AcceptedOrderResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcceptedOrderResponseDataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AcceptedOrderResponseData'))
    ..add(DiagnosticsProperty('payment', payment))..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('deliveryName', deliveryName))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('datetime', datetime))..add(DiagnosticsProperty('deliveryAddress', deliveryAddress))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('persons', persons))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('statusH', statusH))..add(DiagnosticsProperty('originalSumm', originalSumm))..add(DiagnosticsProperty('point', point))..add(DiagnosticsProperty('pointName', pointName))..add(DiagnosticsProperty('ofdReceiptUrl', ofdReceiptUrl))..add(DiagnosticsProperty('purchaseId', purchaseId))..add(DiagnosticsProperty('cardNumber', cardNumber))..add(DiagnosticsProperty('pointData', pointData));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptedOrderResponseData&&const DeepCollectionEquality().equals(other._payment, _payment)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.deliveryName, deliveryName) || other.deliveryName == deliveryName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.name, name) || other.name == name)&&(identical(other.persons, persons) || other.persons == persons)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusH, statusH) || other.statusH == statusH)&&(identical(other.originalSumm, originalSumm) || other.originalSumm == originalSumm)&&(identical(other.point, point) || other.point == point)&&(identical(other.pointName, pointName) || other.pointName == pointName)&&(identical(other.ofdReceiptUrl, ofdReceiptUrl) || other.ofdReceiptUrl == ofdReceiptUrl)&&(identical(other.purchaseId, purchaseId) || other.purchaseId == purchaseId)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.pointData, pointData) || other.pointData == pointData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_payment),const DeepCollectionEquality().hash(_products),deliveryName,phone,datetime,deliveryAddress,comment,name,persons,status,statusH,originalSumm,point,pointName,ofdReceiptUrl,purchaseId,cardNumber,pointData);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AcceptedOrderResponseData(payment: $payment, products: $products, deliveryName: $deliveryName, phone: $phone, datetime: $datetime, deliveryAddress: $deliveryAddress, comment: $comment, name: $name, persons: $persons, status: $status, statusH: $statusH, originalSumm: $originalSumm, point: $point, pointName: $pointName, ofdReceiptUrl: $ofdReceiptUrl, purchaseId: $purchaseId, cardNumber: $cardNumber, pointData: $pointData)';
}


}

/// @nodoc
abstract mixin class _$AcceptedOrderResponseDataCopyWith<$Res> implements $AcceptedOrderResponseDataCopyWith<$Res> {
  factory _$AcceptedOrderResponseDataCopyWith(_AcceptedOrderResponseData value, $Res Function(_AcceptedOrderResponseData) _then) = __$AcceptedOrderResponseDataCopyWithImpl;
@override @useResult
$Res call({
 List<AcceptedOrderPaymentResponse> payment, List<AcceptedOrderProductResponse> products, String? deliveryName, String? phone, DateTime? datetime, DeliveryAddress? deliveryAddress, String? comment, String? name, int? persons,@JsonKey(unknownEnumValue: OrderStatus.unknown) OrderStatus status,@JsonKey(readValue: _readStatusH) String? statusH,@JsonKey(name: 'originalSumm') double originalSumm, String? point,@JsonKey(name: 'pointName') String? pointName, String? ofdReceiptUrl, String? purchaseId, String? cardNumber, Store? pointData
});


@override $DeliveryAddressCopyWith<$Res>? get deliveryAddress;@override $StoreCopyWith<$Res>? get pointData;

}
/// @nodoc
class __$AcceptedOrderResponseDataCopyWithImpl<$Res>
    implements _$AcceptedOrderResponseDataCopyWith<$Res> {
  __$AcceptedOrderResponseDataCopyWithImpl(this._self, this._then);

  final _AcceptedOrderResponseData _self;
  final $Res Function(_AcceptedOrderResponseData) _then;

/// Create a copy of AcceptedOrderResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? payment = null,Object? products = null,Object? deliveryName = freezed,Object? phone = freezed,Object? datetime = freezed,Object? deliveryAddress = freezed,Object? comment = freezed,Object? name = freezed,Object? persons = freezed,Object? status = null,Object? statusH = freezed,Object? originalSumm = null,Object? point = freezed,Object? pointName = freezed,Object? ofdReceiptUrl = freezed,Object? purchaseId = freezed,Object? cardNumber = freezed,Object? pointData = freezed,}) {
  return _then(_AcceptedOrderResponseData(
payment: null == payment ? _self._payment : payment // ignore: cast_nullable_to_non_nullable
as List<AcceptedOrderPaymentResponse>,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<AcceptedOrderProductResponse>,deliveryName: freezed == deliveryName ? _self.deliveryName : deliveryName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as DateTime?,deliveryAddress: freezed == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as DeliveryAddress?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,persons: freezed == persons ? _self.persons : persons // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,statusH: freezed == statusH ? _self.statusH : statusH // ignore: cast_nullable_to_non_nullable
as String?,originalSumm: null == originalSumm ? _self.originalSumm : originalSumm // ignore: cast_nullable_to_non_nullable
as double,point: freezed == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as String?,pointName: freezed == pointName ? _self.pointName : pointName // ignore: cast_nullable_to_non_nullable
as String?,ofdReceiptUrl: freezed == ofdReceiptUrl ? _self.ofdReceiptUrl : ofdReceiptUrl // ignore: cast_nullable_to_non_nullable
as String?,purchaseId: freezed == purchaseId ? _self.purchaseId : purchaseId // ignore: cast_nullable_to_non_nullable
as String?,cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String?,pointData: freezed == pointData ? _self.pointData : pointData // ignore: cast_nullable_to_non_nullable
as Store?,
  ));
}

/// Create a copy of AcceptedOrderResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryAddressCopyWith<$Res>? get deliveryAddress {
    if (_self.deliveryAddress == null) {
    return null;
  }

  return $DeliveryAddressCopyWith<$Res>(_self.deliveryAddress!, (value) {
    return _then(_self.copyWith(deliveryAddress: value));
  });
}/// Create a copy of AcceptedOrderResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get pointData {
    if (_self.pointData == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.pointData!, (value) {
    return _then(_self.copyWith(pointData: value));
  });
}
}


/// @nodoc
mixin _$AcceptedOrderPaymentResponse implements DiagnosticableTreeMixin {

 double? get sum; String? get type; String? get name;
/// Create a copy of AcceptedOrderPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptedOrderPaymentResponseCopyWith<AcceptedOrderPaymentResponse> get copyWith => _$AcceptedOrderPaymentResponseCopyWithImpl<AcceptedOrderPaymentResponse>(this as AcceptedOrderPaymentResponse, _$identity);

  /// Serializes this AcceptedOrderPaymentResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AcceptedOrderPaymentResponse'))
    ..add(DiagnosticsProperty('sum', sum))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptedOrderPaymentResponse&&(identical(other.sum, sum) || other.sum == sum)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sum,type,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AcceptedOrderPaymentResponse(sum: $sum, type: $type, name: $name)';
}


}

/// @nodoc
abstract mixin class $AcceptedOrderPaymentResponseCopyWith<$Res>  {
  factory $AcceptedOrderPaymentResponseCopyWith(AcceptedOrderPaymentResponse value, $Res Function(AcceptedOrderPaymentResponse) _then) = _$AcceptedOrderPaymentResponseCopyWithImpl;
@useResult
$Res call({
 double? sum, String? type, String? name
});




}
/// @nodoc
class _$AcceptedOrderPaymentResponseCopyWithImpl<$Res>
    implements $AcceptedOrderPaymentResponseCopyWith<$Res> {
  _$AcceptedOrderPaymentResponseCopyWithImpl(this._self, this._then);

  final AcceptedOrderPaymentResponse _self;
  final $Res Function(AcceptedOrderPaymentResponse) _then;

/// Create a copy of AcceptedOrderPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sum = freezed,Object? type = freezed,Object? name = freezed,}) {
  return _then(AcceptedOrderPaymentResponse(
sum: freezed == sum ? _self.sum : sum // ignore: cast_nullable_to_non_nullable
as double?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcceptedOrderPaymentResponse].
extension AcceptedOrderPaymentResponsePatterns on AcceptedOrderPaymentResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcceptedOrderPaymentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcceptedOrderPaymentResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcceptedOrderPaymentResponse value)  $default,){
final _that = this;
switch (_that) {
case _AcceptedOrderPaymentResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcceptedOrderPaymentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AcceptedOrderPaymentResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? sum,  String? type,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcceptedOrderPaymentResponse() when $default != null:
return $default(_that.sum,_that.type,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? sum,  String? type,  String? name)  $default,) {final _that = this;
switch (_that) {
case _AcceptedOrderPaymentResponse():
return $default(_that.sum,_that.type,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? sum,  String? type,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _AcceptedOrderPaymentResponse() when $default != null:
return $default(_that.sum,_that.type,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcceptedOrderPaymentResponse with DiagnosticableTreeMixin implements AcceptedOrderPaymentResponse {
  const _AcceptedOrderPaymentResponse({this.sum, this.type, this.name});
  factory _AcceptedOrderPaymentResponse.fromJson(Map<String, dynamic> json) => _$AcceptedOrderPaymentResponseFromJson(json);

@override final  double? sum;
@override final  String? type;
@override final  String? name;

/// Create a copy of AcceptedOrderPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptedOrderPaymentResponseCopyWith<_AcceptedOrderPaymentResponse> get copyWith => __$AcceptedOrderPaymentResponseCopyWithImpl<_AcceptedOrderPaymentResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcceptedOrderPaymentResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AcceptedOrderPaymentResponse'))
    ..add(DiagnosticsProperty('sum', sum))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptedOrderPaymentResponse&&(identical(other.sum, sum) || other.sum == sum)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sum,type,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AcceptedOrderPaymentResponse(sum: $sum, type: $type, name: $name)';
}


}

/// @nodoc
abstract mixin class _$AcceptedOrderPaymentResponseCopyWith<$Res> implements $AcceptedOrderPaymentResponseCopyWith<$Res> {
  factory _$AcceptedOrderPaymentResponseCopyWith(_AcceptedOrderPaymentResponse value, $Res Function(_AcceptedOrderPaymentResponse) _then) = __$AcceptedOrderPaymentResponseCopyWithImpl;
@override @useResult
$Res call({
 double? sum, String? type, String? name
});




}
/// @nodoc
class __$AcceptedOrderPaymentResponseCopyWithImpl<$Res>
    implements _$AcceptedOrderPaymentResponseCopyWith<$Res> {
  __$AcceptedOrderPaymentResponseCopyWithImpl(this._self, this._then);

  final _AcceptedOrderPaymentResponse _self;
  final $Res Function(_AcceptedOrderPaymentResponse) _then;

/// Create a copy of AcceptedOrderPaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sum = freezed,Object? type = freezed,Object? name = freezed,}) {
  return _then(_AcceptedOrderPaymentResponse(
sum: freezed == sum ? _self.sum : sum // ignore: cast_nullable_to_non_nullable
as double?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AcceptedOrderProductResponse implements DiagnosticableTreeMixin {

 String get id; double get price; String? get name; String? get image; List<AcceptedOrderModifierGroup> get modifiers; double? get quantity; double? get amount;@JsonKey(name: 'currencySymbol') String get currencySymbol;
/// Create a copy of AcceptedOrderProductResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptedOrderProductResponseCopyWith<AcceptedOrderProductResponse> get copyWith => _$AcceptedOrderProductResponseCopyWithImpl<AcceptedOrderProductResponse>(this as AcceptedOrderProductResponse, _$identity);

  /// Serializes this AcceptedOrderProductResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AcceptedOrderProductResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('modifiers', modifiers))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('currencySymbol', currencySymbol));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptedOrderProductResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.modifiers, modifiers)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,price,name,image,const DeepCollectionEquality().hash(modifiers),quantity,amount,currencySymbol);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AcceptedOrderProductResponse(id: $id, price: $price, name: $name, image: $image, modifiers: $modifiers, quantity: $quantity, amount: $amount, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class $AcceptedOrderProductResponseCopyWith<$Res>  {
  factory $AcceptedOrderProductResponseCopyWith(AcceptedOrderProductResponse value, $Res Function(AcceptedOrderProductResponse) _then) = _$AcceptedOrderProductResponseCopyWithImpl;
@useResult
$Res call({
 String id, double price, String? name, String? image, List<AcceptedOrderModifierGroup> modifiers, double? quantity, double? amount,@JsonKey(name: 'currencySymbol') String currencySymbol
});




}
/// @nodoc
class _$AcceptedOrderProductResponseCopyWithImpl<$Res>
    implements $AcceptedOrderProductResponseCopyWith<$Res> {
  _$AcceptedOrderProductResponseCopyWithImpl(this._self, this._then);

  final AcceptedOrderProductResponse _self;
  final $Res Function(AcceptedOrderProductResponse) _then;

/// Create a copy of AcceptedOrderProductResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? price = null,Object? name = freezed,Object? image = freezed,Object? modifiers = null,Object? quantity = freezed,Object? amount = freezed,Object? currencySymbol = null,}) {
  return _then(AcceptedOrderProductResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,modifiers: null == modifiers ? _self.modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<AcceptedOrderModifierGroup>,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AcceptedOrderProductResponse].
extension AcceptedOrderProductResponsePatterns on AcceptedOrderProductResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcceptedOrderProductResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcceptedOrderProductResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcceptedOrderProductResponse value)  $default,){
final _that = this;
switch (_that) {
case _AcceptedOrderProductResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcceptedOrderProductResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AcceptedOrderProductResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  double price,  String? name,  String? image,  List<AcceptedOrderModifierGroup> modifiers,  double? quantity,  double? amount, @JsonKey(name: 'currencySymbol')  String currencySymbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcceptedOrderProductResponse() when $default != null:
return $default(_that.id,_that.price,_that.name,_that.image,_that.modifiers,_that.quantity,_that.amount,_that.currencySymbol);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  double price,  String? name,  String? image,  List<AcceptedOrderModifierGroup> modifiers,  double? quantity,  double? amount, @JsonKey(name: 'currencySymbol')  String currencySymbol)  $default,) {final _that = this;
switch (_that) {
case _AcceptedOrderProductResponse():
return $default(_that.id,_that.price,_that.name,_that.image,_that.modifiers,_that.quantity,_that.amount,_that.currencySymbol);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  double price,  String? name,  String? image,  List<AcceptedOrderModifierGroup> modifiers,  double? quantity,  double? amount, @JsonKey(name: 'currencySymbol')  String currencySymbol)?  $default,) {final _that = this;
switch (_that) {
case _AcceptedOrderProductResponse() when $default != null:
return $default(_that.id,_that.price,_that.name,_that.image,_that.modifiers,_that.quantity,_that.amount,_that.currencySymbol);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcceptedOrderProductResponse with DiagnosticableTreeMixin implements AcceptedOrderProductResponse {
  const _AcceptedOrderProductResponse({required this.id, required this.price, this.name, this.image,  List<AcceptedOrderModifierGroup> modifiers = const [], this.quantity, this.amount, @JsonKey(name: 'currencySymbol') this.currencySymbol = 'BYN'}): _modifiers = modifiers;
  factory _AcceptedOrderProductResponse.fromJson(Map<String, dynamic> json) => _$AcceptedOrderProductResponseFromJson(json);

@override final  String id;
@override final  double price;
@override final  String? name;
@override final  String? image;
 final  List<AcceptedOrderModifierGroup> _modifiers;
@override@JsonKey() List<AcceptedOrderModifierGroup> get modifiers {
  if (_modifiers is EqualUnmodifiableListView) return _modifiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modifiers);
}

@override final  double? quantity;
@override final  double? amount;
@override@JsonKey(name: 'currencySymbol') final  String currencySymbol;

/// Create a copy of AcceptedOrderProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptedOrderProductResponseCopyWith<_AcceptedOrderProductResponse> get copyWith => __$AcceptedOrderProductResponseCopyWithImpl<_AcceptedOrderProductResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcceptedOrderProductResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AcceptedOrderProductResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('modifiers', modifiers))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('currencySymbol', currencySymbol));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptedOrderProductResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._modifiers, _modifiers)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,price,name,image,const DeepCollectionEquality().hash(_modifiers),quantity,amount,currencySymbol);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AcceptedOrderProductResponse(id: $id, price: $price, name: $name, image: $image, modifiers: $modifiers, quantity: $quantity, amount: $amount, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class _$AcceptedOrderProductResponseCopyWith<$Res> implements $AcceptedOrderProductResponseCopyWith<$Res> {
  factory _$AcceptedOrderProductResponseCopyWith(_AcceptedOrderProductResponse value, $Res Function(_AcceptedOrderProductResponse) _then) = __$AcceptedOrderProductResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, double price, String? name, String? image, List<AcceptedOrderModifierGroup> modifiers, double? quantity, double? amount,@JsonKey(name: 'currencySymbol') String currencySymbol
});




}
/// @nodoc
class __$AcceptedOrderProductResponseCopyWithImpl<$Res>
    implements _$AcceptedOrderProductResponseCopyWith<$Res> {
  __$AcceptedOrderProductResponseCopyWithImpl(this._self, this._then);

  final _AcceptedOrderProductResponse _self;
  final $Res Function(_AcceptedOrderProductResponse) _then;

/// Create a copy of AcceptedOrderProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? price = null,Object? name = freezed,Object? image = freezed,Object? modifiers = null,Object? quantity = freezed,Object? amount = freezed,Object? currencySymbol = null,}) {
  return _then(_AcceptedOrderProductResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,modifiers: null == modifiers ? _self._modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<AcceptedOrderModifierGroup>,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AcceptedOrderModifierGroup implements DiagnosticableTreeMixin {

 String get id; String? get name; List<AcceptedOrderModifier> get options;
/// Create a copy of AcceptedOrderModifierGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptedOrderModifierGroupCopyWith<AcceptedOrderModifierGroup> get copyWith => _$AcceptedOrderModifierGroupCopyWithImpl<AcceptedOrderModifierGroup>(this as AcceptedOrderModifierGroup, _$identity);

  /// Serializes this AcceptedOrderModifierGroup to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AcceptedOrderModifierGroup'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('options', options));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptedOrderModifierGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(options));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AcceptedOrderModifierGroup(id: $id, name: $name, options: $options)';
}


}

/// @nodoc
abstract mixin class $AcceptedOrderModifierGroupCopyWith<$Res>  {
  factory $AcceptedOrderModifierGroupCopyWith(AcceptedOrderModifierGroup value, $Res Function(AcceptedOrderModifierGroup) _then) = _$AcceptedOrderModifierGroupCopyWithImpl;
@useResult
$Res call({
 String id, String? name, List<AcceptedOrderModifier> options
});




}
/// @nodoc
class _$AcceptedOrderModifierGroupCopyWithImpl<$Res>
    implements $AcceptedOrderModifierGroupCopyWith<$Res> {
  _$AcceptedOrderModifierGroupCopyWithImpl(this._self, this._then);

  final AcceptedOrderModifierGroup _self;
  final $Res Function(AcceptedOrderModifierGroup) _then;

/// Create a copy of AcceptedOrderModifierGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? options = null,}) {
  return _then(AcceptedOrderModifierGroup(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<AcceptedOrderModifier>,
  ));
}

}


/// Adds pattern-matching-related methods to [AcceptedOrderModifierGroup].
extension AcceptedOrderModifierGroupPatterns on AcceptedOrderModifierGroup {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcceptedOrderModifierGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcceptedOrderModifierGroup() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcceptedOrderModifierGroup value)  $default,){
final _that = this;
switch (_that) {
case _AcceptedOrderModifierGroup():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcceptedOrderModifierGroup value)?  $default,){
final _that = this;
switch (_that) {
case _AcceptedOrderModifierGroup() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name,  List<AcceptedOrderModifier> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcceptedOrderModifierGroup() when $default != null:
return $default(_that.id,_that.name,_that.options);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name,  List<AcceptedOrderModifier> options)  $default,) {final _that = this;
switch (_that) {
case _AcceptedOrderModifierGroup():
return $default(_that.id,_that.name,_that.options);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name,  List<AcceptedOrderModifier> options)?  $default,) {final _that = this;
switch (_that) {
case _AcceptedOrderModifierGroup() when $default != null:
return $default(_that.id,_that.name,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcceptedOrderModifierGroup with DiagnosticableTreeMixin implements AcceptedOrderModifierGroup {
  const _AcceptedOrderModifierGroup({required this.id, this.name, required  List<AcceptedOrderModifier> options}): _options = options;
  factory _AcceptedOrderModifierGroup.fromJson(Map<String, dynamic> json) => _$AcceptedOrderModifierGroupFromJson(json);

@override final  String id;
@override final  String? name;
 final  List<AcceptedOrderModifier> _options;
@override List<AcceptedOrderModifier> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of AcceptedOrderModifierGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptedOrderModifierGroupCopyWith<_AcceptedOrderModifierGroup> get copyWith => __$AcceptedOrderModifierGroupCopyWithImpl<_AcceptedOrderModifierGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcceptedOrderModifierGroupToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AcceptedOrderModifierGroup'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('options', options));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptedOrderModifierGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_options));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AcceptedOrderModifierGroup(id: $id, name: $name, options: $options)';
}


}

/// @nodoc
abstract mixin class _$AcceptedOrderModifierGroupCopyWith<$Res> implements $AcceptedOrderModifierGroupCopyWith<$Res> {
  factory _$AcceptedOrderModifierGroupCopyWith(_AcceptedOrderModifierGroup value, $Res Function(_AcceptedOrderModifierGroup) _then) = __$AcceptedOrderModifierGroupCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, List<AcceptedOrderModifier> options
});




}
/// @nodoc
class __$AcceptedOrderModifierGroupCopyWithImpl<$Res>
    implements _$AcceptedOrderModifierGroupCopyWith<$Res> {
  __$AcceptedOrderModifierGroupCopyWithImpl(this._self, this._then);

  final _AcceptedOrderModifierGroup _self;
  final $Res Function(_AcceptedOrderModifierGroup) _then;

/// Create a copy of AcceptedOrderModifierGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? options = null,}) {
  return _then(_AcceptedOrderModifierGroup(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<AcceptedOrderModifier>,
  ));
}


}


/// @nodoc
mixin _$AcceptedOrderModifier implements DiagnosticableTreeMixin {

 String get id; String? get name; double? get quantity; double? get price;
/// Create a copy of AcceptedOrderModifier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptedOrderModifierCopyWith<AcceptedOrderModifier> get copyWith => _$AcceptedOrderModifierCopyWithImpl<AcceptedOrderModifier>(this as AcceptedOrderModifier, _$identity);

  /// Serializes this AcceptedOrderModifier to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AcceptedOrderModifier'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('price', price));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptedOrderModifier&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,quantity,price);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AcceptedOrderModifier(id: $id, name: $name, quantity: $quantity, price: $price)';
}


}

/// @nodoc
abstract mixin class $AcceptedOrderModifierCopyWith<$Res>  {
  factory $AcceptedOrderModifierCopyWith(AcceptedOrderModifier value, $Res Function(AcceptedOrderModifier) _then) = _$AcceptedOrderModifierCopyWithImpl;
@useResult
$Res call({
 String id, String? name, double? quantity, double? price
});




}
/// @nodoc
class _$AcceptedOrderModifierCopyWithImpl<$Res>
    implements $AcceptedOrderModifierCopyWith<$Res> {
  _$AcceptedOrderModifierCopyWithImpl(this._self, this._then);

  final AcceptedOrderModifier _self;
  final $Res Function(AcceptedOrderModifier) _then;

/// Create a copy of AcceptedOrderModifier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? quantity = freezed,Object? price = freezed,}) {
  return _then(AcceptedOrderModifier(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcceptedOrderModifier].
extension AcceptedOrderModifierPatterns on AcceptedOrderModifier {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcceptedOrderModifier value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcceptedOrderModifier() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcceptedOrderModifier value)  $default,){
final _that = this;
switch (_that) {
case _AcceptedOrderModifier():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcceptedOrderModifier value)?  $default,){
final _that = this;
switch (_that) {
case _AcceptedOrderModifier() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name,  double? quantity,  double? price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcceptedOrderModifier() when $default != null:
return $default(_that.id,_that.name,_that.quantity,_that.price);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name,  double? quantity,  double? price)  $default,) {final _that = this;
switch (_that) {
case _AcceptedOrderModifier():
return $default(_that.id,_that.name,_that.quantity,_that.price);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name,  double? quantity,  double? price)?  $default,) {final _that = this;
switch (_that) {
case _AcceptedOrderModifier() when $default != null:
return $default(_that.id,_that.name,_that.quantity,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcceptedOrderModifier with DiagnosticableTreeMixin implements AcceptedOrderModifier {
  const _AcceptedOrderModifier({required this.id, this.name, this.quantity, this.price});
  factory _AcceptedOrderModifier.fromJson(Map<String, dynamic> json) => _$AcceptedOrderModifierFromJson(json);

@override final  String id;
@override final  String? name;
@override final  double? quantity;
@override final  double? price;

/// Create a copy of AcceptedOrderModifier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptedOrderModifierCopyWith<_AcceptedOrderModifier> get copyWith => __$AcceptedOrderModifierCopyWithImpl<_AcceptedOrderModifier>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcceptedOrderModifierToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AcceptedOrderModifier'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('price', price));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptedOrderModifier&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,quantity,price);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AcceptedOrderModifier(id: $id, name: $name, quantity: $quantity, price: $price)';
}


}

/// @nodoc
abstract mixin class _$AcceptedOrderModifierCopyWith<$Res> implements $AcceptedOrderModifierCopyWith<$Res> {
  factory _$AcceptedOrderModifierCopyWith(_AcceptedOrderModifier value, $Res Function(_AcceptedOrderModifier) _then) = __$AcceptedOrderModifierCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, double? quantity, double? price
});




}
/// @nodoc
class __$AcceptedOrderModifierCopyWithImpl<$Res>
    implements _$AcceptedOrderModifierCopyWith<$Res> {
  __$AcceptedOrderModifierCopyWithImpl(this._self, this._then);

  final _AcceptedOrderModifier _self;
  final $Res Function(_AcceptedOrderModifier) _then;

/// Create a copy of AcceptedOrderModifier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? quantity = freezed,Object? price = freezed,}) {
  return _then(_AcceptedOrderModifier(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$DeliveryAddress implements DiagnosticableTreeMixin {

 String? get street; String? get building; String? get city; String? get house; String? get entrance; String? get doorphone; String? get floor; String? get flat;
/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryAddressCopyWith<DeliveryAddress> get copyWith => _$DeliveryAddressCopyWithImpl<DeliveryAddress>(this as DeliveryAddress, _$identity);

  /// Serializes this DeliveryAddress to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DeliveryAddress'))
    ..add(DiagnosticsProperty('street', street))..add(DiagnosticsProperty('building', building))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('house', house))..add(DiagnosticsProperty('entrance', entrance))..add(DiagnosticsProperty('doorphone', doorphone))..add(DiagnosticsProperty('floor', floor))..add(DiagnosticsProperty('flat', flat));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryAddress&&(identical(other.street, street) || other.street == street)&&(identical(other.building, building) || other.building == building)&&(identical(other.city, city) || other.city == city)&&(identical(other.house, house) || other.house == house)&&(identical(other.entrance, entrance) || other.entrance == entrance)&&(identical(other.doorphone, doorphone) || other.doorphone == doorphone)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.flat, flat) || other.flat == flat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,street,building,city,house,entrance,doorphone,floor,flat);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DeliveryAddress(street: $street, building: $building, city: $city, house: $house, entrance: $entrance, doorphone: $doorphone, floor: $floor, flat: $flat)';
}


}

/// @nodoc
abstract mixin class $DeliveryAddressCopyWith<$Res>  {
  factory $DeliveryAddressCopyWith(DeliveryAddress value, $Res Function(DeliveryAddress) _then) = _$DeliveryAddressCopyWithImpl;
@useResult
$Res call({
 String? street, String? building, String? city, String? house, String? entrance, String? doorphone, String? floor, String? flat
});




}
/// @nodoc
class _$DeliveryAddressCopyWithImpl<$Res>
    implements $DeliveryAddressCopyWith<$Res> {
  _$DeliveryAddressCopyWithImpl(this._self, this._then);

  final DeliveryAddress _self;
  final $Res Function(DeliveryAddress) _then;

/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? street = freezed,Object? building = freezed,Object? city = freezed,Object? house = freezed,Object? entrance = freezed,Object? doorphone = freezed,Object? floor = freezed,Object? flat = freezed,}) {
  return _then(DeliveryAddress(
street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,building: freezed == building ? _self.building : building // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String?,entrance: freezed == entrance ? _self.entrance : entrance // ignore: cast_nullable_to_non_nullable
as String?,doorphone: freezed == doorphone ? _self.doorphone : doorphone // ignore: cast_nullable_to_non_nullable
as String?,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as String?,flat: freezed == flat ? _self.flat : flat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryAddress].
extension DeliveryAddressPatterns on DeliveryAddress {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryAddress() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryAddress value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryAddress():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryAddress value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryAddress() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? street,  String? building,  String? city,  String? house,  String? entrance,  String? doorphone,  String? floor,  String? flat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryAddress() when $default != null:
return $default(_that.street,_that.building,_that.city,_that.house,_that.entrance,_that.doorphone,_that.floor,_that.flat);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? street,  String? building,  String? city,  String? house,  String? entrance,  String? doorphone,  String? floor,  String? flat)  $default,) {final _that = this;
switch (_that) {
case _DeliveryAddress():
return $default(_that.street,_that.building,_that.city,_that.house,_that.entrance,_that.doorphone,_that.floor,_that.flat);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? street,  String? building,  String? city,  String? house,  String? entrance,  String? doorphone,  String? floor,  String? flat)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryAddress() when $default != null:
return $default(_that.street,_that.building,_that.city,_that.house,_that.entrance,_that.doorphone,_that.floor,_that.flat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliveryAddress extends DeliveryAddress with DiagnosticableTreeMixin {
  const _DeliveryAddress({this.street, this.building, this.city, this.house, this.entrance, this.doorphone, this.floor, this.flat}): super._();
  factory _DeliveryAddress.fromJson(Map<String, dynamic> json) => _$DeliveryAddressFromJson(json);

@override final  String? street;
@override final  String? building;
@override final  String? city;
@override final  String? house;
@override final  String? entrance;
@override final  String? doorphone;
@override final  String? floor;
@override final  String? flat;

/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryAddressCopyWith<_DeliveryAddress> get copyWith => __$DeliveryAddressCopyWithImpl<_DeliveryAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryAddressToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DeliveryAddress'))
    ..add(DiagnosticsProperty('street', street))..add(DiagnosticsProperty('building', building))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('house', house))..add(DiagnosticsProperty('entrance', entrance))..add(DiagnosticsProperty('doorphone', doorphone))..add(DiagnosticsProperty('floor', floor))..add(DiagnosticsProperty('flat', flat));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryAddress&&(identical(other.street, street) || other.street == street)&&(identical(other.building, building) || other.building == building)&&(identical(other.city, city) || other.city == city)&&(identical(other.house, house) || other.house == house)&&(identical(other.entrance, entrance) || other.entrance == entrance)&&(identical(other.doorphone, doorphone) || other.doorphone == doorphone)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.flat, flat) || other.flat == flat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,street,building,city,house,entrance,doorphone,floor,flat);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DeliveryAddress(street: $street, building: $building, city: $city, house: $house, entrance: $entrance, doorphone: $doorphone, floor: $floor, flat: $flat)';
}


}

/// @nodoc
abstract mixin class _$DeliveryAddressCopyWith<$Res> implements $DeliveryAddressCopyWith<$Res> {
  factory _$DeliveryAddressCopyWith(_DeliveryAddress value, $Res Function(_DeliveryAddress) _then) = __$DeliveryAddressCopyWithImpl;
@override @useResult
$Res call({
 String? street, String? building, String? city, String? house, String? entrance, String? doorphone, String? floor, String? flat
});




}
/// @nodoc
class __$DeliveryAddressCopyWithImpl<$Res>
    implements _$DeliveryAddressCopyWith<$Res> {
  __$DeliveryAddressCopyWithImpl(this._self, this._then);

  final _DeliveryAddress _self;
  final $Res Function(_DeliveryAddress) _then;

/// Create a copy of DeliveryAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? street = freezed,Object? building = freezed,Object? city = freezed,Object? house = freezed,Object? entrance = freezed,Object? doorphone = freezed,Object? floor = freezed,Object? flat = freezed,}) {
  return _then(_DeliveryAddress(
street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,building: freezed == building ? _self.building : building // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String?,entrance: freezed == entrance ? _self.entrance : entrance // ignore: cast_nullable_to_non_nullable
as String?,doorphone: freezed == doorphone ? _self.doorphone : doorphone // ignore: cast_nullable_to_non_nullable
as String?,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as String?,flat: freezed == flat ? _self.flat : flat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
