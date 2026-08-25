// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unpaid_order_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UnpaidOrderDetailsState {

 UnpaidOrderDetailsStatus get status; AcceptedOrder? get order; PaymentType? get paymentType;
/// Create a copy of UnpaidOrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnpaidOrderDetailsStateCopyWith<UnpaidOrderDetailsState> get copyWith => _$UnpaidOrderDetailsStateCopyWithImpl<UnpaidOrderDetailsState>(this as UnpaidOrderDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnpaidOrderDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.order, order) || other.order == order)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType));
}


@override
int get hashCode => Object.hash(runtimeType,status,order,paymentType);

@override
String toString() {
  return 'UnpaidOrderDetailsState(status: $status, order: $order, paymentType: $paymentType)';
}


}

/// @nodoc
abstract mixin class $UnpaidOrderDetailsStateCopyWith<$Res>  {
  factory $UnpaidOrderDetailsStateCopyWith(UnpaidOrderDetailsState value, $Res Function(UnpaidOrderDetailsState) _then) = _$UnpaidOrderDetailsStateCopyWithImpl;
@useResult
$Res call({
 UnpaidOrderDetailsStatus status, AcceptedOrder? order, PaymentType? paymentType
});


$AcceptedOrderCopyWith<$Res>? get order;$PaymentTypeCopyWith<$Res>? get paymentType;

}
/// @nodoc
class _$UnpaidOrderDetailsStateCopyWithImpl<$Res>
    implements $UnpaidOrderDetailsStateCopyWith<$Res> {
  _$UnpaidOrderDetailsStateCopyWithImpl(this._self, this._then);

  final UnpaidOrderDetailsState _self;
  final $Res Function(UnpaidOrderDetailsState) _then;

/// Create a copy of UnpaidOrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? order = freezed,Object? paymentType = freezed,}) {
  return _then(UnpaidOrderDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UnpaidOrderDetailsStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AcceptedOrder?,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType?,
  ));
}
/// Create a copy of UnpaidOrderDetailsState
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
}/// Create a copy of UnpaidOrderDetailsState
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


/// Adds pattern-matching-related methods to [UnpaidOrderDetailsState].
extension UnpaidOrderDetailsStatePatterns on UnpaidOrderDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnpaidOrderDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnpaidOrderDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnpaidOrderDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _UnpaidOrderDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnpaidOrderDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _UnpaidOrderDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UnpaidOrderDetailsStatus status,  AcceptedOrder? order,  PaymentType? paymentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnpaidOrderDetailsState() when $default != null:
return $default(_that.status,_that.order,_that.paymentType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UnpaidOrderDetailsStatus status,  AcceptedOrder? order,  PaymentType? paymentType)  $default,) {final _that = this;
switch (_that) {
case _UnpaidOrderDetailsState():
return $default(_that.status,_that.order,_that.paymentType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UnpaidOrderDetailsStatus status,  AcceptedOrder? order,  PaymentType? paymentType)?  $default,) {final _that = this;
switch (_that) {
case _UnpaidOrderDetailsState() when $default != null:
return $default(_that.status,_that.order,_that.paymentType);case _:
  return null;

}
}

}

/// @nodoc


class _UnpaidOrderDetailsState implements UnpaidOrderDetailsState {
  const _UnpaidOrderDetailsState({this.status = UnpaidOrderDetailsStatus.init, this.order, this.paymentType});
  

@override@JsonKey() final  UnpaidOrderDetailsStatus status;
@override final  AcceptedOrder? order;
@override final  PaymentType? paymentType;

/// Create a copy of UnpaidOrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnpaidOrderDetailsStateCopyWith<_UnpaidOrderDetailsState> get copyWith => __$UnpaidOrderDetailsStateCopyWithImpl<_UnpaidOrderDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnpaidOrderDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.order, order) || other.order == order)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType));
}


@override
int get hashCode => Object.hash(runtimeType,status,order,paymentType);

@override
String toString() {
  return 'UnpaidOrderDetailsState(status: $status, order: $order, paymentType: $paymentType)';
}


}

/// @nodoc
abstract mixin class _$UnpaidOrderDetailsStateCopyWith<$Res> implements $UnpaidOrderDetailsStateCopyWith<$Res> {
  factory _$UnpaidOrderDetailsStateCopyWith(_UnpaidOrderDetailsState value, $Res Function(_UnpaidOrderDetailsState) _then) = __$UnpaidOrderDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 UnpaidOrderDetailsStatus status, AcceptedOrder? order, PaymentType? paymentType
});


