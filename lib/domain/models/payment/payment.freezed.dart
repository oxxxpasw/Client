// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Payment {

 double get amount; String get id; String get orderId; String get paymentId;
/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCopyWith<Payment> get copyWith => _$PaymentCopyWithImpl<Payment>(this as Payment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payment&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}


@override
int get hashCode => Object.hash(runtimeType,amount,id,orderId,paymentId);

@override
String toString() {
  return 'Payment(amount: $amount, id: $id, orderId: $orderId, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $PaymentCopyWith<$Res>  {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) _then) = _$PaymentCopyWithImpl;
@useResult
$Res call({
 double amount, String id, String orderId, String paymentId
});




}
/// @nodoc
class _$PaymentCopyWithImpl<$Res>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._self, this._then);

  final Payment _self;
  final $Res Function(Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? id = null,Object? orderId = null,Object? paymentId = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Payment].
extension PaymentPatterns on Payment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SbpPayment value)?  sbp,TResult Function( CardPayment value)?  card,TResult Function( CashPayment value)?  cash,TResult Function( LinkedCardPayment value)?  linkedCard,TResult Function( ApplePayPayment value)?  applePay,TResult Function( UnkownPayment value)?  unknown,TResult Function( FullBonusesPayment value)?  fullBonuses,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SbpPayment() when sbp != null:
return sbp(_that);case CardPayment() when card != null:
return card(_that);case CashPayment() when cash != null:
return cash(_that);case LinkedCardPayment() when linkedCard != null:
return linkedCard(_that);case ApplePayPayment() when applePay != null:
return applePay(_that);case UnkownPayment() when unknown != null:
return unknown(_that);case FullBonusesPayment() when fullBonuses != null:
return fullBonuses(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SbpPayment value)  sbp,required TResult Function( CardPayment value)  card,required TResult Function( CashPayment value)  cash,required TResult Function( LinkedCardPayment value)  linkedCard,required TResult Function( ApplePayPayment value)  applePay,required TResult Function( UnkownPayment value)  unknown,required TResult Function( FullBonusesPayment value)  fullBonuses,}){
final _that = this;
switch (_that) {
case SbpPayment():
return sbp(_that);case CardPayment():
return card(_that);case CashPayment():
return cash(_that);case LinkedCardPayment():
return linkedCard(_that);case ApplePayPayment():
return applePay(_that);case UnkownPayment():
return unknown(_that);case FullBonusesPayment():
return fullBonuses(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SbpPayment value)?  sbp,TResult? Function( CardPayment value)?  card,TResult? Function( CashPayment value)?  cash,TResult? Function( LinkedCardPayment value)?  linkedCard,TResult? Function( ApplePayPayment value)?  applePay,TResult? Function( UnkownPayment value)?  unknown,TResult? Function( FullBonusesPayment value)?  fullBonuses,}){
final _that = this;
switch (_that) {
case SbpPayment() when sbp != null:
return sbp(_that);case CardPayment() when card != null:
return card(_that);case CashPayment() when cash != null:
return cash(_that);case LinkedCardPayment() when linkedCard != null:
return linkedCard(_that);case ApplePayPayment() when applePay != null:
return applePay(_that);case UnkownPayment() when unknown != null:
return unknown(_that);case FullBonusesPayment() when fullBonuses != null:
return fullBonuses(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double amount,  String id,  String orderId,  String paymentId,  Uri paymentUrl)?  sbp,TResult Function( double amount,  String id,  String orderId,  String paymentId,  Uri paymentUrl)?  card,TResult Function( double amount,  String id,  String orderId,  String paymentId)?  cash,TResult Function( double amount,  String id,  String orderId,  String paymentId,  Uri? paymentUrl)?  linkedCard,TResult Function( double amount,  String id,  String orderId,  String paymentId)?  applePay,TResult Function( double amount,  String id,  String orderId,  String paymentId,  Uri? paymentUrl)?  unknown,TResult Function( double amount,  String id,  String orderId,  String paymentId)?  fullBonuses,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SbpPayment() when sbp != null:
return sbp(_that.amount,_that.id,_that.orderId,_that.paymentId,_that.paymentUrl);case CardPayment() when card != null:
return card(_that.amount,_that.id,_that.orderId,_that.paymentId,_that.paymentUrl);case CashPayment() when cash != null:
return cash(_that.amount,_that.id,_that.orderId,_that.paymentId);case LinkedCardPayment() when linkedCard != null:
return linkedCard(_that.amount,_that.id,_that.orderId,_that.paymentId,_that.paymentUrl);case ApplePayPayment() when applePay != null:
return applePay(_that.amount,_that.id,_that.orderId,_that.paymentId);case UnkownPayment() when unknown != null:
return unknown(_that.amount,_that.id,_that.orderId,_that.paymentId,_that.paymentUrl);case FullBonusesPayment() when fullBonuses != null:
return fullBonuses(_that.amount,_that.id,_that.orderId,_that.paymentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double amount,  String id,  String orderId,  String paymentId,  Uri paymentUrl)  sbp,required TResult Function( double amount,  String id,  String orderId,  String paymentId,  Uri paymentUrl)  card,required TResult Function( double amount,  String id,  String orderId,  String paymentId)  cash,required TResult Function( double amount,  String id,  String orderId,  String paymentId,  Uri? paymentUrl)  linkedCard,required TResult Function( double amount,  String id,  String orderId,  String paymentId)  applePay,required TResult Function( double amount,  String id,  String orderId,  String paymentId,  Uri? paymentUrl)  unknown,required TResult Function( double amount,  String id,  String orderId,  String paymentId)  fullBonuses,}) {final _that = this;
switch (_that) {
case SbpPayment():
return sbp(_that.amount,_that.id,_that.orderId,_that.paymentId,_that.paymentUrl);case CardPayment():
return card(_that.amount,_that.id,_that.orderId,_that.paymentId,_that.paymentUrl);case CashPayment():
return cash(_that.amount,_that.id,_that.orderId,_that.paymentId);case LinkedCardPayment():
return linkedCard(_that.amount,_that.id,_that.orderId,_that.paymentId,_that.paymentUrl);case ApplePayPayment():
return applePay(_that.amount,_that.id,_that.orderId,_that.paymentId);case UnkownPayment():
return unknown(_that.amount,_that.id,_that.orderId,_that.paymentId,_that.paymentUrl);case FullBonusesPayment():
return fullBonuses(_that.amount,_that.id,_that.orderId,_that.paymentId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double amount,  String id,  String orderId,  String paymentId,  Uri paymentUrl)?  sbp,TResult? Function( double amount,  String id,  String orderId,  String paymentId,  Uri paymentUrl)?  card,TResult? Function( double amount,  String id,  String orderId,  String paymentId)?  cash,TResult? Function( double amount,  String id,  String orderId,  String paymentId,  Uri? paymentUrl)?  linkedCard,TResult? Function( double amount,  String id,  String orderId,  String paymentId)?  applePay,TResult? Function( double amount,  String id,  String orderId,  String paymentId,  Uri? paymentUrl)?  unknown,TResult? Function( double amount,  String id,  String orderId,  String paymentId)?  fullBonuses,}) {final _that = this;
switch (_that) {
case SbpPayment() when sbp != null:
return sbp(_that.amount,_that.id,_that.orderId,_that.paymentId,_that.paymentUrl);case CardPayment() when card != null:
return card(_that.amount,_that.id,_that.orderId,_that.paymentId,_that.paymentUrl);case CashPayment() when cash != null:
return cash(_that.amount,_that.id,_that.orderId,_that.paymentId);case LinkedCardPayment() when linkedCard != null:
return linkedCard(_that.amount,_that.id,_that.orderId,_that.paymentId,_that.paymentUrl);case ApplePayPayment() when applePay != null:
return applePay(_that.amount,_that.id,_that.orderId,_that.paymentId);case UnkownPayment() when unknown != null:
return unknown(_that.amount,_that.id,_that.orderId,_that.paymentId,_that.paymentUrl);case FullBonusesPayment() when fullBonuses != null:
return fullBonuses(_that.amount,_that.id,_that.orderId,_that.paymentId);case _:
  return null;

}
}

}

