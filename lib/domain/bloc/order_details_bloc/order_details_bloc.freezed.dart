// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderDetailsState {

 OrderDetailsStatus get status; AcceptedOrder? get order; bool get isUnpaidOrder; PaymentType? get paymentType;
/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailsStateCopyWith<OrderDetailsState> get copyWith => _$OrderDetailsStateCopyWithImpl<OrderDetailsState>(this as OrderDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.order, order) || other.order == order)&&(identical(other.isUnpaidOrder, isUnpaidOrder) || other.isUnpaidOrder == isUnpaidOrder)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType));
}


@override
int get hashCode => Object.hash(runtimeType,status,order,isUnpaidOrder,paymentType);

@override
String toString() {
  return 'OrderDetailsState(status: $status, order: $order, isUnpaidOrder: $isUnpaidOrder, paymentType: $paymentType)';
}


}

/// @nodoc
abstract mixin class $OrderDetailsStateCopyWith<$Res>  {
  factory $OrderDetailsStateCopyWith(OrderDetailsState value, $Res Function(OrderDetailsState) _then) = _$OrderDetailsStateCopyWithImpl;
@useResult
$Res call({
 OrderDetailsStatus status, AcceptedOrder? order, bool isUnpaidOrder, PaymentType? paymentType
});


$AcceptedOrderCopyWith<$Res>? get order;$PaymentTypeCopyWith<$Res>? get paymentType;

}
/// @nodoc
class _$OrderDetailsStateCopyWithImpl<$Res>
    implements $OrderDetailsStateCopyWith<$Res> {
  _$OrderDetailsStateCopyWithImpl(this._self, this._then);

  final OrderDetailsState _self;
  final $Res Function(OrderDetailsState) _then;

/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? order = freezed,Object? isUnpaidOrder = null,Object? paymentType = freezed,}) {
  return _then(OrderDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderDetailsStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AcceptedOrder?,isUnpaidOrder: null == isUnpaidOrder ? _self.isUnpaidOrder : isUnpaidOrder // ignore: cast_nullable_to_non_nullable
as bool,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType?,
  ));
}
/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcceptedOrderCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $AcceptedOrderCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}/// Create a copy of OrderDetailsState
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
}
}


/// Adds pattern-matching-related methods to [OrderDetailsState].
extension OrderDetailsStatePatterns on OrderDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderDetailsStatus status,  AcceptedOrder? order,  bool isUnpaidOrder,  PaymentType? paymentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailsState() when $default != null:
return $default(_that.status,_that.order,_that.isUnpaidOrder,_that.paymentType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderDetailsStatus status,  AcceptedOrder? order,  bool isUnpaidOrder,  PaymentType? paymentType)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailsState():
return $default(_that.status,_that.order,_that.isUnpaidOrder,_that.paymentType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderDetailsStatus status,  AcceptedOrder? order,  bool isUnpaidOrder,  PaymentType? paymentType)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailsState() when $default != null:
return $default(_that.status,_that.order,_that.isUnpaidOrder,_that.paymentType);case _:
  return null;

}
}

}

/// @nodoc


class _OrderDetailsState implements OrderDetailsState {
  const _OrderDetailsState({this.status = OrderDetailsStatus.init, this.order, this.isUnpaidOrder = false, this.paymentType});
  

@override@JsonKey() final  OrderDetailsStatus status;
@override final  AcceptedOrder? order;
@override@JsonKey() final  bool isUnpaidOrder;
@override final  PaymentType? paymentType;

/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailsStateCopyWith<_OrderDetailsState> get copyWith => __$OrderDetailsStateCopyWithImpl<_OrderDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.order, order) || other.order == order)&&(identical(other.isUnpaidOrder, isUnpaidOrder) || other.isUnpaidOrder == isUnpaidOrder)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType));
}


@override
int get hashCode => Object.hash(runtimeType,status,order,isUnpaidOrder,paymentType);

