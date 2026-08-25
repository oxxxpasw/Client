// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateOrderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderEvent()';
}


}

/// @nodoc
class $CreateOrderEventCopyWith<$Res>  {
$CreateOrderEventCopyWith(CreateOrderEvent _, $Res Function(CreateOrderEvent) __);
}


/// Adds pattern-matching-related methods to [CreateOrderEvent].
extension CreateOrderEventPatterns on CreateOrderEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _NextPagePressed value)?  nextPagePressed,TResult Function( _ScanAgainPressed value)?  scanAgainPressed,TResult Function( _ProcessPaymentPressed value)?  processPaymentPressed,TResult Function( _SuccessPayment value)?  successPayment,TResult Function( _ErrorPayment value)?  errorPayment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _NextPagePressed() when nextPagePressed != null:
return nextPagePressed(_that);case _ScanAgainPressed() when scanAgainPressed != null:
return scanAgainPressed(_that);case _ProcessPaymentPressed() when processPaymentPressed != null:
return processPaymentPressed(_that);case _SuccessPayment() when successPayment != null:
return successPayment(_that);case _ErrorPayment() when errorPayment != null:
return errorPayment(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _NextPagePressed value)  nextPagePressed,required TResult Function( _ScanAgainPressed value)  scanAgainPressed,required TResult Function( _ProcessPaymentPressed value)  processPaymentPressed,required TResult Function( _SuccessPayment value)  successPayment,required TResult Function( _ErrorPayment value)  errorPayment,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _NextPagePressed():
return nextPagePressed(_that);case _ScanAgainPressed():
return scanAgainPressed(_that);case _ProcessPaymentPressed():
return processPaymentPressed(_that);case _SuccessPayment():
return successPayment(_that);case _ErrorPayment():
return errorPayment(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _NextPagePressed value)?  nextPagePressed,TResult? Function( _ScanAgainPressed value)?  scanAgainPressed,TResult? Function( _ProcessPaymentPressed value)?  processPaymentPressed,TResult? Function( _SuccessPayment value)?  successPayment,TResult? Function( _ErrorPayment value)?  errorPayment,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _NextPagePressed() when nextPagePressed != null:
return nextPagePressed(_that);case _ScanAgainPressed() when scanAgainPressed != null:
return scanAgainPressed(_that);case _ProcessPaymentPressed() when processPaymentPressed != null:
return processPaymentPressed(_that);case _SuccessPayment() when successPayment != null:
return successPayment(_that);case _ErrorPayment() when errorPayment != null:
return errorPayment(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  nextPagePressed,TResult Function()?  scanAgainPressed,TResult Function( PaymentType type)?  processPaymentPressed,TResult Function( Payment payment,  String storeId)?  successPayment,TResult Function()?  errorPayment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _NextPagePressed() when nextPagePressed != null:
return nextPagePressed();case _ScanAgainPressed() when scanAgainPressed != null:
return scanAgainPressed();case _ProcessPaymentPressed() when processPaymentPressed != null:
return processPaymentPressed(_that.type);case _SuccessPayment() when successPayment != null:
return successPayment(_that.payment,_that.storeId);case _ErrorPayment() when errorPayment != null:
return errorPayment();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  nextPagePressed,required TResult Function()  scanAgainPressed,required TResult Function( PaymentType type)  processPaymentPressed,required TResult Function( Payment payment,  String storeId)  successPayment,required TResult Function()  errorPayment,}) {final _that = this;
switch (_that) {
case _Init():
return init();case _NextPagePressed():
return nextPagePressed();case _ScanAgainPressed():
return scanAgainPressed();case _ProcessPaymentPressed():
return processPaymentPressed(_that.type);case _SuccessPayment():
return successPayment(_that.payment,_that.storeId);case _ErrorPayment():
return errorPayment();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  nextPagePressed,TResult? Function()?  scanAgainPressed,TResult? Function( PaymentType type)?  processPaymentPressed,TResult? Function( Payment payment,  String storeId)?  successPayment,TResult? Function()?  errorPayment,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _NextPagePressed() when nextPagePressed != null:
return nextPagePressed();case _ScanAgainPressed() when scanAgainPressed != null:
return scanAgainPressed();case _ProcessPaymentPressed() when processPaymentPressed != null:
return processPaymentPressed(_that.type);case _SuccessPayment() when successPayment != null:
return successPayment(_that.payment,_that.storeId);case _ErrorPayment() when errorPayment != null:
return errorPayment();case _:
  return null;

}
}

}

