// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderResponse {

 String get id; int? get orderId; double get bonusesToPay; List<OrderItem> get products; String get phone; String? get comment; UserDataResponse? get userData; DateTime get time; String? get paymentType; String? get paymentTypeType; double get totalPrice; double get totalPriceWithoutDiscount; CustomerApiPurchase? get purchase; Store get store; String get type; bool get isCoffee; String? get deviceId;
/// Create a copy of OrderResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderResponseCopyWith<OrderResponse> get copyWith => _$OrderResponseCopyWithImpl<OrderResponse>(this as OrderResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.bonusesToPay, bonusesToPay) || other.bonusesToPay == bonusesToPay)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.time, time) || other.time == time)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.paymentTypeType, paymentTypeType) || other.paymentTypeType == paymentTypeType)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.totalPriceWithoutDiscount, totalPriceWithoutDiscount) || other.totalPriceWithoutDiscount == totalPriceWithoutDiscount)&&(identical(other.purchase, purchase) || other.purchase == purchase)&&(identical(other.store, store) || other.store == store)&&(identical(other.type, type) || other.type == type)&&(identical(other.isCoffee, isCoffee) || other.isCoffee == isCoffee)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}


@override
int get hashCode => Object.hash(runtimeType,id,orderId,bonusesToPay,const DeepCollectionEquality().hash(products),phone,comment,userData,time,paymentType,paymentTypeType,totalPrice,totalPriceWithoutDiscount,purchase,store,type,isCoffee,deviceId);

@override
String toString() {
  return 'OrderResponse(id: $id, orderId: $orderId, bonusesToPay: $bonusesToPay, products: $products, phone: $phone, comment: $comment, userData: $userData, time: $time, paymentType: $paymentType, paymentTypeType: $paymentTypeType, totalPrice: $totalPrice, totalPriceWithoutDiscount: $totalPriceWithoutDiscount, purchase: $purchase, store: $store, type: $type, isCoffee: $isCoffee, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class $OrderResponseCopyWith<$Res>  {
  factory $OrderResponseCopyWith(OrderResponse value, $Res Function(OrderResponse) _then) = _$OrderResponseCopyWithImpl;
@useResult
$Res call({
 String id, int? orderId, double bonusesToPay, List<OrderItem> products, String phone, String? comment, UserDataResponse? userData, DateTime time, String? paymentType, String? paymentTypeType, double totalPrice, double totalPriceWithoutDiscount, CustomerApiPurchase? purchase, Store store, String type, bool isCoffee, String? deviceId
});


$UserDataResponseCopyWith<$Res>? get userData;$CustomerApiPurchaseCopyWith<$Res>? get purchase;$StoreCopyWith<$Res> get store;

}
/// @nodoc
class _$OrderResponseCopyWithImpl<$Res>
    implements $OrderResponseCopyWith<$Res> {
  _$OrderResponseCopyWithImpl(this._self, this._then);

  final OrderResponse _self;
  final $Res Function(OrderResponse) _then;

/// Create a copy of OrderResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = freezed,Object? bonusesToPay = null,Object? products = null,Object? phone = null,Object? comment = freezed,Object? userData = freezed,Object? time = null,Object? paymentType = freezed,Object? paymentTypeType = freezed,Object? totalPrice = null,Object? totalPriceWithoutDiscount = null,Object? purchase = freezed,Object? store = null,Object? type = null,Object? isCoffee = null,Object? deviceId = freezed,}) {
  return _then(OrderResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,bonusesToPay: null == bonusesToPay ? _self.bonusesToPay : bonusesToPay // ignore: cast_nullable_to_non_nullable
as double,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserDataResponse?,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String?,paymentTypeType: freezed == paymentTypeType ? _self.paymentTypeType : paymentTypeType // ignore: cast_nullable_to_non_nullable
as String?,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,totalPriceWithoutDiscount: null == totalPriceWithoutDiscount ? _self.totalPriceWithoutDiscount : totalPriceWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as CustomerApiPurchase?,store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isCoffee: null == isCoffee ? _self.isCoffee : isCoffee // ignore: cast_nullable_to_non_nullable
as bool,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of OrderResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataResponseCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $UserDataResponseCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}/// Create a copy of OrderResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerApiPurchaseCopyWith<$Res>? get purchase {
    if (_self.purchase == null) {
    return null;
  }

  return $CustomerApiPurchaseCopyWith<$Res>(_self.purchase!, (value) {
    return _then(_self.copyWith(purchase: value));
  });
}/// Create a copy of OrderResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res> get store {
  
  return $StoreCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderResponse].