@override
String toString() {
  return 'OrderDetailsState(status: $status, order: $order, isUnpaidOrder: $isUnpaidOrder, paymentType: $paymentType)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailsStateCopyWith<$Res> implements $OrderDetailsStateCopyWith<$Res> {
  factory _$OrderDetailsStateCopyWith(_OrderDetailsState value, $Res Function(_OrderDetailsState) _then) = __$OrderDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 OrderDetailsStatus status, AcceptedOrder? order, bool isUnpaidOrder, PaymentType? paymentType
});


@override $AcceptedOrderCopyWith<$Res>? get order;@override $PaymentTypeCopyWith<$Res>? get paymentType;

}
/// @nodoc
class __$OrderDetailsStateCopyWithImpl<$Res>
    implements _$OrderDetailsStateCopyWith<$Res> {
  __$OrderDetailsStateCopyWithImpl(this._self, this._then);

  final _OrderDetailsState _self;
  final $Res Function(_OrderDetailsState) _then;

/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? order = freezed,Object? isUnpaidOrder = null,Object? paymentType = freezed,}) {
  return _then(_OrderDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderDetailsStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AcceptedOrder?,isUnpaidOrder: null == isUnpaidOrder ? _self.isUnpaidOrder : isUnpaidOrder // ignore: cast_nullable_to_non_nullable
as bool,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType?,
  ));
}

/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcceptedOrderCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $AcceptedOrderCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}/// Create a copy of OrderDetailsState
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
}
}

/// @nodoc
mixin _$OrderDetailsSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailsSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderDetailsSr()';
}


}

/// @nodoc
class $OrderDetailsSrCopyWith<$Res>  {
$OrderDetailsSrCopyWith(OrderDetailsSr _, $Res Function(OrderDetailsSr) __);
}


/// Adds pattern-matching-related methods to [OrderDetailsSr].
extension OrderDetailsSrPatterns on OrderDetailsSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ErrorSr value)?  error,TResult Function( _ReceiptNotReadySr value)?  receiptNotReady,TResult Function( ProcessPaymentSr value)?  processPayment,TResult Function( ShowPaymentTypeList value)?  showPaymentTypeList,TResult Function( ShowCreateReview value)?  showCreateReview,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _ReceiptNotReadySr() when receiptNotReady != null:
return receiptNotReady(_that);case ProcessPaymentSr() when processPayment != null:
return processPayment(_that);case ShowPaymentTypeList() when showPaymentTypeList != null:
return showPaymentTypeList(_that);case ShowCreateReview() when showCreateReview != null:
return showCreateReview(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ErrorSr value)  error,required TResult Function( _ReceiptNotReadySr value)  receiptNotReady,required TResult Function( ProcessPaymentSr value)  processPayment,required TResult Function( ShowPaymentTypeList value)  showPaymentTypeList,required TResult Function( ShowCreateReview value)  showCreateReview,}){
final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that);case _ReceiptNotReadySr():
return receiptNotReady(_that);case ProcessPaymentSr():
return processPayment(_that);case ShowPaymentTypeList():
return showPaymentTypeList(_that);case ShowCreateReview():
return showCreateReview(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ErrorSr value)?  error,TResult? Function( _ReceiptNotReadySr value)?  receiptNotReady,TResult? Function( ProcessPaymentSr value)?  processPayment,TResult? Function( ShowPaymentTypeList value)?  showPaymentTypeList,TResult? Function( ShowCreateReview value)?  showCreateReview,}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _ReceiptNotReadySr() when receiptNotReady != null:
return receiptNotReady(_that);case ProcessPaymentSr() when processPayment != null:
return processPayment(_that);case ShowPaymentTypeList() when showPaymentTypeList != null:
return showPaymentTypeList(_that);case ShowCreateReview() when showCreateReview != null:
return showCreateReview(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function()?  receiptNotReady,TResult Function( Payment payment,  String storeId)?  processPayment,TResult Function( PaymentType? selected,  String storeId)?  showPaymentTypeList,TResult Function( AcceptedOrder order)?  showCreateReview,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _ReceiptNotReadySr() when receiptNotReady != null:
return receiptNotReady();case ProcessPaymentSr() when processPayment != null:
return processPayment(_that.payment,_that.storeId);case ShowPaymentTypeList() when showPaymentTypeList != null:
return showPaymentTypeList(_that.selected,_that.storeId);case ShowCreateReview() when showCreateReview != null:
return showCreateReview(_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function()  receiptNotReady,required TResult Function( Payment payment,  String storeId)  processPayment,required TResult Function( PaymentType? selected,  String storeId)  showPaymentTypeList,required TResult Function( AcceptedOrder order)  showCreateReview,}) {final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that.error);case _ReceiptNotReadySr():
return receiptNotReady();case ProcessPaymentSr():
return processPayment(_that.payment,_that.storeId);case ShowPaymentTypeList():
return showPaymentTypeList(_that.selected,_that.storeId);case ShowCreateReview():
return showCreateReview(_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function()?  receiptNotReady,TResult? Function( Payment payment,  String storeId)?  processPayment,TResult? Function( PaymentType? selected,  String storeId)?  showPaymentTypeList,TResult? Function( AcceptedOrder order)?  showCreateReview,}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _ReceiptNotReadySr() when receiptNotReady != null:
return receiptNotReady();case ProcessPaymentSr() when processPayment != null:
return processPayment(_that.payment,_that.storeId);case ShowPaymentTypeList() when showPaymentTypeList != null:
return showPaymentTypeList(_that.selected,_that.storeId);case ShowCreateReview() when showCreateReview != null:
return showCreateReview(_that.order);case _:
  return null;

}
}

}

