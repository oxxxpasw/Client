// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fridge_qr_scanner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FridgeQrScannerEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FridgeQrScannerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FridgeQrScannerEvent()';
}


}

/// @nodoc
class $FridgeQrScannerEventCopyWith<$Res>  {
$FridgeQrScannerEventCopyWith(FridgeQrScannerEvent _, $Res Function(FridgeQrScannerEvent) __);
}


/// Adds pattern-matching-related methods to [FridgeQrScannerEvent].
extension FridgeQrScannerEventPatterns on FridgeQrScannerEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _OnInit value)?  onInit,TResult Function( OnScanQr value)?  onScanQr,TResult Function( OnOpenFridge value)?  onOpenFridge,TResult Function( OnReopenOpenFridge value)?  onReopenOpenFridge,TResult Function( _OnFridgeTimerTick value)?  onFridgeTimerTick,TResult Function( _OnHaveProductsPressed value)?  onHaveProductsPressed,TResult Function( _OnCartOpened value)?  onCartOpened,TResult Function( _OnQrScannerOnboardingComplete value)?  onQrScannerOnboardingComplete,TResult Function( _FridgeQrScannerStoreSelected value)?  storeSelected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnInit() when onInit != null:
return onInit(_that);case OnScanQr() when onScanQr != null:
return onScanQr(_that);case OnOpenFridge() when onOpenFridge != null:
return onOpenFridge(_that);case OnReopenOpenFridge() when onReopenOpenFridge != null:
return onReopenOpenFridge(_that);case _OnFridgeTimerTick() when onFridgeTimerTick != null:
return onFridgeTimerTick(_that);case _OnHaveProductsPressed() when onHaveProductsPressed != null:
return onHaveProductsPressed(_that);case _OnCartOpened() when onCartOpened != null:
return onCartOpened(_that);case _OnQrScannerOnboardingComplete() when onQrScannerOnboardingComplete != null:
return onQrScannerOnboardingComplete(_that);case _FridgeQrScannerStoreSelected() when storeSelected != null:
return storeSelected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _OnInit value)  onInit,required TResult Function( OnScanQr value)  onScanQr,required TResult Function( OnOpenFridge value)  onOpenFridge,required TResult Function( OnReopenOpenFridge value)  onReopenOpenFridge,required TResult Function( _OnFridgeTimerTick value)  onFridgeTimerTick,required TResult Function( _OnHaveProductsPressed value)  onHaveProductsPressed,required TResult Function( _OnCartOpened value)  onCartOpened,required TResult Function( _OnQrScannerOnboardingComplete value)  onQrScannerOnboardingComplete,required TResult Function( _FridgeQrScannerStoreSelected value)  storeSelected,}){
final _that = this;
switch (_that) {
case _OnInit():
return onInit(_that);case OnScanQr():
return onScanQr(_that);case OnOpenFridge():
return onOpenFridge(_that);case OnReopenOpenFridge():
return onReopenOpenFridge(_that);case _OnFridgeTimerTick():
return onFridgeTimerTick(_that);case _OnHaveProductsPressed():
return onHaveProductsPressed(_that);case _OnCartOpened():
return onCartOpened(_that);case _OnQrScannerOnboardingComplete():
return onQrScannerOnboardingComplete(_that);case _FridgeQrScannerStoreSelected():
return storeSelected(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _OnInit value)?  onInit,TResult? Function( OnScanQr value)?  onScanQr,TResult? Function( OnOpenFridge value)?  onOpenFridge,TResult? Function( OnReopenOpenFridge value)?  onReopenOpenFridge,TResult? Function( _OnFridgeTimerTick value)?  onFridgeTimerTick,TResult? Function( _OnHaveProductsPressed value)?  onHaveProductsPressed,TResult? Function( _OnCartOpened value)?  onCartOpened,TResult? Function( _OnQrScannerOnboardingComplete value)?  onQrScannerOnboardingComplete,TResult? Function( _FridgeQrScannerStoreSelected value)?  storeSelected,}){
final _that = this;
switch (_that) {
case _OnInit() when onInit != null:
return onInit(_that);case OnScanQr() when onScanQr != null:
return onScanQr(_that);case OnOpenFridge() when onOpenFridge != null:
return onOpenFridge(_that);case OnReopenOpenFridge() when onReopenOpenFridge != null:
return onReopenOpenFridge(_that);case _OnFridgeTimerTick() when onFridgeTimerTick != null:
return onFridgeTimerTick(_that);case _OnHaveProductsPressed() when onHaveProductsPressed != null:
return onHaveProductsPressed(_that);case _OnCartOpened() when onCartOpened != null:
return onCartOpened(_that);case _OnQrScannerOnboardingComplete() when onQrScannerOnboardingComplete != null:
return onQrScannerOnboardingComplete(_that);case _FridgeQrScannerStoreSelected() when storeSelected != null:
return storeSelected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  onInit,TResult Function( BarcodeCapture data)?  onScanQr,TResult Function( String fridgeId)?  onOpenFridge,TResult Function( String? fridgeId)?  onReopenOpenFridge,TResult Function( int secondsLeft)?  onFridgeTimerTick,TResult Function()?  onHaveProductsPressed,TResult Function()?  onCartOpened,TResult Function()?  onQrScannerOnboardingComplete,TResult Function( Store? store,  BarcodeCapture? barcode)?  storeSelected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnInit() when onInit != null:
return onInit();case OnScanQr() when onScanQr != null:
return onScanQr(_that.data);case OnOpenFridge() when onOpenFridge != null:
return onOpenFridge(_that.fridgeId);case OnReopenOpenFridge() when onReopenOpenFridge != null:
return onReopenOpenFridge(_that.fridgeId);case _OnFridgeTimerTick() when onFridgeTimerTick != null:
return onFridgeTimerTick(_that.secondsLeft);case _OnHaveProductsPressed() when onHaveProductsPressed != null:
return onHaveProductsPressed();case _OnCartOpened() when onCartOpened != null:
return onCartOpened();case _OnQrScannerOnboardingComplete() when onQrScannerOnboardingComplete != null:
return onQrScannerOnboardingComplete();case _FridgeQrScannerStoreSelected() when storeSelected != null:
return storeSelected(_that.store,_that.barcode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  onInit,required TResult Function( BarcodeCapture data)  onScanQr,required TResult Function( String fridgeId)  onOpenFridge,required TResult Function( String? fridgeId)  onReopenOpenFridge,required TResult Function( int secondsLeft)  onFridgeTimerTick,required TResult Function()  onHaveProductsPressed,required TResult Function()  onCartOpened,required TResult Function()  onQrScannerOnboardingComplete,required TResult Function( Store? store,  BarcodeCapture? barcode)  storeSelected,}) {final _that = this;
switch (_that) {
case _OnInit():
return onInit();case OnScanQr():
return onScanQr(_that.data);case OnOpenFridge():
return onOpenFridge(_that.fridgeId);case OnReopenOpenFridge():
return onReopenOpenFridge(_that.fridgeId);case _OnFridgeTimerTick():
return onFridgeTimerTick(_that.secondsLeft);case _OnHaveProductsPressed():
return onHaveProductsPressed();case _OnCartOpened():
return onCartOpened();case _OnQrScannerOnboardingComplete():
return onQrScannerOnboardingComplete();case _FridgeQrScannerStoreSelected():
return storeSelected(_that.store,_that.barcode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  onInit,TResult? Function( BarcodeCapture data)?  onScanQr,TResult? Function( String fridgeId)?  onOpenFridge,TResult? Function( String? fridgeId)?  onReopenOpenFridge,TResult? Function( int secondsLeft)?  onFridgeTimerTick,TResult? Function()?  onHaveProductsPressed,TResult? Function()?  onCartOpened,TResult? Function()?  onQrScannerOnboardingComplete,TResult? Function( Store? store,  BarcodeCapture? barcode)?  storeSelected,}) {final _that = this;
switch (_that) {
case _OnInit() when onInit != null:
return onInit();case OnScanQr() when onScanQr != null:
return onScanQr(_that.data);case OnOpenFridge() when onOpenFridge != null:
return onOpenFridge(_that.fridgeId);case OnReopenOpenFridge() when onReopenOpenFridge != null:
return onReopenOpenFridge(_that.fridgeId);case _OnFridgeTimerTick() when onFridgeTimerTick != null:
return onFridgeTimerTick(_that.secondsLeft);case _OnHaveProductsPressed() when onHaveProductsPressed != null:
return onHaveProductsPressed();case _OnCartOpened() when onCartOpened != null:
return onCartOpened();case _OnQrScannerOnboardingComplete() when onQrScannerOnboardingComplete != null:
return onQrScannerOnboardingComplete();case _FridgeQrScannerStoreSelected() when storeSelected != null:
return storeSelected(_that.store,_that.barcode);case _:
  return null;

}
}

}

/// @nodoc


class _OnInit implements FridgeQrScannerEvent {
  const _OnInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FridgeQrScannerEvent.onInit()';
}


}