extension OrderResponsePatterns on OrderResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderResponse value)  $default,){
final _that = this;
switch (_that) {
case _OrderResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OrderResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int? orderId,  double bonusesToPay,  List<OrderItem> products,  String phone,  String? comment,  UserDataResponse? userData,  DateTime time,  String? paymentType,  String? paymentTypeType,  double totalPrice,  double totalPriceWithoutDiscount,  CustomerApiPurchase? purchase,  Store store,  String type,  bool isCoffee,  String? deviceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderResponse() when $default != null:
return $default(_that.id,_that.orderId,_that.bonusesToPay,_that.products,_that.phone,_that.comment,_that.userData,_that.time,_that.paymentType,_that.paymentTypeType,_that.totalPrice,_that.totalPriceWithoutDiscount,_that.purchase,_that.store,_that.type,_that.isCoffee,_that.deviceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int? orderId,  double bonusesToPay,  List<OrderItem> products,  String phone,  String? comment,  UserDataResponse? userData,  DateTime time,  String? paymentType,  String? paymentTypeType,  double totalPrice,  double totalPriceWithoutDiscount,  CustomerApiPurchase? purchase,  Store store,  String type,  bool isCoffee,  String? deviceId)  $default,) {final _that = this;
switch (_that) {
case _OrderResponse():
return $default(_that.id,_that.orderId,_that.bonusesToPay,_that.products,_that.phone,_that.comment,_that.userData,_that.time,_that.paymentType,_that.paymentTypeType,_that.totalPrice,_that.totalPriceWithoutDiscount,_that.purchase,_that.store,_that.type,_that.isCoffee,_that.deviceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int? orderId,  double bonusesToPay,  List<OrderItem> products,  String phone,  String? comment,  UserDataResponse? userData,  DateTime time,  String? paymentType,  String? paymentTypeType,  double totalPrice,  double totalPriceWithoutDiscount,  CustomerApiPurchase? purchase,  Store store,  String type,  bool isCoffee,  String? deviceId)?  $default,) {final _that = this;
switch (_that) {
case _OrderResponse() when $default != null:
return $default(_that.id,_that.orderId,_that.bonusesToPay,_that.products,_that.phone,_that.comment,_that.userData,_that.time,_that.paymentType,_that.paymentTypeType,_that.totalPrice,_that.totalPriceWithoutDiscount,_that.purchase,_that.store,_that.type,_that.isCoffee,_that.deviceId);case _:
  return null;

}
}

}

/// @nodoc


class _OrderResponse extends OrderResponse {
  const _OrderResponse({required this.id, this.orderId, required this.bonusesToPay, required  List<OrderItem> products, required this.phone, this.comment, this.userData, required this.time, required this.paymentType, required this.paymentTypeType, required this.totalPrice, required this.totalPriceWithoutDiscount, required this.purchase, required this.store, required this.type, required this.isCoffee, required this.deviceId}): _products = products,super._();
  

@override final  String id;
@override final  int? orderId;
@override final  double bonusesToPay;
 final  List<OrderItem> _products;
@override List<OrderItem> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  String phone;
@override final  String? comment;
@override final  UserDataResponse? userData;
@override final  DateTime time;
@override final  String? paymentType;
@override final  String? paymentTypeType;
@override final  double totalPrice;
@override final  double totalPriceWithoutDiscount;
@override final  CustomerApiPurchase? purchase;
@override final  Store store;
@override final  String type;
@override final  bool isCoffee;
@override final  String? deviceId;

/// Create a copy of OrderResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderResponseCopyWith<_OrderResponse> get copyWith => __$OrderResponseCopyWithImpl<_OrderResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.bonusesToPay, bonusesToPay) || other.bonusesToPay == bonusesToPay)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.time, time) || other.time == time)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.paymentTypeType, paymentTypeType) || other.paymentTypeType == paymentTypeType)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.totalPriceWithoutDiscount, totalPriceWithoutDiscount) || other.totalPriceWithoutDiscount == totalPriceWithoutDiscount)&&(identical(other.purchase, purchase) || other.purchase == purchase)&&(identical(other.store, store) || other.store == store)&&(identical(other.type, type) || other.type == type)&&(identical(other.isCoffee, isCoffee) || other.isCoffee == isCoffee)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}


@override
int get hashCode => Object.hash(runtimeType,id,orderId,bonusesToPay,const DeepCollectionEquality().hash(_products),phone,comment,userData,time,paymentType,paymentTypeType,totalPrice,totalPriceWithoutDiscount,purchase,store,type,isCoffee,deviceId);

@override
String toString() {
  return 'OrderResponse(id: $id, orderId: $orderId, bonusesToPay: $bonusesToPay, products: $products, phone: $phone, comment: $comment, userData: $userData, time: $time, paymentType: $paymentType, paymentTypeType: $paymentTypeType, totalPrice: $totalPrice, totalPriceWithoutDiscount: $totalPriceWithoutDiscount, purchase: $purchase, store: $store, type: $type, isCoffee: $isCoffee, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class _$OrderResponseCopyWith<$Res> implements $OrderResponseCopyWith<$Res> {
  factory _$OrderResponseCopyWith(_OrderResponse value, $Res Function(_OrderResponse) _then) = __$OrderResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, int? orderId, double bonusesToPay, List<OrderItem> products, String phone, String? comment, UserDataResponse? userData, DateTime time, String? paymentType, String? paymentTypeType, double totalPrice, double totalPriceWithoutDiscount, CustomerApiPurchase? purchase, Store store, String type, bool isCoffee, String? deviceId
});


@override $UserDataResponseCopyWith<$Res>? get userData;@override $CustomerApiPurchaseCopyWith<$Res>? get purchase;@override $StoreCopyWith<$Res> get store;

}
/// @nodoc
class __$OrderResponseCopyWithImpl<$Res>
    implements _$OrderResponseCopyWith<$Res> {
  __$OrderResponseCopyWithImpl(this._self, this._then);

  final _OrderResponse _self;
  final $Res Function(_OrderResponse) _then;

/// Create a copy of OrderResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = freezed,Object? bonusesToPay = null,Object? products = null,Object? phone = null,Object? comment = freezed,Object? userData = freezed,Object? time = null,Object? paymentType = freezed,Object? paymentTypeType = freezed,Object? totalPrice = null,Object? totalPriceWithoutDiscount = null,Object? purchase = freezed,Object? store = null,Object? type = null,Object? isCoffee = null,Object? deviceId = freezed,}) {
  return _then(_OrderResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,bonusesToPay: null == bonusesToPay ? _self.bonusesToPay : bonusesToPay // ignore: cast_nullable_to_non_nullable
as double,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserDataResponse?,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String?,paymentTypeType: freezed == paymentTypeType ? _self.paymentTypeType : paymentTypeType // ignore: cast_nullable_to_non_nullable
as String?,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,totalPriceWithoutDiscount: null == totalPriceWithoutDiscount ? _self.totalPriceWithoutDiscount : totalPriceWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as CustomerApiPurchase?,store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isCoffee: null == isCoffee ? _self.isCoffee : isCoffee // ignore: cast_nullable_to_non_nullable
as bool,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of OrderResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataResponseCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $UserDataResponseCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}/// Create a copy of OrderResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerApiPurchaseCopyWith<$Res>? get purchase {
    if (_self.purchase == null) {
    return null;
  }

  return $CustomerApiPurchaseCopyWith<$Res>(_self.purchase!, (value) {
    return _then(_self.copyWith(purchase: value));
  });
}/// Create a copy of OrderResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res> get store {
  
  return $StoreCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}

