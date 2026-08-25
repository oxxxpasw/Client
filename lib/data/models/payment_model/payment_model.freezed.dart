// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentResponse implements DiagnosticableTreeMixin {

 PaymentData? get paymentData; PaymentRequestData get paymentRequest;
/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentResponseCopyWith<PaymentResponse> get copyWith => _$PaymentResponseCopyWithImpl<PaymentResponse>(this as PaymentResponse, _$identity);

  /// Serializes this PaymentResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentResponse'))
    ..add(DiagnosticsProperty('paymentData', paymentData))..add(DiagnosticsProperty('paymentRequest', paymentRequest));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResponse&&(identical(other.paymentData, paymentData) || other.paymentData == paymentData)&&(identical(other.paymentRequest, paymentRequest) || other.paymentRequest == paymentRequest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentData,paymentRequest);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentResponse(paymentData: $paymentData, paymentRequest: $paymentRequest)';
}


}

/// @nodoc
abstract mixin class $PaymentResponseCopyWith<$Res>  {
  factory $PaymentResponseCopyWith(PaymentResponse value, $Res Function(PaymentResponse) _then) = _$PaymentResponseCopyWithImpl;
@useResult
$Res call({
 PaymentData? paymentData, PaymentRequestData paymentRequest
});


$PaymentDataCopyWith<$Res>? get paymentData;$PaymentRequestDataCopyWith<$Res> get paymentRequest;

}
/// @nodoc
class _$PaymentResponseCopyWithImpl<$Res>
    implements $PaymentResponseCopyWith<$Res> {
  _$PaymentResponseCopyWithImpl(this._self, this._then);

  final PaymentResponse _self;
  final $Res Function(PaymentResponse) _then;

/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentData = freezed,Object? paymentRequest = null,}) {
  return _then(PaymentResponse(
paymentData: freezed == paymentData ? _self.paymentData : paymentData // ignore: cast_nullable_to_non_nullable
as PaymentData?,paymentRequest: null == paymentRequest ? _self.paymentRequest : paymentRequest // ignore: cast_nullable_to_non_nullable
as PaymentRequestData,
  ));
}
/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentDataCopyWith<$Res>? get paymentData {
    if (_self.paymentData == null) {
    return null;
  }

  return $PaymentDataCopyWith<$Res>(_self.paymentData!, (value) {
    return _then(_self.copyWith(paymentData: value));
  });
}/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentRequestDataCopyWith<$Res> get paymentRequest {
  
  return $PaymentRequestDataCopyWith<$Res>(_self.paymentRequest, (value) {
    return _then(_self.copyWith(paymentRequest: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentResponse].
extension PaymentResponsePatterns on PaymentResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentResponse value)  $default,){
final _that = this;
switch (_that) {
case _PaymentResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PaymentData? paymentData,  PaymentRequestData paymentRequest)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentResponse() when $default != null:
return $default(_that.paymentData,_that.paymentRequest);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PaymentData? paymentData,  PaymentRequestData paymentRequest)  $default,) {final _that = this;
switch (_that) {
case _PaymentResponse():
return $default(_that.paymentData,_that.paymentRequest);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PaymentData? paymentData,  PaymentRequestData paymentRequest)?  $default,) {final _that = this;
switch (_that) {
case _PaymentResponse() when $default != null:
return $default(_that.paymentData,_that.paymentRequest);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentResponse with DiagnosticableTreeMixin implements PaymentResponse {
  const _PaymentResponse({this.paymentData, required this.paymentRequest});
  factory _PaymentResponse.fromJson(Map<String, dynamic> json) => _$PaymentResponseFromJson(json);

@override final  PaymentData? paymentData;
@override final  PaymentRequestData paymentRequest;

/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentResponseCopyWith<_PaymentResponse> get copyWith => __$PaymentResponseCopyWithImpl<_PaymentResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentResponse'))
    ..add(DiagnosticsProperty('paymentData', paymentData))..add(DiagnosticsProperty('paymentRequest', paymentRequest));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentResponse&&(identical(other.paymentData, paymentData) || other.paymentData == paymentData)&&(identical(other.paymentRequest, paymentRequest) || other.paymentRequest == paymentRequest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentData,paymentRequest);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentResponse(paymentData: $paymentData, paymentRequest: $paymentRequest)';
}


}

/// @nodoc
abstract mixin class _$PaymentResponseCopyWith<$Res> implements $PaymentResponseCopyWith<$Res> {
  factory _$PaymentResponseCopyWith(_PaymentResponse value, $Res Function(_PaymentResponse) _then) = __$PaymentResponseCopyWithImpl;
@override @useResult
$Res call({
 PaymentData? paymentData, PaymentRequestData paymentRequest
});


@override $PaymentDataCopyWith<$Res>? get paymentData;@override $PaymentRequestDataCopyWith<$Res> get paymentRequest;

}
/// @nodoc
class __$PaymentResponseCopyWithImpl<$Res>
    implements _$PaymentResponseCopyWith<$Res> {
  __$PaymentResponseCopyWithImpl(this._self, this._then);

  final _PaymentResponse _self;
  final $Res Function(_PaymentResponse) _then;

/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentData = freezed,Object? paymentRequest = null,}) {
  return _then(_PaymentResponse(
paymentData: freezed == paymentData ? _self.paymentData : paymentData // ignore: cast_nullable_to_non_nullable
as PaymentData?,paymentRequest: null == paymentRequest ? _self.paymentRequest : paymentRequest // ignore: cast_nullable_to_non_nullable
as PaymentRequestData,
  ));
}

/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentDataCopyWith<$Res>? get paymentData {
    if (_self.paymentData == null) {
    return null;
  }

  return $PaymentDataCopyWith<$Res>(_self.paymentData!, (value) {
    return _then(_self.copyWith(paymentData: value));
  });
}/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentRequestDataCopyWith<$Res> get paymentRequest {
  
  return $PaymentRequestDataCopyWith<$Res>(_self.paymentRequest, (value) {
    return _then(_self.copyWith(paymentRequest: value));
  });
}
}