/// @nodoc


class OnScanQr implements FridgeQrScannerEvent {
  const OnScanQr(this.data);
  

 final  BarcodeCapture data;

/// Create a copy of FridgeQrScannerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnScanQrCopyWith<OnScanQr> get copyWith => _$OnScanQrCopyWithImpl<OnScanQr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnScanQr&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'FridgeQrScannerEvent.onScanQr(data: $data)';
}


}

/// @nodoc
abstract mixin class $OnScanQrCopyWith<$Res> implements $FridgeQrScannerEventCopyWith<$Res> {
  factory $OnScanQrCopyWith(OnScanQr value, $Res Function(OnScanQr) _then) = _$OnScanQrCopyWithImpl;
@useResult
$Res call({
 BarcodeCapture data
});




}
/// @nodoc
class _$OnScanQrCopyWithImpl<$Res>
    implements $OnScanQrCopyWith<$Res> {
  _$OnScanQrCopyWithImpl(this._self, this._then);

  final OnScanQr _self;
  final $Res Function(OnScanQr) _then;

/// Create a copy of FridgeQrScannerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(OnScanQr(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BarcodeCapture,
  ));
}


}

/// @nodoc


class OnOpenFridge implements FridgeQrScannerEvent {
  const OnOpenFridge(this.fridgeId);
  

