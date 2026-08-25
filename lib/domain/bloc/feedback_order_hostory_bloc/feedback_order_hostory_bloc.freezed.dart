// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_order_hostory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedbackOrderHistoryState {

 FeedbackOrderHistoryStatus get status; List<AcceptedOrder> get acceptedOrders;
/// Create a copy of FeedbackOrderHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackOrderHistoryStateCopyWith<FeedbackOrderHistoryState> get copyWith => _$FeedbackOrderHistoryStateCopyWithImpl<FeedbackOrderHistoryState>(this as FeedbackOrderHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackOrderHistoryState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.acceptedOrders, acceptedOrders));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(acceptedOrders));

@override
String toString() {
  return 'FeedbackOrderHistoryState(status: $status, acceptedOrders: $acceptedOrders)';
}


}

/// @nodoc
abstract mixin class $FeedbackOrderHistoryStateCopyWith<$Res>  {
  factory $FeedbackOrderHistoryStateCopyWith(FeedbackOrderHistoryState value, $Res Function(FeedbackOrderHistoryState) _then) = _$FeedbackOrderHistoryStateCopyWithImpl;
@useResult
$Res call({
 FeedbackOrderHistoryStatus status, List<AcceptedOrder> acceptedOrders
});




}
/// @nodoc
class _$FeedbackOrderHistoryStateCopyWithImpl<$Res>
    implements $FeedbackOrderHistoryStateCopyWith<$Res> {
  _$FeedbackOrderHistoryStateCopyWithImpl(this._self, this._then);

  final FeedbackOrderHistoryState _self;
  final $Res Function(FeedbackOrderHistoryState) _then;

/// Create a copy of FeedbackOrderHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? acceptedOrders = null,}) {
  return _then(FeedbackOrderHistoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FeedbackOrderHistoryStatus,acceptedOrders: null == acceptedOrders ? _self.acceptedOrders : acceptedOrders // ignore: cast_nullable_to_non_nullable
as List<AcceptedOrder>,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedbackOrderHistoryState].
extension FeedbackOrderHistoryStatePatterns on FeedbackOrderHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedbackOrderHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedbackOrderHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedbackOrderHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _FeedbackOrderHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedbackOrderHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _FeedbackOrderHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FeedbackOrderHistoryStatus status,  List<AcceptedOrder> acceptedOrders)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedbackOrderHistoryState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FeedbackOrderHistoryStatus status,  List<AcceptedOrder> acceptedOrders)  $default,) {final _that = this;
switch (_that) {
case _FeedbackOrderHistoryState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FeedbackOrderHistoryStatus status,  List<AcceptedOrder> acceptedOrders)?  $default,) {final _that = this;
switch (_that) {
case _FeedbackOrderHistoryState() when $default != null:
return $default(_that.status,_that.acceptedOrders);case _:
  return null;

}
}

}

/// @nodoc


class _FeedbackOrderHistoryState implements FeedbackOrderHistoryState {
  const _FeedbackOrderHistoryState({this.status = FeedbackOrderHistoryStatus.init,  List<AcceptedOrder> acceptedOrders = const []}): _acceptedOrders = acceptedOrders;
  

@override@JsonKey() final  FeedbackOrderHistoryStatus status;
 final  List<AcceptedOrder> _acceptedOrders;
@override@JsonKey() List<AcceptedOrder> get acceptedOrders {
  if (_acceptedOrders is EqualUnmodifiableListView) return _acceptedOrders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_acceptedOrders);
}


/// Create a copy of FeedbackOrderHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackOrderHistoryStateCopyWith<_FeedbackOrderHistoryState> get copyWith => __$FeedbackOrderHistoryStateCopyWithImpl<_FeedbackOrderHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedbackOrderHistoryState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._acceptedOrders, _acceptedOrders));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_acceptedOrders));

@override
String toString() {
  return 'FeedbackOrderHistoryState(status: $status, acceptedOrders: $acceptedOrders)';
}


}

/// @nodoc
abstract mixin class _$FeedbackOrderHistoryStateCopyWith<$Res> implements $FeedbackOrderHistoryStateCopyWith<$Res> {
  factory _$FeedbackOrderHistoryStateCopyWith(_FeedbackOrderHistoryState value, $Res Function(_FeedbackOrderHistoryState) _then) = __$FeedbackOrderHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 FeedbackOrderHistoryStatus status, List<AcceptedOrder> acceptedOrders
});




}
/// @nodoc
class __$FeedbackOrderHistoryStateCopyWithImpl<$Res>
    implements _$FeedbackOrderHistoryStateCopyWith<$Res> {
  __$FeedbackOrderHistoryStateCopyWithImpl(this._self, this._then);

  final _FeedbackOrderHistoryState _self;
  final $Res Function(_FeedbackOrderHistoryState) _then;

/// Create a copy of FeedbackOrderHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? acceptedOrders = null,}) {
  return _then(_FeedbackOrderHistoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FeedbackOrderHistoryStatus,acceptedOrders: null == acceptedOrders ? _self._acceptedOrders : acceptedOrders // ignore: cast_nullable_to_non_nullable
as List<AcceptedOrder>,
  ));
}


}

