// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderModel {

 String get id; String? get externalId; String? get publicId; Cart get cart; Store get store; String get phone; UserData? get userData; DateTime get date; PaymentType? get paymentType; CustomerApiPurchase? get purchase; OrderType get type; Payment? get payment; bool get isCoffee; String? get deviceId;
/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderModelCopyWith<OrderModel> get copyWith => _$OrderModelCopyWithImpl<OrderModel>(this as OrderModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.publicId, publicId) || other.publicId == publicId)&&(identical(other.cart, cart) || other.cart == cart)&&(identical(other.store, store) || other.store == store)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.date, date) || other.date == date)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.purchase, purchase) || other.purchase == purchase)&&(identical(other.type, type) || other.type == type)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.isCoffee, isCoffee) || other.isCoffee == isCoffee)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}


@override
int get hashCode => Object.hash(runtimeType,id,externalId,publicId,cart,store,phone,userData,date,paymentType,purchase,type,payment,isCoffee,deviceId);

@override
String toString() {
  return 'OrderModel(id: $id, externalId: $externalId, publicId: $publicId, cart: $cart, store: $store, phone: $phone, userData: $userData, date: $date, paymentType: $paymentType, purchase: $purchase, type: $type, payment: $payment, isCoffee: $isCoffee, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class $OrderModelCopyWith<$Res>  {
  factory $OrderModelCopyWith(OrderModel value, $Res Function(OrderModel) _then) = _$OrderModelCopyWithImpl;
@useResult
$Res call({
 String id, String? externalId, String? publicId, Cart cart, Store store, String phone, UserData? userData, DateTime date, PaymentType? paymentType, CustomerApiPurchase? purchase, OrderType type, Payment? payment, bool isCoffee, String? deviceId
});


$CartCopyWith<$Res> get cart;$StoreCopyWith<$Res> get store;$UserDataCopyWith<$Res>? get userData;$PaymentTypeCopyWith<$Res>? get paymentType;$CustomerApiPurchaseCopyWith<$Res>? get purchase;$PaymentCopyWith<$Res>? get payment;

}
/// @nodoc
class _$OrderModelCopyWithImpl<$Res>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._self, this._then);

  final OrderModel _self;
  final $Res Function(OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? externalId = freezed,Object? publicId = freezed,Object? cart = null,Object? store = null,Object? phone = null,Object? userData = freezed,Object? date = null,Object? paymentType = freezed,Object? purchase = freezed,Object? type = null,Object? payment = freezed,Object? isCoffee = null,Object? deviceId = freezed,}) {
  return _then(OrderModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,publicId: freezed == publicId ? _self.publicId : publicId // ignore: cast_nullable_to_non_nullable
as String?,cart: null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as Cart,store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserData?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType?,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as CustomerApiPurchase?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OrderType,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as Payment?,isCoffee: null == isCoffee ? _self.isCoffee : isCoffee // ignore: cast_nullable_to_non_nullable
as bool,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCopyWith<$Res> get cart {
  
  return $CartCopyWith<$Res>(_self.cart, (value) {
    return _then(_self.copyWith(cart: value));
  });
}/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res> get store {
  
  return $StoreCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res>? get paymentType {
    if (_self.paymentType == null) {
    return null;
  }

  return $PaymentTypeCopyWith<$Res>(_self.paymentType!, (value) {
    return _then(_self.copyWith(paymentType: value));
  });
}/// Create a copy of OrderModel
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
}/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $PaymentCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderModel].
extension OrderModelPatterns on OrderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? externalId,  String? publicId,  Cart cart,  Store store,  String phone,  UserData? userData,  DateTime date,  PaymentType? paymentType,  CustomerApiPurchase? purchase,  OrderType type,  Payment? payment,  bool isCoffee,  String? deviceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.externalId,_that.publicId,_that.cart,_that.store,_that.phone,_that.userData,_that.date,_that.paymentType,_that.purchase,_that.type,_that.payment,_that.isCoffee,_that.deviceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? externalId,  String? publicId,  Cart cart,  Store store,  String phone,  UserData? userData,  DateTime date,  PaymentType? paymentType,  CustomerApiPurchase? purchase,  OrderType type,  Payment? payment,  bool isCoffee,  String? deviceId)  $default,) {final _that = this;
switch (_that) {
case _OrderModel():
return $default(_that.id,_that.externalId,_that.publicId,_that.cart,_that.store,_that.phone,_that.userData,_that.date,_that.paymentType,_that.purchase,_that.type,_that.payment,_that.isCoffee,_that.deviceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? externalId,  String? publicId,  Cart cart,  Store store,  String phone,  UserData? userData,  DateTime date,  PaymentType? paymentType,  CustomerApiPurchase? purchase,  OrderType type,  Payment? payment,  bool isCoffee,  String? deviceId)?  $default,) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.externalId,_that.publicId,_that.cart,_that.store,_that.phone,_that.userData,_that.date,_that.paymentType,_that.purchase,_that.type,_that.payment,_that.isCoffee,_that.deviceId);case _:
  return null;

}
}

}