/// @nodoc


class _Init implements CreateOrderEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderEvent.init()';
}


}




/// @nodoc


class _NextPagePressed implements CreateOrderEvent {
  const _NextPagePressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextPagePressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderEvent.nextPagePressed()';
}


}




/// @nodoc


class _ScanAgainPressed implements CreateOrderEvent {
  const _ScanAgainPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScanAgainPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderEvent.scanAgainPressed()';
}


}




/// @nodoc


class _ProcessPaymentPressed implements CreateOrderEvent {
  const _ProcessPaymentPressed(this.type);
  

 final  PaymentType type;

/// Create a copy of CreateOrderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProcessPaymentPressedCopyWith<_ProcessPaymentPressed> get copyWith => __$ProcessPaymentPressedCopyWithImpl<_ProcessPaymentPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcessPaymentPressed&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'CreateOrderEvent.processPaymentPressed(type: $type)';
}


}

/// @nodoc
abstract mixin class _$ProcessPaymentPressedCopyWith<$Res> implements $CreateOrderEventCopyWith<$Res> {
  factory _$ProcessPaymentPressedCopyWith(_ProcessPaymentPressed value, $Res Function(_ProcessPaymentPressed) _then) = __$ProcessPaymentPressedCopyWithImpl;
@useResult
$Res call({
 PaymentType type
});


$PaymentTypeCopyWith<$Res> get type;

}
/// @nodoc
class __$ProcessPaymentPressedCopyWithImpl<$Res>
    implements _$ProcessPaymentPressedCopyWith<$Res> {
  __$ProcessPaymentPressedCopyWithImpl(this._self, this._then);

  final _ProcessPaymentPressed _self;
  final $Res Function(_ProcessPaymentPressed) _then;

/// Create a copy of CreateOrderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_ProcessPaymentPressed(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PaymentType,
  ));
}

/// Create a copy of CreateOrderEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res> get type {
  
  return $PaymentTypeCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

/// @nodoc


class _SuccessPayment implements CreateOrderEvent {
  const _SuccessPayment(this.payment, this.storeId);
  

 final  Payment payment;
 final  String storeId;

/// Create a copy of CreateOrderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessPaymentCopyWith<_SuccessPayment> get copyWith => __$SuccessPaymentCopyWithImpl<_SuccessPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessPayment&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.storeId, storeId) || other.storeId == storeId));
}


@override
int get hashCode => Object.hash(runtimeType,payment,storeId);

@override
String toString() {
  return 'CreateOrderEvent.successPayment(payment: $payment, storeId: $storeId)';
}


}

