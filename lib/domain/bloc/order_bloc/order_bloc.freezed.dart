// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderState implements DiagnosticableTreeMixin {

 OrderModel? get order; OrderCreateStatus get status; bool get isValid;
/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStateCopyWith<OrderState> get copyWith => _$OrderStateCopyWithImpl<OrderState>(this as OrderState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderState'))
    ..add(DiagnosticsProperty('order', order))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('isValid', isValid));
}



@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderState(order: $order, status: $status, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class $OrderStateCopyWith<$Res>  {
  factory $OrderStateCopyWith(OrderState value, $Res Function(OrderState) _then) = _$OrderStateCopyWithImpl;
@useResult
$Res call({
 OrderModel? order, OrderCreateStatus status, bool isValid
});


$OrderModelCopyWith<$Res>? get order;

}
/// @nodoc
class _$OrderStateCopyWithImpl<$Res>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._self, this._then);

  final OrderState _self;
  final $Res Function(OrderState) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? order = freezed,Object? status = null,Object? isValid = null,}) {
  return _then(OrderState(
order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderModel?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderCreateStatus,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $OrderModelCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderState].
extension OrderStatePatterns on OrderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderState value)  $default,){
final _that = this;
switch (_that) {
case _OrderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderModel? order,  OrderCreateStatus status,  bool isValid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderState() when $default != null:
return $default(_that.order,_that.status,_that.isValid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderModel? order,  OrderCreateStatus status,  bool isValid)  $default,) {final _that = this;
switch (_that) {
case _OrderState():
return $default(_that.order,_that.status,_that.isValid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderModel? order,  OrderCreateStatus status,  bool isValid)?  $default,) {final _that = this;
switch (_that) {
case _OrderState() when $default != null:
return $default(_that.order,_that.status,_that.isValid);case _:
  return null;

}
}

}

/// @nodoc


class _OrderState with DiagnosticableTreeMixin implements OrderState {
  const _OrderState({this.order, this.status = OrderCreateStatus.init, this.isValid = false}): assert(order != null || status == OrderCreateStatus.init);
  

@override final  OrderModel? order;
@override@JsonKey() final  OrderCreateStatus status;
@override@JsonKey() final  bool isValid;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderStateCopyWith<_OrderState> get copyWith => __$OrderStateCopyWithImpl<_OrderState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderState'))
    ..add(DiagnosticsProperty('order', order))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('isValid', isValid));
}



@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderState(order: $order, status: $status, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class _$OrderStateCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory _$OrderStateCopyWith(_OrderState value, $Res Function(_OrderState) _then) = __$OrderStateCopyWithImpl;
@override @useResult
$Res call({
 OrderModel? order, OrderCreateStatus status, bool isValid
});


@override $OrderModelCopyWith<$Res>? get order;

}
/// @nodoc
class __$OrderStateCopyWithImpl<$Res>
    implements _$OrderStateCopyWith<$Res> {
  __$OrderStateCopyWithImpl(this._self, this._then);

  final _OrderState _self;
  final $Res Function(_OrderState) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? order = freezed,Object? status = null,Object? isValid = null,}) {
  return _then(_OrderState(
order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderModel?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderCreateStatus,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $OrderModelCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}

/// @nodoc
mixin _$OrderSr implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderSr'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderSr()';
}


}

/// @nodoc
class $OrderSrCopyWith<$Res>  {
$OrderSrCopyWith(OrderSr _, $Res Function(OrderSr) __);
}