/// @nodoc


class _OrderModel extends OrderModel {
  const _OrderModel({required this.id, this.externalId, this.publicId, required this.cart, required this.store, required this.phone, this.userData, required this.date, this.paymentType, required this.purchase, this.type = OrderType.mobileApp, this.payment, this.isCoffee = false, this.deviceId}): super._();
  

@override final  String id;
@override final  String? externalId;
@override final  String? publicId;
@override final  Cart cart;
@override final  Store store;
@override final  String phone;
@override final  UserData? userData;
@override final  DateTime date;
@override final  PaymentType? paymentType;
@override final  CustomerApiPurchase? purchase;
@override@JsonKey() final  OrderType type;
@override final  Payment? payment;
@override@JsonKey() final  bool isCoffee;
@override final  String? deviceId;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderModelCopyWith<_OrderModel> get copyWith => __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.publicId, publicId) || other.publicId == publicId)&&(identical(other.cart, cart) || other.cart == cart)&&(identical(other.store, store) || other.store == store)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.date, date) || other.date == date)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.purchase, purchase) || other.purchase == purchase)&&(identical(other.type, type) || other.type == type)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.isCoffee, isCoffee) || other.isCoffee == isCoffee)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}


@override
int get hashCode => Object.hash(runtimeType,id,externalId,publicId,cart,store,phone,userData,date,paymentType,purchase,type,payment,isCoffee,deviceId);

@override
String toString() {
  return 'OrderModel(id: $id, externalId: $externalId, publicId: $publicId, cart: $cart, store: $store, phone: $phone, userData: $userData, date: $date, paymentType: $paymentType, purchase: $purchase, type: $type, payment: $payment, isCoffee: $isCoffee, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class _$OrderModelCopyWith<$Res> implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(_OrderModel value, $Res Function(_OrderModel) _then) = __$OrderModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String? externalId, String? publicId, Cart cart, Store store, String phone, UserData? userData, DateTime date, PaymentType? paymentType, CustomerApiPurchase? purchase, OrderType type, Payment? payment, bool isCoffee, String? deviceId
});


@override $CartCopyWith<$Res> get cart;@override $StoreCopyWith<$Res> get store;@override $UserDataCopyWith<$Res>? get userData;@override $PaymentTypeCopyWith<$Res>? get paymentType;@override $CustomerApiPurchaseCopyWith<$Res>? get purchase;@override $PaymentCopyWith<$Res>? get payment;

}
/// @nodoc
class __$OrderModelCopyWithImpl<$Res>
    implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(this._self, this._then);

  final _OrderModel _self;
  final $Res Function(_OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? externalId = freezed,Object? publicId = freezed,Object? cart = null,Object? store = null,Object? phone = null,Object? userData = freezed,Object? date = null,Object? paymentType = freezed,Object? purchase = freezed,Object? type = null,Object? payment = freezed,Object? isCoffee = null,Object? deviceId = freezed,}) {
  return _then(_OrderModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,publicId: freezed == publicId ? _self.publicId : publicId // ignore: cast_nullable_to_non_nullable
as String?,cart: null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as Cart,store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserData?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType?,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as CustomerApiPurchase?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OrderType,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as Payment?,isCoffee: null == isCoffee ? _self.isCoffee : isCoffee // ignore: cast_nullable_to_non_nullable
as bool,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCopyWith<$Res> get cart {
  
  return $CartCopyWith<$Res>(_self.cart, (value) {
    return _then(_self.copyWith(cart: value));
  });
}/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res> get store {
  
  return $StoreCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res>? get paymentType {
    if (_self.paymentType == null) {
    return null;
  }

  return $PaymentTypeCopyWith<$Res>(_self.paymentType!, (value) {
    return _then(_self.copyWith(paymentType: value));
  });
}/// Create a copy of OrderModel
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
}/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $PaymentCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}

// dart format on