/// @nodoc


class SbpPayment extends Payment {
  const SbpPayment({required this.amount, required this.id, required this.orderId, required this.paymentId, required this.paymentUrl}): super._();
  

@override final  double amount;
@override final  String id;
@override final  String orderId;
@override final  String paymentId;
 final  Uri paymentUrl;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SbpPaymentCopyWith<SbpPayment> get copyWith => _$SbpPaymentCopyWithImpl<SbpPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SbpPayment&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl));
}


@override
int get hashCode => Object.hash(runtimeType,amount,id,orderId,paymentId,paymentUrl);

@override
String toString() {
  return 'Payment.sbp(amount: $amount, id: $id, orderId: $orderId, paymentId: $paymentId, paymentUrl: $paymentUrl)';
}


}

/// @nodoc
abstract mixin class $SbpPaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory $SbpPaymentCopyWith(SbpPayment value, $Res Function(SbpPayment) _then) = _$SbpPaymentCopyWithImpl;
@override @useResult
$Res call({
 double amount, String id, String orderId, String paymentId, Uri paymentUrl
});




}
/// @nodoc
class _$SbpPaymentCopyWithImpl<$Res>
    implements $SbpPaymentCopyWith<$Res> {
  _$SbpPaymentCopyWithImpl(this._self, this._then);

  final SbpPayment _self;
  final $Res Function(SbpPayment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? id = null,Object? orderId = null,Object? paymentId = null,Object? paymentUrl = null,}) {
  return _then(SbpPayment(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,paymentUrl: null == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}


}

/// @nodoc


class CardPayment extends Payment {
  const CardPayment({required this.amount, required this.id, required this.orderId, required this.paymentId, required this.paymentUrl}): super._();
  

@override final  double amount;
@override final  String id;
@override final  String orderId;
@override final  String paymentId;
 final  Uri paymentUrl;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardPaymentCopyWith<CardPayment> get copyWith => _$CardPaymentCopyWithImpl<CardPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardPayment&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl));
}