 final  String fridgeId;

/// Create a copy of FridgeQrScannerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnOpenFridgeCopyWith<OnOpenFridge> get copyWith => _$OnOpenFridgeCopyWithImpl<OnOpenFridge>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnOpenFridge&&(identical(other.fridgeId, fridgeId) || other.fridgeId == fridgeId));
}


@override
int get hashCode => Object.hash(runtimeType,fridgeId);

@override
String toString() {
  return 'FridgeQrScannerEvent.onOpenFridge(fridgeId: $fridgeId)';
}


}

/// @nodoc
abstract mixin class $OnOpenFridgeCopyWith<$Res> implements $FridgeQrScannerEventCopyWith<$Res> {
  factory $OnOpenFridgeCopyWith(OnOpenFridge value, $Res Function(OnOpenFridge) _then) = _$OnOpenFridgeCopyWithImpl;
@useResult
$Res call({
 String fridgeId
});




}
/// @nodoc
class _$OnOpenFridgeCopyWithImpl<$Res>
    implements $OnOpenFridgeCopyWith<$Res> {
  _$OnOpenFridgeCopyWithImpl(this._self, this._then);

  final OnOpenFridge _self;
  final $Res Function(OnOpenFridge) _then;

/// Create a copy of FridgeQrScannerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fridgeId = null,}) {
  return _then(OnOpenFridge(
null == fridgeId ? _self.fridgeId : fridgeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnReopenOpenFridge implements FridgeQrScannerEvent {
  const OnReopenOpenFridge([this.fridgeId]);
  

 final  String? fridgeId;

/// Create a copy of FridgeQrScannerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnReopenOpenFridgeCopyWith<OnReopenOpenFridge> get copyWith => _$OnReopenOpenFridgeCopyWithImpl<OnReopenOpenFridge>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnReopenOpenFridge&&(identical(other.fridgeId, fridgeId) || other.fridgeId == fridgeId));
}


@override
int get hashCode => Object.hash(runtimeType,fridgeId);

@override
String toString() {
  return 'FridgeQrScannerEvent.onReopenOpenFridge(fridgeId: $fridgeId)';
}


}

/// @nodoc
abstract mixin class $OnReopenOpenFridgeCopyWith<$Res> implements $FridgeQrScannerEventCopyWith<$Res> {
  factory $OnReopenOpenFridgeCopyWith(OnReopenOpenFridge value, $Res Function(OnReopenOpenFridge) _then) = _$OnReopenOpenFridgeCopyWithImpl;
@useResult
$Res call({
 String? fridgeId
});




}
/// @nodoc
class _$OnReopenOpenFridgeCopyWithImpl<$Res>
    implements $OnReopenOpenFridgeCopyWith<$Res> {
  _$OnReopenOpenFridgeCopyWithImpl(this._self, this._then);

  final OnReopenOpenFridge _self;
  final $Res Function(OnReopenOpenFridge) _then;

/// Create a copy of FridgeQrScannerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fridgeId = freezed,}) {
  return _then(OnReopenOpenFridge(
freezed == fridgeId ? _self.fridgeId : fridgeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _OnFridgeTimerTick implements FridgeQrScannerEvent {
  const _OnFridgeTimerTick({required this.secondsLeft});
  

 final  int secondsLeft;

/// Create a copy of FridgeQrScannerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnFridgeTimerTickCopyWith<_OnFridgeTimerTick> get copyWith => __$OnFridgeTimerTickCopyWithImpl<_OnFridgeTimerTick>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnFridgeTimerTick&&(identical(other.secondsLeft, secondsLeft) || other.secondsLeft == secondsLeft));
}


@override
int get hashCode => Object.hash(runtimeType,secondsLeft);

@override
String toString() {
  return 'FridgeQrScannerEvent.onFridgeTimerTick(secondsLeft: $secondsLeft)';
}


}

/// @nodoc
abstract mixin class _$OnFridgeTimerTickCopyWith<$Res> implements $FridgeQrScannerEventCopyWith<$Res> {
  factory _$OnFridgeTimerTickCopyWith(_OnFridgeTimerTick value, $Res Function(_OnFridgeTimerTick) _then) = __$OnFridgeTimerTickCopyWithImpl;
@useResult
$Res call({
 int secondsLeft
});




}
/// @nodoc
class __$OnFridgeTimerTickCopyWithImpl<$Res>
    implements _$OnFridgeTimerTickCopyWith<$Res> {
  __$OnFridgeTimerTickCopyWithImpl(this._self, this._then);

  final _OnFridgeTimerTick _self;
  final $Res Function(_OnFridgeTimerTick) _then;

/// Create a copy of FridgeQrScannerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? secondsLeft = null,}) {
  return _then(_OnFridgeTimerTick(
secondsLeft: null == secondsLeft ? _self.secondsLeft : secondsLeft // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _OnHaveProductsPressed implements FridgeQrScannerEvent {
  const _OnHaveProductsPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnHaveProductsPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FridgeQrScannerEvent.onHaveProductsPressed()';
}


}




/// @nodoc


class _OnCartOpened implements FridgeQrScannerEvent {
  const _OnCartOpened();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnCartOpened);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FridgeQrScannerEvent.onCartOpened()';
}


}




/// @nodoc


class _OnQrScannerOnboardingComplete implements FridgeQrScannerEvent {
  const _OnQrScannerOnboardingComplete();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnQrScannerOnboardingComplete);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FridgeQrScannerEvent.onQrScannerOnboardingComplete()';
}


}




/// @nodoc


class _FridgeQrScannerStoreSelected implements FridgeQrScannerEvent {
  const _FridgeQrScannerStoreSelected({this.store, this.barcode});
  

 final  Store? store;
 final  BarcodeCapture? barcode;

/// Create a copy of FridgeQrScannerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FridgeQrScannerStoreSelectedCopyWith<_FridgeQrScannerStoreSelected> get copyWith => __$FridgeQrScannerStoreSelectedCopyWithImpl<_FridgeQrScannerStoreSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FridgeQrScannerStoreSelected&&(identical(other.store, store) || other.store == store)&&(identical(other.barcode, barcode) || other.barcode == barcode));
}


@override
int get hashCode => Object.hash(runtimeType,store,barcode);

@override
String toString() {
  return 'FridgeQrScannerEvent.storeSelected(store: $store, barcode: $barcode)';
}


}