/// @nodoc
mixin _$OrderItem {

 String get id; num get amount; double? get price; double? get priceWithoutDiscount; String? get name; List<String> get barcodes; List<ModifierGroupOrderItem> get modifiers; String? get currencySymbol;
/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemCopyWith<OrderItem> get copyWith => _$OrderItemCopyWithImpl<OrderItem>(this as OrderItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceWithoutDiscount, priceWithoutDiscount) || other.priceWithoutDiscount == priceWithoutDiscount)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.barcodes, barcodes)&&const DeepCollectionEquality().equals(other.modifiers, modifiers)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,price,priceWithoutDiscount,name,const DeepCollectionEquality().hash(barcodes),const DeepCollectionEquality().hash(modifiers),currencySymbol);

@override
String toString() {
  return 'OrderItem(id: $id, amount: $amount, price: $price, priceWithoutDiscount: $priceWithoutDiscount, name: $name, barcodes: $barcodes, modifiers: $modifiers, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class $OrderItemCopyWith<$Res>  {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) _then) = _$OrderItemCopyWithImpl;
@useResult
$Res call({
 String id, num amount, double? price, double? priceWithoutDiscount, String? name, List<String> barcodes, List<ModifierGroupOrderItem> modifiers, String? currencySymbol
});




}
/// @nodoc
class _$OrderItemCopyWithImpl<$Res>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._self, this._then);

  final OrderItem _self;
  final $Res Function(OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? price = freezed,Object? priceWithoutDiscount = freezed,Object? name = freezed,Object? barcodes = null,Object? modifiers = null,Object? currencySymbol = freezed,}) {
  return _then(OrderItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,priceWithoutDiscount: freezed == priceWithoutDiscount ? _self.priceWithoutDiscount : priceWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,barcodes: null == barcodes ? _self.barcodes : barcodes // ignore: cast_nullable_to_non_nullable
as List<String>,modifiers: null == modifiers ? _self.modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<ModifierGroupOrderItem>,currencySymbol: freezed == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderItem].
extension OrderItemPatterns on OrderItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItem value)  $default,){
final _that = this;
switch (_that) {
case _OrderItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItem value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  num amount,  double? price,  double? priceWithoutDiscount,  String? name,  List<String> barcodes,  List<ModifierGroupOrderItem> modifiers,  String? currencySymbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.id,_that.amount,_that.price,_that.priceWithoutDiscount,_that.name,_that.barcodes,_that.modifiers,_that.currencySymbol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  num amount,  double? price,  double? priceWithoutDiscount,  String? name,  List<String> barcodes,  List<ModifierGroupOrderItem> modifiers,  String? currencySymbol)  $default,) {final _that = this;
switch (_that) {
case _OrderItem():
return $default(_that.id,_that.amount,_that.price,_that.priceWithoutDiscount,_that.name,_that.barcodes,_that.modifiers,_that.currencySymbol);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  num amount,  double? price,  double? priceWithoutDiscount,  String? name,  List<String> barcodes,  List<ModifierGroupOrderItem> modifiers,  String? currencySymbol)?  $default,) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.id,_that.amount,_that.price,_that.priceWithoutDiscount,_that.name,_that.barcodes,_that.modifiers,_that.currencySymbol);case _:
  return null;

}
}

}