@override
int get hashCode => Object.hash(runtimeType,amount,id,orderId,paymentId,paymentUrl);

@override
String toString() {
  return 'Payment.card(amount: $amount, id: $id, orderId: $orderId, paymentId: $paymentId, paymentUrl: $paymentUrl)';
}


}

/// @nodoc
abstract mixin class $CardPaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory $CardPaymentCopyWith(CardPayment value, $Res Function(CardPayment) _then) = _$CardPaymentCopyWithImpl;
@override @useResult
$Res call({
 double amount, String id, String orderId, String paymentId, Uri paymentUrl
});




}
/// @nodoc
class _$CardPaymentCopyWithImpl<$Res>
    implements $CardPaymentCopyWith<$Res> {
  _$CardPaymentCopyWithImpl(this._self, this._then);

  final CardPayment _self;
  final $Res Function(CardPayment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? id = null,Object? orderId = null,Object? paymentId = null,Object? paymentUrl = null,}) {
  return _then(CardPayment(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,paymentUrl: null == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}


}

/// @nodoc


class CashPayment extends Payment {
  const CashPayment({required this.amount, required this.id, required this.orderId, required this.paymentId}): super._();
  

@override final  double amount;
@override final  String id;
@override final  String orderId;
@override final  String paymentId;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CashPaymentCopyWith<CashPayment> get copyWith => _$CashPaymentCopyWithImpl<CashPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CashPayment&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}


@override
int get hashCode => Object.hash(runtimeType,amount,id,orderId,paymentId);

@override
String toString() {
  return 'Payment.cash(amount: $amount, id: $id, orderId: $orderId, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $CashPaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory $CashPaymentCopyWith(CashPayment value, $Res Function(CashPayment) _then) = _$CashPaymentCopyWithImpl;
@override @useResult
$Res call({
 double amount, String id, String orderId, String paymentId
});




}
/// @nodoc
class _$CashPaymentCopyWithImpl<$Res>
    implements $CashPaymentCopyWith<$Res> {
  _$CashPaymentCopyWithImpl(this._self, this._then);

  final CashPayment _self;
  final $Res Function(CashPayment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? id = null,Object? orderId = null,Object? paymentId = null,}) {
  return _then(CashPayment(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LinkedCardPayment extends Payment {
  const LinkedCardPayment({required this.amount, required this.id, required this.orderId, required this.paymentId, this.paymentUrl}): super._();
  

@override final  double amount;
@override final  String id;
@override final  String orderId;
@override final  String paymentId;
 final  Uri? paymentUrl;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkedCardPaymentCopyWith<LinkedCardPayment> get copyWith => _$LinkedCardPaymentCopyWithImpl<LinkedCardPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkedCardPayment&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl));
}


@override
int get hashCode => Object.hash(runtimeType,amount,id,orderId,paymentId,paymentUrl);

@override
String toString() {
  return 'Payment.linkedCard(amount: $amount, id: $id, orderId: $orderId, paymentId: $paymentId, paymentUrl: $paymentUrl)';
}


}

/// @nodoc
abstract mixin class $LinkedCardPaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory $LinkedCardPaymentCopyWith(LinkedCardPayment value, $Res Function(LinkedCardPayment) _then) = _$LinkedCardPaymentCopyWithImpl;
@override @useResult
$Res call({
 double amount, String id, String orderId, String paymentId, Uri? paymentUrl
});




}
/// @nodoc
class _$LinkedCardPaymentCopyWithImpl<$Res>
    implements $LinkedCardPaymentCopyWith<$Res> {
  _$LinkedCardPaymentCopyWithImpl(this._self, this._then);

  final LinkedCardPayment _self;
  final $Res Function(LinkedCardPayment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? id = null,Object? orderId = null,Object? paymentId = null,Object? paymentUrl = freezed,}) {
  return _then(LinkedCardPayment(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as Uri?,
  ));
}


}