/// @nodoc
abstract mixin class _$FridgeQrScannerStoreSelectedCopyWith<$Res> implements $FridgeQrScannerEventCopyWith<$Res> {
  factory _$FridgeQrScannerStoreSelectedCopyWith(_FridgeQrScannerStoreSelected value, $Res Function(_FridgeQrScannerStoreSelected) _then) = __$FridgeQrScannerStoreSelectedCopyWithImpl;
@useResult
$Res call({
 Store? store, BarcodeCapture? barcode
});


$StoreCopyWith<$Res>? get store;

}
/// @nodoc
class __$FridgeQrScannerStoreSelectedCopyWithImpl<$Res>
    implements _$FridgeQrScannerStoreSelectedCopyWith<$Res> {
  __$FridgeQrScannerStoreSelectedCopyWithImpl(this._self, this._then);

  final _FridgeQrScannerStoreSelected _self;
  final $Res Function(_FridgeQrScannerStoreSelected) _then;

/// Create a copy of FridgeQrScannerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? store = freezed,Object? barcode = freezed,}) {
  return _then(_FridgeQrScannerStoreSelected(
store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as BarcodeCapture?,
  ));
}

/// Create a copy of FridgeQrScannerEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}

/// @nodoc
mixin _$FridgeQrScannerState {

 FridgeQrScannerStatus get status; FridgeScanQrBanner get banner; int get fridgeTimerSecondsLeft; bool get storeListOpened;
/// Create a copy of FridgeQrScannerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FridgeQrScannerStateCopyWith<FridgeQrScannerState> get copyWith => _$FridgeQrScannerStateCopyWithImpl<FridgeQrScannerState>(this as FridgeQrScannerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FridgeQrScannerState&&(identical(other.status, status) || other.status == status)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.fridgeTimerSecondsLeft, fridgeTimerSecondsLeft) || other.fridgeTimerSecondsLeft == fridgeTimerSecondsLeft)&&(identical(other.storeListOpened, storeListOpened) || other.storeListOpened == storeListOpened));
}


@override
int get hashCode => Object.hash(runtimeType,status,banner,fridgeTimerSecondsLeft,storeListOpened);

@override
String toString() {
  return 'FridgeQrScannerState(status: $status, banner: $banner, fridgeTimerSecondsLeft: $fridgeTimerSecondsLeft, storeListOpened: $storeListOpened)';
}


}