/// @nodoc


class _OrderItem extends OrderItem {
  const _OrderItem({required this.id, required this.amount, this.price, this.priceWithoutDiscount, this.name,  List<String> barcodes = const [],  List<ModifierGroupOrderItem> modifiers = const [], this.currencySymbol}): _barcodes = barcodes,_modifiers = modifiers,super._();
  

@override final  String id;
@override final  num amount;
@override final  double? price;
@override final  double? priceWithoutDiscount;
@override final  String? name;
 final  List<String> _barcodes;
@override@JsonKey() List<String> get barcodes {
  if (_barcodes is EqualUnmodifiableListView) return _barcodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_barcodes);
}

 final  List<ModifierGroupOrderItem> _modifiers;
@override@JsonKey() List<ModifierGroupOrderItem> get modifiers {
  if (_modifiers is EqualUnmodifiableListView) return _modifiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modifiers);
}

@override final  String? currencySymbol;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemCopyWith<_OrderItem> get copyWith => __$OrderItemCopyWithImpl<_OrderItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceWithoutDiscount, priceWithoutDiscount) || other.priceWithoutDiscount == priceWithoutDiscount)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._barcodes, _barcodes)&&const DeepCollectionEquality().equals(other._modifiers, _modifiers)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,price,priceWithoutDiscount,name,const DeepCollectionEquality().hash(_barcodes),const DeepCollectionEquality().hash(_modifiers),currencySymbol);