/// @nodoc
mixin _$PaymentData implements DiagnosticableTreeMixin {

 Uri? get paymentUrl;
/// Create a copy of PaymentData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentDataCopyWith<PaymentData> get copyWith => _$PaymentDataCopyWithImpl<PaymentData>(this as PaymentData, _$identity);

  /// Serializes this PaymentData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentData'))
    ..add(DiagnosticsProperty('paymentUrl', paymentUrl));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentData&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentUrl);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentData(paymentUrl: $paymentUrl)';
}


}

/// @nodoc
abstract mixin class $PaymentDataCopyWith<$Res>  {
  factory $PaymentDataCopyWith(PaymentData value, $Res Function(PaymentData) _then) = _$PaymentDataCopyWithImpl;
@useResult
$Res call({
 Uri? paymentUrl
});




}
/// @nodoc
class _$PaymentDataCopyWithImpl<$Res>
    implements $PaymentDataCopyWith<$Res> {
  _$PaymentDataCopyWithImpl(this._self, this._then);

  final PaymentData _self;
  final $Res Function(PaymentData) _then;

/// Create a copy of PaymentData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentUrl = freezed,}) {
  return _then(PaymentData(
paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as Uri?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentData].
extension PaymentDataPatterns on PaymentData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentData value)  $default,){
final _that = this;
switch (_that) {
case _PaymentData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentData value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Uri? paymentUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentData() when $default != null:
return $default(_that.paymentUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Uri? paymentUrl)  $default,) {final _that = this;
switch (_that) {
case _PaymentData():
return $default(_that.paymentUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Uri? paymentUrl)?  $default,) {final _that = this;
switch (_that) {
case _PaymentData() when $default != null:
return $default(_that.paymentUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentData with DiagnosticableTreeMixin implements PaymentData {
  const _PaymentData({this.paymentUrl});
  factory _PaymentData.fromJson(Map<String, dynamic> json) => _$PaymentDataFromJson(json);

@override final  Uri? paymentUrl;

/// Create a copy of PaymentData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentDataCopyWith<_PaymentData> get copyWith => __$PaymentDataCopyWithImpl<_PaymentData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentDataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentData'))
    ..add(DiagnosticsProperty('paymentUrl', paymentUrl));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentData&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentUrl);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentData(paymentUrl: $paymentUrl)';
}


}

/// @nodoc
abstract mixin class _$PaymentDataCopyWith<$Res> implements $PaymentDataCopyWith<$Res> {
  factory _$PaymentDataCopyWith(_PaymentData value, $Res Function(_PaymentData) _then) = __$PaymentDataCopyWithImpl;
@override @useResult
$Res call({
 Uri? paymentUrl
});




}
/// @nodoc
class __$PaymentDataCopyWithImpl<$Res>
    implements _$PaymentDataCopyWith<$Res> {
  __$PaymentDataCopyWithImpl(this._self, this._then);

  final _PaymentData _self;
  final $Res Function(_PaymentData) _then;

/// Create a copy of PaymentData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentUrl = freezed,}) {
  return _then(_PaymentData(
paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as Uri?,
  ));
}


}


/// @nodoc
mixin _$PaymentRequestData implements DiagnosticableTreeMixin {

 double get amount; String get id; String get orderId;@JsonKey(unknownEnumValue: PaymentMethod.unknown) PaymentMethod? get type; String get paymentId;
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
    ..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('orderId', orderId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('paymentId', paymentId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRequestData&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.type, type) || other.type == type)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,id,orderId,type,paymentId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentRequestData(amount: $amount, id: $id, orderId: $orderId, type: $type, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $PaymentRequestDataCopyWith<$Res>  {
  factory $PaymentRequestDataCopyWith(PaymentRequestData value, $Res Function(PaymentRequestData) _then) = _$PaymentRequestDataCopyWithImpl;
@useResult
$Res call({
 double amount, String id, String orderId,@JsonKey(unknownEnumValue: PaymentMethod.unknown) PaymentMethod? type, String paymentId
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
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? id = null,Object? orderId = null,Object? type = freezed,Object? paymentId = null,}) {
  return _then(PaymentRequestData(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double amount,  String id,  String orderId, @JsonKey(unknownEnumValue: PaymentMethod.unknown)  PaymentMethod? type,  String paymentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentRequestData() when $default != null:
return $default(_that.amount,_that.id,_that.orderId,_that.type,_that.paymentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double amount,  String id,  String orderId, @JsonKey(unknownEnumValue: PaymentMethod.unknown)  PaymentMethod? type,  String paymentId)  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestData():
return $default(_that.amount,_that.id,_that.orderId,_that.type,_that.paymentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double amount,  String id,  String orderId, @JsonKey(unknownEnumValue: PaymentMethod.unknown)  PaymentMethod? type,  String paymentId)?  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestData() when $default != null:
return $default(_that.amount,_that.id,_that.orderId,_that.type,_that.paymentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentRequestData with DiagnosticableTreeMixin implements PaymentRequestData {
  const _PaymentRequestData({required this.amount, required this.id, required this.orderId, @JsonKey(unknownEnumValue: PaymentMethod.unknown) required this.type, required this.paymentId});
  factory _PaymentRequestData.fromJson(Map<String, dynamic> json) => _$PaymentRequestDataFromJson(json);

@override final  double amount;
@override final  String id;
@override final  String orderId;
@override@JsonKey(unknownEnumValue: PaymentMethod.unknown) final  PaymentMethod? type;
@override final  String paymentId;

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
    ..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('orderId', orderId))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('paymentId', paymentId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentRequestData&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.type, type) || other.type == type)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,id,orderId,type,paymentId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentRequestData(amount: $amount, id: $id, orderId: $orderId, type: $type, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class _$PaymentRequestDataCopyWith<$Res> implements $PaymentRequestDataCopyWith<$Res> {
  factory _$PaymentRequestDataCopyWith(_PaymentRequestData value, $Res Function(_PaymentRequestData) _then) = __$PaymentRequestDataCopyWithImpl;
@override @useResult
$Res call({
 double amount, String id, String orderId,@JsonKey(unknownEnumValue: PaymentMethod.unknown) PaymentMethod? type, String paymentId
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
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? id = null,Object? orderId = null,Object? type = freezed,Object? paymentId = null,}) {
  return _then(_PaymentRequestData(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

PaymentStatusResponse _$PaymentStatusResponseFromJson(
  Map<String, dynamic> json
) {
    return _PaymentStatus.fromJson(
      json
    );
}

/// @nodoc
mixin _$PaymentStatusResponse implements DiagnosticableTreeMixin {

@JsonKey(unknownEnumValue: PaymentStatus.unknown) PaymentStatus get status;
/// Create a copy of PaymentStatusResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentStatusResponseCopyWith<PaymentStatusResponse> get copyWith => _$PaymentStatusResponseCopyWithImpl<PaymentStatusResponse>(this as PaymentStatusResponse, _$identity);

  /// Serializes this PaymentStatusResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentStatusResponse'))
    ..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentStatusResponse&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentStatusResponse(status: $status)';
}


}

/// @nodoc
abstract mixin class $PaymentStatusResponseCopyWith<$Res>  {
  factory $PaymentStatusResponseCopyWith(PaymentStatusResponse value, $Res Function(PaymentStatusResponse) _then) = _$PaymentStatusResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: PaymentStatus.unknown) PaymentStatus status
});




}
/// @nodoc
class _$PaymentStatusResponseCopyWithImpl<$Res>
    implements $PaymentStatusResponseCopyWith<$Res> {
  _$PaymentStatusResponseCopyWithImpl(this._self, this._then);

  final PaymentStatusResponse _self;
  final $Res Function(PaymentStatusResponse) _then;

/// Create a copy of PaymentStatusResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(PaymentStatusResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentStatusResponse].
extension PaymentStatusResponsePatterns on PaymentStatusResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentStatus value)  $default,){
final _that = this;
switch (_that) {
case _PaymentStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentStatus value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: PaymentStatus.unknown)  PaymentStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentStatus() when $default != null:
return $default(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: PaymentStatus.unknown)  PaymentStatus status)  $default,) {final _that = this;
switch (_that) {
case _PaymentStatus():
return $default(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(unknownEnumValue: PaymentStatus.unknown)  PaymentStatus status)?  $default,) {final _that = this;
switch (_that) {
case _PaymentStatus() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentStatus with DiagnosticableTreeMixin implements PaymentStatusResponse {
  const _PaymentStatus({@JsonKey(unknownEnumValue: PaymentStatus.unknown) required this.status});
  factory _PaymentStatus.fromJson(Map<String, dynamic> json) => _$PaymentStatusFromJson(json);

@override@JsonKey(unknownEnumValue: PaymentStatus.unknown) final  PaymentStatus status;

/// Create a copy of PaymentStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentStatusCopyWith<_PaymentStatus> get copyWith => __$PaymentStatusCopyWithImpl<_PaymentStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentStatusToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentStatusResponse'))
    ..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentStatus&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentStatusResponse(status: $status)';
}


}

/// @nodoc
abstract mixin class _$PaymentStatusCopyWith<$Res> implements $PaymentStatusResponseCopyWith<$Res> {
  factory _$PaymentStatusCopyWith(_PaymentStatus value, $Res Function(_PaymentStatus) _then) = __$PaymentStatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: PaymentStatus.unknown) PaymentStatus status
});




}
/// @nodoc
class __$PaymentStatusCopyWithImpl<$Res>
    implements _$PaymentStatusCopyWith<$Res> {
  __$PaymentStatusCopyWithImpl(this._self, this._then);

  final _PaymentStatus _self;
  final $Res Function(_PaymentStatus) _then;

/// Create a copy of PaymentStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_PaymentStatus(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,
  ));
}


}

// dart format on
