// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentRequest implements DiagnosticableTreeMixin {

 String get subId; double get amount; String get orderId; String? get paymentType; PaymentRequestData get paymentData;
/// Create a copy of PaymentRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentRequestCopyWith<PaymentRequest> get copyWith => _$PaymentRequestCopyWithImpl<PaymentRequest>(this as PaymentRequest, _$identity);

  /// Serializes this PaymentRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentRequest'))
    ..add(DiagnosticsProperty('subId', subId))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('orderId', orderId))..add(DiagnosticsProperty('paymentType', paymentType))..add(DiagnosticsProperty('paymentData', paymentData));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRequest&&(identical(other.subId, subId) || other.subId == subId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.paymentData, paymentData) || other.paymentData == paymentData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subId,amount,orderId,paymentType,paymentData);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentRequest(subId: $subId, amount: $amount, orderId: $orderId, paymentType: $paymentType, paymentData: $paymentData)';
}


}

/// @nodoc
abstract mixin class $PaymentRequestCopyWith<$Res>  {
  factory $PaymentRequestCopyWith(PaymentRequest value, $Res Function(PaymentRequest) _then) = _$PaymentRequestCopyWithImpl;
@useResult
$Res call({
 String subId, double amount, String orderId, String? paymentType, PaymentRequestData paymentData
});


$PaymentRequestDataCopyWith<$Res> get paymentData;

}
/// @nodoc
class _$PaymentRequestCopyWithImpl<$Res>
    implements $PaymentRequestCopyWith<$Res> {
  _$PaymentRequestCopyWithImpl(this._self, this._then);

  final PaymentRequest _self;
  final $Res Function(PaymentRequest) _then;

/// Create a copy of PaymentRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subId = null,Object? amount = null,Object? orderId = null,Object? paymentType = freezed,Object? paymentData = null,}) {
  return _then(PaymentRequest(
subId: null == subId ? _self.subId : subId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String?,paymentData: null == paymentData ? _self.paymentData : paymentData // ignore: cast_nullable_to_non_nullable
as PaymentRequestData,
  ));
}
/// Create a copy of PaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentRequestDataCopyWith<$Res> get paymentData {
  
  return $PaymentRequestDataCopyWith<$Res>(_self.paymentData, (value) {
    return _then(_self.copyWith(paymentData: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentRequest].
extension PaymentRequestPatterns on PaymentRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentRequest value)  $default,){
final _that = this;
switch (_that) {
case _PaymentRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String subId,  double amount,  String orderId,  String? paymentType,  PaymentRequestData paymentData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentRequest() when $default != null:
return $default(_that.subId,_that.amount,_that.orderId,_that.paymentType,_that.paymentData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String subId,  double amount,  String orderId,  String? paymentType,  PaymentRequestData paymentData)  $default,) {final _that = this;
switch (_that) {
case _PaymentRequest():
return $default(_that.subId,_that.amount,_that.orderId,_that.paymentType,_that.paymentData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String subId,  double amount,  String orderId,  String? paymentType,  PaymentRequestData paymentData)?  $default,) {final _that = this;
switch (_that) {
case _PaymentRequest() when $default != null:
return $default(_that.subId,_that.amount,_that.orderId,_that.paymentType,_that.paymentData);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _PaymentRequest with DiagnosticableTreeMixin implements PaymentRequest {
  const _PaymentRequest({required this.subId, required this.amount, required this.orderId, required this.paymentType, required this.paymentData});
  factory _PaymentRequest.fromJson(Map<String, dynamic> json) => _$PaymentRequestFromJson(json);

@override final  String subId;
@override final  double amount;
@override final  String orderId;
@override final  String? paymentType;
@override final  PaymentRequestData paymentData;

/// Create a copy of PaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentRequestCopyWith<_PaymentRequest> get copyWith => __$PaymentRequestCopyWithImpl<_PaymentRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentRequest'))
    ..add(DiagnosticsProperty('subId', subId))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('orderId', orderId))..add(DiagnosticsProperty('paymentType', paymentType))..add(DiagnosticsProperty('paymentData', paymentData));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentRequest&&(identical(other.subId, subId) || other.subId == subId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.paymentData, paymentData) || other.paymentData == paymentData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subId,amount,orderId,paymentType,paymentData);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentRequest(subId: $subId, amount: $amount, orderId: $orderId, paymentType: $paymentType, paymentData: $paymentData)';
}


}

/// @nodoc
abstract mixin class _$PaymentRequestCopyWith<$Res> implements $PaymentRequestCopyWith<$Res> {
  factory _$PaymentRequestCopyWith(_PaymentRequest value, $Res Function(_PaymentRequest) _then) = __$PaymentRequestCopyWithImpl;
@override @useResult
$Res call({
 String subId, double amount, String orderId, String? paymentType, PaymentRequestData paymentData
});


@override $PaymentRequestDataCopyWith<$Res> get paymentData;

}
/// @nodoc
class __$PaymentRequestCopyWithImpl<$Res>
    implements _$PaymentRequestCopyWith<$Res> {
  __$PaymentRequestCopyWithImpl(this._self, this._then);

  final _PaymentRequest _self;
  final $Res Function(_PaymentRequest) _then;

/// Create a copy of PaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subId = null,Object? amount = null,Object? orderId = null,Object? paymentType = freezed,Object? paymentData = null,}) {
  return _then(_PaymentRequest(
subId: null == subId ? _self.subId : subId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String?,paymentData: null == paymentData ? _self.paymentData : paymentData // ignore: cast_nullable_to_non_nullable
as PaymentRequestData,
  ));
}

/// Create a copy of PaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentRequestDataCopyWith<$Res> get paymentData {
  
  return $PaymentRequestDataCopyWith<$Res>(_self.paymentData, (value) {
    return _then(_self.copyWith(paymentData: value));
  });
}
}