/// @nodoc
abstract mixin class $FridgeQrScannerStateCopyWith<$Res>  {
  factory $FridgeQrScannerStateCopyWith(FridgeQrScannerState value, $Res Function(FridgeQrScannerState) _then) = _$FridgeQrScannerStateCopyWithImpl;
@useResult
$Res call({
 FridgeQrScannerStatus status, FridgeScanQrBanner banner, int fridgeTimerSecondsLeft, bool storeListOpened
});




}
/// @nodoc
class _$FridgeQrScannerStateCopyWithImpl<$Res>
    implements $FridgeQrScannerStateCopyWith<$Res> {
  _$FridgeQrScannerStateCopyWithImpl(this._self, this._then);

  final FridgeQrScannerState _self;
  final $Res Function(FridgeQrScannerState) _then;

/// Create a copy of FridgeQrScannerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? banner = null,Object? fridgeTimerSecondsLeft = null,Object? storeListOpened = null,}) {
  return _then(FridgeQrScannerState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FridgeQrScannerStatus,banner: null == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as FridgeScanQrBanner,fridgeTimerSecondsLeft: null == fridgeTimerSecondsLeft ? _self.fridgeTimerSecondsLeft : fridgeTimerSecondsLeft // ignore: cast_nullable_to_non_nullable
as int,storeListOpened: null == storeListOpened ? _self.storeListOpened : storeListOpened // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FridgeQrScannerState].
extension FridgeQrScannerStatePatterns on FridgeQrScannerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FridgeQrScannerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FridgeQrScannerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FridgeQrScannerState value)  $default,){
final _that = this;
switch (_that) {
case _FridgeQrScannerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FridgeQrScannerState value)?  $default,){
final _that = this;
switch (_that) {
case _FridgeQrScannerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FridgeQrScannerStatus status,  FridgeScanQrBanner banner,  int fridgeTimerSecondsLeft,  bool storeListOpened)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FridgeQrScannerState() when $default != null:
return $default(_that.status,_that.banner,_that.fridgeTimerSecondsLeft,_that.storeListOpened);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FridgeQrScannerStatus status,  FridgeScanQrBanner banner,  int fridgeTimerSecondsLeft,  bool storeListOpened)  $default,) {final _that = this;
switch (_that) {
case _FridgeQrScannerState():
return $default(_that.status,_that.banner,_that.fridgeTimerSecondsLeft,_that.storeListOpened);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FridgeQrScannerStatus status,  FridgeScanQrBanner banner,  int fridgeTimerSecondsLeft,  bool storeListOpened)?  $default,) {final _that = this;
switch (_that) {
case _FridgeQrScannerState() when $default != null:
return $default(_that.status,_that.banner,_that.fridgeTimerSecondsLeft,_that.storeListOpened);case _:
  return null;

}
}

}

/// @nodoc


class _FridgeQrScannerState implements FridgeQrScannerState {
  const _FridgeQrScannerState({this.status = FridgeQrScannerStatus.ready, this.banner = FridgeScanQrBanner.openFridge, this.fridgeTimerSecondsLeft = 0, this.storeListOpened = false});
  

@override@JsonKey() final  FridgeQrScannerStatus status;
@override@JsonKey() final  FridgeScanQrBanner banner;
@override@JsonKey() final  int fridgeTimerSecondsLeft;
@override@JsonKey() final  bool storeListOpened;

/// Create a copy of FridgeQrScannerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FridgeQrScannerStateCopyWith<_FridgeQrScannerState> get copyWith => __$FridgeQrScannerStateCopyWithImpl<_FridgeQrScannerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FridgeQrScannerState&&(identical(other.status, status) || other.status == status)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.fridgeTimerSecondsLeft, fridgeTimerSecondsLeft) || other.fridgeTimerSecondsLeft == fridgeTimerSecondsLeft)&&(identical(other.storeListOpened, storeListOpened) || other.storeListOpened == storeListOpened));
}


@override
int get hashCode => Object.hash(runtimeType,status,banner,fridgeTimerSecondsLeft,storeListOpened);

@override
String toString() {
  return 'FridgeQrScannerState(status: $status, banner: $banner, fridgeTimerSecondsLeft: $fridgeTimerSecondsLeft, storeListOpened: $storeListOpened)';
}


}

/// @nodoc
abstract mixin class _$FridgeQrScannerStateCopyWith<$Res> implements $FridgeQrScannerStateCopyWith<$Res> {
  factory _$FridgeQrScannerStateCopyWith(_FridgeQrScannerState value, $Res Function(_FridgeQrScannerState) _then) = __$FridgeQrScannerStateCopyWithImpl;
@override @useResult
$Res call({
 FridgeQrScannerStatus status, FridgeScanQrBanner banner, int fridgeTimerSecondsLeft, bool storeListOpened
});




}
/// @nodoc
class __$FridgeQrScannerStateCopyWithImpl<$Res>
    implements _$FridgeQrScannerStateCopyWith<$Res> {
  __$FridgeQrScannerStateCopyWithImpl(this._self, this._then);

  final _FridgeQrScannerState _self;
  final $Res Function(_FridgeQrScannerState) _then;

/// Create a copy of FridgeQrScannerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? banner = null,Object? fridgeTimerSecondsLeft = null,Object? storeListOpened = null,}) {
  return _then(_FridgeQrScannerState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FridgeQrScannerStatus,banner: null == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as FridgeScanQrBanner,fridgeTimerSecondsLeft: null == fridgeTimerSecondsLeft ? _self.fridgeTimerSecondsLeft : fridgeTimerSecondsLeft // ignore: cast_nullable_to_non_nullable
as int,storeListOpened: null == storeListOpened ? _self.storeListOpened : storeListOpened // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$FridgeQrScannerSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FridgeQrScannerSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FridgeQrScannerSr()';
}


}

/// @nodoc
class $FridgeQrScannerSrCopyWith<$Res>  {
$FridgeQrScannerSrCopyWith(FridgeQrScannerSr _, $Res Function(FridgeQrScannerSr) __);
}