@override $AcceptedOrderCopyWith<$Res>? get order;@override $PaymentTypeCopyWith<$Res>? get paymentType;

}
/// @nodoc
class __$UnpaidOrderDetailsStateCopyWithImpl<$Res>
    implements _$UnpaidOrderDetailsStateCopyWith<$Res> {
  __$UnpaidOrderDetailsStateCopyWithImpl(this._self, this._then);

  final _UnpaidOrderDetailsState _self;
  final $Res Function(_UnpaidOrderDetailsState) _then;

/// Create a copy of UnpaidOrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? order = freezed,Object? paymentType = freezed,}) {
  return _then(_UnpaidOrderDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UnpaidOrderDetailsStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AcceptedOrder?,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType?,
  ));
}

/// Create a copy of UnpaidOrderDetailsState
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
}/// Create a copy of UnpaidOrderDetailsState
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
mixin _$UnpaidOrderDetailsSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnpaidOrderDetailsSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnpaidOrderDetailsSr()';
}


}

/// @nodoc
class $UnpaidOrderDetailsSrCopyWith<$Res>  {
$UnpaidOrderDetailsSrCopyWith(UnpaidOrderDetailsSr _, $Res Function(UnpaidOrderDetailsSr) __);
}


/// Adds pattern-matching-related methods to [UnpaidOrderDetailsSr].
extension UnpaidOrderDetailsSrPatterns on UnpaidOrderDetailsSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ErrorSr value)?  error,TResult Function( ProcessPaymentSr value)?  processPayment,TResult Function( SuccessPaymentSr value)?  successPayment,TResult Function( OrderCanceledSr value)?  orderCanceled,TResult Function( ShowOnboardingSr value)?  showOnboarding,TResult Function( ExitSr value)?  exit,TResult Function( ShowPaymentTypeList value)?  showPaymentTypeList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ErrorSr() when error != null:
return error(_that);case ProcessPaymentSr() when processPayment != null:
return processPayment(_that);case SuccessPaymentSr() when successPayment != null:
return successPayment(_that);case OrderCanceledSr() when orderCanceled != null:
return orderCanceled(_that);case ShowOnboardingSr() when showOnboarding != null:
return showOnboarding(_that);case ExitSr() when exit != null:
return exit(_that);case ShowPaymentTypeList() when showPaymentTypeList != null:
return showPaymentTypeList(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ErrorSr value)  error,required TResult Function( ProcessPaymentSr value)  processPayment,required TResult Function( SuccessPaymentSr value)  successPayment,required TResult Function( OrderCanceledSr value)  orderCanceled,required TResult Function( ShowOnboardingSr value)  showOnboarding,required TResult Function( ExitSr value)  exit,required TResult Function( ShowPaymentTypeList value)  showPaymentTypeList,}){
final _that = this;
switch (_that) {
case ErrorSr():
return error(_that);case ProcessPaymentSr():
return processPayment(_that);case SuccessPaymentSr():
return successPayment(_that);case OrderCanceledSr():
return orderCanceled(_that);case ShowOnboardingSr():
return showOnboarding(_that);case ExitSr():
return exit(_that);case ShowPaymentTypeList():
return showPaymentTypeList(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ErrorSr value)?  error,TResult? Function( ProcessPaymentSr value)?  processPayment,TResult? Function( SuccessPaymentSr value)?  successPayment,TResult? Function( OrderCanceledSr value)?  orderCanceled,TResult? Function( ShowOnboardingSr value)?  showOnboarding,TResult? Function( ExitSr value)?  exit,TResult? Function( ShowPaymentTypeList value)?  showPaymentTypeList,}){
final _that = this;
switch (_that) {
case ErrorSr() when error != null:
return error(_that);case ProcessPaymentSr() when processPayment != null:
return processPayment(_that);case SuccessPaymentSr() when successPayment != null:
return successPayment(_that);case OrderCanceledSr() when orderCanceled != null:
return orderCanceled(_that);case ShowOnboardingSr() when showOnboarding != null:
return showOnboarding(_that);case ExitSr() when exit != null:
return exit(_that);case ShowPaymentTypeList() when showPaymentTypeList != null:
return showPaymentTypeList(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function( Payment payment,  String storeId)?  processPayment,TResult Function()?  successPayment,TResult Function()?  orderCanceled,TResult Function()?  showOnboarding,TResult Function()?  exit,TResult Function( PaymentType? selected,  String storeId)?  showPaymentTypeList,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ErrorSr() when error != null:
return error(_that.error);case ProcessPaymentSr() when processPayment != null:
return processPayment(_that.payment,_that.storeId);case SuccessPaymentSr() when successPayment != null:
return successPayment();case OrderCanceledSr() when orderCanceled != null:
return orderCanceled();case ShowOnboardingSr() when showOnboarding != null:
return showOnboarding();case ExitSr() when exit != null:
return exit();case ShowPaymentTypeList() when showPaymentTypeList != null:
return showPaymentTypeList(_that.selected,_that.storeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function( Payment payment,  String storeId)  processPayment,required TResult Function()  successPayment,required TResult Function()  orderCanceled,required TResult Function()  showOnboarding,required TResult Function()  exit,required TResult Function( PaymentType? selected,  String storeId)  showPaymentTypeList,}) {final _that = this;
switch (_that) {
case ErrorSr():
return error(_that.error);case ProcessPaymentSr():
return processPayment(_that.payment,_that.storeId);case SuccessPaymentSr():
return successPayment();case OrderCanceledSr():
return orderCanceled();case ShowOnboardingSr():
return showOnboarding();case ExitSr():
return exit();case ShowPaymentTypeList():
return showPaymentTypeList(_that.selected,_that.storeId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function( Payment payment,  String storeId)?  processPayment,TResult? Function()?  successPayment,TResult? Function()?  orderCanceled,TResult? Function()?  showOnboarding,TResult? Function()?  exit,TResult? Function( PaymentType? selected,  String storeId)?  showPaymentTypeList,}) {final _that = this;
switch (_that) {
case ErrorSr() when error != null:
return error(_that.error);case ProcessPaymentSr() when processPayment != null:
return processPayment(_that.payment,_that.storeId);case SuccessPaymentSr() when successPayment != null:
return successPayment();case OrderCanceledSr() when orderCanceled != null:
return orderCanceled();case ShowOnboardingSr() when showOnboarding != null:
return showOnboarding();case ExitSr() when exit != null:
return exit();case ShowPaymentTypeList() when showPaymentTypeList != null:
return showPaymentTypeList(_that.selected,_that.storeId);case _:
  return null;

}
}

}

/// @nodoc


class ErrorSr implements UnpaidOrderDetailsSr {
  const ErrorSr(this.error);
  

 final  String error;

/// Create a copy of UnpaidOrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorSrCopyWith<ErrorSr> get copyWith => _$ErrorSrCopyWithImpl<ErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UnpaidOrderDetailsSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorSrCopyWith<$Res> implements $UnpaidOrderDetailsSrCopyWith<$Res> {
  factory $ErrorSrCopyWith(ErrorSr value, $Res Function(ErrorSr) _then) = _$ErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorSrCopyWithImpl<$Res>
    implements $ErrorSrCopyWith<$Res> {
  _$ErrorSrCopyWithImpl(this._self, this._then);

  final ErrorSr _self;
  final $Res Function(ErrorSr) _then;

/// Create a copy of UnpaidOrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ProcessPaymentSr implements UnpaidOrderDetailsSr {
  const ProcessPaymentSr(this.payment, this.storeId);
  

 final  Payment payment;
 final  String storeId;

/// Create a copy of UnpaidOrderDetailsSr
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
  return 'UnpaidOrderDetailsSr.processPayment(payment: $payment, storeId: $storeId)';
}


}

/// @nodoc
abstract mixin class $ProcessPaymentSrCopyWith<$Res> implements $UnpaidOrderDetailsSrCopyWith<$Res> {
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

/// Create a copy of UnpaidOrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? payment = null,Object? storeId = null,}) {
  return _then(ProcessPaymentSr(
null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as Payment,null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UnpaidOrderDetailsSr
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


class SuccessPaymentSr implements UnpaidOrderDetailsSr {
  const SuccessPaymentSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessPaymentSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnpaidOrderDetailsSr.successPayment()';
}


}




/// @nodoc


class OrderCanceledSr implements UnpaidOrderDetailsSr {
  const OrderCanceledSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderCanceledSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnpaidOrderDetailsSr.orderCanceled()';
}


}




/// @nodoc


class ShowOnboardingSr implements UnpaidOrderDetailsSr {
  const ShowOnboardingSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowOnboardingSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnpaidOrderDetailsSr.showOnboarding()';
}


}




/// @nodoc


class ExitSr implements UnpaidOrderDetailsSr {
  const ExitSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExitSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnpaidOrderDetailsSr.exit()';
}


}




/// @nodoc


class ShowPaymentTypeList implements UnpaidOrderDetailsSr {
  const ShowPaymentTypeList({this.selected, required this.storeId});
  

 final  PaymentType? selected;
 final  String storeId;

/// Create a copy of UnpaidOrderDetailsSr
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
  return 'UnpaidOrderDetailsSr.showPaymentTypeList(selected: $selected, storeId: $storeId)';
}


}

/// @nodoc
abstract mixin class $ShowPaymentTypeListCopyWith<$Res> implements $UnpaidOrderDetailsSrCopyWith<$Res> {
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

/// Create a copy of UnpaidOrderDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selected = freezed,Object? storeId = null,}) {
  return _then(ShowPaymentTypeList(
selected: freezed == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as PaymentType?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UnpaidOrderDetailsSr
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

// dart format on