/// @nodoc
mixin _$PaymentRequestData implements DiagnosticableTreeMixin {

 String? get successUrl; String? get failureUrl; String? get cardId; String? get authToken; String? get purchaseId; String? get cardNumber; bool get loyalty; double? get bonusAmount; String? get applePayToken;
/// Create a copy of PaymentRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentRequestDataCopyWith<PaymentRequestData> get copyWith => _$PaymentRequestDataCopyWithImpl<PaymentRequestData>(this as PaymentRequestData, _$identity);

  /// Serializes this PaymentRequestData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentRequestData'))
    ..add(DiagnosticsProperty('successUrl', successUrl))..add(DiagnosticsProperty('failureUrl', failureUrl))..add(DiagnosticsProperty('cardId', cardId))..add(DiagnosticsProperty('authToken', authToken))..add(DiagnosticsProperty('purchaseId', purchaseId))..add(DiagnosticsProperty('cardNumber', cardNumber))..add(DiagnosticsProperty('loyalty', loyalty))..add(DiagnosticsProperty('bonusAmount', bonusAmount))..add(DiagnosticsProperty('applePayToken', applePayToken));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRequestData&&(identical(other.successUrl, successUrl) || other.successUrl == successUrl)&&(identical(other.failureUrl, failureUrl) || other.failureUrl == failureUrl)&&(identical(other.cardId, cardId) || other.cardId == cardId)&&(identical(other.authToken, authToken) || other.authToken == authToken)&&(identical(other.purchaseId, purchaseId) || other.purchaseId == purchaseId)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.loyalty, loyalty) || other.loyalty == loyalty)&&(identical(other.bonusAmount, bonusAmount) || other.bonusAmount == bonusAmount)&&(identical(other.applePayToken, applePayToken) || other.applePayToken == applePayToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,successUrl,failureUrl,cardId,authToken,purchaseId,cardNumber,loyalty,bonusAmount,applePayToken);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentRequestData(successUrl: $successUrl, failureUrl: $failureUrl, cardId: $cardId, authToken: $authToken, purchaseId: $purchaseId, cardNumber: $cardNumber, loyalty: $loyalty, bonusAmount: $bonusAmount, applePayToken: $applePayToken)';
}


}