/// @nodoc
mixin _$FeedbackOrderHistorySr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackOrderHistorySr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackOrderHistorySr()';
}


}

/// @nodoc
class $FeedbackOrderHistorySrCopyWith<$Res>  {
$FeedbackOrderHistorySrCopyWith(FeedbackOrderHistorySr _, $Res Function(FeedbackOrderHistorySr) __);
}


/// Adds pattern-matching-related methods to [FeedbackOrderHistorySr].
extension FeedbackOrderHistorySrPatterns on FeedbackOrderHistorySr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FeedbackOrderHistoryErrorSr value)?  error,TResult Function( FeedbackOrderHistorySelectedSr value)?  selected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FeedbackOrderHistoryErrorSr() when error != null:
return error(_that);case FeedbackOrderHistorySelectedSr() when selected != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FeedbackOrderHistoryErrorSr value)  error,required TResult Function( FeedbackOrderHistorySelectedSr value)  selected,}){
final _that = this;
switch (_that) {
case FeedbackOrderHistoryErrorSr():
return error(_that);case FeedbackOrderHistorySelectedSr():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FeedbackOrderHistoryErrorSr value)?  error,TResult? Function( FeedbackOrderHistorySelectedSr value)?  selected,}){
final _that = this;
switch (_that) {
case FeedbackOrderHistoryErrorSr() when error != null:
return error(_that);case FeedbackOrderHistorySelectedSr() when selected != null:
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
case FeedbackOrderHistoryErrorSr() when error != null:
return error(_that.error);case FeedbackOrderHistorySelectedSr() when selected != null:
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
case FeedbackOrderHistoryErrorSr():
return error(_that.error);case FeedbackOrderHistorySelectedSr():
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
case FeedbackOrderHistoryErrorSr() when error != null:
return error(_that.error);case FeedbackOrderHistorySelectedSr() when selected != null:
return selected(_that.order);case _:
  return null;

}
}

}

/// @nodoc


class FeedbackOrderHistoryErrorSr implements FeedbackOrderHistorySr {
  const FeedbackOrderHistoryErrorSr(this.error);
  

 final  String error;

/// Create a copy of FeedbackOrderHistorySr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackOrderHistoryErrorSrCopyWith<FeedbackOrderHistoryErrorSr> get copyWith => _$FeedbackOrderHistoryErrorSrCopyWithImpl<FeedbackOrderHistoryErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackOrderHistoryErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'FeedbackOrderHistorySr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $FeedbackOrderHistoryErrorSrCopyWith<$Res> implements $FeedbackOrderHistorySrCopyWith<$Res> {
  factory $FeedbackOrderHistoryErrorSrCopyWith(FeedbackOrderHistoryErrorSr value, $Res Function(FeedbackOrderHistoryErrorSr) _then) = _$FeedbackOrderHistoryErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$FeedbackOrderHistoryErrorSrCopyWithImpl<$Res>
    implements $FeedbackOrderHistoryErrorSrCopyWith<$Res> {
  _$FeedbackOrderHistoryErrorSrCopyWithImpl(this._self, this._then);

  final FeedbackOrderHistoryErrorSr _self;
  final $Res Function(FeedbackOrderHistoryErrorSr) _then;

/// Create a copy of FeedbackOrderHistorySr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(FeedbackOrderHistoryErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FeedbackOrderHistorySelectedSr implements FeedbackOrderHistorySr {
  const FeedbackOrderHistorySelectedSr(this.order);
  

 final  AcceptedOrder order;

/// Create a copy of FeedbackOrderHistorySr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackOrderHistorySelectedSrCopyWith<FeedbackOrderHistorySelectedSr> get copyWith => _$FeedbackOrderHistorySelectedSrCopyWithImpl<FeedbackOrderHistorySelectedSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackOrderHistorySelectedSr&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'FeedbackOrderHistorySr.selected(order: $order)';
}


}

/// @nodoc
abstract mixin class $FeedbackOrderHistorySelectedSrCopyWith<$Res> implements $FeedbackOrderHistorySrCopyWith<$Res> {
  factory $FeedbackOrderHistorySelectedSrCopyWith(FeedbackOrderHistorySelectedSr value, $Res Function(FeedbackOrderHistorySelectedSr) _then) = _$FeedbackOrderHistorySelectedSrCopyWithImpl;
@useResult
$Res call({
 AcceptedOrder order
});


$AcceptedOrderCopyWith<$Res> get order;

}
/// @nodoc
class _$FeedbackOrderHistorySelectedSrCopyWithImpl<$Res>
    implements $FeedbackOrderHistorySelectedSrCopyWith<$Res> {
  _$FeedbackOrderHistorySelectedSrCopyWithImpl(this._self, this._then);

  final FeedbackOrderHistorySelectedSr _self;
  final $Res Function(FeedbackOrderHistorySelectedSr) _then;

/// Create a copy of FeedbackOrderHistorySr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(FeedbackOrderHistorySelectedSr(
null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AcceptedOrder,
  ));
}

/// Create a copy of FeedbackOrderHistorySr
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
