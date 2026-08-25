// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deactivate_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeactivateCardRequest {

 String get subId; String get paymentType; String get token; String get cardId;
/// Create a copy of DeactivateCardRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeactivateCardRequestCopyWith<DeactivateCardRequest> get copyWith => _$DeactivateCardRequestCopyWithImpl<DeactivateCardRequest>(this as DeactivateCardRequest, _$identity);

  /// Serializes this DeactivateCardRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeactivateCardRequest&&(identical(other.subId, subId) || other.subId == subId)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.token, token) || other.token == token)&&(identical(other.cardId, cardId) || other.cardId == cardId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subId,paymentType,token,cardId);

@override
String toString() {
  return 'DeactivateCardRequest(subId: $subId, paymentType: $paymentType, token: $token, cardId: $cardId)';
}


}

/// @nodoc
abstract mixin class $DeactivateCardRequestCopyWith<$Res>  {
  factory $DeactivateCardRequestCopyWith(DeactivateCardRequest value, $Res Function(DeactivateCardRequest) _then) = _$DeactivateCardRequestCopyWithImpl;
@useResult
$Res call({
 String subId, String paymentType, String token, String cardId
});




}
/// @nodoc
class _$DeactivateCardRequestCopyWithImpl<$Res>
    implements $DeactivateCardRequestCopyWith<$Res> {
  _$DeactivateCardRequestCopyWithImpl(this._self, this._then);

  final DeactivateCardRequest _self;
  final $Res Function(DeactivateCardRequest) _then;

/// Create a copy of DeactivateCardRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subId = null,Object? paymentType = null,Object? token = null,Object? cardId = null,}) {
  return _then(DeactivateCardRequest(
subId: null == subId ? _self.subId : subId // ignore: cast_nullable_to_non_nullable
as String,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,cardId: null == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeactivateCardRequest].
extension DeactivateCardRequestPatterns on DeactivateCardRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeactivateCardRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeactivateCardRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeactivateCardRequest value)  $default,){
final _that = this;
switch (_that) {
case _DeactivateCardRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeactivateCardRequest value)?  $default,){
final _that = this;
switch (_that) {
case _DeactivateCardRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String subId,  String paymentType,  String token,  String cardId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeactivateCardRequest() when $default != null:
return $default(_that.subId,_that.paymentType,_that.token,_that.cardId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String subId,  String paymentType,  String token,  String cardId)  $default,) {final _that = this;
switch (_that) {
case _DeactivateCardRequest():
return $default(_that.subId,_that.paymentType,_that.token,_that.cardId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String subId,  String paymentType,  String token,  String cardId)?  $default,) {final _that = this;
switch (_that) {
case _DeactivateCardRequest() when $default != null:
return $default(_that.subId,_that.paymentType,_that.token,_that.cardId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _DeactivateCardRequest implements DeactivateCardRequest {
  const _DeactivateCardRequest({required this.subId, required this.paymentType, required this.token, required this.cardId});
  

@override final  String subId;
@override final  String paymentType;
@override final  String token;
@override final  String cardId;

/// Create a copy of DeactivateCardRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeactivateCardRequestCopyWith<_DeactivateCardRequest> get copyWith => __$DeactivateCardRequestCopyWithImpl<_DeactivateCardRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeactivateCardRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeactivateCardRequest&&(identical(other.subId, subId) || other.subId == subId)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.token, token) || other.token == token)&&(identical(other.cardId, cardId) || other.cardId == cardId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subId,paymentType,token,cardId);

@override
String toString() {
  return 'DeactivateCardRequest(subId: $subId, paymentType: $paymentType, token: $token, cardId: $cardId)';
}


}

/// @nodoc
abstract mixin class _$DeactivateCardRequestCopyWith<$Res> implements $DeactivateCardRequestCopyWith<$Res> {
  factory _$DeactivateCardRequestCopyWith(_DeactivateCardRequest value, $Res Function(_DeactivateCardRequest) _then) = __$DeactivateCardRequestCopyWithImpl;
@override @useResult
$Res call({
 String subId, String paymentType, String token, String cardId
});




}
/// @nodoc
class __$DeactivateCardRequestCopyWithImpl<$Res>
    implements _$DeactivateCardRequestCopyWith<$Res> {
  __$DeactivateCardRequestCopyWithImpl(this._self, this._then);

  final _DeactivateCardRequest _self;
  final $Res Function(_DeactivateCardRequest) _then;

/// Create a copy of DeactivateCardRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subId = null,Object? paymentType = null,Object? token = null,Object? cardId = null,}) {
  return _then(_DeactivateCardRequest(
subId: null == subId ? _self.subId : subId // ignore: cast_nullable_to_non_nullable
as String,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,cardId: null == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DeactivateCardResponse {

 String? get message; String? get status;
/// Create a copy of DeactivateCardResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeactivateCardResponseCopyWith<DeactivateCardResponse> get copyWith => _$DeactivateCardResponseCopyWithImpl<DeactivateCardResponse>(this as DeactivateCardResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeactivateCardResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status);

@override
String toString() {
  return 'DeactivateCardResponse(message: $message, status: $status)';
}


}

/// @nodoc
abstract mixin class $DeactivateCardResponseCopyWith<$Res>  {
  factory $DeactivateCardResponseCopyWith(DeactivateCardResponse value, $Res Function(DeactivateCardResponse) _then) = _$DeactivateCardResponseCopyWithImpl;
@useResult
$Res call({
 String? message, String? status
});




}
/// @nodoc
class _$DeactivateCardResponseCopyWithImpl<$Res>
    implements $DeactivateCardResponseCopyWith<$Res> {
  _$DeactivateCardResponseCopyWithImpl(this._self, this._then);

  final DeactivateCardResponse _self;
  final $Res Function(DeactivateCardResponse) _then;

/// Create a copy of DeactivateCardResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? status = freezed,}) {
  return _then(DeactivateCardResponse(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeactivateCardResponse].
extension DeactivateCardResponsePatterns on DeactivateCardResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeactivateCardResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeactivateCardResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeactivateCardResponse value)  $default,){
final _that = this;
switch (_that) {
case _DeactivateCardResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeactivateCardResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DeactivateCardResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeactivateCardResponse() when $default != null:
return $default(_that.message,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message,  String? status)  $default,) {final _that = this;
switch (_that) {
case _DeactivateCardResponse():
return $default(_that.message,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _DeactivateCardResponse() when $default != null:
return $default(_that.message,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _DeactivateCardResponse implements DeactivateCardResponse {
  const _DeactivateCardResponse({this.message, this.status});
  factory _DeactivateCardResponse.fromJson(Map<String, dynamic> json) => _$DeactivateCardResponseFromJson(json);

@override final  String? message;
@override final  String? status;

/// Create a copy of DeactivateCardResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeactivateCardResponseCopyWith<_DeactivateCardResponse> get copyWith => __$DeactivateCardResponseCopyWithImpl<_DeactivateCardResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeactivateCardResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status);

@override
String toString() {
  return 'DeactivateCardResponse(message: $message, status: $status)';
}


}

/// @nodoc
abstract mixin class _$DeactivateCardResponseCopyWith<$Res> implements $DeactivateCardResponseCopyWith<$Res> {
  factory _$DeactivateCardResponseCopyWith(_DeactivateCardResponse value, $Res Function(_DeactivateCardResponse) _then) = __$DeactivateCardResponseCopyWithImpl;
@override @useResult
$Res call({
 String? message, String? status
});




}
/// @nodoc
class __$DeactivateCardResponseCopyWithImpl<$Res>
    implements _$DeactivateCardResponseCopyWith<$Res> {
  __$DeactivateCardResponseCopyWithImpl(this._self, this._then);

  final _DeactivateCardResponse _self;
  final $Res Function(_DeactivateCardResponse) _then;

/// Create a copy of DeactivateCardResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? status = freezed,}) {
  return _then(_DeactivateCardResponse(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