/// @nodoc


class _ErrorSr implements OrderDetailsSr {
  const _ErrorSr(this.error);
  

 final  String error;

/// Create a copy of OrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorSrCopyWith<_ErrorSr> get copyWith => __$ErrorSrCopyWithImpl<_ErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'OrderDetailsSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorSrCopyWith<$Res> implements $OrderDetailsSrCopyWith<$Res> {
  factory _$ErrorSrCopyWith(_ErrorSr value, $Res Function(_ErrorSr) _then) = __$ErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorSrCopyWithImpl<$Res>
    implements _$ErrorSrCopyWith<$Res> {
  __$ErrorSrCopyWithImpl(this._self, this._then);

  final _ErrorSr _self;
  final $Res Function(_ErrorSr) _then;

/// Create a copy of OrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ReceiptNotReadySr implements OrderDetailsSr {
  const _ReceiptNotReadySr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceiptNotReadySr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderDetailsSr.receiptNotReady()';
}


}




/// @nodoc


class ProcessPaymentSr implements OrderDetailsSr {
  const ProcessPaymentSr(this.payment, this.storeId);
  

 final  Payment payment;
 final  String storeId;

/// Create a copy of OrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcessPaymentSrCopyWith<ProcessPaymentSr> get copyWith => _$ProcessPaymentSrCopyWithImpl<ProcessPaymentSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessPaymentSr&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.storeId, storeId) || other.storeId == storeId));
}


@override
int get hashCode => Object.hash(runtimeType,payment,storeId);

@override
String toString() {
  return 'OrderDetailsSr.processPayment(payment: $payment, storeId: $storeId)';
}


}