/// Adds pattern-matching-related methods to [FridgeQrScannerSr].
extension FridgeQrScannerSrPatterns on FridgeQrScannerSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FridgeScannedSr value)?  fridgeScanned,TResult Function( _ErrorSr value)?  error,TResult Function( _UserBannedSr value)?  userBanned,TResult Function( _OpenStoreSr value)?  openStore,TResult Function( _OpenCoffeeMachineSr value)?  openCoffeeMachine,TResult Function( _ShowQrScannerOnboardingSr value)?  showQrScannerOnboarding,TResult Function( _RestoreCartSr value)?  restoreCart,TResult Function( _FridgeQrScannerShowStoreListSr value)?  showStoreList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FridgeScannedSr() when fridgeScanned != null:
return fridgeScanned(_that);case _ErrorSr() when error != null:
return error(_that);case _UserBannedSr() when userBanned != null:
return userBanned(_that);case _OpenStoreSr() when openStore != null:
return openStore(_that);case _OpenCoffeeMachineSr() when openCoffeeMachine != null:
return openCoffeeMachine(_that);case _ShowQrScannerOnboardingSr() when showQrScannerOnboarding != null:
return showQrScannerOnboarding(_that);case _RestoreCartSr() when restoreCart != null:
return restoreCart(_that);case _FridgeQrScannerShowStoreListSr() when showStoreList != null:
return showStoreList(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FridgeScannedSr value)  fridgeScanned,required TResult Function( _ErrorSr value)  error,required TResult Function( _UserBannedSr value)  userBanned,required TResult Function( _OpenStoreSr value)  openStore,required TResult Function( _OpenCoffeeMachineSr value)  openCoffeeMachine,required TResult Function( _ShowQrScannerOnboardingSr value)  showQrScannerOnboarding,required TResult Function( _RestoreCartSr value)  restoreCart,required TResult Function( _FridgeQrScannerShowStoreListSr value)  showStoreList,}){
final _that = this;
switch (_that) {
case _FridgeScannedSr():
return fridgeScanned(_that);case _ErrorSr():
return error(_that);case _UserBannedSr():
return userBanned(_that);case _OpenStoreSr():
return openStore(_that);case _OpenCoffeeMachineSr():
return openCoffeeMachine(_that);case _ShowQrScannerOnboardingSr():
return showQrScannerOnboarding(_that);case _RestoreCartSr():
return restoreCart(_that);case _FridgeQrScannerShowStoreListSr():
return showStoreList(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FridgeScannedSr value)?  fridgeScanned,TResult? Function( _ErrorSr value)?  error,TResult? Function( _UserBannedSr value)?  userBanned,TResult? Function( _OpenStoreSr value)?  openStore,TResult? Function( _OpenCoffeeMachineSr value)?  openCoffeeMachine,TResult? Function( _ShowQrScannerOnboardingSr value)?  showQrScannerOnboarding,TResult? Function( _RestoreCartSr value)?  restoreCart,TResult? Function( _FridgeQrScannerShowStoreListSr value)?  showStoreList,}){
final _that = this;
switch (_that) {
case _FridgeScannedSr() when fridgeScanned != null:
return fridgeScanned(_that);case _ErrorSr() when error != null:
return error(_that);case _UserBannedSr() when userBanned != null:
return userBanned(_that);case _OpenStoreSr() when openStore != null:
return openStore(_that);case _OpenCoffeeMachineSr() when openCoffeeMachine != null:
return openCoffeeMachine(_that);case _ShowQrScannerOnboardingSr() when showQrScannerOnboarding != null:
return showQrScannerOnboarding(_that);case _RestoreCartSr() when restoreCart != null:
return restoreCart(_that);case _FridgeQrScannerShowStoreListSr() when showStoreList != null:
return showStoreList(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fridgeScanned,TResult Function( String message)?  error,TResult Function()?  userBanned,TResult Function( Store? store,  String? fridgeId,  BarcodeCapture? barcode)?  openStore,TResult Function( Store store,  CoffeeMachine coffeeMachine)?  openCoffeeMachine,TResult Function()?  showQrScannerOnboarding,TResult Function()?  restoreCart,TResult Function( BarcodeCapture? barcode)?  showStoreList,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FridgeScannedSr() when fridgeScanned != null:
return fridgeScanned();case _ErrorSr() when error != null:
return error(_that.message);case _UserBannedSr() when userBanned != null:
return userBanned();case _OpenStoreSr() when openStore != null:
return openStore(_that.store,_that.fridgeId,_that.barcode);case _OpenCoffeeMachineSr() when openCoffeeMachine != null:
return openCoffeeMachine(_that.store,_that.coffeeMachine);case _ShowQrScannerOnboardingSr() when showQrScannerOnboarding != null:
return showQrScannerOnboarding();case _RestoreCartSr() when restoreCart != null:
return restoreCart();case _FridgeQrScannerShowStoreListSr() when showStoreList != null:
return showStoreList(_that.barcode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fridgeScanned,required TResult Function( String message)  error,required TResult Function()  userBanned,required TResult Function( Store? store,  String? fridgeId,  BarcodeCapture? barcode)  openStore,required TResult Function( Store store,  CoffeeMachine coffeeMachine)  openCoffeeMachine,required TResult Function()  showQrScannerOnboarding,required TResult Function()  restoreCart,required TResult Function( BarcodeCapture? barcode)  showStoreList,}) {final _that = this;
switch (_that) {
case _FridgeScannedSr():
return fridgeScanned();case _ErrorSr():
return error(_that.message);case _UserBannedSr():
return userBanned();case _OpenStoreSr():
return openStore(_that.store,_that.fridgeId,_that.barcode);case _OpenCoffeeMachineSr():
return openCoffeeMachine(_that.store,_that.coffeeMachine);case _ShowQrScannerOnboardingSr():
return showQrScannerOnboarding();case _RestoreCartSr():
return restoreCart();case _FridgeQrScannerShowStoreListSr():
return showStoreList(_that.barcode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fridgeScanned,TResult? Function( String message)?  error,TResult? Function()?  userBanned,TResult? Function( Store? store,  String? fridgeId,  BarcodeCapture? barcode)?  openStore,TResult? Function( Store store,  CoffeeMachine coffeeMachine)?  openCoffeeMachine,TResult? Function()?  showQrScannerOnboarding,TResult? Function()?  restoreCart,TResult? Function( BarcodeCapture? barcode)?  showStoreList,}) {final _that = this;
switch (_that) {
case _FridgeScannedSr() when fridgeScanned != null:
return fridgeScanned();case _ErrorSr() when error != null:
return error(_that.message);case _UserBannedSr() when userBanned != null:
return userBanned();case _OpenStoreSr() when openStore != null:
return openStore(_that.store,_that.fridgeId,_that.barcode);case _OpenCoffeeMachineSr() when openCoffeeMachine != null:
return openCoffeeMachine(_that.store,_that.coffeeMachine);case _ShowQrScannerOnboardingSr() when showQrScannerOnboarding != null:
return showQrScannerOnboarding();case _RestoreCartSr() when restoreCart != null:
return restoreCart();case _FridgeQrScannerShowStoreListSr() when showStoreList != null:
return showStoreList(_that.barcode);case _:
  return null;

}
}

}

/// @nodoc


class _FridgeScannedSr implements FridgeQrScannerSr {
  const _FridgeScannedSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FridgeScannedSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FridgeQrScannerSr.fridgeScanned()';
}


}




/// @nodoc


class _ErrorSr implements FridgeQrScannerSr {
  const _ErrorSr(this.message);
  

 final  String message;

/// Create a copy of FridgeQrScannerSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorSrCopyWith<_ErrorSr> get copyWith => __$ErrorSrCopyWithImpl<_ErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FridgeQrScannerSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorSrCopyWith<$Res> implements $FridgeQrScannerSrCopyWith<$Res> {
  factory _$ErrorSrCopyWith(_ErrorSr value, $Res Function(_ErrorSr) _then) = __$ErrorSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorSrCopyWithImpl<$Res>
    implements _$ErrorSrCopyWith<$Res> {
  __$ErrorSrCopyWithImpl(this._self, this._then);

  final _ErrorSr _self;
  final $Res Function(_ErrorSr) _then;

/// Create a copy of FridgeQrScannerSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UserBannedSr implements FridgeQrScannerSr {
  const _UserBannedSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserBannedSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FridgeQrScannerSr.userBanned()';
}


}




/// @nodoc


class _OpenStoreSr implements FridgeQrScannerSr {
  const _OpenStoreSr({this.store, this.fridgeId, this.barcode});
  

 final  Store? store;
 final  String? fridgeId;
 final  BarcodeCapture? barcode;

/// Create a copy of FridgeQrScannerSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenStoreSrCopyWith<_OpenStoreSr> get copyWith => __$OpenStoreSrCopyWithImpl<_OpenStoreSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenStoreSr&&(identical(other.store, store) || other.store == store)&&(identical(other.fridgeId, fridgeId) || other.fridgeId == fridgeId)&&(identical(other.barcode, barcode) || other.barcode == barcode));
}


@override
int get hashCode => Object.hash(runtimeType,store,fridgeId,barcode);

@override
String toString() {
  return 'FridgeQrScannerSr.openStore(store: $store, fridgeId: $fridgeId, barcode: $barcode)';
}


}