/// @nodoc
abstract mixin class _$SuccessPaymentCopyWith<$Res> implements $CreateOrderEventCopyWith<$Res> {
  factory _$SuccessPaymentCopyWith(_SuccessPayment value, $Res Function(_SuccessPayment) _then) = __$SuccessPaymentCopyWithImpl;
@useResult
$Res call({
 Payment payment, String storeId
});


$PaymentCopyWith<$Res> get payment;

}
/// @nodoc
class __$SuccessPaymentCopyWithImpl<$Res>
    implements _$SuccessPaymentCopyWith<$Res> {
  __$SuccessPaymentCopyWithImpl(this._self, this._then);

  final _SuccessPayment _self;
  final $Res Function(_SuccessPayment) _then;

/// Create a copy of CreateOrderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? payment = null,Object? storeId = null,}) {
  return _then(_SuccessPayment(
null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as Payment,null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CreateOrderEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCopyWith<$Res> get payment {
  
  return $PaymentCopyWith<$Res>(_self.payment, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}

/// @nodoc


class _ErrorPayment implements CreateOrderEvent {
  const _ErrorPayment();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorPayment);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderEvent.errorPayment()';
}


}




/// @nodoc
mixin _$CreateOrderState {

 int get pageIndex; int get pageCount;
/// Create a copy of CreateOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderStateCopyWith<CreateOrderState> get copyWith => _$CreateOrderStateCopyWithImpl<CreateOrderState>(this as CreateOrderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderState&&(identical(other.pageIndex, pageIndex) || other.pageIndex == pageIndex)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount));
}


@override
int get hashCode => Object.hash(runtimeType,pageIndex,pageCount);

@override
String toString() {
  return 'CreateOrderState(pageIndex: $pageIndex, pageCount: $pageCount)';
}


}

/// @nodoc
abstract mixin class $CreateOrderStateCopyWith<$Res>  {
  factory $CreateOrderStateCopyWith(CreateOrderState value, $Res Function(CreateOrderState) _then) = _$CreateOrderStateCopyWithImpl;
@useResult
$Res call({
 int pageIndex, int pageCount
});




}
/// @nodoc
class _$CreateOrderStateCopyWithImpl<$Res>
    implements $CreateOrderStateCopyWith<$Res> {
  _$CreateOrderStateCopyWithImpl(this._self, this._then);

  final CreateOrderState _self;
  final $Res Function(CreateOrderState) _then;

/// Create a copy of CreateOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pageIndex = null,Object? pageCount = null,}) {
  return _then(CreateOrderState(
pageIndex: null == pageIndex ? _self.pageIndex : pageIndex // ignore: cast_nullable_to_non_nullable
as int,pageCount: null == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateOrderState].
extension CreateOrderStatePatterns on CreateOrderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateOrderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOrderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateOrderState value)  $default,){
final _that = this;
switch (_that) {
case _CreateOrderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateOrderState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateOrderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int pageIndex,  int pageCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateOrderState() when $default != null:
return $default(_that.pageIndex,_that.pageCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int pageIndex,  int pageCount)  $default,) {final _that = this;
switch (_that) {
case _CreateOrderState():
return $default(_that.pageIndex,_that.pageCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int pageIndex,  int pageCount)?  $default,) {final _that = this;
switch (_that) {
case _CreateOrderState() when $default != null:
return $default(_that.pageIndex,_that.pageCount);case _:
  return null;

}
}

}

/// @nodoc


class _CreateOrderState implements CreateOrderState {
  const _CreateOrderState({required this.pageIndex, required this.pageCount});
  

@override final  int pageIndex;
@override final  int pageCount;

/// Create a copy of CreateOrderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrderStateCopyWith<_CreateOrderState> get copyWith => __$CreateOrderStateCopyWithImpl<_CreateOrderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrderState&&(identical(other.pageIndex, pageIndex) || other.pageIndex == pageIndex)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount));
}


@override
int get hashCode => Object.hash(runtimeType,pageIndex,pageCount);

@override
String toString() {
  return 'CreateOrderState(pageIndex: $pageIndex, pageCount: $pageCount)';
}


}

/// @nodoc
abstract mixin class _$CreateOrderStateCopyWith<$Res> implements $CreateOrderStateCopyWith<$Res> {
  factory _$CreateOrderStateCopyWith(_CreateOrderState value, $Res Function(_CreateOrderState) _then) = __$CreateOrderStateCopyWithImpl;
@override @useResult
$Res call({
 int pageIndex, int pageCount
});




}
/// @nodoc
class __$CreateOrderStateCopyWithImpl<$Res>
    implements _$CreateOrderStateCopyWith<$Res> {
  __$CreateOrderStateCopyWithImpl(this._self, this._then);

  final _CreateOrderState _self;
  final $Res Function(_CreateOrderState) _then;

/// Create a copy of CreateOrderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pageIndex = null,Object? pageCount = null,}) {
  return _then(_CreateOrderState(
pageIndex: null == pageIndex ? _self.pageIndex : pageIndex // ignore: cast_nullable_to_non_nullable
as int,pageCount: null == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CreateOrderSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderSr()';
}


}

/// @nodoc
class $CreateOrderSrCopyWith<$Res>  {
$CreateOrderSrCopyWith(CreateOrderSr _, $Res Function(CreateOrderSr) __);
}


/// Adds pattern-matching-related methods to [CreateOrderSr].
extension CreateOrderSrPatterns on CreateOrderSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateOrderOpenDrinkListPage value)?  openDrinkListPage,TResult Function( CreateOrderOpenScannerPage value)?  openScanner,TResult Function( CreateOrderOpenCartPage value)?  openCart,TResult Function( CreateOrderOpenPaymentTypeList value)?  openPaymentTypeList,TResult Function( CreateOrderProcessPaymentSr value)?  processPayment,TResult Function( CreateOrderWaitPaymentSr value)?  waitPayment,TResult Function( CreateOrderOpenCoffeeProcessingSr value)?  openCoffeeProcessing,TResult Function( CreateOrderOpenSuccessSr value)?  openSuccessPage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateOrderOpenDrinkListPage() when openDrinkListPage != null:
return openDrinkListPage(_that);case CreateOrderOpenScannerPage() when openScanner != null:
return openScanner(_that);case CreateOrderOpenCartPage() when openCart != null:
return openCart(_that);case CreateOrderOpenPaymentTypeList() when openPaymentTypeList != null:
return openPaymentTypeList(_that);case CreateOrderProcessPaymentSr() when processPayment != null:
return processPayment(_that);case CreateOrderWaitPaymentSr() when waitPayment != null:
return waitPayment(_that);case CreateOrderOpenCoffeeProcessingSr() when openCoffeeProcessing != null:
return openCoffeeProcessing(_that);case CreateOrderOpenSuccessSr() when openSuccessPage != null:
return openSuccessPage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateOrderOpenDrinkListPage value)  openDrinkListPage,required TResult Function( CreateOrderOpenScannerPage value)  openScanner,required TResult Function( CreateOrderOpenCartPage value)  openCart,required TResult Function( CreateOrderOpenPaymentTypeList value)  openPaymentTypeList,required TResult Function( CreateOrderProcessPaymentSr value)  processPayment,required TResult Function( CreateOrderWaitPaymentSr value)  waitPayment,required TResult Function( CreateOrderOpenCoffeeProcessingSr value)  openCoffeeProcessing,required TResult Function( CreateOrderOpenSuccessSr value)  openSuccessPage,}){
final _that = this;
switch (_that) {
case CreateOrderOpenDrinkListPage():
return openDrinkListPage(_that);case CreateOrderOpenScannerPage():
return openScanner(_that);case CreateOrderOpenCartPage():
return openCart(_that);case CreateOrderOpenPaymentTypeList():
return openPaymentTypeList(_that);case CreateOrderProcessPaymentSr():
return processPayment(_that);case CreateOrderWaitPaymentSr():
return waitPayment(_that);case CreateOrderOpenCoffeeProcessingSr():
return openCoffeeProcessing(_that);case CreateOrderOpenSuccessSr():
return openSuccessPage(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateOrderOpenDrinkListPage value)?  openDrinkListPage,TResult? Function( CreateOrderOpenScannerPage value)?  openScanner,TResult? Function( CreateOrderOpenCartPage value)?  openCart,TResult? Function( CreateOrderOpenPaymentTypeList value)?  openPaymentTypeList,TResult? Function( CreateOrderProcessPaymentSr value)?  processPayment,TResult? Function( CreateOrderWaitPaymentSr value)?  waitPayment,TResult? Function( CreateOrderOpenCoffeeProcessingSr value)?  openCoffeeProcessing,TResult? Function( CreateOrderOpenSuccessSr value)?  openSuccessPage,}){
final _that = this;
switch (_that) {
case CreateOrderOpenDrinkListPage() when openDrinkListPage != null:
return openDrinkListPage(_that);case CreateOrderOpenScannerPage() when openScanner != null:
return openScanner(_that);case CreateOrderOpenCartPage() when openCart != null:
return openCart(_that);case CreateOrderOpenPaymentTypeList() when openPaymentTypeList != null:
return openPaymentTypeList(_that);case CreateOrderProcessPaymentSr() when processPayment != null:
return processPayment(_that);case CreateOrderWaitPaymentSr() when waitPayment != null:
return waitPayment(_that);case CreateOrderOpenCoffeeProcessingSr() when openCoffeeProcessing != null:
return openCoffeeProcessing(_that);case CreateOrderOpenSuccessSr() when openSuccessPage != null:
return openSuccessPage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  openDrinkListPage,TResult Function()?  openScanner,TResult Function()?  openCart,TResult Function()?  openPaymentTypeList,TResult Function( Payment payment,  String storeId)?  processPayment,TResult Function( Payment payment,  String storeId)?  waitPayment,TResult Function()?  openCoffeeProcessing,TResult Function()?  openSuccessPage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateOrderOpenDrinkListPage() when openDrinkListPage != null:
return openDrinkListPage();case CreateOrderOpenScannerPage() when openScanner != null:
return openScanner();case CreateOrderOpenCartPage() when openCart != null:
return openCart();case CreateOrderOpenPaymentTypeList() when openPaymentTypeList != null:
return openPaymentTypeList();case CreateOrderProcessPaymentSr() when processPayment != null:
return processPayment(_that.payment,_that.storeId);case CreateOrderWaitPaymentSr() when waitPayment != null:
return waitPayment(_that.payment,_that.storeId);case CreateOrderOpenCoffeeProcessingSr() when openCoffeeProcessing != null:
return openCoffeeProcessing();case CreateOrderOpenSuccessSr() when openSuccessPage != null:
return openSuccessPage();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  openDrinkListPage,required TResult Function()  openScanner,required TResult Function()  openCart,required TResult Function()  openPaymentTypeList,required TResult Function( Payment payment,  String storeId)  processPayment,required TResult Function( Payment payment,  String storeId)  waitPayment,required TResult Function()  openCoffeeProcessing,required TResult Function()  openSuccessPage,}) {final _that = this;
switch (_that) {
case CreateOrderOpenDrinkListPage():
return openDrinkListPage();case CreateOrderOpenScannerPage():
return openScanner();case CreateOrderOpenCartPage():
return openCart();case CreateOrderOpenPaymentTypeList():
return openPaymentTypeList();case CreateOrderProcessPaymentSr():
return processPayment(_that.payment,_that.storeId);case CreateOrderWaitPaymentSr():
return waitPayment(_that.payment,_that.storeId);case CreateOrderOpenCoffeeProcessingSr():
return openCoffeeProcessing();case CreateOrderOpenSuccessSr():
return openSuccessPage();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  openDrinkListPage,TResult? Function()?  openScanner,TResult? Function()?  openCart,TResult? Function()?  openPaymentTypeList,TResult? Function( Payment payment,  String storeId)?  processPayment,TResult? Function( Payment payment,  String storeId)?  waitPayment,TResult? Function()?  openCoffeeProcessing,TResult? Function()?  openSuccessPage,}) {final _that = this;
switch (_that) {
case CreateOrderOpenDrinkListPage() when openDrinkListPage != null:
return openDrinkListPage();case CreateOrderOpenScannerPage() when openScanner != null:
return openScanner();case CreateOrderOpenCartPage() when openCart != null:
return openCart();case CreateOrderOpenPaymentTypeList() when openPaymentTypeList != null:
return openPaymentTypeList();case CreateOrderProcessPaymentSr() when processPayment != null:
return processPayment(_that.payment,_that.storeId);case CreateOrderWaitPaymentSr() when waitPayment != null:
return waitPayment(_that.payment,_that.storeId);case CreateOrderOpenCoffeeProcessingSr() when openCoffeeProcessing != null:
return openCoffeeProcessing();case CreateOrderOpenSuccessSr() when openSuccessPage != null:
return openSuccessPage();case _:
  return null;

}
}

}