@override
String toString() {
  return 'OrderItem(id: $id, amount: $amount, price: $price, priceWithoutDiscount: $priceWithoutDiscount, name: $name, barcodes: $barcodes, modifiers: $modifiers, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class _$OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$OrderItemCopyWith(_OrderItem value, $Res Function(_OrderItem) _then) = __$OrderItemCopyWithImpl;
@override @useResult
$Res call({
 String id, num amount, double? price, double? priceWithoutDiscount, String? name, List<String> barcodes, List<ModifierGroupOrderItem> modifiers, String? currencySymbol
});




}
/// @nodoc
class __$OrderItemCopyWithImpl<$Res>
    implements _$OrderItemCopyWith<$Res> {
  __$OrderItemCopyWithImpl(this._self, this._then);

  final _OrderItem _self;
  final $Res Function(_OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? price = freezed,Object? priceWithoutDiscount = freezed,Object? name = freezed,Object? barcodes = null,Object? modifiers = null,Object? currencySymbol = freezed,}) {
  return _then(_OrderItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,priceWithoutDiscount: freezed == priceWithoutDiscount ? _self.priceWithoutDiscount : priceWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,barcodes: null == barcodes ? _self._barcodes : barcodes // ignore: cast_nullable_to_non_nullable
as List<String>,modifiers: null == modifiers ? _self._modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<ModifierGroupOrderItem>,currencySymbol: freezed == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ModifierGroupOrderItem {

 String get id; String? get name; List<ModifierOrderItem> get modifiers;
/// Create a copy of ModifierGroupOrderItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModifierGroupOrderItemCopyWith<ModifierGroupOrderItem> get copyWith => _$ModifierGroupOrderItemCopyWithImpl<ModifierGroupOrderItem>(this as ModifierGroupOrderItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModifierGroupOrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.modifiers, modifiers));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(modifiers));

@override
String toString() {
  return 'ModifierGroupOrderItem(id: $id, name: $name, modifiers: $modifiers)';
}


}

/// @nodoc
abstract mixin class $ModifierGroupOrderItemCopyWith<$Res>  {
  factory $ModifierGroupOrderItemCopyWith(ModifierGroupOrderItem value, $Res Function(ModifierGroupOrderItem) _then) = _$ModifierGroupOrderItemCopyWithImpl;
@useResult
$Res call({
 String id, String? name, List<ModifierOrderItem> modifiers
});




}
/// @nodoc
class _$ModifierGroupOrderItemCopyWithImpl<$Res>
    implements $ModifierGroupOrderItemCopyWith<$Res> {
  _$ModifierGroupOrderItemCopyWithImpl(this._self, this._then);

  final ModifierGroupOrderItem _self;
  final $Res Function(ModifierGroupOrderItem) _then;

/// Create a copy of ModifierGroupOrderItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? modifiers = null,}) {
  return _then(ModifierGroupOrderItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,modifiers: null == modifiers ? _self.modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<ModifierOrderItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [ModifierGroupOrderItem].
extension ModifierGroupOrderItemPatterns on ModifierGroupOrderItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModifierGroupOrderItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModifierGroupOrderItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModifierGroupOrderItem value)  $default,){
final _that = this;
switch (_that) {
case _ModifierGroupOrderItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModifierGroupOrderItem value)?  $default,){
final _that = this;
switch (_that) {
case _ModifierGroupOrderItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name,  List<ModifierOrderItem> modifiers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModifierGroupOrderItem() when $default != null:
return $default(_that.id,_that.name,_that.modifiers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name,  List<ModifierOrderItem> modifiers)  $default,) {final _that = this;
switch (_that) {
case _ModifierGroupOrderItem():
return $default(_that.id,_that.name,_that.modifiers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name,  List<ModifierOrderItem> modifiers)?  $default,) {final _that = this;
switch (_that) {
case _ModifierGroupOrderItem() when $default != null:
return $default(_that.id,_that.name,_that.modifiers);case _:
  return null;

}
}

}

/// @nodoc


class _ModifierGroupOrderItem extends ModifierGroupOrderItem {
  const _ModifierGroupOrderItem({required this.id, this.name,  List<ModifierOrderItem> modifiers = const []}): _modifiers = modifiers,super._();
  

@override final  String id;
@override final  String? name;
 final  List<ModifierOrderItem> _modifiers;
@override@JsonKey() List<ModifierOrderItem> get modifiers {
  if (_modifiers is EqualUnmodifiableListView) return _modifiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modifiers);
}


/// Create a copy of ModifierGroupOrderItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModifierGroupOrderItemCopyWith<_ModifierGroupOrderItem> get copyWith => __$ModifierGroupOrderItemCopyWithImpl<_ModifierGroupOrderItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModifierGroupOrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._modifiers, _modifiers));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_modifiers));

@override
String toString() {
  return 'ModifierGroupOrderItem(id: $id, name: $name, modifiers: $modifiers)';
}


}

/// @nodoc
abstract mixin class _$ModifierGroupOrderItemCopyWith<$Res> implements $ModifierGroupOrderItemCopyWith<$Res> {
  factory _$ModifierGroupOrderItemCopyWith(_ModifierGroupOrderItem value, $Res Function(_ModifierGroupOrderItem) _then) = __$ModifierGroupOrderItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, List<ModifierOrderItem> modifiers
});




}
/// @nodoc
class __$ModifierGroupOrderItemCopyWithImpl<$Res>
    implements _$ModifierGroupOrderItemCopyWith<$Res> {
  __$ModifierGroupOrderItemCopyWithImpl(this._self, this._then);

  final _ModifierGroupOrderItem _self;
  final $Res Function(_ModifierGroupOrderItem) _then;

/// Create a copy of ModifierGroupOrderItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? modifiers = null,}) {
  return _then(_ModifierGroupOrderItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,modifiers: null == modifiers ? _self._modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<ModifierOrderItem>,
  ));
}


}