/// Adds pattern-matching-related methods to [OrderSr].
extension OrderSrPatterns on OrderSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OrderLoadingSr value)?  loading,TResult Function( OrderNeedUserDataSr value)?  needUserData,TResult Function( NeedOrderDataSr value)?  needOrderData,TResult Function( OrderSubmitSr value)?  submit,TResult Function( OrderProcessPaymentSr value)?  processPayment,TResult Function( OrderErrorSr value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OrderLoadingSr() when loading != null:
return loading(_that);case OrderNeedUserDataSr() when needUserData != null:
return needUserData(_that);case NeedOrderDataSr() when needOrderData != null:
return needOrderData(_that);case OrderSubmitSr() when submit != null:
return submit(_that);case OrderProcessPaymentSr() when processPayment != null:
return processPayment(_that);case OrderErrorSr() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OrderLoadingSr value)  loading,required TResult Function( OrderNeedUserDataSr value)  needUserData,required TResult Function( NeedOrderDataSr value)  needOrderData,required TResult Function( OrderSubmitSr value)  submit,required TResult Function( OrderProcessPaymentSr value)  processPayment,required TResult Function( OrderErrorSr value)  error,}){
final _that = this;
switch (_that) {
case OrderLoadingSr():
return loading(_that);case OrderNeedUserDataSr():
return needUserData(_that);case NeedOrderDataSr():
return needOrderData(_that);case OrderSubmitSr():
return submit(_that);case OrderProcessPaymentSr():
return processPayment(_that);case OrderErrorSr():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OrderLoadingSr value)?  loading,TResult? Function( OrderNeedUserDataSr value)?  needUserData,TResult? Function( NeedOrderDataSr value)?  needOrderData,TResult? Function( OrderSubmitSr value)?  submit,TResult? Function( OrderProcessPaymentSr value)?  processPayment,TResult? Function( OrderErrorSr value)?  error,}){
final _that = this;
switch (_that) {
case OrderLoadingSr() when loading != null:
return loading(_that);case OrderNeedUserDataSr() when needUserData != null:
return needUserData(_that);case NeedOrderDataSr() when needOrderData != null:
return needOrderData(_that);case OrderSubmitSr() when submit != null:
return submit(_that);case OrderProcessPaymentSr() when processPayment != null:
return processPayment(_that);case OrderErrorSr() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  needUserData,TResult Function( OrderModel order)?  needOrderData,TResult Function( OrderModel order,  PaymentResponse? payment)?  submit,TResult Function( Uri paymentUrl,  bool isSBP)?  processPayment,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OrderLoadingSr() when loading != null:
return loading();case OrderNeedUserDataSr() when needUserData != null:
return needUserData();case NeedOrderDataSr() when needOrderData != null:
return needOrderData(_that.order);case OrderSubmitSr() when submit != null:
return submit(_that.order,_that.payment);case OrderProcessPaymentSr() when processPayment != null:
return processPayment(_that.paymentUrl,_that.isSBP);case OrderErrorSr() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  needUserData,required TResult Function( OrderModel order)  needOrderData,required TResult Function( OrderModel order,  PaymentResponse? payment)  submit,required TResult Function( Uri paymentUrl,  bool isSBP)  processPayment,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case OrderLoadingSr():
return loading();case OrderNeedUserDataSr():
return needUserData();case NeedOrderDataSr():
return needOrderData(_that.order);case OrderSubmitSr():
return submit(_that.order,_that.payment);case OrderProcessPaymentSr():
return processPayment(_that.paymentUrl,_that.isSBP);case OrderErrorSr():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  needUserData,TResult? Function( OrderModel order)?  needOrderData,TResult? Function( OrderModel order,  PaymentResponse? payment)?  submit,TResult? Function( Uri paymentUrl,  bool isSBP)?  processPayment,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case OrderLoadingSr() when loading != null:
return loading();case OrderNeedUserDataSr() when needUserData != null:
return needUserData();case NeedOrderDataSr() when needOrderData != null:
return needOrderData(_that.order);case OrderSubmitSr() when submit != null:
return submit(_that.order,_that.payment);case OrderProcessPaymentSr() when processPayment != null:
return processPayment(_that.paymentUrl,_that.isSBP);case OrderErrorSr() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class OrderLoadingSr extends OrderSr with DiagnosticableTreeMixin {
  const OrderLoadingSr(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderSr.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderLoadingSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderSr.loading()';
}


}




/// @nodoc


class OrderNeedUserDataSr extends OrderSr with DiagnosticableTreeMixin {
  const OrderNeedUserDataSr(): super._();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderSr.needUserData'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderNeedUserDataSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderSr.needUserData()';
}


}




/// @nodoc


class NeedOrderDataSr extends OrderSr with DiagnosticableTreeMixin {
  const NeedOrderDataSr({required this.order}): super._();
  

 final  OrderModel order;

/// Create a copy of OrderSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NeedOrderDataSrCopyWith<NeedOrderDataSr> get copyWith => _$NeedOrderDataSrCopyWithImpl<NeedOrderDataSr>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderSr.needOrderData'))
    ..add(DiagnosticsProperty('order', order));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NeedOrderDataSr&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderSr.needOrderData(order: $order)';
}


}

/// @nodoc
abstract mixin class $NeedOrderDataSrCopyWith<$Res> implements $OrderSrCopyWith<$Res> {
  factory $NeedOrderDataSrCopyWith(NeedOrderDataSr value, $Res Function(NeedOrderDataSr) _then) = _$NeedOrderDataSrCopyWithImpl;
@useResult
$Res call({
 OrderModel order
});


$OrderModelCopyWith<$Res> get order;

}
/// @nodoc
class _$NeedOrderDataSrCopyWithImpl<$Res>
    implements $NeedOrderDataSrCopyWith<$Res> {
  _$NeedOrderDataSrCopyWithImpl(this._self, this._then);

  final NeedOrderDataSr _self;
  final $Res Function(NeedOrderDataSr) _then;

/// Create a copy of OrderSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(NeedOrderDataSr(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderModel,
  ));
}

/// Create a copy of OrderSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res> get order {
  
  return $OrderModelCopyWith<$Res>(_self.order, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}

/// @nodoc