/// @nodoc


class CreateOrderOpenDrinkListPage implements CreateOrderSr {
  const CreateOrderOpenDrinkListPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderOpenDrinkListPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderSr.openDrinkListPage()';
}


}




/// @nodoc


class CreateOrderOpenScannerPage implements CreateOrderSr {
  const CreateOrderOpenScannerPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderOpenScannerPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderSr.openScanner()';
}


}




/// @nodoc


class CreateOrderOpenCartPage implements CreateOrderSr {
  const CreateOrderOpenCartPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderOpenCartPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderSr.openCart()';
}


}




/// @nodoc


class CreateOrderOpenPaymentTypeList implements CreateOrderSr {
  const CreateOrderOpenPaymentTypeList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderOpenPaymentTypeList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderSr.openPaymentTypeList()';
}


}




/// @nodoc


class CreateOrderProcessPaymentSr implements CreateOrderSr {
  const CreateOrderProcessPaymentSr(this.payment, this.storeId);
  

 final  Payment payment;
 final  String storeId;

/// Create a copy of CreateOrderSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderProcessPaymentSrCopyWith<CreateOrderProcessPaymentSr> get copyWith => _$CreateOrderProcessPaymentSrCopyWithImpl<CreateOrderProcessPaymentSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderProcessPaymentSr&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.storeId, storeId) || other.storeId == storeId));
}