/// @nodoc
abstract mixin class _$OpenStoreSrCopyWith<$Res> implements $FridgeQrScannerSrCopyWith<$Res> {
  factory _$OpenStoreSrCopyWith(_OpenStoreSr value, $Res Function(_OpenStoreSr) _then) = __$OpenStoreSrCopyWithImpl;
@useResult
$Res call({
 Store? store, String? fridgeId, BarcodeCapture? barcode
});


$StoreCopyWith<$Res>? get store;

}
/// @nodoc
class __$OpenStoreSrCopyWithImpl<$Res>
    implements _$OpenStoreSrCopyWith<$Res> {
  __$OpenStoreSrCopyWithImpl(this._self, this._then);

  final _OpenStoreSr _self;
  final $Res Function(_OpenStoreSr) _then;

/// Create a copy of FridgeQrScannerSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? store = freezed,Object? fridgeId = freezed,Object? barcode = freezed,}) {
  return _then(_OpenStoreSr(
store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,fridgeId: freezed == fridgeId ? _self.fridgeId : fridgeId // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as BarcodeCapture?,
  ));
}

/// Create a copy of FridgeQrScannerSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}

/// @nodoc


class _OpenCoffeeMachineSr implements FridgeQrScannerSr {
  const _OpenCoffeeMachineSr({required this.store, required this.coffeeMachine});
  

