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
mixin _$AcceptedOrder {

 String get id; String get publicId; List<OrderedProduct> get products; double get totalSum; double get bonusesSum; DateTime get createdDateTime; AcceptedOrderType get type; String? get deliveryType; String? get paymentType; DateTime? get pickUpDateTime; OrderStatus get status; String get statusDescription; String get currencySymbol; String? get storeName; String? get storeAddress; String? get storeId; String? get comment; Uri? get ofdReceiptUrl; String? get purchaseId; String? get cardNumber;
/// Create a copy of AcceptedOrder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptedOrderCopyWith<AcceptedOrder> get copyWith => _$AcceptedOrderCopyWithImpl<AcceptedOrder>(this as AcceptedOrder, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptedOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.publicId, publicId) || other.publicId == publicId)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.totalSum, totalSum) || other.totalSum == totalSum)&&(identical(other.bonusesSum, bonusesSum) || other.bonusesSum == bonusesSum)&&(identical(other.createdDateTime, createdDateTime) || other.createdDateTime == createdDateTime)&&(identical(other.type, type) || other.type == type)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.pickUpDateTime, pickUpDateTime) || other.pickUpDateTime == pickUpDateTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDescription, statusDescription) || other.statusDescription == statusDescription)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.storeAddress, storeAddress) || other.storeAddress == storeAddress)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.ofdReceiptUrl, ofdReceiptUrl) || other.ofdReceiptUrl == ofdReceiptUrl)&&(identical(other.purchaseId, purchaseId) || other.purchaseId == purchaseId)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,publicId,const DeepCollectionEquality().hash(products),totalSum,bonusesSum,createdDateTime,type,deliveryType,paymentType,pickUpDateTime,status,statusDescription,currencySymbol,storeName,storeAddress,storeId,comment,ofdReceiptUrl,purchaseId,cardNumber]);

@override
String toString() {
  return 'AcceptedOrder(id: $id, publicId: $publicId, products: $products, totalSum: $totalSum, bonusesSum: $bonusesSum, createdDateTime: $createdDateTime, type: $type, deliveryType: $deliveryType, paymentType: $paymentType, pickUpDateTime: $pickUpDateTime, status: $status, statusDescription: $statusDescription, currencySymbol: $currencySymbol, storeName: $storeName, storeAddress: $storeAddress, storeId: $storeId, comment: $comment, ofdReceiptUrl: $ofdReceiptUrl, purchaseId: $purchaseId, cardNumber: $cardNumber)';
}


}