/// @nodoc


class ApplePayPayment extends Payment {
  const ApplePayPayment({required this.amount, required this.id, required this.orderId, required this.paymentId}): super._();
  

@override final  double amount;
@override final  String id;
@override final  String orderId;
@override final  String paymentId;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplePayPaymentCopyWith<ApplePayPayment> get copyWith => _$ApplePayPaymentCopyWithImpl<ApplePayPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplePayPayment&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}


@override
int get hashCode => Object.hash(runtimeType,amount,id,orderId,paymentId);

@override
String toString() {
  return 'Payment.applePay(amount: $amount, id: $id, orderId: $orderId, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $ApplePayPaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory $ApplePayPaymentCopyWith(ApplePayPayment value, $Res Function(ApplePayPayment) _then) = _$ApplePayPaymentCopyWithImpl;
@override @useResult
$Res call({
 double amount, String id, String orderId, String paymentId
});




}
/// @nodoc
class _$ApplePayPaymentCopyWithImpl<$Res>
    implements $ApplePayPaymentCopyWith<$Res> {
  _$ApplePayPaymentCopyWithImpl(this._self, this._then);

  final ApplePayPayment _self;
  final $Res Function(ApplePayPayment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? id = null,Object? orderId = null,Object? paymentId = null,}) {
  return _then(ApplePayPayment(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnkownPayment extends Payment {
  const UnkownPayment({required this.amount, required this.id, required this.orderId, required this.paymentId, this.paymentUrl}): super._();
  

@override final  double amount;
@override final  String id;
@override final  String orderId;
@override final  String paymentId;
 final  Uri? paymentUrl;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnkownPaymentCopyWith<UnkownPayment> get copyWith => _$UnkownPaymentCopyWithImpl<UnkownPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnkownPayment&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl));
}


@override
int get hashCode => Object.hash(runtimeType,amount,id,orderId,paymentId,paymentUrl);

@override
String toString() {
  return 'Payment.unknown(amount: $amount, id: $id, orderId: $orderId, paymentId: $paymentId, paymentUrl: $paymentUrl)';
}


}

/// @nodoc
abstract mixin class $UnkownPaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory $UnkownPaymentCopyWith(UnkownPayment value, $Res Function(UnkownPayment) _then) = _$UnkownPaymentCopyWithImpl;
@override @useResult
$Res call({
 double amount, String id, String orderId, String paymentId, Uri? paymentUrl
});




}
/// @nodoc
class _$UnkownPaymentCopyWithImpl<$Res>
    implements $UnkownPaymentCopyWith<$Res> {
  _$UnkownPaymentCopyWithImpl(this._self, this._then);

  final UnkownPayment _self;
  final $Res Function(UnkownPayment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? id = null,Object? orderId = null,Object? paymentId = null,Object? paymentUrl = freezed,}) {
  return _then(UnkownPayment(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as Uri?,
  ));
}


}

/// @nodoc


class FullBonusesPayment extends Payment {
  const FullBonusesPayment({required this.amount, required this.id, required this.orderId, required this.paymentId}): super._();
  

@override final  double amount;
@override final  String id;
@override final  String orderId;
@override final  String paymentId;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullBonusesPaymentCopyWith<FullBonusesPayment> get copyWith => _$FullBonusesPaymentCopyWithImpl<FullBonusesPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FullBonusesPayment&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}


@override
int get hashCode => Object.hash(runtimeType,amount,id,orderId,paymentId);

@override
String toString() {
  return 'Payment.fullBonuses(amount: $amount, id: $id, orderId: $orderId, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $FullBonusesPaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory $FullBonusesPaymentCopyWith(FullBonusesPayment value, $Res Function(FullBonusesPayment) _then) = _$FullBonusesPaymentCopyWithImpl;
@override @useResult
$Res call({
 double amount, String id, String orderId, String paymentId
});




}
/// @nodoc
class _$FullBonusesPaymentCopyWithImpl<$Res>
    implements $FullBonusesPaymentCopyWith<$Res> {
  _$FullBonusesPaymentCopyWithImpl(this._self, this._then);

  final FullBonusesPayment _self;
  final $Res Function(FullBonusesPayment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? id = null,Object? orderId = null,Object? paymentId = null,}) {
  return _then(FullBonusesPayment(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