/// @nodoc
abstract mixin class $PaymentRequestDataCopyWith<$Res>  {
  factory $PaymentRequestDataCopyWith(PaymentRequestData value, $Res Function(PaymentRequestData) _then) = _$PaymentRequestDataCopyWithImpl;
@useResult
$Res call({
 String? successUrl, String? failureUrl, String? cardId, String? authToken, String? purchaseId, String? cardNumber, bool loyalty, double? bonusAmount, String? applePayToken
});




}
/// @nodoc
class _$PaymentRequestDataCopyWithImpl<$Res>
    implements $PaymentRequestDataCopyWith<$Res> {
  _$PaymentRequestDataCopyWithImpl(this._self, this._then);

  final PaymentRequestData _self;
  final $Res Function(PaymentRequestData) _then;

/// Create a copy of PaymentRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? successUrl = freezed,Object? failureUrl = freezed,Object? cardId = freezed,Object? authToken = freezed,Object? purchaseId = freezed,Object? cardNumber = freezed,Object? loyalty = null,Object? bonusAmount = freezed,Object? applePayToken = freezed,}) {
  return _then(PaymentRequestData(
successUrl: freezed == successUrl ? _self.successUrl : successUrl // ignore: cast_nullable_to_non_nullable
as String?,failureUrl: freezed == failureUrl ? _self.failureUrl : failureUrl // ignore: cast_nullable_to_non_nullable
as String?,cardId: freezed == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as String?,authToken: freezed == authToken ? _self.authToken : authToken // ignore: cast_nullable_to_non_nullable
as String?,purchaseId: freezed == purchaseId ? _self.purchaseId : purchaseId // ignore: cast_nullable_to_non_nullable
as String?,cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String?,loyalty: null == loyalty ? _self.loyalty : loyalty // ignore: cast_nullable_to_non_nullable
as bool,bonusAmount: freezed == bonusAmount ? _self.bonusAmount : bonusAmount // ignore: cast_nullable_to_non_nullable
as double?,applePayToken: freezed == applePayToken ? _self.applePayToken : applePayToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentRequestData].
extension PaymentRequestDataPatterns on PaymentRequestData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentRequestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentRequestData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentRequestData value)  $default,){
final _that = this;
switch (_that) {
case _PaymentRequestData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentRequestData value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentRequestData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? successUrl,  String? failureUrl,  String? cardId,  String? authToken,  String? purchaseId,  String? cardNumber,  bool loyalty,  double? bonusAmount,  String? applePayToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentRequestData() when $default != null:
return $default(_that.successUrl,_that.failureUrl,_that.cardId,_that.authToken,_that.purchaseId,_that.cardNumber,_that.loyalty,_that.bonusAmount,_that.applePayToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? successUrl,  String? failureUrl,  String? cardId,  String? authToken,  String? purchaseId,  String? cardNumber,  bool loyalty,  double? bonusAmount,  String? applePayToken)  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestData():
return $default(_that.successUrl,_that.failureUrl,_that.cardId,_that.authToken,_that.purchaseId,_that.cardNumber,_that.loyalty,_that.bonusAmount,_that.applePayToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? successUrl,  String? failureUrl,  String? cardId,  String? authToken,  String? purchaseId,  String? cardNumber,  bool loyalty,  double? bonusAmount,  String? applePayToken)?  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestData() when $default != null:
return $default(_that.successUrl,_that.failureUrl,_that.cardId,_that.authToken,_that.purchaseId,_that.cardNumber,_that.loyalty,_that.bonusAmount,_that.applePayToken);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _PaymentRequestData with DiagnosticableTreeMixin implements PaymentRequestData {
  const _PaymentRequestData({this.successUrl, this.failureUrl, this.cardId, this.authToken, this.purchaseId, this.cardNumber, this.loyalty = false, this.bonusAmount, this.applePayToken});
  factory _PaymentRequestData.fromJson(Map<String, dynamic> json) => _$PaymentRequestDataFromJson(json);

@override final  String? successUrl;
@override final  String? failureUrl;
@override final  String? cardId;
@override final  String? authToken;
@override final  String? purchaseId;
@override final  String? cardNumber;
@override@JsonKey() final  bool loyalty;
@override final  double? bonusAmount;
@override final  String? applePayToken;

/// Create a copy of PaymentRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentRequestDataCopyWith<_PaymentRequestData> get copyWith => __$PaymentRequestDataCopyWithImpl<_PaymentRequestData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentRequestDataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentRequestData'))
    ..add(DiagnosticsProperty('successUrl', successUrl))..add(DiagnosticsProperty('failureUrl', failureUrl))..add(DiagnosticsProperty('cardId', cardId))..add(DiagnosticsProperty('authToken', authToken))..add(DiagnosticsProperty('purchaseId', purchaseId))..add(DiagnosticsProperty('cardNumber', cardNumber))..add(DiagnosticsProperty('loyalty', loyalty))..add(DiagnosticsProperty('bonusAmount', bonusAmount))..add(DiagnosticsProperty('applePayToken', applePayToken));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentRequestData&&(identical(other.successUrl, successUrl) || other.successUrl == successUrl)&&(identical(other.failureUrl, failureUrl) || other.failureUrl == failureUrl)&&(identical(other.cardId, cardId) || other.cardId == cardId)&&(identical(other.authToken, authToken) || other.authToken == authToken)&&(identical(other.purchaseId, purchaseId) || other.purchaseId == purchaseId)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.loyalty, loyalty) || other.loyalty == loyalty)&&(identical(other.bonusAmount, bonusAmount) || other.bonusAmount == bonusAmount)&&(identical(other.applePayToken, applePayToken) || other.applePayToken == applePayToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,successUrl,failureUrl,cardId,authToken,purchaseId,cardNumber,loyalty,bonusAmount,applePayToken);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentRequestData(successUrl: $successUrl, failureUrl: $failureUrl, cardId: $cardId, authToken: $authToken, purchaseId: $purchaseId, cardNumber: $cardNumber, loyalty: $loyalty, bonusAmount: $bonusAmount, applePayToken: $applePayToken)';
}


}

