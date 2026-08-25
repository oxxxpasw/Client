// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_coupon_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderCouponState {

 OrderCouponStatus get status; Promotion? get coupon; int? get expiresInDays;
/// Create a copy of OrderCouponState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCouponStateCopyWith<OrderCouponState> get copyWith => _$OrderCouponStateCopyWithImpl<OrderCouponState>(this as OrderCouponState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderCouponState&&(identical(other.status, status) || other.status == status)&&(identical(other.coupon, coupon) || other.coupon == coupon)&&(identical(other.expiresInDays, expiresInDays) || other.expiresInDays == expiresInDays));
}


@override
int get hashCode => Object.hash(runtimeType,status,coupon,expiresInDays);

@override
String toString() {
  return 'OrderCouponState(status: $status, coupon: $coupon, expiresInDays: $expiresInDays)';
}


}

/// @nodoc
abstract mixin class $OrderCouponStateCopyWith<$Res>  {
  factory $OrderCouponStateCopyWith(OrderCouponState value, $Res Function(OrderCouponState) _then) = _$OrderCouponStateCopyWithImpl;
@useResult
$Res call({
 OrderCouponStatus status, Promotion? coupon, int? expiresInDays
});


$PromotionCopyWith<$Res>? get coupon;

}
/// @nodoc
class _$OrderCouponStateCopyWithImpl<$Res>
    implements $OrderCouponStateCopyWith<$Res> {
  _$OrderCouponStateCopyWithImpl(this._self, this._then);

  final OrderCouponState _self;
  final $Res Function(OrderCouponState) _then;

/// Create a copy of OrderCouponState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? coupon = freezed,Object? expiresInDays = freezed,}) {
  return _then(OrderCouponState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderCouponStatus,coupon: freezed == coupon ? _self.coupon : coupon // ignore: cast_nullable_to_non_nullable
as Promotion?,expiresInDays: freezed == expiresInDays ? _self.expiresInDays : expiresInDays // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of OrderCouponState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionCopyWith<$Res>? get coupon {
    if (_self.coupon == null) {
    return null;
  }

  return $PromotionCopyWith<$Res>(_self.coupon!, (value) {
    return _then(_self.copyWith(coupon: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderCouponState].
extension OrderCouponStatePatterns on OrderCouponState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderCouponState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderCouponState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderCouponState value)  $default,){
final _that = this;
switch (_that) {
case _OrderCouponState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderCouponState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderCouponState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderCouponStatus status,  Promotion? coupon,  int? expiresInDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderCouponState() when $default != null:
return $default(_that.status,_that.coupon,_that.expiresInDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderCouponStatus status,  Promotion? coupon,  int? expiresInDays)  $default,) {final _that = this;
switch (_that) {
case _OrderCouponState():
return $default(_that.status,_that.coupon,_that.expiresInDays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderCouponStatus status,  Promotion? coupon,  int? expiresInDays)?  $default,) {final _that = this;
switch (_that) {
case _OrderCouponState() when $default != null:
return $default(_that.status,_that.coupon,_that.expiresInDays);case _:
  return null;

}
}

}

/// @nodoc


class _OrderCouponState implements OrderCouponState {
  const _OrderCouponState({this.status = OrderCouponStatus.init, this.coupon, this.expiresInDays}): assert(status != OrderCouponStatus.ready || coupon != null);
  

@override@JsonKey() final  OrderCouponStatus status;
@override final  Promotion? coupon;
@override final  int? expiresInDays;

/// Create a copy of OrderCouponState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCouponStateCopyWith<_OrderCouponState> get copyWith => __$OrderCouponStateCopyWithImpl<_OrderCouponState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderCouponState&&(identical(other.status, status) || other.status == status)&&(identical(other.coupon, coupon) || other.coupon == coupon)&&(identical(other.expiresInDays, expiresInDays) || other.expiresInDays == expiresInDays));
}


@override
int get hashCode => Object.hash(runtimeType,status,coupon,expiresInDays);

@override
String toString() {
  return 'OrderCouponState(status: $status, coupon: $coupon, expiresInDays: $expiresInDays)';
}


}

/// @nodoc
abstract mixin class _$OrderCouponStateCopyWith<$Res> implements $OrderCouponStateCopyWith<$Res> {
  factory _$OrderCouponStateCopyWith(_OrderCouponState value, $Res Function(_OrderCouponState) _then) = __$OrderCouponStateCopyWithImpl;
@override @useResult
$Res call({
 OrderCouponStatus status, Promotion? coupon, int? expiresInDays
});


@override $PromotionCopyWith<$Res>? get coupon;

}
/// @nodoc
class __$OrderCouponStateCopyWithImpl<$Res>
    implements _$OrderCouponStateCopyWith<$Res> {
  __$OrderCouponStateCopyWithImpl(this._self, this._then);

  final _OrderCouponState _self;
  final $Res Function(_OrderCouponState) _then;

/// Create a copy of OrderCouponState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? coupon = freezed,Object? expiresInDays = freezed,}) {
  return _then(_OrderCouponState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderCouponStatus,coupon: freezed == coupon ? _self.coupon : coupon // ignore: cast_nullable_to_non_nullable
as Promotion?,expiresInDays: freezed == expiresInDays ? _self.expiresInDays : expiresInDays // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of OrderCouponState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionCopyWith<$Res>? get coupon {
    if (_self.coupon == null) {
    return null;
  }

  return $PromotionCopyWith<$Res>(_self.coupon!, (value) {
    return _then(_self.copyWith(coupon: value));
  });
}
}

// dart format on