/// @nodoc
mixin _$ModifierOrderItem {

 String get id; double get price; num get amount; String? get name;
/// Create a copy of ModifierOrderItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModifierOrderItemCopyWith<ModifierOrderItem> get copyWith => _$ModifierOrderItemCopyWithImpl<ModifierOrderItem>(this as ModifierOrderItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModifierOrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,price,amount,name);

@override
String toString() {
  return 'ModifierOrderItem(id: $id, price: $price, amount: $amount, name: $name)';
}


}

/// @nodoc
abstract mixin class $ModifierOrderItemCopyWith<$Res>  {
  factory $ModifierOrderItemCopyWith(ModifierOrderItem value, $Res Function(ModifierOrderItem) _then) = _$ModifierOrderItemCopyWithImpl;
@useResult
$Res call({
 String id, double price, num amount, String? name
});




}
/// @nodoc
class _$ModifierOrderItemCopyWithImpl<$Res>
    implements $ModifierOrderItemCopyWith<$Res> {
  _$ModifierOrderItemCopyWithImpl(this._self, this._then);

  final ModifierOrderItem _self;
  final $Res Function(ModifierOrderItem) _then;

/// Create a copy of ModifierOrderItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? price = null,Object? amount = null,Object? name = freezed,}) {
  return _then(ModifierOrderItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ModifierOrderItem].
extension ModifierOrderItemPatterns on ModifierOrderItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModifierOrderItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModifierOrderItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModifierOrderItem value)  $default,){
final _that = this;
switch (_that) {
case _ModifierOrderItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModifierOrderItem value)?  $default,){
final _that = this;
switch (_that) {
case _ModifierOrderItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  double price,  num amount,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModifierOrderItem() when $default != null:
return $default(_that.id,_that.price,_that.amount,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  double price,  num amount,  String? name)  $default,) {final _that = this;
switch (_that) {
case _ModifierOrderItem():
return $default(_that.id,_that.price,_that.amount,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  double price,  num amount,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _ModifierOrderItem() when $default != null:
return $default(_that.id,_that.price,_that.amount,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _ModifierOrderItem extends ModifierOrderItem {
  const _ModifierOrderItem({required this.id, required this.price, required this.amount, this.name}): super._();
  

@override final  String id;
@override final  double price;
@override final  num amount;
@override final  String? name;

/// Create a copy of ModifierOrderItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModifierOrderItemCopyWith<_ModifierOrderItem> get copyWith => __$ModifierOrderItemCopyWithImpl<_ModifierOrderItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModifierOrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,price,amount,name);

@override
String toString() {
  return 'ModifierOrderItem(id: $id, price: $price, amount: $amount, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ModifierOrderItemCopyWith<$Res> implements $ModifierOrderItemCopyWith<$Res> {
  factory _$ModifierOrderItemCopyWith(_ModifierOrderItem value, $Res Function(_ModifierOrderItem) _then) = __$ModifierOrderItemCopyWithImpl;
@override @useResult
$Res call({
 String id, double price, num amount, String? name
});




}
/// @nodoc
class __$ModifierOrderItemCopyWithImpl<$Res>
    implements _$ModifierOrderItemCopyWith<$Res> {
  __$ModifierOrderItemCopyWithImpl(this._self, this._then);

  final _ModifierOrderItem _self;
  final $Res Function(_ModifierOrderItem) _then;

/// Create a copy of ModifierOrderItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? price = null,Object? amount = null,Object? name = freezed,}) {
  return _then(_ModifierOrderItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
