// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderHistoryState {

 OrderHistoryStatus get status; List<AcceptedOrder> get acceptedOrders;
/// Create a copy of OrderHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderHistoryStateCopyWith<OrderHistoryState> get copyWith => _$OrderHistoryStateCopyWithImpl<OrderHistoryState>(this as OrderHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderHistoryState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.acceptedOrders, acceptedOrders));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(acceptedOrders));

@override
String toString() {
  return 'OrderHistoryState(status: $status, acceptedOrders: $acceptedOrders)';
}


}

/// @nodoc
abstract mixin class $OrderHistoryStateCopyWith<$Res>  {
  factory $OrderHistoryStateCopyWith(OrderHistoryState value, $Res Function(OrderHistoryState) _then) = _$OrderHistoryStateCopyWithImpl;
@useResult
$Res call({
 OrderHistoryStatus status, List<AcceptedOrder> acceptedOrders
});




}
/// @nodoc
class _$OrderHistoryStateCopyWithImpl<$Res>
    implements $OrderHistoryStateCopyWith<$Res> {
  _$OrderHistoryStateCopyWithImpl(this._self, this._then);

  final OrderHistoryState _self;
  final $Res Function(OrderHistoryState) _then;

/// Create a copy of OrderHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? acceptedOrders = null,}) {
  return _then(OrderHistoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderHistoryStatus,acceptedOrders: null == acceptedOrders ? _self.acceptedOrders : acceptedOrders // ignore: cast_nullable_to_non_nullable
as List<AcceptedOrder>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderHistoryState].
extension OrderHistoryStatePatterns on OrderHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _OrderHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderHistoryStatus status,  List<AcceptedOrder> acceptedOrders)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderHistoryState() when $default != null:
return $default(_that.status,_that.acceptedOrders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderHistoryStatus status,  List<AcceptedOrder> acceptedOrders)  $default,) {final _that = this;
switch (_that) {
case _OrderHistoryState():
return $default(_that.status,_that.acceptedOrders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderHistoryStatus status,  List<AcceptedOrder> acceptedOrders)?  $default,) {final _that = this;
switch (_that) {
case _OrderHistoryState() when $default != null:
return $default(_that.status,_that.acceptedOrders);case _:
  return null;

}
}

}

/// @nodoc


class _OrderHistoryState implements OrderHistoryState {
  const _OrderHistoryState({this.status = OrderHistoryStatus.init,  List<AcceptedOrder> acceptedOrders = const []}): _acceptedOrders = acceptedOrders;
  

@override@JsonKey() final  OrderHistoryStatus status;
 final  List<AcceptedOrder> _acceptedOrders;
@override@JsonKey() List<AcceptedOrder> get acceptedOrders {
  if (_acceptedOrders is EqualUnmodifiableListView) return _acceptedOrders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_acceptedOrders);
}


/// Create a copy of OrderHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderHistoryStateCopyWith<_OrderHistoryState> get copyWith => __$OrderHistoryStateCopyWithImpl<_OrderHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderHistoryState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._acceptedOrders, _acceptedOrders));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_acceptedOrders));

@override
String toString() {
  return 'OrderHistoryState(status: $status, acceptedOrders: $acceptedOrders)';
}


}

/// @nodoc
abstract mixin class _$OrderHistoryStateCopyWith<$Res> implements $OrderHistoryStateCopyWith<$Res> {
  factory _$OrderHistoryStateCopyWith(_OrderHistoryState value, $Res Function(_OrderHistoryState) _then) = __$OrderHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 OrderHistoryStatus status, List<AcceptedOrder> acceptedOrders
});




}
/// @nodoc
class __$OrderHistoryStateCopyWithImpl<$Res>
    implements _$OrderHistoryStateCopyWith<$Res> {
  __$OrderHistoryStateCopyWithImpl(this._self, this._then);

  final _OrderHistoryState _self;
  final $Res Function(_OrderHistoryState) _then;

/// Create a copy of OrderHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? acceptedOrders = null,}) {
  return _then(_OrderHistoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderHistoryStatus,acceptedOrders: null == acceptedOrders ? _self._acceptedOrders : acceptedOrders // ignore: cast_nullable_to_non_nullable
as List<AcceptedOrder>,
  ));
}


}

/// @nodoc
mixin _$OrderHistorySr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderHistorySr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderHistorySr()';
}


}

