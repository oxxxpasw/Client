// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LinkCardRequest implements DiagnosticableTreeMixin {

 String get subId; String get paymentType; String get token;
/// Create a copy of LinkCardRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkCardRequestCopyWith<LinkCardRequest> get copyWith => _$LinkCardRequestCopyWithImpl<LinkCardRequest>(this as LinkCardRequest, _$identity);

  /// Serializes this LinkCardRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LinkCardRequest'))
    ..add(DiagnosticsProperty('subId', subId))..add(DiagnosticsProperty('paymentType', paymentType))..add(DiagnosticsProperty('token', token));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkCardRequest&&(identical(other.subId, subId) || other.subId == subId)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subId,paymentType,token);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LinkCardRequest(subId: $subId, paymentType: $paymentType, token: $token)';
}


}

/// @nodoc
abstract mixin class $LinkCardRequestCopyWith<$Res>  {
  factory $LinkCardRequestCopyWith(LinkCardRequest value, $Res Function(LinkCardRequest) _then) = _$LinkCardRequestCopyWithImpl;
@useResult
$Res call({
 String subId, String paymentType, String token
});




}
/// @nodoc
class _$LinkCardRequestCopyWithImpl<$Res>
    implements $LinkCardRequestCopyWith<$Res> {
  _$LinkCardRequestCopyWithImpl(this._self, this._then);

  final LinkCardRequest _self;
  final $Res Function(LinkCardRequest) _then;

/// Create a copy of LinkCardRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subId = null,Object? paymentType = null,Object? token = null,}) {
  return _then(LinkCardRequest(
subId: null == subId ? _self.subId : subId // ignore: cast_nullable_to_non_nullable
as String,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LinkCardRequest].
extension LinkCardRequestPatterns on LinkCardRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LinkCardRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LinkCardRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LinkCardRequest value)  $default,){
final _that = this;
switch (_that) {
case _LinkCardRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LinkCardRequest value)?  $default,){
final _that = this;
switch (_that) {
case _LinkCardRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String subId,  String paymentType,  String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LinkCardRequest() when $default != null:
return $default(_that.subId,_that.paymentType,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String subId,  String paymentType,  String token)  $default,) {final _that = this;
switch (_that) {
case _LinkCardRequest():
return $default(_that.subId,_that.paymentType,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String subId,  String paymentType,  String token)?  $default,) {final _that = this;
switch (_that) {
case _LinkCardRequest() when $default != null:
return $default(_that.subId,_that.paymentType,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _LinkCardRequest with DiagnosticableTreeMixin implements LinkCardRequest {
  const _LinkCardRequest({required this.subId, required this.paymentType, required this.token});
  

@override final  String subId;
@override final  String paymentType;
@override final  String token;

/// Create a copy of LinkCardRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinkCardRequestCopyWith<_LinkCardRequest> get copyWith => __$LinkCardRequestCopyWithImpl<_LinkCardRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinkCardRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LinkCardRequest'))
    ..add(DiagnosticsProperty('subId', subId))..add(DiagnosticsProperty('paymentType', paymentType))..add(DiagnosticsProperty('token', token));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LinkCardRequest&&(identical(other.subId, subId) || other.subId == subId)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subId,paymentType,token);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LinkCardRequest(subId: $subId, paymentType: $paymentType, token: $token)';
}


}

/// @nodoc
abstract mixin class _$LinkCardRequestCopyWith<$Res> implements $LinkCardRequestCopyWith<$Res> {
  factory _$LinkCardRequestCopyWith(_LinkCardRequest value, $Res Function(_LinkCardRequest) _then) = __$LinkCardRequestCopyWithImpl;
@override @useResult
$Res call({
 String subId, String paymentType, String token
});




}
/// @nodoc
class __$LinkCardRequestCopyWithImpl<$Res>
    implements _$LinkCardRequestCopyWith<$Res> {
  __$LinkCardRequestCopyWithImpl(this._self, this._then);

  final _LinkCardRequest _self;
  final $Res Function(_LinkCardRequest) _then;

/// Create a copy of LinkCardRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subId = null,Object? paymentType = null,Object? token = null,}) {
  return _then(_LinkCardRequest(
subId: null == subId ? _self.subId : subId // ignore: cast_nullable_to_non_nullable
as String,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LinkCardResponse implements DiagnosticableTreeMixin {

 Uri? get data; String? get message; String? get status;
/// Create a copy of LinkCardResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkCardResponseCopyWith<LinkCardResponse> get copyWith => _$LinkCardResponseCopyWithImpl<LinkCardResponse>(this as LinkCardResponse, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LinkCardResponse'))
    ..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('message', message))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkCardResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LinkCardResponse(data: $data, message: $message, status: $status)';
}


}

/// @nodoc
abstract mixin class $LinkCardResponseCopyWith<$Res>  {
  factory $LinkCardResponseCopyWith(LinkCardResponse value, $Res Function(LinkCardResponse) _then) = _$LinkCardResponseCopyWithImpl;
@useResult
$Res call({
 Uri? data, String? message, String? status
});




}
/// @nodoc
class _$LinkCardResponseCopyWithImpl<$Res>
    implements $LinkCardResponseCopyWith<$Res> {
  _$LinkCardResponseCopyWithImpl(this._self, this._then);

  final LinkCardResponse _self;
  final $Res Function(LinkCardResponse) _then;

/// Create a copy of LinkCardResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? message = freezed,Object? status = freezed,}) {
  return _then(LinkCardResponse(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Uri?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LinkCardResponse].
extension LinkCardResponsePatterns on LinkCardResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LinkCardResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LinkCardResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LinkCardResponse value)  $default,){
final _that = this;
switch (_that) {
case _LinkCardResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LinkCardResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LinkCardResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Uri? data,  String? message,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LinkCardResponse() when $default != null:
return $default(_that.data,_that.message,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Uri? data,  String? message,  String? status)  $default,) {final _that = this;
switch (_that) {
case _LinkCardResponse():
return $default(_that.data,_that.message,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Uri? data,  String? message,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _LinkCardResponse() when $default != null:
return $default(_that.data,_that.message,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _LinkCardResponse with DiagnosticableTreeMixin implements LinkCardResponse {
  const _LinkCardResponse({this.data, this.message, this.status});
  factory _LinkCardResponse.fromJson(Map<String, dynamic> json) => _$LinkCardResponseFromJson(json);

@override final  Uri? data;
@override final  String? message;
@override final  String? status;

/// Create a copy of LinkCardResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinkCardResponseCopyWith<_LinkCardResponse> get copyWith => __$LinkCardResponseCopyWithImpl<_LinkCardResponse>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LinkCardResponse'))
    ..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('message', message))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LinkCardResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LinkCardResponse(data: $data, message: $message, status: $status)';
}


}

/// @nodoc
abstract mixin class _$LinkCardResponseCopyWith<$Res> implements $LinkCardResponseCopyWith<$Res> {
  factory _$LinkCardResponseCopyWith(_LinkCardResponse value, $Res Function(_LinkCardResponse) _then) = __$LinkCardResponseCopyWithImpl;
@override @useResult
$Res call({
 Uri? data, String? message, String? status
});




}
/// @nodoc
class __$LinkCardResponseCopyWithImpl<$Res>
    implements _$LinkCardResponseCopyWith<$Res> {
  __$LinkCardResponseCopyWithImpl(this._self, this._then);

  final _LinkCardResponse _self;
  final $Res Function(_LinkCardResponse) _then;

/// Create a copy of LinkCardResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = freezed,Object? status = freezed,}) {
  return _then(_LinkCardResponse(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Uri?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