 final  Store store;
 final  CoffeeMachine coffeeMachine;

/// Create a copy of FridgeQrScannerSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenCoffeeMachineSrCopyWith<_OpenCoffeeMachineSr> get copyWith => __$OpenCoffeeMachineSrCopyWithImpl<_OpenCoffeeMachineSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenCoffeeMachineSr&&(identical(other.store, store) || other.store == store)&&(identical(other.coffeeMachine, coffeeMachine) || other.coffeeMachine == coffeeMachine));
}


@override
int get hashCode => Object.hash(runtimeType,store,coffeeMachine);

@override
String toString() {
  return 'FridgeQrScannerSr.openCoffeeMachine(store: $store, coffeeMachine: $coffeeMachine)';
}


}

/// @nodoc
abstract mixin class _$OpenCoffeeMachineSrCopyWith<$Res> implements $FridgeQrScannerSrCopyWith<$Res> {
  factory _$OpenCoffeeMachineSrCopyWith(_OpenCoffeeMachineSr value, $Res Function(_OpenCoffeeMachineSr) _then) = __$OpenCoffeeMachineSrCopyWithImpl;
@useResult
$Res call({
 Store store, CoffeeMachine coffeeMachine
});


$StoreCopyWith<$Res> get store;$CoffeeMachineCopyWith<$Res> get coffeeMachine;

}
/// @nodoc
class __$OpenCoffeeMachineSrCopyWithImpl<$Res>
    implements _$OpenCoffeeMachineSrCopyWith<$Res> {
  __$OpenCoffeeMachineSrCopyWithImpl(this._self, this._then);

  final _OpenCoffeeMachineSr _self;
  final $Res Function(_OpenCoffeeMachineSr) _then;

/// Create a copy of FridgeQrScannerSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? store = null,Object? coffeeMachine = null,}) {
  return _then(_OpenCoffeeMachineSr(
store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store,coffeeMachine: null == coffeeMachine ? _self.coffeeMachine : coffeeMachine // ignore: cast_nullable_to_non_nullable
as CoffeeMachine,
  ));
}

/// Create a copy of FridgeQrScannerSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res> get store {
  
  return $StoreCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of FridgeQrScannerSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoffeeMachineCopyWith<$Res> get coffeeMachine {
  
  return $CoffeeMachineCopyWith<$Res>(_self.coffeeMachine, (value) {
    return _then(_self.copyWith(coffeeMachine: value));
  });
}
}

/// @nodoc


class _ShowQrScannerOnboardingSr implements FridgeQrScannerSr {
  const _ShowQrScannerOnboardingSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowQrScannerOnboardingSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FridgeQrScannerSr.showQrScannerOnboarding()';
}


}




/// @nodoc


class _RestoreCartSr implements FridgeQrScannerSr {
  const _RestoreCartSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestoreCartSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FridgeQrScannerSr.restoreCart()';
}


}




/// @nodoc


class _FridgeQrScannerShowStoreListSr implements FridgeQrScannerSr {
  const _FridgeQrScannerShowStoreListSr([this.barcode]);
  

 final  BarcodeCapture? barcode;

/// Create a copy of FridgeQrScannerSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FridgeQrScannerShowStoreListSrCopyWith<_FridgeQrScannerShowStoreListSr> get copyWith => __$FridgeQrScannerShowStoreListSrCopyWithImpl<_FridgeQrScannerShowStoreListSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FridgeQrScannerShowStoreListSr&&(identical(other.barcode, barcode) || other.barcode == barcode));
}


@override
int get hashCode => Object.hash(runtimeType,barcode);

@override
String toString() {
  return 'FridgeQrScannerSr.showStoreList(barcode: $barcode)';
}


}

/// @nodoc
abstract mixin class _$FridgeQrScannerShowStoreListSrCopyWith<$Res> implements $FridgeQrScannerSrCopyWith<$Res> {
  factory _$FridgeQrScannerShowStoreListSrCopyWith(_FridgeQrScannerShowStoreListSr value, $Res Function(_FridgeQrScannerShowStoreListSr) _then) = __$FridgeQrScannerShowStoreListSrCopyWithImpl;
@useResult
$Res call({
 BarcodeCapture? barcode
});




}
/// @nodoc
class __$FridgeQrScannerShowStoreListSrCopyWithImpl<$Res>
    implements _$FridgeQrScannerShowStoreListSrCopyWith<$Res> {
  __$FridgeQrScannerShowStoreListSrCopyWithImpl(this._self, this._then);

  final _FridgeQrScannerShowStoreListSr _self;
  final $Res Function(_FridgeQrScannerShowStoreListSr) _then;

/// Create a copy of FridgeQrScannerSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? barcode = freezed,}) {
  return _then(_FridgeQrScannerShowStoreListSr(
freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as BarcodeCapture?,
  ));
}


}

// dart format on