@override
int get hashCode => Object.hash(runtimeType,payment,storeId);

@override
String toString() {
  return 'CreateOrderSr.processPayment(payment: $payment, storeId: $storeId)';
}


}

/// @nodoc
abstract mixin class $CreateOrderProcessPaymentSrCopyWith<$Res> implements $CreateOrderSrCopyWith<$Res> {
  factory $CreateOrderProcessPaymentSrCopyWith(CreateOrderProcessPaymentSr value, $Res Function(CreateOrderProcessPaymentSr) _then) = _$CreateOrderProcessPaymentSrCopyWithImpl;
@useResult
$Res call({
 Payment payment, String storeId
});


$PaymentCopyWith<$Res> get payment;

}
/// @nodoc
class _$CreateOrderProcessPaymentSrCopyWithImpl<$Res>
    implements $CreateOrderProcessPaymentSrCopyWith<$Res> {
  _$CreateOrderProcessPaymentSrCopyWithImpl(this._self, this._then);

  final CreateOrderProcessPaymentSr _self;
  final $Res Function(CreateOrderProcessPaymentSr) _then;

/// Create a copy of CreateOrderSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? payment = null,Object? storeId = null,}) {
  return _then(CreateOrderProcessPaymentSr(
null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as Payment,null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CreateOrderSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCopyWith<$Res> get payment {
  
  return $PaymentCopyWith<$Res>(_self.payment, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}

/// @nodoc


class CreateOrderWaitPaymentSr implements CreateOrderSr {
  const CreateOrderWaitPaymentSr(this.payment, this.storeId);
  

 final  Payment payment;
 final  String storeId;

/// Create a copy of CreateOrderSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderWaitPaymentSrCopyWith<CreateOrderWaitPaymentSr> get copyWith => _$CreateOrderWaitPaymentSrCopyWithImpl<CreateOrderWaitPaymentSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderWaitPaymentSr&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.storeId, storeId) || other.storeId == storeId));
}


@override
int get hashCode => Object.hash(runtimeType,payment,storeId);

@override
String toString() {
  return 'CreateOrderSr.waitPayment(payment: $payment, storeId: $storeId)';
}


}

/// @nodoc
abstract mixin class $CreateOrderWaitPaymentSrCopyWith<$Res> implements $CreateOrderSrCopyWith<$Res> {
  factory $CreateOrderWaitPaymentSrCopyWith(CreateOrderWaitPaymentSr value, $Res Function(CreateOrderWaitPaymentSr) _then) = _$CreateOrderWaitPaymentSrCopyWithImpl;
@useResult
$Res call({
 Payment payment, String storeId
});


$PaymentCopyWith<$Res> get payment;

}
/// @nodoc
class _$CreateOrderWaitPaymentSrCopyWithImpl<$Res>
    implements $CreateOrderWaitPaymentSrCopyWith<$Res> {
  _$CreateOrderWaitPaymentSrCopyWithImpl(this._self, this._then);

  final CreateOrderWaitPaymentSr _self;
  final $Res Function(CreateOrderWaitPaymentSr) _then;

/// Create a copy of CreateOrderSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? payment = null,Object? storeId = null,}) {
  return _then(CreateOrderWaitPaymentSr(
null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as Payment,null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CreateOrderSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCopyWith<$Res> get payment {
  
  return $PaymentCopyWith<$Res>(_self.payment, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}

/// @nodoc


class CreateOrderOpenCoffeeProcessingSr implements CreateOrderSr {
  const CreateOrderOpenCoffeeProcessingSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderOpenCoffeeProcessingSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderSr.openCoffeeProcessing()';
}


}




/// @nodoc


class CreateOrderOpenSuccessSr implements CreateOrderSr {
  const CreateOrderOpenSuccessSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderOpenSuccessSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateOrderSr.openSuccessPage()';
}


}




// dart format on