/// @nodoc
abstract mixin class $ProcessPaymentSrCopyWith<$Res> implements $OrderDetailsSrCopyWith<$Res> {
  factory $ProcessPaymentSrCopyWith(ProcessPaymentSr value, $Res Function(ProcessPaymentSr) _then) = _$ProcessPaymentSrCopyWithImpl;
@useResult
$Res call({
 Payment payment, String storeId
});


$PaymentCopyWith<$Res> get payment;

}
/// @nodoc
class _$ProcessPaymentSrCopyWithImpl<$Res>
    implements $ProcessPaymentSrCopyWith<$Res> {
  _$ProcessPaymentSrCopyWithImpl(this._self, this._then);

  final ProcessPaymentSr _self;
  final $Res Function(ProcessPaymentSr) _then;

/// Create a copy of OrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? payment = null,Object? storeId = null,}) {
  return _then(ProcessPaymentSr(
null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as Payment,null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of OrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCopyWith<$Res> get payment {
  
  return $PaymentCopyWith<$Res>(_self.payment, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}

/// @nodoc


class ShowPaymentTypeList implements OrderDetailsSr {
  const ShowPaymentTypeList({this.selected, required this.storeId});
  

 final  PaymentType? selected;
 final  String storeId;

/// Create a copy of OrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowPaymentTypeListCopyWith<ShowPaymentTypeList> get copyWith => _$ShowPaymentTypeListCopyWithImpl<ShowPaymentTypeList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowPaymentTypeList&&(identical(other.selected, selected) || other.selected == selected)&&(identical(other.storeId, storeId) || other.storeId == storeId));
}


@override
int get hashCode => Object.hash(runtimeType,selected,storeId);

@override
String toString() {
  return 'OrderDetailsSr.showPaymentTypeList(selected: $selected, storeId: $storeId)';
}


}

/// @nodoc
abstract mixin class $ShowPaymentTypeListCopyWith<$Res> implements $OrderDetailsSrCopyWith<$Res> {
  factory $ShowPaymentTypeListCopyWith(ShowPaymentTypeList value, $Res Function(ShowPaymentTypeList) _then) = _$ShowPaymentTypeListCopyWithImpl;
@useResult
$Res call({
 PaymentType? selected, String storeId
});


$PaymentTypeCopyWith<$Res>? get selected;

}
/// @nodoc
class _$ShowPaymentTypeListCopyWithImpl<$Res>
    implements $ShowPaymentTypeListCopyWith<$Res> {
  _$ShowPaymentTypeListCopyWithImpl(this._self, this._then);

  final ShowPaymentTypeList _self;
  final $Res Function(ShowPaymentTypeList) _then;

/// Create a copy of OrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selected = freezed,Object? storeId = null,}) {
  return _then(ShowPaymentTypeList(
selected: freezed == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as PaymentType?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of OrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res>? get selected {
    if (_self.selected == null) {
    return null;
  }

  return $PaymentTypeCopyWith<$Res>(_self.selected!, (value) {
    return _then(_self.copyWith(selected: value));
  });
}
}

/// @nodoc


class ShowCreateReview implements OrderDetailsSr {
  const ShowCreateReview(this.order);
  

 final  AcceptedOrder order;

/// Create a copy of OrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowCreateReviewCopyWith<ShowCreateReview> get copyWith => _$ShowCreateReviewCopyWithImpl<ShowCreateReview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowCreateReview&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'OrderDetailsSr.showCreateReview(order: $order)';
}


}

/// @nodoc
abstract mixin class $ShowCreateReviewCopyWith<$Res> implements $OrderDetailsSrCopyWith<$Res> {
  factory $ShowCreateReviewCopyWith(ShowCreateReview value, $Res Function(ShowCreateReview) _then) = _$ShowCreateReviewCopyWithImpl;
@useResult
$Res call({
 AcceptedOrder order
});


$AcceptedOrderCopyWith<$Res> get order;

}
/// @nodoc
class _$ShowCreateReviewCopyWithImpl<$Res>
    implements $ShowCreateReviewCopyWith<$Res> {
  _$ShowCreateReviewCopyWithImpl(this._self, this._then);

  final ShowCreateReview _self;
  final $Res Function(ShowCreateReview) _then;

/// Create a copy of OrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(ShowCreateReview(
null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AcceptedOrder,
  ));
}

/// Create a copy of OrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcceptedOrderCopyWith<$Res> get order {
  
  return $AcceptedOrderCopyWith<$Res>(_self.order, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}

// dart format on