/// @nodoc
abstract mixin class _$PaymentRequestDataCopyWith<$Res> implements $PaymentRequestDataCopyWith<$Res> {
  factory _$PaymentRequestDataCopyWith(_PaymentRequestData value, $Res Function(_PaymentRequestData) _then) = __$PaymentRequestDataCopyWithImpl;
@override @useResult
$Res call({
 String? successUrl, String? failureUrl, String? cardId, String? authToken, String? purchaseId, String? cardNumber, bool loyalty, double? bonusAmount, String? applePayToken
});




}
/// @nodoc
class __$PaymentRequestDataCopyWithImpl<$Res>
    implements _$PaymentRequestDataCopyWith<$Res> {
  __$PaymentRequestDataCopyWithImpl(this._self, this._then);

  final _PaymentRequestData _self;
  final $Res Function(_PaymentRequestData) _then;

/// Create a copy of PaymentRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? successUrl = freezed,Object? failureUrl = freezed,Object? cardId = freezed,Object? authToken = freezed,Object? purchaseId = freezed,Object? cardNumber = freezed,Object? loyalty = null,Object? bonusAmount = freezed,Object? applePayToken = freezed,}) {
  return _then(_PaymentRequestData(
successUrl: freezed == successUrl ? _self.successUrl : successUrl // ignore: cast_nullable_to_non_nullable
as String?,failureUrl: freezed == failureUrl ? _self.failureUrl : failureUrl // ignore: cast_nullable_to_non_nullable
as String?,cardId: freezed == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as String?,authToken: freezed == authToken ? _self.authToken : authToken // ignore: cast_nullable_to_non_nullable
as String?,purchaseId: freezed == purchaseId ? _self.purchaseId : purchaseId // ignore: cast_nullable_to_non_nullable
as String?,cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String?,loyalty: null == loyalty ? _self.loyalty : loyalty // ignore: cast_nullable_to_non_nullable
as bool,bonusAmount: freezed == bonusAmount ? _self.bonusAmount : bonusAmount // ignore: cast_nullable_to_non_nullable
as double?,applePayToken: freezed == applePayToken ? _self.applePayToken : applePayToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