/// @nodoc
abstract mixin class $AcceptedOrderCopyWith<$Res>  {
  factory $AcceptedOrderCopyWith(AcceptedOrder value, $Res Function(AcceptedOrder) _then) = _$AcceptedOrderCopyWithImpl;
@useResult
$Res call({
 String id, String publicId, List<OrderedProduct> products, double totalSum, double bonusesSum, DateTime createdDateTime, AcceptedOrderType type, String? deliveryType, String? paymentType, DateTime? pickUpDateTime, OrderStatus status, String statusDescription, String currencySymbol, String? storeName, String? storeAddress, String? storeId, String? comment, Uri? ofdReceiptUrl, String? purchaseId, String? cardNumber
});




}
/// @nodoc
class _$AcceptedOrderCopyWithImpl<$Res>
    implements $AcceptedOrderCopyWith<$Res> {
  _$AcceptedOrderCopyWithImpl(this._self, this._then);

  final AcceptedOrder _self;
  final $Res Function(AcceptedOrder) _then;

/// Create a copy of AcceptedOrder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? publicId = null,Object? products = null,Object? totalSum = null,Object? bonusesSum = null,Object? createdDateTime = null,Object? type = null,Object? deliveryType = freezed,Object? paymentType = freezed,Object? pickUpDateTime = freezed,Object? status = null,Object? statusDescription = null,Object? currencySymbol = null,Object? storeName = freezed,Object? storeAddress = freezed,Object? storeId = freezed,Object? comment = freezed,Object? ofdReceiptUrl = freezed,Object? purchaseId = freezed,Object? cardNumber = freezed,}) {
  return _then(AcceptedOrder(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,publicId: null == publicId ? _self.publicId : publicId // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<OrderedProduct>,totalSum: null == totalSum ? _self.totalSum : totalSum // ignore: cast_nullable_to_non_nullable
as double,bonusesSum: null == bonusesSum ? _self.bonusesSum : bonusesSum // ignore: cast_nullable_to_non_nullable
as double,createdDateTime: null == createdDateTime ? _self.createdDateTime : createdDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AcceptedOrderType,deliveryType: freezed == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as String?,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String?,pickUpDateTime: freezed == pickUpDateTime ? _self.pickUpDateTime : pickUpDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,statusDescription: null == statusDescription ? _self.statusDescription : statusDescription // ignore: cast_nullable_to_non_nullable
as String,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,storeAddress: freezed == storeAddress ? _self.storeAddress : storeAddress // ignore: cast_nullable_to_non_nullable
as String?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,ofdReceiptUrl: freezed == ofdReceiptUrl ? _self.ofdReceiptUrl : ofdReceiptUrl // ignore: cast_nullable_to_non_nullable
as Uri?,purchaseId: freezed == purchaseId ? _self.purchaseId : purchaseId // ignore: cast_nullable_to_non_nullable
as String?,cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcceptedOrder].
extension AcceptedOrderPatterns on AcceptedOrder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcceptedOrder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcceptedOrder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcceptedOrder value)  $default,){
final _that = this;
switch (_that) {
case _AcceptedOrder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcceptedOrder value)?  $default,){
final _that = this;
switch (_that) {
case _AcceptedOrder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String publicId,  List<OrderedProduct> products,  double totalSum,  double bonusesSum,  DateTime createdDateTime,  AcceptedOrderType type,  String? deliveryType,  String? paymentType,  DateTime? pickUpDateTime,  OrderStatus status,  String statusDescription,  String currencySymbol,  String? storeName,  String? storeAddress,  String? storeId,  String? comment,  Uri? ofdReceiptUrl,  String? purchaseId,  String? cardNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcceptedOrder() when $default != null:
return $default(_that.id,_that.publicId,_that.products,_that.totalSum,_that.bonusesSum,_that.createdDateTime,_that.type,_that.deliveryType,_that.paymentType,_that.pickUpDateTime,_that.status,_that.statusDescription,_that.currencySymbol,_that.storeName,_that.storeAddress,_that.storeId,_that.comment,_that.ofdReceiptUrl,_that.purchaseId,_that.cardNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String publicId,  List<OrderedProduct> products,  double totalSum,  double bonusesSum,  DateTime createdDateTime,  AcceptedOrderType type,  String? deliveryType,  String? paymentType,  DateTime? pickUpDateTime,  OrderStatus status,  String statusDescription,  String currencySymbol,  String? storeName,  String? storeAddress,  String? storeId,  String? comment,  Uri? ofdReceiptUrl,  String? purchaseId,  String? cardNumber)  $default,) {final _that = this;
switch (_that) {
case _AcceptedOrder():
return $default(_that.id,_that.publicId,_that.products,_that.totalSum,_that.bonusesSum,_that.createdDateTime,_that.type,_that.deliveryType,_that.paymentType,_that.pickUpDateTime,_that.status,_that.statusDescription,_that.currencySymbol,_that.storeName,_that.storeAddress,_that.storeId,_that.comment,_that.ofdReceiptUrl,_that.purchaseId,_that.cardNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String publicId,  List<OrderedProduct> products,  double totalSum,  double bonusesSum,  DateTime createdDateTime,  AcceptedOrderType type,  String? deliveryType,  String? paymentType,  DateTime? pickUpDateTime,  OrderStatus status,  String statusDescription,  String currencySymbol,  String? storeName,  String? storeAddress,  String? storeId,  String? comment,  Uri? ofdReceiptUrl,  String? purchaseId,  String? cardNumber)?  $default,) {final _that = this;
switch (_that) {
case _AcceptedOrder() when $default != null:
return $default(_that.id,_that.publicId,_that.products,_that.totalSum,_that.bonusesSum,_that.createdDateTime,_that.type,_that.deliveryType,_that.paymentType,_that.pickUpDateTime,_that.status,_that.statusDescription,_that.currencySymbol,_that.storeName,_that.storeAddress,_that.storeId,_that.comment,_that.ofdReceiptUrl,_that.purchaseId,_that.cardNumber);case _:
  return null;

}
}

}

/// @nodoc


class _AcceptedOrder implements AcceptedOrder {
  const _AcceptedOrder({required this.id, required this.publicId, required  List<OrderedProduct> products, required this.totalSum, required this.bonusesSum, required this.createdDateTime, required this.type, this.deliveryType, this.paymentType, this.pickUpDateTime, required this.status, required this.statusDescription, required this.currencySymbol, this.storeName, this.storeAddress, this.storeId, this.comment, this.ofdReceiptUrl, this.purchaseId, this.cardNumber}): _products = products;
  

@override final  String id;
@override final  String publicId;
 final  List<OrderedProduct> _products;
@override List<OrderedProduct> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  double totalSum;
@override final  double bonusesSum;
@override final  DateTime createdDateTime;
@override final  AcceptedOrderType type;
@override final  String? deliveryType;
@override final  String? paymentType;
@override final  DateTime? pickUpDateTime;
@override final  OrderStatus status;
@override final  String statusDescription;
@override final  String currencySymbol;
@override final  String? storeName;
@override final  String? storeAddress;
@override final  String? storeId;
@override final  String? comment;
@override final  Uri? ofdReceiptUrl;
@override final  String? purchaseId;
@override final  String? cardNumber;

/// Create a copy of AcceptedOrder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptedOrderCopyWith<_AcceptedOrder> get copyWith => __$AcceptedOrderCopyWithImpl<_AcceptedOrder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptedOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.publicId, publicId) || other.publicId == publicId)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.totalSum, totalSum) || other.totalSum == totalSum)&&(identical(other.bonusesSum, bonusesSum) || other.bonusesSum == bonusesSum)&&(identical(other.createdDateTime, createdDateTime) || other.createdDateTime == createdDateTime)&&(identical(other.type, type) || other.type == type)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.pickUpDateTime, pickUpDateTime) || other.pickUpDateTime == pickUpDateTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusDescription, statusDescription) || other.statusDescription == statusDescription)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.storeAddress, storeAddress) || other.storeAddress == storeAddress)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.ofdReceiptUrl, ofdReceiptUrl) || other.ofdReceiptUrl == ofdReceiptUrl)&&(identical(other.purchaseId, purchaseId) || other.purchaseId == purchaseId)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,publicId,const DeepCollectionEquality().hash(_products),totalSum,bonusesSum,createdDateTime,type,deliveryType,paymentType,pickUpDateTime,status,statusDescription,currencySymbol,storeName,storeAddress,storeId,comment,ofdReceiptUrl,purchaseId,cardNumber]);

@override
String toString() {
  return 'AcceptedOrder(id: $id, publicId: $publicId, products: $products, totalSum: $totalSum, bonusesSum: $bonusesSum, createdDateTime: $createdDateTime, type: $type, deliveryType: $deliveryType, paymentType: $paymentType, pickUpDateTime: $pickUpDateTime, status: $status, statusDescription: $statusDescription, currencySymbol: $currencySymbol, storeName: $storeName, storeAddress: $storeAddress, storeId: $storeId, comment: $comment, ofdReceiptUrl: $ofdReceiptUrl, purchaseId: $purchaseId, cardNumber: $cardNumber)';
}


}

/// @nodoc
abstract mixin class _$AcceptedOrderCopyWith<$Res> implements $AcceptedOrderCopyWith<$Res> {
  factory _$AcceptedOrderCopyWith(_AcceptedOrder value, $Res Function(_AcceptedOrder) _then) = __$AcceptedOrderCopyWithImpl;
@override @useResult
$Res call({
 String id, String publicId, List<OrderedProduct> products, double totalSum, double bonusesSum, DateTime createdDateTime, AcceptedOrderType type, String? deliveryType, String? paymentType, DateTime? pickUpDateTime, OrderStatus status, String statusDescription, String currencySymbol, String? storeName, String? storeAddress, String? storeId, String? comment, Uri? ofdReceiptUrl, String? purchaseId, String? cardNumber
});




}
/// @nodoc
class __$AcceptedOrderCopyWithImpl<$Res>
    implements _$AcceptedOrderCopyWith<$Res> {
  __$AcceptedOrderCopyWithImpl(this._self, this._then);

  final _AcceptedOrder _self;
  final $Res Function(_AcceptedOrder) _then;

/// Create a copy of AcceptedOrder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? publicId = null,Object? products = null,Object? totalSum = null,Object? bonusesSum = null,Object? createdDateTime = null,Object? type = null,Object? deliveryType = freezed,Object? paymentType = freezed,Object? pickUpDateTime = freezed,Object? status = null,Object? statusDescription = null,Object? currencySymbol = null,Object? storeName = freezed,Object? storeAddress = freezed,Object? storeId = freezed,Object? comment = freezed,Object? ofdReceiptUrl = freezed,Object? purchaseId = freezed,Object? cardNumber = freezed,}) {
  return _then(_AcceptedOrder(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,publicId: null == publicId ? _self.publicId : publicId // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<OrderedProduct>,totalSum: null == totalSum ? _self.totalSum : totalSum // ignore: cast_nullable_to_non_nullable
as double,bonusesSum: null == bonusesSum ? _self.bonusesSum : bonusesSum // ignore: cast_nullable_to_non_nullable
as double,createdDateTime: null == createdDateTime ? _self.createdDateTime : createdDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AcceptedOrderType,deliveryType: freezed == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as String?,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String?,pickUpDateTime: freezed == pickUpDateTime ? _self.pickUpDateTime : pickUpDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,statusDescription: null == statusDescription ? _self.statusDescription : statusDescription // ignore: cast_nullable_to_non_nullable
as String,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,storeAddress: freezed == storeAddress ? _self.storeAddress : storeAddress // ignore: cast_nullable_to_non_nullable
as String?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,ofdReceiptUrl: freezed == ofdReceiptUrl ? _self.ofdReceiptUrl : ofdReceiptUrl // ignore: cast_nullable_to_non_nullable
as Uri?,purchaseId: freezed == purchaseId ? _self.purchaseId : purchaseId // ignore: cast_nullable_to_non_nullable
as String?,cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