class OrderSubmitSr extends OrderSr with DiagnosticableTreeMixin {
  const OrderSubmitSr({required this.order, this.payment}): super._();
  

 final  OrderModel order;
 final  PaymentResponse? payment;

/// Create a copy of OrderSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderSubmitSrCopyWith<OrderSubmitSr> get copyWith => _$OrderSubmitSrCopyWithImpl<OrderSubmitSr>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderSr.submit'))
    ..add(DiagnosticsProperty('order', order))..add(DiagnosticsProperty('payment', payment));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderSubmitSr&&(identical(other.order, order) || other.order == order)&&(identical(other.payment, payment) || other.payment == payment));
}


@override
int get hashCode => Object.hash(runtimeType,order,payment);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderSr.submit(order: $order, payment: $payment)';
}


}

/// @nodoc
abstract mixin class $OrderSubmitSrCopyWith<$Res> implements $OrderSrCopyWith<$Res> {
  factory $OrderSubmitSrCopyWith(OrderSubmitSr value, $Res Function(OrderSubmitSr) _then) = _$OrderSubmitSrCopyWithImpl;
@useResult
$Res call({
 OrderModel order, PaymentResponse? payment
});


$OrderModelCopyWith<$Res> get order;$PaymentResponseCopyWith<$Res>? get payment;

}
/// @nodoc
class _$OrderSubmitSrCopyWithImpl<$Res>
    implements $OrderSubmitSrCopyWith<$Res> {
  _$OrderSubmitSrCopyWithImpl(this._self, this._then);

  final OrderSubmitSr _self;
  final $Res Function(OrderSubmitSr) _then;

/// Create a copy of OrderSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,Object? payment = freezed,}) {
  return _then(OrderSubmitSr(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderModel,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentResponse?,
  ));
}

/// Create a copy of OrderSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res> get order {
  
  return $OrderModelCopyWith<$Res>(_self.order, (value) {
    return _then(_self.copyWith(order: value));
  });
}/// Create a copy of OrderSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentResponseCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $PaymentResponseCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}

/// @nodoc


class OrderProcessPaymentSr extends OrderSr with DiagnosticableTreeMixin {
  const OrderProcessPaymentSr(this.paymentUrl, {this.isSBP = false}): super._();
  

 final  Uri paymentUrl;
@JsonKey() final  bool isSBP;

/// Create a copy of OrderSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderProcessPaymentSrCopyWith<OrderProcessPaymentSr> get copyWith => _$OrderProcessPaymentSrCopyWithImpl<OrderProcessPaymentSr>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderSr.processPayment'))
    ..add(DiagnosticsProperty('paymentUrl', paymentUrl))..add(DiagnosticsProperty('isSBP', isSBP));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderProcessPaymentSr&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.isSBP, isSBP) || other.isSBP == isSBP));
}


@override
int get hashCode => Object.hash(runtimeType,paymentUrl,isSBP);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderSr.processPayment(paymentUrl: $paymentUrl, isSBP: $isSBP)';
}


}

/// @nodoc
abstract mixin class $OrderProcessPaymentSrCopyWith<$Res> implements $OrderSrCopyWith<$Res> {
  factory $OrderProcessPaymentSrCopyWith(OrderProcessPaymentSr value, $Res Function(OrderProcessPaymentSr) _then) = _$OrderProcessPaymentSrCopyWithImpl;
@useResult
$Res call({
 Uri paymentUrl, bool isSBP
});




}
/// @nodoc
class _$OrderProcessPaymentSrCopyWithImpl<$Res>
    implements $OrderProcessPaymentSrCopyWith<$Res> {
  _$OrderProcessPaymentSrCopyWithImpl(this._self, this._then);

  final OrderProcessPaymentSr _self;
  final $Res Function(OrderProcessPaymentSr) _then;

/// Create a copy of OrderSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? paymentUrl = null,Object? isSBP = null,}) {
  return _then(OrderProcessPaymentSr(
null == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as Uri,isSBP: null == isSBP ? _self.isSBP : isSBP // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class OrderErrorSr extends OrderSr with DiagnosticableTreeMixin {
  const OrderErrorSr(this.error): super._();
  

 final  String error;

/// Create a copy of OrderSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderErrorSrCopyWith<OrderErrorSr> get copyWith => _$OrderErrorSrCopyWithImpl<OrderErrorSr>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderSr.error'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $OrderErrorSrCopyWith<$Res> implements $OrderSrCopyWith<$Res> {
  factory $OrderErrorSrCopyWith(OrderErrorSr value, $Res Function(OrderErrorSr) _then) = _$OrderErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$OrderErrorSrCopyWithImpl<$Res>
    implements $OrderErrorSrCopyWith<$Res> {
  _$OrderErrorSrCopyWithImpl(this._self, this._then);

  final OrderErrorSr _self;
  final $Res Function(OrderErrorSr) _then;

/// Create a copy of OrderSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(OrderErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
