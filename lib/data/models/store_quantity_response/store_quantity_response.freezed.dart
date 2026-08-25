// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_quantity_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
StoreQuantityResponse _$StoreQuantityResponseFromJson(
  Map<String, dynamic> json
) {
    return _StoreQuantity.fromJson(
      json
    );
}

/// @nodoc
mixin _$StoreQuantityResponse {

 String get storeId; double? get quantity; String? get quantityText;
/// Create a copy of StoreQuantityResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreQuantityResponseCopyWith<StoreQuantityResponse> get copyWith => _$StoreQuantityResponseCopyWithImpl<StoreQuantityResponse>(this as StoreQuantityResponse, _$identity);

  /// Serializes this StoreQuantityResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreQuantityResponse&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.quantityText, quantityText) || other.quantityText == quantityText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,quantity,quantityText);

@override
String toString() {
  return 'StoreQuantityResponse(storeId: $storeId, quantity: $quantity, quantityText: $quantityText)';
}


}

/// @nodoc
abstract mixin class $StoreQuantityResponseCopyWith<$Res>  {
  factory $StoreQuantityResponseCopyWith(StoreQuantityResponse value, $Res Function(StoreQuantityResponse) _then) = _$StoreQuantityResponseCopyWithImpl;
@useResult
$Res call({
 String storeId, double? quantity, String? quantityText
});




}
/// @nodoc
class _$StoreQuantityResponseCopyWithImpl<$Res>
    implements $StoreQuantityResponseCopyWith<$Res> {
  _$StoreQuantityResponseCopyWithImpl(this._self, this._then);

  final StoreQuantityResponse _self;
  final $Res Function(StoreQuantityResponse) _then;

/// Create a copy of StoreQuantityResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? quantity = freezed,Object? quantityText = freezed,}) {
  return _then(StoreQuantityResponse(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,quantityText: freezed == quantityText ? _self.quantityText : quantityText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreQuantityResponse].
extension StoreQuantityResponsePatterns on StoreQuantityResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreQuantity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreQuantity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreQuantity value)  $default,){
final _that = this;
switch (_that) {
case _StoreQuantity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreQuantity value)?  $default,){
final _that = this;
switch (_that) {
case _StoreQuantity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String storeId,  double? quantity,  String? quantityText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreQuantity() when $default != null:
return $default(_that.storeId,_that.quantity,_that.quantityText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String storeId,  double? quantity,  String? quantityText)  $default,) {final _that = this;
switch (_that) {
case _StoreQuantity():
return $default(_that.storeId,_that.quantity,_that.quantityText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String storeId,  double? quantity,  String? quantityText)?  $default,) {final _that = this;
switch (_that) {
case _StoreQuantity() when $default != null:
return $default(_that.storeId,_that.quantity,_that.quantityText);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _StoreQuantity implements StoreQuantityResponse {
  const _StoreQuantity({required this.storeId, this.quantity, this.quantityText});
  factory _StoreQuantity.fromJson(Map<String, dynamic> json) => _$StoreQuantityFromJson(json);

@override final  String storeId;
@override final  double? quantity;
@override final  String? quantityText;

/// Create a copy of StoreQuantityResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreQuantityCopyWith<_StoreQuantity> get copyWith => __$StoreQuantityCopyWithImpl<_StoreQuantity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreQuantityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreQuantity&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.quantityText, quantityText) || other.quantityText == quantityText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,quantity,quantityText);

@override
String toString() {
  return 'StoreQuantityResponse(storeId: $storeId, quantity: $quantity, quantityText: $quantityText)';
}


}

/// @nodoc
abstract mixin class _$StoreQuantityCopyWith<$Res> implements $StoreQuantityResponseCopyWith<$Res> {
  factory _$StoreQuantityCopyWith(_StoreQuantity value, $Res Function(_StoreQuantity) _then) = __$StoreQuantityCopyWithImpl;
@override @useResult
$Res call({
 String storeId, double? quantity, String? quantityText
});




}
/// @nodoc
class __$StoreQuantityCopyWithImpl<$Res>
    implements _$StoreQuantityCopyWith<$Res> {
  __$StoreQuantityCopyWithImpl(this._self, this._then);

  final _StoreQuantity _self;
  final $Res Function(_StoreQuantity) _then;

/// Create a copy of StoreQuantityResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? quantity = freezed,Object? quantityText = freezed,}) {
  return _then(_StoreQuantity(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,quantityText: freezed == quantityText ? _self.quantityText : quantityText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
