// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderData {

 DateTime get pickUpDate; PaymentType get paymentType; String? get comment; double get bonusesSpend; bool get offerCheck;
/// Create a copy of OrderData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDataCopyWith<OrderData> get copyWith => _$OrderDataCopyWithImpl<OrderData>(this as OrderData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderData&&(identical(other.pickUpDate, pickUpDate) || other.pickUpDate == pickUpDate)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.bonusesSpend, bonusesSpend) || other.bonusesSpend == bonusesSpend)&&(identical(other.offerCheck, offerCheck) || other.offerCheck == offerCheck));
}


@override
int get hashCode => Object.hash(runtimeType,pickUpDate,paymentType,comment,bonusesSpend,offerCheck);

@override
String toString() {
  return 'OrderData(pickUpDate: $pickUpDate, paymentType: $paymentType, comment: $comment, bonusesSpend: $bonusesSpend, offerCheck: $offerCheck)';
}


}

/// @nodoc
abstract mixin class $OrderDataCopyWith<$Res>  {
  factory $OrderDataCopyWith(OrderData value, $Res Function(OrderData) _then) = _$OrderDataCopyWithImpl;
@useResult
$Res call({
 DateTime pickUpDate, PaymentType paymentType, String? comment, double bonusesSpend, bool offerCheck
});


$PaymentTypeCopyWith<$Res> get paymentType;

}
/// @nodoc
class _$OrderDataCopyWithImpl<$Res>
    implements $OrderDataCopyWith<$Res> {
  _$OrderDataCopyWithImpl(this._self, this._then);

  final OrderData _self;
  final $Res Function(OrderData) _then;

/// Create a copy of OrderData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pickUpDate = null,Object? paymentType = null,Object? comment = freezed,Object? bonusesSpend = null,Object? offerCheck = null,}) {
  return _then(OrderData(
pickUpDate: null == pickUpDate ? _self.pickUpDate : pickUpDate // ignore: cast_nullable_to_non_nullable
as DateTime,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,bonusesSpend: null == bonusesSpend ? _self.bonusesSpend : bonusesSpend // ignore: cast_nullable_to_non_nullable
as double,offerCheck: null == offerCheck ? _self.offerCheck : offerCheck // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of OrderData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res> get paymentType {
  
  return $PaymentTypeCopyWith<$Res>(_self.paymentType, (value) {
    return _then(_self.copyWith(paymentType: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderData].
extension OrderDataPatterns on OrderData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderData value)  $default,){
final _that = this;
switch (_that) {
case _OrderData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderData value)?  $default,){
final _that = this;
switch (_that) {
case _OrderData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime pickUpDate,  PaymentType paymentType,  String? comment,  double bonusesSpend,  bool offerCheck)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderData() when $default != null:
return $default(_that.pickUpDate,_that.paymentType,_that.comment,_that.bonusesSpend,_that.offerCheck);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime pickUpDate,  PaymentType paymentType,  String? comment,  double bonusesSpend,  bool offerCheck)  $default,) {final _that = this;
switch (_that) {
case _OrderData():
return $default(_that.pickUpDate,_that.paymentType,_that.comment,_that.bonusesSpend,_that.offerCheck);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime pickUpDate,  PaymentType paymentType,  String? comment,  double bonusesSpend,  bool offerCheck)?  $default,) {final _that = this;
switch (_that) {
case _OrderData() when $default != null:
return $default(_that.pickUpDate,_that.paymentType,_that.comment,_that.bonusesSpend,_that.offerCheck);case _:
  return null;

}
}

}

/// @nodoc


class _OrderData implements OrderData {
  const _OrderData({required this.pickUpDate, required this.paymentType, this.comment, this.bonusesSpend = 0.0, this.offerCheck = false});
  

@override final  DateTime pickUpDate;
@override final  PaymentType paymentType;
@override final  String? comment;
@override@JsonKey() final  double bonusesSpend;
@override@JsonKey() final  bool offerCheck;

/// Create a copy of OrderData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDataCopyWith<_OrderData> get copyWith => __$OrderDataCopyWithImpl<_OrderData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderData&&(identical(other.pickUpDate, pickUpDate) || other.pickUpDate == pickUpDate)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.bonusesSpend, bonusesSpend) || other.bonusesSpend == bonusesSpend)&&(identical(other.offerCheck, offerCheck) || other.offerCheck == offerCheck));
}


@override
int get hashCode => Object.hash(runtimeType,pickUpDate,paymentType,comment,bonusesSpend,offerCheck);

@override
String toString() {
  return 'OrderData(pickUpDate: $pickUpDate, paymentType: $paymentType, comment: $comment, bonusesSpend: $bonusesSpend, offerCheck: $offerCheck)';
}


}

/// @nodoc
abstract mixin class _$OrderDataCopyWith<$Res> implements $OrderDataCopyWith<$Res> {
  factory _$OrderDataCopyWith(_OrderData value, $Res Function(_OrderData) _then) = __$OrderDataCopyWithImpl;
@override @useResult
$Res call({
 DateTime pickUpDate, PaymentType paymentType, String? comment, double bonusesSpend, bool offerCheck
});


@override $PaymentTypeCopyWith<$Res> get paymentType;

}
/// @nodoc
class __$OrderDataCopyWithImpl<$Res>
    implements _$OrderDataCopyWith<$Res> {
  __$OrderDataCopyWithImpl(this._self, this._then);

  final _OrderData _self;
  final $Res Function(_OrderData) _then;

/// Create a copy of OrderData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pickUpDate = null,Object? paymentType = null,Object? comment = freezed,Object? bonusesSpend = null,Object? offerCheck = null,}) {
  return _then(_OrderData(
pickUpDate: null == pickUpDate ? _self.pickUpDate : pickUpDate // ignore: cast_nullable_to_non_nullable
as DateTime,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,bonusesSpend: null == bonusesSpend ? _self.bonusesSpend : bonusesSpend // ignore: cast_nullable_to_non_nullable
as double,offerCheck: null == offerCheck ? _self.offerCheck : offerCheck // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of OrderData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res> get paymentType {
  
  return $PaymentTypeCopyWith<$Res>(_self.paymentType, (value) {
    return _then(_self.copyWith(paymentType: value));
  });
}
}

// dart format on