/// @nodoc
class $OrderHistorySrCopyWith<$Res>  {
$OrderHistorySrCopyWith(OrderHistorySr _, $Res Function(OrderHistorySr) __);
}


/// Adds pattern-matching-related methods to [OrderHistorySr].
extension OrderHistorySrPatterns on OrderHistorySr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OrderHistoryErrorSr value)?  error,TResult Function( OrderHistorySelectedSr value)?  selected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OrderHistoryErrorSr() when error != null:
return error(_that);case OrderHistorySelectedSr() when selected != null:
return selected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OrderHistoryErrorSr value)  error,required TResult Function( OrderHistorySelectedSr value)  selected,}){
final _that = this;
switch (_that) {
case OrderHistoryErrorSr():
return error(_that);case OrderHistorySelectedSr():
return selected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OrderHistoryErrorSr value)?  error,TResult? Function( OrderHistorySelectedSr value)?  selected,}){
final _that = this;
switch (_that) {
case OrderHistoryErrorSr() when error != null:
return error(_that);case OrderHistorySelectedSr() when selected != null:
return selected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function( AcceptedOrder order)?  selected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OrderHistoryErrorSr() when error != null:
return error(_that.error);case OrderHistorySelectedSr() when selected != null:
return selected(_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function( AcceptedOrder order)  selected,}) {final _that = this;
switch (_that) {
case OrderHistoryErrorSr():
return error(_that.error);case OrderHistorySelectedSr():
return selected(_that.order);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function( AcceptedOrder order)?  selected,}) {final _that = this;
switch (_that) {
case OrderHistoryErrorSr() when error != null:
return error(_that.error);case OrderHistorySelectedSr() when selected != null:
return selected(_that.order);case _:
  return null;

}
}

}

/// @nodoc


class OrderHistoryErrorSr implements OrderHistorySr {
  const OrderHistoryErrorSr(this.error);
  

 final  String error;

/// Create a copy of OrderHistorySr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderHistoryErrorSrCopyWith<OrderHistoryErrorSr> get copyWith => _$OrderHistoryErrorSrCopyWithImpl<OrderHistoryErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderHistoryErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'OrderHistorySr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $OrderHistoryErrorSrCopyWith<$Res> implements $OrderHistorySrCopyWith<$Res> {
  factory $OrderHistoryErrorSrCopyWith(OrderHistoryErrorSr value, $Res Function(OrderHistoryErrorSr) _then) = _$OrderHistoryErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$OrderHistoryErrorSrCopyWithImpl<$Res>
    implements $OrderHistoryErrorSrCopyWith<$Res> {
  _$OrderHistoryErrorSrCopyWithImpl(this._self, this._then);

  final OrderHistoryErrorSr _self;
  final $Res Function(OrderHistoryErrorSr) _then;

/// Create a copy of OrderHistorySr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(OrderHistoryErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OrderHistorySelectedSr implements OrderHistorySr {
  const OrderHistorySelectedSr(this.order);
  

 final  AcceptedOrder order;

/// Create a copy of OrderHistorySr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderHistorySelectedSrCopyWith<OrderHistorySelectedSr> get copyWith => _$OrderHistorySelectedSrCopyWithImpl<OrderHistorySelectedSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderHistorySelectedSr&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'OrderHistorySr.selected(order: $order)';
}


}

/// @nodoc
abstract mixin class $OrderHistorySelectedSrCopyWith<$Res> implements $OrderHistorySrCopyWith<$Res> {
  factory $OrderHistorySelectedSrCopyWith(OrderHistorySelectedSr value, $Res Function(OrderHistorySelectedSr) _then) = _$OrderHistorySelectedSrCopyWithImpl;
@useResult
$Res call({
 AcceptedOrder order
});


$AcceptedOrderCopyWith<$Res> get order;

}
/// @nodoc
class _$OrderHistorySelectedSrCopyWithImpl<$Res>
    implements $OrderHistorySelectedSrCopyWith<$Res> {
  _$OrderHistorySelectedSrCopyWithImpl(this._self, this._then);

  final OrderHistorySelectedSr _self;
  final $Res Function(OrderHistorySelectedSr) _then;

/// Create a copy of OrderHistorySr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(OrderHistorySelectedSr(
null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AcceptedOrder,
  ));
}

/// Create a copy of OrderHistorySr
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
