// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent()';
}


}

/// @nodoc
class $CartEventCopyWith<$Res>  {
$CartEventCopyWith(CartEvent _, $Res Function(CartEvent) __);
}


/// Adds pattern-matching-related methods to [CartEvent].
extension CartEventPatterns on CartEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _OnInitCart value)?  initCart,TResult Function( _OnDecrementPressed value)?  onDecrementPressed,TResult Function( _OnIncrementPressed value)?  onIncrementPressed,TResult Function( _OnDeletePressed value)?  onDeletePressed,TResult Function( _OnDetectQR value)?  onDetectQR,TResult Function( _OnInputQR value)?  onInputQR,TResult Function( _OnCartUpdate value)?  onCartUpdate,TResult Function( _OnCartUpdateError value)?  onCartUpdateError,TResult Function( _OnCreateOrder value)?  onCreateOrder,TResult Function( _OnUseBonusesChange value)?  onUseBonusesChange,TResult Function( _OnReset value)?  onReset,TResult Function( _OnCancelOrderPressed value)?  onCancelOrderPressed,TResult Function( _OnSbpBankOpen value)?  onSbpBankOpen,TResult Function( _OnSuccessPayment value)?  onSuccessPayment,TResult Function( _OnFailurePayment value)?  onFailurePayment,TResult Function( _OnUnfinishedPurchaseOnboardingComplete value)?  onUnfinishedPurchaseOnboardingComplete,TResult Function( _OnAddMultipleProducts value)?  onAddMultipleProducts,TResult Function( _OnStoreListButtonPressed value)?  onStoreListButtonPressed,TResult Function( _OnChangePaymentTypePressed value)?  onChangePaymentTypePressed,TResult Function( _OnPaymentTypeChanged value)?  onPaymentTypeChanged,TResult Function( _OnPaymentTypeSelected value)?  onPaymentTypeSelected,TResult Function( _AddExpiredBarcode value)?  addExpiredBarcode,TResult Function( _OnReopenFridge value)?  onReopenOpenFridge,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnInitCart() when initCart != null:
return initCart(_that);case _OnDecrementPressed() when onDecrementPressed != null:
return onDecrementPressed(_that);case _OnIncrementPressed() when onIncrementPressed != null:
return onIncrementPressed(_that);case _OnDeletePressed() when onDeletePressed != null:
return onDeletePressed(_that);case _OnDetectQR() when onDetectQR != null:
return onDetectQR(_that);case _OnInputQR() when onInputQR != null:
return onInputQR(_that);case _OnCartUpdate() when onCartUpdate != null:
return onCartUpdate(_that);case _OnCartUpdateError() when onCartUpdateError != null:
return onCartUpdateError(_that);case _OnCreateOrder() when onCreateOrder != null:
return onCreateOrder(_that);case _OnUseBonusesChange() when onUseBonusesChange != null:
return onUseBonusesChange(_that);case _OnReset() when onReset != null:
return onReset(_that);case _OnCancelOrderPressed() when onCancelOrderPressed != null:
return onCancelOrderPressed(_that);case _OnSbpBankOpen() when onSbpBankOpen != null:
return onSbpBankOpen(_that);case _OnSuccessPayment() when onSuccessPayment != null:
return onSuccessPayment(_that);case _OnFailurePayment() when onFailurePayment != null:
return onFailurePayment(_that);case _OnUnfinishedPurchaseOnboardingComplete() when onUnfinishedPurchaseOnboardingComplete != null:
return onUnfinishedPurchaseOnboardingComplete(_that);case _OnAddMultipleProducts() when onAddMultipleProducts != null:
return onAddMultipleProducts(_that);case _OnStoreListButtonPressed() when onStoreListButtonPressed != null:
return onStoreListButtonPressed(_that);case _OnChangePaymentTypePressed() when onChangePaymentTypePressed != null:
return onChangePaymentTypePressed(_that);case _OnPaymentTypeChanged() when onPaymentTypeChanged != null:
return onPaymentTypeChanged(_that);case _OnPaymentTypeSelected() when onPaymentTypeSelected != null:
return onPaymentTypeSelected(_that);case _AddExpiredBarcode() when addExpiredBarcode != null:
return addExpiredBarcode(_that);case _OnReopenFridge() when onReopenOpenFridge != null:
return onReopenOpenFridge(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _OnInitCart value)  initCart,required TResult Function( _OnDecrementPressed value)  onDecrementPressed,required TResult Function( _OnIncrementPressed value)  onIncrementPressed,required TResult Function( _OnDeletePressed value)  onDeletePressed,required TResult Function( _OnDetectQR value)  onDetectQR,required TResult Function( _OnInputQR value)  onInputQR,required TResult Function( _OnCartUpdate value)  onCartUpdate,required TResult Function( _OnCartUpdateError value)  onCartUpdateError,required TResult Function( _OnCreateOrder value)  onCreateOrder,required TResult Function( _OnUseBonusesChange value)  onUseBonusesChange,required TResult Function( _OnReset value)  onReset,required TResult Function( _OnCancelOrderPressed value)  onCancelOrderPressed,required TResult Function( _OnSbpBankOpen value)  onSbpBankOpen,required TResult Function( _OnSuccessPayment value)  onSuccessPayment,required TResult Function( _OnFailurePayment value)  onFailurePayment,required TResult Function( _OnUnfinishedPurchaseOnboardingComplete value)  onUnfinishedPurchaseOnboardingComplete,required TResult Function( _OnAddMultipleProducts value)  onAddMultipleProducts,required TResult Function( _OnStoreListButtonPressed value)  onStoreListButtonPressed,required TResult Function( _OnChangePaymentTypePressed value)  onChangePaymentTypePressed,required TResult Function( _OnPaymentTypeChanged value)  onPaymentTypeChanged,required TResult Function( _OnPaymentTypeSelected value)  onPaymentTypeSelected,required TResult Function( _AddExpiredBarcode value)  addExpiredBarcode,required TResult Function( _OnReopenFridge value)  onReopenOpenFridge,}){
final _that = this;
switch (_that) {
case _OnInitCart():
return initCart(_that);case _OnDecrementPressed():
return onDecrementPressed(_that);case _OnIncrementPressed():
return onIncrementPressed(_that);case _OnDeletePressed():
return onDeletePressed(_that);case _OnDetectQR():
return onDetectQR(_that);case _OnInputQR():
return onInputQR(_that);case _OnCartUpdate():
return onCartUpdate(_that);case _OnCartUpdateError():
return onCartUpdateError(_that);case _OnCreateOrder():
return onCreateOrder(_that);case _OnUseBonusesChange():
return onUseBonusesChange(_that);case _OnReset():
return onReset(_that);case _OnCancelOrderPressed():
return onCancelOrderPressed(_that);case _OnSbpBankOpen():
return onSbpBankOpen(_that);case _OnSuccessPayment():
return onSuccessPayment(_that);case _OnFailurePayment():
return onFailurePayment(_that);case _OnUnfinishedPurchaseOnboardingComplete():
return onUnfinishedPurchaseOnboardingComplete(_that);case _OnAddMultipleProducts():
return onAddMultipleProducts(_that);case _OnStoreListButtonPressed():
return onStoreListButtonPressed(_that);case _OnChangePaymentTypePressed():
return onChangePaymentTypePressed(_that);case _OnPaymentTypeChanged():
return onPaymentTypeChanged(_that);case _OnPaymentTypeSelected():
return onPaymentTypeSelected(_that);case _AddExpiredBarcode():
return addExpiredBarcode(_that);case _OnReopenFridge():
return onReopenOpenFridge(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _OnInitCart value)?  initCart,TResult? Function( _OnDecrementPressed value)?  onDecrementPressed,TResult? Function( _OnIncrementPressed value)?  onIncrementPressed,TResult? Function( _OnDeletePressed value)?  onDeletePressed,TResult? Function( _OnDetectQR value)?  onDetectQR,TResult? Function( _OnInputQR value)?  onInputQR,TResult? Function( _OnCartUpdate value)?  onCartUpdate,TResult? Function( _OnCartUpdateError value)?  onCartUpdateError,TResult? Function( _OnCreateOrder value)?  onCreateOrder,TResult? Function( _OnUseBonusesChange value)?  onUseBonusesChange,TResult? Function( _OnReset value)?  onReset,TResult? Function( _OnCancelOrderPressed value)?  onCancelOrderPressed,TResult? Function( _OnSbpBankOpen value)?  onSbpBankOpen,TResult? Function( _OnSuccessPayment value)?  onSuccessPayment,TResult? Function( _OnFailurePayment value)?  onFailurePayment,TResult? Function( _OnUnfinishedPurchaseOnboardingComplete value)?  onUnfinishedPurchaseOnboardingComplete,TResult? Function( _OnAddMultipleProducts value)?  onAddMultipleProducts,TResult? Function( _OnStoreListButtonPressed value)?  onStoreListButtonPressed,TResult? Function( _OnChangePaymentTypePressed value)?  onChangePaymentTypePressed,TResult? Function( _OnPaymentTypeChanged value)?  onPaymentTypeChanged,TResult? Function( _OnPaymentTypeSelected value)?  onPaymentTypeSelected,TResult? Function( _AddExpiredBarcode value)?  addExpiredBarcode,TResult? Function( _OnReopenFridge value)?  onReopenOpenFridge,}){
final _that = this;
switch (_that) {
case _OnInitCart() when initCart != null:
return initCart(_that);case _OnDecrementPressed() when onDecrementPressed != null:
return onDecrementPressed(_that);case _OnIncrementPressed() when onIncrementPressed != null:
return onIncrementPressed(_that);case _OnDeletePressed() when onDeletePressed != null:
return onDeletePressed(_that);case _OnDetectQR() when onDetectQR != null:
return onDetectQR(_that);case _OnInputQR() when onInputQR != null:
return onInputQR(_that);case _OnCartUpdate() when onCartUpdate != null:
return onCartUpdate(_that);case _OnCartUpdateError() when onCartUpdateError != null:
return onCartUpdateError(_that);case _OnCreateOrder() when onCreateOrder != null:
return onCreateOrder(_that);case _OnUseBonusesChange() when onUseBonusesChange != null:
return onUseBonusesChange(_that);case _OnReset() when onReset != null:
return onReset(_that);case _OnCancelOrderPressed() when onCancelOrderPressed != null:
return onCancelOrderPressed(_that);case _OnSbpBankOpen() when onSbpBankOpen != null:
return onSbpBankOpen(_that);case _OnSuccessPayment() when onSuccessPayment != null:
return onSuccessPayment(_that);case _OnFailurePayment() when onFailurePayment != null:
return onFailurePayment(_that);case _OnUnfinishedPurchaseOnboardingComplete() when onUnfinishedPurchaseOnboardingComplete != null:
return onUnfinishedPurchaseOnboardingComplete(_that);case _OnAddMultipleProducts() when onAddMultipleProducts != null:
return onAddMultipleProducts(_that);case _OnStoreListButtonPressed() when onStoreListButtonPressed != null:
return onStoreListButtonPressed(_that);case _OnChangePaymentTypePressed() when onChangePaymentTypePressed != null:
return onChangePaymentTypePressed(_that);case _OnPaymentTypeChanged() when onPaymentTypeChanged != null:
return onPaymentTypeChanged(_that);case _OnPaymentTypeSelected() when onPaymentTypeSelected != null:
return onPaymentTypeSelected(_that);case _AddExpiredBarcode() when addExpiredBarcode != null:
return addExpiredBarcode(_that);case _OnReopenFridge() when onReopenOpenFridge != null:
return onReopenOpenFridge(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Store? store,  String? fridgeId,  CoffeeMachine? coffeeMachine,  bool shouldRestoreCart,  BarcodeCapture? barcode)?  initCart,TResult Function( CartItem product)?  onDecrementPressed,TResult Function( CartItem product)?  onIncrementPressed,TResult Function( CartItem product)?  onDeletePressed,TResult Function( BarcodeCapture barcode)?  onDetectQR,TResult Function( String barcode)?  onInputQR,TResult Function( Cart? cart)?  onCartUpdate,TResult Function( Object error)?  onCartUpdateError,TResult Function()?  onCreateOrder,TResult Function( bool useBonuses)?  onUseBonusesChange,TResult Function()?  onReset,TResult Function()?  onCancelOrderPressed,TResult Function()?  onSbpBankOpen,TResult Function()?  onSuccessPayment,TResult Function()?  onFailurePayment,TResult Function()?  onUnfinishedPurchaseOnboardingComplete,TResult Function( Map<Product, double> products)?  onAddMultipleProducts,TResult Function()?  onStoreListButtonPressed,TResult Function()?  onChangePaymentTypePressed,TResult Function( PaymentType? paymentType)?  onPaymentTypeChanged,TResult Function( PaymentType? paymentType)?  onPaymentTypeSelected,TResult Function( RawBarcode barcode)?  addExpiredBarcode,TResult Function( dynamic fridgeId)?  onReopenOpenFridge,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnInitCart() when initCart != null:
return initCart(_that.store,_that.fridgeId,_that.coffeeMachine,_that.shouldRestoreCart,_that.barcode);case _OnDecrementPressed() when onDecrementPressed != null:
return onDecrementPressed(_that.product);case _OnIncrementPressed() when onIncrementPressed != null:
return onIncrementPressed(_that.product);case _OnDeletePressed() when onDeletePressed != null:
return onDeletePressed(_that.product);case _OnDetectQR() when onDetectQR != null:
return onDetectQR(_that.barcode);case _OnInputQR() when onInputQR != null:
return onInputQR(_that.barcode);case _OnCartUpdate() when onCartUpdate != null:
return onCartUpdate(_that.cart);case _OnCartUpdateError() when onCartUpdateError != null:
return onCartUpdateError(_that.error);case _OnCreateOrder() when onCreateOrder != null:
return onCreateOrder();case _OnUseBonusesChange() when onUseBonusesChange != null:
return onUseBonusesChange(_that.useBonuses);case _OnReset() when onReset != null:
return onReset();case _OnCancelOrderPressed() when onCancelOrderPressed != null:
return onCancelOrderPressed();case _OnSbpBankOpen() when onSbpBankOpen != null:
return onSbpBankOpen();case _OnSuccessPayment() when onSuccessPayment != null:
return onSuccessPayment();case _OnFailurePayment() when onFailurePayment != null:
return onFailurePayment();case _OnUnfinishedPurchaseOnboardingComplete() when onUnfinishedPurchaseOnboardingComplete != null:
return onUnfinishedPurchaseOnboardingComplete();case _OnAddMultipleProducts() when onAddMultipleProducts != null:
return onAddMultipleProducts(_that.products);case _OnStoreListButtonPressed() when onStoreListButtonPressed != null:
return onStoreListButtonPressed();case _OnChangePaymentTypePressed() when onChangePaymentTypePressed != null:
return onChangePaymentTypePressed();case _OnPaymentTypeChanged() when onPaymentTypeChanged != null:
return onPaymentTypeChanged(_that.paymentType);case _OnPaymentTypeSelected() when onPaymentTypeSelected != null:
return onPaymentTypeSelected(_that.paymentType);case _AddExpiredBarcode() when addExpiredBarcode != null:
return addExpiredBarcode(_that.barcode);case _OnReopenFridge() when onReopenOpenFridge != null:
return onReopenOpenFridge(_that.fridgeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Store? store,  String? fridgeId,  CoffeeMachine? coffeeMachine,  bool shouldRestoreCart,  BarcodeCapture? barcode)  initCart,required TResult Function( CartItem product)  onDecrementPressed,required TResult Function( CartItem product)  onIncrementPressed,required TResult Function( CartItem product)  onDeletePressed,required TResult Function( BarcodeCapture barcode)  onDetectQR,required TResult Function( String barcode)  onInputQR,required TResult Function( Cart? cart)  onCartUpdate,required TResult Function( Object error)  onCartUpdateError,required TResult Function()  onCreateOrder,required TResult Function( bool useBonuses)  onUseBonusesChange,required TResult Function()  onReset,required TResult Function()  onCancelOrderPressed,required TResult Function()  onSbpBankOpen,required TResult Function()  onSuccessPayment,required TResult Function()  onFailurePayment,required TResult Function()  onUnfinishedPurchaseOnboardingComplete,required TResult Function( Map<Product, double> products)  onAddMultipleProducts,required TResult Function()  onStoreListButtonPressed,required TResult Function()  onChangePaymentTypePressed,required TResult Function( PaymentType? paymentType)  onPaymentTypeChanged,required TResult Function( PaymentType? paymentType)  onPaymentTypeSelected,required TResult Function( RawBarcode barcode)  addExpiredBarcode,required TResult Function( dynamic fridgeId)  onReopenOpenFridge,}) {final _that = this;
switch (_that) {
case _OnInitCart():
return initCart(_that.store,_that.fridgeId,_that.coffeeMachine,_that.shouldRestoreCart,_that.barcode);case _OnDecrementPressed():
return onDecrementPressed(_that.product);case _OnIncrementPressed():
return onIncrementPressed(_that.product);case _OnDeletePressed():
return onDeletePressed(_that.product);case _OnDetectQR():
return onDetectQR(_that.barcode);case _OnInputQR():
return onInputQR(_that.barcode);case _OnCartUpdate():
return onCartUpdate(_that.cart);case _OnCartUpdateError():
return onCartUpdateError(_that.error);case _OnCreateOrder():
return onCreateOrder();case _OnUseBonusesChange():
return onUseBonusesChange(_that.useBonuses);case _OnReset():
return onReset();case _OnCancelOrderPressed():
return onCancelOrderPressed();case _OnSbpBankOpen():
return onSbpBankOpen();case _OnSuccessPayment():
return onSuccessPayment();case _OnFailurePayment():
return onFailurePayment();case _OnUnfinishedPurchaseOnboardingComplete():
return onUnfinishedPurchaseOnboardingComplete();case _OnAddMultipleProducts():
return onAddMultipleProducts(_that.products);case _OnStoreListButtonPressed():
return onStoreListButtonPressed();case _OnChangePaymentTypePressed():
return onChangePaymentTypePressed();case _OnPaymentTypeChanged():
return onPaymentTypeChanged(_that.paymentType);case _OnPaymentTypeSelected():
return onPaymentTypeSelected(_that.paymentType);case _AddExpiredBarcode():
return addExpiredBarcode(_that.barcode);case _OnReopenFridge():
return onReopenOpenFridge(_that.fridgeId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Store? store,  String? fridgeId,  CoffeeMachine? coffeeMachine,  bool shouldRestoreCart,  BarcodeCapture? barcode)?  initCart,TResult? Function( CartItem product)?  onDecrementPressed,TResult? Function( CartItem product)?  onIncrementPressed,TResult? Function( CartItem product)?  onDeletePressed,TResult? Function( BarcodeCapture barcode)?  onDetectQR,TResult? Function( String barcode)?  onInputQR,TResult? Function( Cart? cart)?  onCartUpdate,TResult? Function( Object error)?  onCartUpdateError,TResult? Function()?  onCreateOrder,TResult? Function( bool useBonuses)?  onUseBonusesChange,TResult? Function()?  onReset,TResult? Function()?  onCancelOrderPressed,TResult? Function()?  onSbpBankOpen,TResult? Function()?  onSuccessPayment,TResult? Function()?  onFailurePayment,TResult? Function()?  onUnfinishedPurchaseOnboardingComplete,TResult? Function( Map<Product, double> products)?  onAddMultipleProducts,TResult? Function()?  onStoreListButtonPressed,TResult? Function()?  onChangePaymentTypePressed,TResult? Function( PaymentType? paymentType)?  onPaymentTypeChanged,TResult? Function( PaymentType? paymentType)?  onPaymentTypeSelected,TResult? Function( RawBarcode barcode)?  addExpiredBarcode,TResult? Function( dynamic fridgeId)?  onReopenOpenFridge,}) {final _that = this;
switch (_that) {
case _OnInitCart() when initCart != null:
return initCart(_that.store,_that.fridgeId,_that.coffeeMachine,_that.shouldRestoreCart,_that.barcode);case _OnDecrementPressed() when onDecrementPressed != null:
return onDecrementPressed(_that.product);case _OnIncrementPressed() when onIncrementPressed != null:
return onIncrementPressed(_that.product);case _OnDeletePressed() when onDeletePressed != null:
return onDeletePressed(_that.product);case _OnDetectQR() when onDetectQR != null:
return onDetectQR(_that.barcode);case _OnInputQR() when onInputQR != null:
return onInputQR(_that.barcode);case _OnCartUpdate() when onCartUpdate != null:
return onCartUpdate(_that.cart);case _OnCartUpdateError() when onCartUpdateError != null:
return onCartUpdateError(_that.error);case _OnCreateOrder() when onCreateOrder != null:
return onCreateOrder();case _OnUseBonusesChange() when onUseBonusesChange != null:
return onUseBonusesChange(_that.useBonuses);case _OnReset() when onReset != null:
return onReset();case _OnCancelOrderPressed() when onCancelOrderPressed != null:
return onCancelOrderPressed();case _OnSbpBankOpen() when onSbpBankOpen != null:
return onSbpBankOpen();case _OnSuccessPayment() when onSuccessPayment != null:
return onSuccessPayment();case _OnFailurePayment() when onFailurePayment != null:
return onFailurePayment();case _OnUnfinishedPurchaseOnboardingComplete() when onUnfinishedPurchaseOnboardingComplete != null:
return onUnfinishedPurchaseOnboardingComplete();case _OnAddMultipleProducts() when onAddMultipleProducts != null:
return onAddMultipleProducts(_that.products);case _OnStoreListButtonPressed() when onStoreListButtonPressed != null:
return onStoreListButtonPressed();case _OnChangePaymentTypePressed() when onChangePaymentTypePressed != null:
return onChangePaymentTypePressed();case _OnPaymentTypeChanged() when onPaymentTypeChanged != null:
return onPaymentTypeChanged(_that.paymentType);case _OnPaymentTypeSelected() when onPaymentTypeSelected != null:
return onPaymentTypeSelected(_that.paymentType);case _AddExpiredBarcode() when addExpiredBarcode != null:
return addExpiredBarcode(_that.barcode);case _OnReopenFridge() when onReopenOpenFridge != null:
return onReopenOpenFridge(_that.fridgeId);case _:
  return null;

}
}

}

/// @nodoc


class _OnInitCart implements CartEvent {
  const _OnInitCart({this.store, this.fridgeId, this.coffeeMachine, this.shouldRestoreCart = false, this.barcode});
  

 final  Store? store;
 final  String? fridgeId;
 final  CoffeeMachine? coffeeMachine;
@JsonKey() final  bool shouldRestoreCart;
 final  BarcodeCapture? barcode;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnInitCartCopyWith<_OnInitCart> get copyWith => __$OnInitCartCopyWithImpl<_OnInitCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnInitCart&&(identical(other.store, store) || other.store == store)&&(identical(other.fridgeId, fridgeId) || other.fridgeId == fridgeId)&&(identical(other.coffeeMachine, coffeeMachine) || other.coffeeMachine == coffeeMachine)&&(identical(other.shouldRestoreCart, shouldRestoreCart) || other.shouldRestoreCart == shouldRestoreCart)&&(identical(other.barcode, barcode) || other.barcode == barcode));
}


@override
int get hashCode => Object.hash(runtimeType,store,fridgeId,coffeeMachine,shouldRestoreCart,barcode);

@override
String toString() {
  return 'CartEvent.initCart(store: $store, fridgeId: $fridgeId, coffeeMachine: $coffeeMachine, shouldRestoreCart: $shouldRestoreCart, barcode: $barcode)';
}


}

/// @nodoc
abstract mixin class _$OnInitCartCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$OnInitCartCopyWith(_OnInitCart value, $Res Function(_OnInitCart) _then) = __$OnInitCartCopyWithImpl;
@useResult
$Res call({
 Store? store, String? fridgeId, CoffeeMachine? coffeeMachine, bool shouldRestoreCart, BarcodeCapture? barcode
});


$StoreCopyWith<$Res>? get store;$CoffeeMachineCopyWith<$Res>? get coffeeMachine;

}
/// @nodoc
class __$OnInitCartCopyWithImpl<$Res>
    implements _$OnInitCartCopyWith<$Res> {
  __$OnInitCartCopyWithImpl(this._self, this._then);

  final _OnInitCart _self;
  final $Res Function(_OnInitCart) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? store = freezed,Object? fridgeId = freezed,Object? coffeeMachine = freezed,Object? shouldRestoreCart = null,Object? barcode = freezed,}) {
  return _then(_OnInitCart(
store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,fridgeId: freezed == fridgeId ? _self.fridgeId : fridgeId // ignore: cast_nullable_to_non_nullable
as String?,coffeeMachine: freezed == coffeeMachine ? _self.coffeeMachine : coffeeMachine // ignore: cast_nullable_to_non_nullable
as CoffeeMachine?,shouldRestoreCart: null == shouldRestoreCart ? _self.shouldRestoreCart : shouldRestoreCart // ignore: cast_nullable_to_non_nullable
as bool,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as BarcodeCapture?,
  ));
}

/// Create a copy of CartEvent
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
}/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoffeeMachineCopyWith<$Res>? get coffeeMachine {
    if (_self.coffeeMachine == null) {
    return null;
  }

  return $CoffeeMachineCopyWith<$Res>(_self.coffeeMachine!, (value) {
    return _then(_self.copyWith(coffeeMachine: value));
  });
}
}

/// @nodoc


class _OnDecrementPressed implements CartEvent {
  const _OnDecrementPressed({required this.product});
  

 final  CartItem product;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnDecrementPressedCopyWith<_OnDecrementPressed> get copyWith => __$OnDecrementPressedCopyWithImpl<_OnDecrementPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnDecrementPressed&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'CartEvent.onDecrementPressed(product: $product)';
}


}

/// @nodoc
abstract mixin class _$OnDecrementPressedCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$OnDecrementPressedCopyWith(_OnDecrementPressed value, $Res Function(_OnDecrementPressed) _then) = __$OnDecrementPressedCopyWithImpl;
@useResult
$Res call({
 CartItem product
});


$CartItemCopyWith<$Res> get product;

}
/// @nodoc
class __$OnDecrementPressedCopyWithImpl<$Res>
    implements _$OnDecrementPressedCopyWith<$Res> {
  __$OnDecrementPressedCopyWithImpl(this._self, this._then);

  final _OnDecrementPressed _self;
  final $Res Function(_OnDecrementPressed) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(_OnDecrementPressed(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as CartItem,
  ));
}

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartItemCopyWith<$Res> get product {
  
  return $CartItemCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class _OnIncrementPressed implements CartEvent {
  const _OnIncrementPressed({required this.product});
  

 final  CartItem product;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnIncrementPressedCopyWith<_OnIncrementPressed> get copyWith => __$OnIncrementPressedCopyWithImpl<_OnIncrementPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnIncrementPressed&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'CartEvent.onIncrementPressed(product: $product)';
}


}

/// @nodoc
abstract mixin class _$OnIncrementPressedCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$OnIncrementPressedCopyWith(_OnIncrementPressed value, $Res Function(_OnIncrementPressed) _then) = __$OnIncrementPressedCopyWithImpl;
@useResult
$Res call({
 CartItem product
});


$CartItemCopyWith<$Res> get product;

}
/// @nodoc
class __$OnIncrementPressedCopyWithImpl<$Res>
    implements _$OnIncrementPressedCopyWith<$Res> {
  __$OnIncrementPressedCopyWithImpl(this._self, this._then);

  final _OnIncrementPressed _self;
  final $Res Function(_OnIncrementPressed) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(_OnIncrementPressed(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as CartItem,
  ));
}

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartItemCopyWith<$Res> get product {
  
  return $CartItemCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class _OnDeletePressed implements CartEvent {
  const _OnDeletePressed({required this.product});
  

 final  CartItem product;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnDeletePressedCopyWith<_OnDeletePressed> get copyWith => __$OnDeletePressedCopyWithImpl<_OnDeletePressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnDeletePressed&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'CartEvent.onDeletePressed(product: $product)';
}


}

/// @nodoc
abstract mixin class _$OnDeletePressedCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$OnDeletePressedCopyWith(_OnDeletePressed value, $Res Function(_OnDeletePressed) _then) = __$OnDeletePressedCopyWithImpl;
@useResult
$Res call({
 CartItem product
});


$CartItemCopyWith<$Res> get product;

}
/// @nodoc
class __$OnDeletePressedCopyWithImpl<$Res>
    implements _$OnDeletePressedCopyWith<$Res> {
  __$OnDeletePressedCopyWithImpl(this._self, this._then);

  final _OnDeletePressed _self;
  final $Res Function(_OnDeletePressed) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(_OnDeletePressed(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as CartItem,
  ));
}

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartItemCopyWith<$Res> get product {
  
  return $CartItemCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class _OnDetectQR implements CartEvent {
  const _OnDetectQR({required this.barcode});
  

 final  BarcodeCapture barcode;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnDetectQRCopyWith<_OnDetectQR> get copyWith => __$OnDetectQRCopyWithImpl<_OnDetectQR>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnDetectQR&&(identical(other.barcode, barcode) || other.barcode == barcode));
}


@override
int get hashCode => Object.hash(runtimeType,barcode);

@override
String toString() {
  return 'CartEvent.onDetectQR(barcode: $barcode)';
}


}

/// @nodoc
abstract mixin class _$OnDetectQRCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$OnDetectQRCopyWith(_OnDetectQR value, $Res Function(_OnDetectQR) _then) = __$OnDetectQRCopyWithImpl;
@useResult
$Res call({
 BarcodeCapture barcode
});




}
/// @nodoc
class __$OnDetectQRCopyWithImpl<$Res>
    implements _$OnDetectQRCopyWith<$Res> {
  __$OnDetectQRCopyWithImpl(this._self, this._then);

  final _OnDetectQR _self;
  final $Res Function(_OnDetectQR) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? barcode = null,}) {
  return _then(_OnDetectQR(
barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as BarcodeCapture,
  ));
}


}

/// @nodoc


class _OnInputQR implements CartEvent {
  const _OnInputQR({required this.barcode});
  

 final  String barcode;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnInputQRCopyWith<_OnInputQR> get copyWith => __$OnInputQRCopyWithImpl<_OnInputQR>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnInputQR&&(identical(other.barcode, barcode) || other.barcode == barcode));
}


@override
int get hashCode => Object.hash(runtimeType,barcode);

@override
String toString() {
  return 'CartEvent.onInputQR(barcode: $barcode)';
}


}

/// @nodoc
abstract mixin class _$OnInputQRCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$OnInputQRCopyWith(_OnInputQR value, $Res Function(_OnInputQR) _then) = __$OnInputQRCopyWithImpl;
@useResult
$Res call({
 String barcode
});




}
/// @nodoc
class __$OnInputQRCopyWithImpl<$Res>
    implements _$OnInputQRCopyWith<$Res> {
  __$OnInputQRCopyWithImpl(this._self, this._then);

  final _OnInputQR _self;
  final $Res Function(_OnInputQR) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? barcode = null,}) {
  return _then(_OnInputQR(
barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _OnCartUpdate implements CartEvent {
  const _OnCartUpdate({required this.cart});
  

 final  Cart? cart;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnCartUpdateCopyWith<_OnCartUpdate> get copyWith => __$OnCartUpdateCopyWithImpl<_OnCartUpdate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnCartUpdate&&(identical(other.cart, cart) || other.cart == cart));
}


@override
int get hashCode => Object.hash(runtimeType,cart);

@override
String toString() {
  return 'CartEvent.onCartUpdate(cart: $cart)';
}


}

/// @nodoc
abstract mixin class _$OnCartUpdateCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$OnCartUpdateCopyWith(_OnCartUpdate value, $Res Function(_OnCartUpdate) _then) = __$OnCartUpdateCopyWithImpl;
@useResult
$Res call({
 Cart? cart
});


$CartCopyWith<$Res>? get cart;

}
/// @nodoc
class __$OnCartUpdateCopyWithImpl<$Res>
    implements _$OnCartUpdateCopyWith<$Res> {
  __$OnCartUpdateCopyWithImpl(this._self, this._then);

  final _OnCartUpdate _self;
  final $Res Function(_OnCartUpdate) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cart = freezed,}) {
  return _then(_OnCartUpdate(
cart: freezed == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as Cart?,
  ));
}

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCopyWith<$Res>? get cart {
    if (_self.cart == null) {
    return null;
  }

  return $CartCopyWith<$Res>(_self.cart!, (value) {
    return _then(_self.copyWith(cart: value));
  });
}
}

/// @nodoc


class _OnCartUpdateError implements CartEvent {
  const _OnCartUpdateError({required this.error});
  

 final  Object error;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnCartUpdateErrorCopyWith<_OnCartUpdateError> get copyWith => __$OnCartUpdateErrorCopyWithImpl<_OnCartUpdateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnCartUpdateError&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'CartEvent.onCartUpdateError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$OnCartUpdateErrorCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$OnCartUpdateErrorCopyWith(_OnCartUpdateError value, $Res Function(_OnCartUpdateError) _then) = __$OnCartUpdateErrorCopyWithImpl;
@useResult
$Res call({
 Object error
});




}
/// @nodoc
class __$OnCartUpdateErrorCopyWithImpl<$Res>
    implements _$OnCartUpdateErrorCopyWith<$Res> {
  __$OnCartUpdateErrorCopyWithImpl(this._self, this._then);

  final _OnCartUpdateError _self;
  final $Res Function(_OnCartUpdateError) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_OnCartUpdateError(
error: null == error ? _self.error : error ,
  ));
}


}

/// @nodoc


class _OnCreateOrder implements CartEvent {
  const _OnCreateOrder();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnCreateOrder);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.onCreateOrder()';
}


}




/// @nodoc


class _OnUseBonusesChange implements CartEvent {
  const _OnUseBonusesChange({required this.useBonuses});
  

 final  bool useBonuses;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnUseBonusesChangeCopyWith<_OnUseBonusesChange> get copyWith => __$OnUseBonusesChangeCopyWithImpl<_OnUseBonusesChange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnUseBonusesChange&&(identical(other.useBonuses, useBonuses) || other.useBonuses == useBonuses));
}


@override
int get hashCode => Object.hash(runtimeType,useBonuses);

@override
String toString() {
  return 'CartEvent.onUseBonusesChange(useBonuses: $useBonuses)';
}


}

/// @nodoc
abstract mixin class _$OnUseBonusesChangeCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$OnUseBonusesChangeCopyWith(_OnUseBonusesChange value, $Res Function(_OnUseBonusesChange) _then) = __$OnUseBonusesChangeCopyWithImpl;
@useResult
$Res call({
 bool useBonuses
});




}
/// @nodoc
class __$OnUseBonusesChangeCopyWithImpl<$Res>
    implements _$OnUseBonusesChangeCopyWith<$Res> {
  __$OnUseBonusesChangeCopyWithImpl(this._self, this._then);

  final _OnUseBonusesChange _self;
  final $Res Function(_OnUseBonusesChange) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? useBonuses = null,}) {
  return _then(_OnUseBonusesChange(
useBonuses: null == useBonuses ? _self.useBonuses : useBonuses // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _OnReset implements CartEvent {
  const _OnReset();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnReset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.onReset()';
}


}




/// @nodoc


class _OnCancelOrderPressed implements CartEvent {
  const _OnCancelOrderPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnCancelOrderPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.onCancelOrderPressed()';
}


}




/// @nodoc


class _OnSbpBankOpen implements CartEvent {
  const _OnSbpBankOpen();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnSbpBankOpen);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.onSbpBankOpen()';
}


}




/// @nodoc


class _OnSuccessPayment implements CartEvent {
  const _OnSuccessPayment();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnSuccessPayment);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.onSuccessPayment()';
}


}




/// @nodoc


class _OnFailurePayment implements CartEvent {
  const _OnFailurePayment();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnFailurePayment);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.onFailurePayment()';
}


}




/// @nodoc


class _OnUnfinishedPurchaseOnboardingComplete implements CartEvent {
  const _OnUnfinishedPurchaseOnboardingComplete();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnUnfinishedPurchaseOnboardingComplete);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.onUnfinishedPurchaseOnboardingComplete()';
}


}




/// @nodoc


class _OnAddMultipleProducts implements CartEvent {
  const _OnAddMultipleProducts( Map<Product, double> products): _products = products;
  

 final  Map<Product, double> _products;
 Map<Product, double> get products {
  if (_products is EqualUnmodifiableMapView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_products);
}


/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnAddMultipleProductsCopyWith<_OnAddMultipleProducts> get copyWith => __$OnAddMultipleProductsCopyWithImpl<_OnAddMultipleProducts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnAddMultipleProducts&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'CartEvent.onAddMultipleProducts(products: $products)';
}


}

/// @nodoc
abstract mixin class _$OnAddMultipleProductsCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$OnAddMultipleProductsCopyWith(_OnAddMultipleProducts value, $Res Function(_OnAddMultipleProducts) _then) = __$OnAddMultipleProductsCopyWithImpl;
@useResult
$Res call({
 Map<Product, double> products
});




}
/// @nodoc
class __$OnAddMultipleProductsCopyWithImpl<$Res>
    implements _$OnAddMultipleProductsCopyWith<$Res> {
  __$OnAddMultipleProductsCopyWithImpl(this._self, this._then);

  final _OnAddMultipleProducts _self;
  final $Res Function(_OnAddMultipleProducts) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,}) {
  return _then(_OnAddMultipleProducts(
null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as Map<Product, double>,
  ));
}


}

/// @nodoc


class _OnStoreListButtonPressed implements CartEvent {
  const _OnStoreListButtonPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnStoreListButtonPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.onStoreListButtonPressed()';
}


}




/// @nodoc


class _OnChangePaymentTypePressed implements CartEvent {
  const _OnChangePaymentTypePressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnChangePaymentTypePressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.onChangePaymentTypePressed()';
}


}




/// @nodoc


class _OnPaymentTypeChanged implements CartEvent {
  const _OnPaymentTypeChanged(this.paymentType);
  

 final  PaymentType? paymentType;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnPaymentTypeChangedCopyWith<_OnPaymentTypeChanged> get copyWith => __$OnPaymentTypeChangedCopyWithImpl<_OnPaymentTypeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnPaymentTypeChanged&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType));
}


@override
int get hashCode => Object.hash(runtimeType,paymentType);

@override
String toString() {
  return 'CartEvent.onPaymentTypeChanged(paymentType: $paymentType)';
}


}

/// @nodoc
abstract mixin class _$OnPaymentTypeChangedCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$OnPaymentTypeChangedCopyWith(_OnPaymentTypeChanged value, $Res Function(_OnPaymentTypeChanged) _then) = __$OnPaymentTypeChangedCopyWithImpl;
@useResult
$Res call({
 PaymentType? paymentType
});


$PaymentTypeCopyWith<$Res>? get paymentType;

}
/// @nodoc
class __$OnPaymentTypeChangedCopyWithImpl<$Res>
    implements _$OnPaymentTypeChangedCopyWith<$Res> {
  __$OnPaymentTypeChangedCopyWithImpl(this._self, this._then);

  final _OnPaymentTypeChanged _self;
  final $Res Function(_OnPaymentTypeChanged) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? paymentType = freezed,}) {
  return _then(_OnPaymentTypeChanged(
freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType?,
  ));
}

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res>? get paymentType {
    if (_self.paymentType == null) {
    return null;
  }

  return $PaymentTypeCopyWith<$Res>(_self.paymentType!, (value) {
    return _then(_self.copyWith(paymentType: value));
  });
}
}

/// @nodoc


class _OnPaymentTypeSelected implements CartEvent {
  const _OnPaymentTypeSelected(this.paymentType);
  

 final  PaymentType? paymentType;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnPaymentTypeSelectedCopyWith<_OnPaymentTypeSelected> get copyWith => __$OnPaymentTypeSelectedCopyWithImpl<_OnPaymentTypeSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnPaymentTypeSelected&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType));
}


@override
int get hashCode => Object.hash(runtimeType,paymentType);

@override
String toString() {
  return 'CartEvent.onPaymentTypeSelected(paymentType: $paymentType)';
}


}

/// @nodoc
abstract mixin class _$OnPaymentTypeSelectedCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$OnPaymentTypeSelectedCopyWith(_OnPaymentTypeSelected value, $Res Function(_OnPaymentTypeSelected) _then) = __$OnPaymentTypeSelectedCopyWithImpl;
@useResult
$Res call({
 PaymentType? paymentType
});


$PaymentTypeCopyWith<$Res>? get paymentType;

}
/// @nodoc
class __$OnPaymentTypeSelectedCopyWithImpl<$Res>
    implements _$OnPaymentTypeSelectedCopyWith<$Res> {
  __$OnPaymentTypeSelectedCopyWithImpl(this._self, this._then);

  final _OnPaymentTypeSelected _self;
  final $Res Function(_OnPaymentTypeSelected) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? paymentType = freezed,}) {
  return _then(_OnPaymentTypeSelected(
freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType?,
  ));
}

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res>? get paymentType {
    if (_self.paymentType == null) {
    return null;
  }

  return $PaymentTypeCopyWith<$Res>(_self.paymentType!, (value) {
    return _then(_self.copyWith(paymentType: value));
  });
}
}

/// @nodoc


class _AddExpiredBarcode implements CartEvent {
  const _AddExpiredBarcode(this.barcode);
  

 final  RawBarcode barcode;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddExpiredBarcodeCopyWith<_AddExpiredBarcode> get copyWith => __$AddExpiredBarcodeCopyWithImpl<_AddExpiredBarcode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddExpiredBarcode&&(identical(other.barcode, barcode) || other.barcode == barcode));
}


@override
int get hashCode => Object.hash(runtimeType,barcode);

@override
String toString() {
  return 'CartEvent.addExpiredBarcode(barcode: $barcode)';
}


}

/// @nodoc
abstract mixin class _$AddExpiredBarcodeCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$AddExpiredBarcodeCopyWith(_AddExpiredBarcode value, $Res Function(_AddExpiredBarcode) _then) = __$AddExpiredBarcodeCopyWithImpl;
@useResult
$Res call({
 RawBarcode barcode
});


$RawBarcodeCopyWith<$Res> get barcode;

}
/// @nodoc
class __$AddExpiredBarcodeCopyWithImpl<$Res>
    implements _$AddExpiredBarcodeCopyWith<$Res> {
  __$AddExpiredBarcodeCopyWithImpl(this._self, this._then);

  final _AddExpiredBarcode _self;
  final $Res Function(_AddExpiredBarcode) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? barcode = null,}) {
  return _then(_AddExpiredBarcode(
null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as RawBarcode,
  ));
}

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RawBarcodeCopyWith<$Res> get barcode {
  
  return $RawBarcodeCopyWith<$Res>(_self.barcode, (value) {
    return _then(_self.copyWith(barcode: value));
  });
}
}

/// @nodoc


class _OnReopenFridge implements CartEvent {
  const _OnReopenFridge(this.fridgeId);
  

 final  dynamic fridgeId;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnReopenFridgeCopyWith<_OnReopenFridge> get copyWith => __$OnReopenFridgeCopyWithImpl<_OnReopenFridge>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnReopenFridge&&const DeepCollectionEquality().equals(other.fridgeId, fridgeId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(fridgeId));

@override
String toString() {
  return 'CartEvent.onReopenOpenFridge(fridgeId: $fridgeId)';
}


}

/// @nodoc
abstract mixin class _$OnReopenFridgeCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$OnReopenFridgeCopyWith(_OnReopenFridge value, $Res Function(_OnReopenFridge) _then) = __$OnReopenFridgeCopyWithImpl;
@useResult
$Res call({
 dynamic fridgeId
});




}
/// @nodoc
class __$OnReopenFridgeCopyWithImpl<$Res>
    implements _$OnReopenFridgeCopyWith<$Res> {
  __$OnReopenFridgeCopyWithImpl(this._self, this._then);

  final _OnReopenFridge _self;
  final $Res Function(_OnReopenFridge) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fridgeId = freezed,}) {
  return _then(_OnReopenFridge(
freezed == fridgeId ? _self.fridgeId : fridgeId // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc
mixin _$CartState {

 CartStateStatus get status; ScannerStatus get scannerStatus; List<CartItem> get products; double? get bonusesToSpent; double get orderPrice; String get currencySymbol; bool get canUseBonuses; bool get validToOrder; bool get validToChoosePayment; bool get useBonuses; bool get isCartRestored; PaymentType? get paymentType; bool get hasPaymentType; Store? get store; String? get fridgeId; bool get isFullBonusPayment; bool get canChangeBonuses;
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartStateCopyWith<CartState> get copyWith => _$CartStateCopyWithImpl<CartState>(this as CartState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState&&(identical(other.status, status) || other.status == status)&&(identical(other.scannerStatus, scannerStatus) || other.scannerStatus == scannerStatus)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.bonusesToSpent, bonusesToSpent) || other.bonusesToSpent == bonusesToSpent)&&(identical(other.orderPrice, orderPrice) || other.orderPrice == orderPrice)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol)&&(identical(other.canUseBonuses, canUseBonuses) || other.canUseBonuses == canUseBonuses)&&(identical(other.validToOrder, validToOrder) || other.validToOrder == validToOrder)&&(identical(other.validToChoosePayment, validToChoosePayment) || other.validToChoosePayment == validToChoosePayment)&&(identical(other.useBonuses, useBonuses) || other.useBonuses == useBonuses)&&(identical(other.isCartRestored, isCartRestored) || other.isCartRestored == isCartRestored)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.hasPaymentType, hasPaymentType) || other.hasPaymentType == hasPaymentType)&&(identical(other.store, store) || other.store == store)&&(identical(other.fridgeId, fridgeId) || other.fridgeId == fridgeId)&&(identical(other.isFullBonusPayment, isFullBonusPayment) || other.isFullBonusPayment == isFullBonusPayment)&&(identical(other.canChangeBonuses, canChangeBonuses) || other.canChangeBonuses == canChangeBonuses));
}


@override
int get hashCode => Object.hash(runtimeType,status,scannerStatus,const DeepCollectionEquality().hash(products),bonusesToSpent,orderPrice,currencySymbol,canUseBonuses,validToOrder,validToChoosePayment,useBonuses,isCartRestored,paymentType,hasPaymentType,store,fridgeId,isFullBonusPayment,canChangeBonuses);

@override
String toString() {
  return 'CartState(status: $status, scannerStatus: $scannerStatus, products: $products, bonusesToSpent: $bonusesToSpent, orderPrice: $orderPrice, currencySymbol: $currencySymbol, canUseBonuses: $canUseBonuses, validToOrder: $validToOrder, validToChoosePayment: $validToChoosePayment, useBonuses: $useBonuses, isCartRestored: $isCartRestored, paymentType: $paymentType, hasPaymentType: $hasPaymentType, store: $store, fridgeId: $fridgeId, isFullBonusPayment: $isFullBonusPayment, canChangeBonuses: $canChangeBonuses)';
}


}

/// @nodoc
abstract mixin class $CartStateCopyWith<$Res>  {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) _then) = _$CartStateCopyWithImpl;
@useResult
$Res call({
 CartStateStatus status, ScannerStatus scannerStatus, List<CartItem> products, double? bonusesToSpent, double orderPrice, String currencySymbol, bool canUseBonuses, bool validToOrder, bool validToChoosePayment, bool useBonuses, bool isCartRestored, PaymentType? paymentType, bool hasPaymentType, Store? store, String? fridgeId, bool isFullBonusPayment, bool canChangeBonuses
});


$PaymentTypeCopyWith<$Res>? get paymentType;$StoreCopyWith<$Res>? get store;

}
/// @nodoc
class _$CartStateCopyWithImpl<$Res>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._self, this._then);

  final CartState _self;
  final $Res Function(CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? scannerStatus = null,Object? products = null,Object? bonusesToSpent = freezed,Object? orderPrice = null,Object? currencySymbol = null,Object? canUseBonuses = null,Object? validToOrder = null,Object? validToChoosePayment = null,Object? useBonuses = null,Object? isCartRestored = null,Object? paymentType = freezed,Object? hasPaymentType = null,Object? store = freezed,Object? fridgeId = freezed,Object? isFullBonusPayment = null,Object? canChangeBonuses = null,}) {
  return _then(CartState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CartStateStatus,scannerStatus: null == scannerStatus ? _self.scannerStatus : scannerStatus // ignore: cast_nullable_to_non_nullable
as ScannerStatus,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<CartItem>,bonusesToSpent: freezed == bonusesToSpent ? _self.bonusesToSpent : bonusesToSpent // ignore: cast_nullable_to_non_nullable
as double?,orderPrice: null == orderPrice ? _self.orderPrice : orderPrice // ignore: cast_nullable_to_non_nullable
as double,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,canUseBonuses: null == canUseBonuses ? _self.canUseBonuses : canUseBonuses // ignore: cast_nullable_to_non_nullable
as bool,validToOrder: null == validToOrder ? _self.validToOrder : validToOrder // ignore: cast_nullable_to_non_nullable
as bool,validToChoosePayment: null == validToChoosePayment ? _self.validToChoosePayment : validToChoosePayment // ignore: cast_nullable_to_non_nullable
as bool,useBonuses: null == useBonuses ? _self.useBonuses : useBonuses // ignore: cast_nullable_to_non_nullable
as bool,isCartRestored: null == isCartRestored ? _self.isCartRestored : isCartRestored // ignore: cast_nullable_to_non_nullable
as bool,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType?,hasPaymentType: null == hasPaymentType ? _self.hasPaymentType : hasPaymentType // ignore: cast_nullable_to_non_nullable
as bool,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,fridgeId: freezed == fridgeId ? _self.fridgeId : fridgeId // ignore: cast_nullable_to_non_nullable
as String?,isFullBonusPayment: null == isFullBonusPayment ? _self.isFullBonusPayment : isFullBonusPayment // ignore: cast_nullable_to_non_nullable
as bool,canChangeBonuses: null == canChangeBonuses ? _self.canChangeBonuses : canChangeBonuses // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res>? get paymentType {
    if (_self.paymentType == null) {
    return null;
  }

  return $PaymentTypeCopyWith<$Res>(_self.paymentType!, (value) {
    return _then(_self.copyWith(paymentType: value));
  });
}/// Create a copy of CartState
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


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartState value)  $default,){
final _that = this;
switch (_that) {
case _CartState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartState value)?  $default,){
final _that = this;
switch (_that) {
case _CartState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CartStateStatus status,  ScannerStatus scannerStatus,  List<CartItem> products,  double? bonusesToSpent,  double orderPrice,  String currencySymbol,  bool canUseBonuses,  bool validToOrder,  bool validToChoosePayment,  bool useBonuses,  bool isCartRestored,  PaymentType? paymentType,  bool hasPaymentType,  Store? store,  String? fridgeId,  bool isFullBonusPayment,  bool canChangeBonuses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that.status,_that.scannerStatus,_that.products,_that.bonusesToSpent,_that.orderPrice,_that.currencySymbol,_that.canUseBonuses,_that.validToOrder,_that.validToChoosePayment,_that.useBonuses,_that.isCartRestored,_that.paymentType,_that.hasPaymentType,_that.store,_that.fridgeId,_that.isFullBonusPayment,_that.canChangeBonuses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CartStateStatus status,  ScannerStatus scannerStatus,  List<CartItem> products,  double? bonusesToSpent,  double orderPrice,  String currencySymbol,  bool canUseBonuses,  bool validToOrder,  bool validToChoosePayment,  bool useBonuses,  bool isCartRestored,  PaymentType? paymentType,  bool hasPaymentType,  Store? store,  String? fridgeId,  bool isFullBonusPayment,  bool canChangeBonuses)  $default,) {final _that = this;
switch (_that) {
case _CartState():
return $default(_that.status,_that.scannerStatus,_that.products,_that.bonusesToSpent,_that.orderPrice,_that.currencySymbol,_that.canUseBonuses,_that.validToOrder,_that.validToChoosePayment,_that.useBonuses,_that.isCartRestored,_that.paymentType,_that.hasPaymentType,_that.store,_that.fridgeId,_that.isFullBonusPayment,_that.canChangeBonuses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CartStateStatus status,  ScannerStatus scannerStatus,  List<CartItem> products,  double? bonusesToSpent,  double orderPrice,  String currencySymbol,  bool canUseBonuses,  bool validToOrder,  bool validToChoosePayment,  bool useBonuses,  bool isCartRestored,  PaymentType? paymentType,  bool hasPaymentType,  Store? store,  String? fridgeId,  bool isFullBonusPayment,  bool canChangeBonuses)?  $default,) {final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that.status,_that.scannerStatus,_that.products,_that.bonusesToSpent,_that.orderPrice,_that.currencySymbol,_that.canUseBonuses,_that.validToOrder,_that.validToChoosePayment,_that.useBonuses,_that.isCartRestored,_that.paymentType,_that.hasPaymentType,_that.store,_that.fridgeId,_that.isFullBonusPayment,_that.canChangeBonuses);case _:
  return null;

}
}

}

/// @nodoc


class _CartState implements CartState {
  const _CartState({this.status = CartStateStatus.init, this.scannerStatus = ScannerStatus.ready,  List<CartItem> products = const [], this.bonusesToSpent, this.orderPrice = 0.0, this.currencySymbol = 'BYN', this.canUseBonuses = false, this.validToOrder = false, this.validToChoosePayment = false, this.useBonuses = false, this.isCartRestored = false, this.paymentType, this.hasPaymentType = false, this.store, this.fridgeId, this.isFullBonusPayment = false, this.canChangeBonuses = true}): _products = products;
  

@override@JsonKey() final  CartStateStatus status;
@override@JsonKey() final  ScannerStatus scannerStatus;
 final  List<CartItem> _products;
@override@JsonKey() List<CartItem> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  double? bonusesToSpent;
@override@JsonKey() final  double orderPrice;
@override@JsonKey() final  String currencySymbol;
@override@JsonKey() final  bool canUseBonuses;
@override@JsonKey() final  bool validToOrder;
@override@JsonKey() final  bool validToChoosePayment;
@override@JsonKey() final  bool useBonuses;
@override@JsonKey() final  bool isCartRestored;
@override final  PaymentType? paymentType;
@override@JsonKey() final  bool hasPaymentType;
@override final  Store? store;
@override final  String? fridgeId;
@override@JsonKey() final  bool isFullBonusPayment;
@override@JsonKey() final  bool canChangeBonuses;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartStateCopyWith<_CartState> get copyWith => __$CartStateCopyWithImpl<_CartState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartState&&(identical(other.status, status) || other.status == status)&&(identical(other.scannerStatus, scannerStatus) || other.scannerStatus == scannerStatus)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.bonusesToSpent, bonusesToSpent) || other.bonusesToSpent == bonusesToSpent)&&(identical(other.orderPrice, orderPrice) || other.orderPrice == orderPrice)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol)&&(identical(other.canUseBonuses, canUseBonuses) || other.canUseBonuses == canUseBonuses)&&(identical(other.validToOrder, validToOrder) || other.validToOrder == validToOrder)&&(identical(other.validToChoosePayment, validToChoosePayment) || other.validToChoosePayment == validToChoosePayment)&&(identical(other.useBonuses, useBonuses) || other.useBonuses == useBonuses)&&(identical(other.isCartRestored, isCartRestored) || other.isCartRestored == isCartRestored)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.hasPaymentType, hasPaymentType) || other.hasPaymentType == hasPaymentType)&&(identical(other.store, store) || other.store == store)&&(identical(other.fridgeId, fridgeId) || other.fridgeId == fridgeId)&&(identical(other.isFullBonusPayment, isFullBonusPayment) || other.isFullBonusPayment == isFullBonusPayment)&&(identical(other.canChangeBonuses, canChangeBonuses) || other.canChangeBonuses == canChangeBonuses));
}


@override
int get hashCode => Object.hash(runtimeType,status,scannerStatus,const DeepCollectionEquality().hash(_products),bonusesToSpent,orderPrice,currencySymbol,canUseBonuses,validToOrder,validToChoosePayment,useBonuses,isCartRestored,paymentType,hasPaymentType,store,fridgeId,isFullBonusPayment,canChangeBonuses);

@override
String toString() {
  return 'CartState(status: $status, scannerStatus: $scannerStatus, products: $products, bonusesToSpent: $bonusesToSpent, orderPrice: $orderPrice, currencySymbol: $currencySymbol, canUseBonuses: $canUseBonuses, validToOrder: $validToOrder, validToChoosePayment: $validToChoosePayment, useBonuses: $useBonuses, isCartRestored: $isCartRestored, paymentType: $paymentType, hasPaymentType: $hasPaymentType, store: $store, fridgeId: $fridgeId, isFullBonusPayment: $isFullBonusPayment, canChangeBonuses: $canChangeBonuses)';
}


}

/// @nodoc
abstract mixin class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(_CartState value, $Res Function(_CartState) _then) = __$CartStateCopyWithImpl;
@override @useResult
$Res call({
 CartStateStatus status, ScannerStatus scannerStatus, List<CartItem> products, double? bonusesToSpent, double orderPrice, String currencySymbol, bool canUseBonuses, bool validToOrder, bool validToChoosePayment, bool useBonuses, bool isCartRestored, PaymentType? paymentType, bool hasPaymentType, Store? store, String? fridgeId, bool isFullBonusPayment, bool canChangeBonuses
});


@override $PaymentTypeCopyWith<$Res>? get paymentType;@override $StoreCopyWith<$Res>? get store;

}
/// @nodoc
class __$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(this._self, this._then);

  final _CartState _self;
  final $Res Function(_CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? scannerStatus = null,Object? products = null,Object? bonusesToSpent = freezed,Object? orderPrice = null,Object? currencySymbol = null,Object? canUseBonuses = null,Object? validToOrder = null,Object? validToChoosePayment = null,Object? useBonuses = null,Object? isCartRestored = null,Object? paymentType = freezed,Object? hasPaymentType = null,Object? store = freezed,Object? fridgeId = freezed,Object? isFullBonusPayment = null,Object? canChangeBonuses = null,}) {
  return _then(_CartState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CartStateStatus,scannerStatus: null == scannerStatus ? _self.scannerStatus : scannerStatus // ignore: cast_nullable_to_non_nullable
as ScannerStatus,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<CartItem>,bonusesToSpent: freezed == bonusesToSpent ? _self.bonusesToSpent : bonusesToSpent // ignore: cast_nullable_to_non_nullable
as double?,orderPrice: null == orderPrice ? _self.orderPrice : orderPrice // ignore: cast_nullable_to_non_nullable
as double,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,canUseBonuses: null == canUseBonuses ? _self.canUseBonuses : canUseBonuses // ignore: cast_nullable_to_non_nullable
as bool,validToOrder: null == validToOrder ? _self.validToOrder : validToOrder // ignore: cast_nullable_to_non_nullable
as bool,validToChoosePayment: null == validToChoosePayment ? _self.validToChoosePayment : validToChoosePayment // ignore: cast_nullable_to_non_nullable
as bool,useBonuses: null == useBonuses ? _self.useBonuses : useBonuses // ignore: cast_nullable_to_non_nullable
as bool,isCartRestored: null == isCartRestored ? _self.isCartRestored : isCartRestored // ignore: cast_nullable_to_non_nullable
as bool,paymentType: freezed == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType?,hasPaymentType: null == hasPaymentType ? _self.hasPaymentType : hasPaymentType // ignore: cast_nullable_to_non_nullable
as bool,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,fridgeId: freezed == fridgeId ? _self.fridgeId : fridgeId // ignore: cast_nullable_to_non_nullable
as String?,isFullBonusPayment: null == isFullBonusPayment ? _self.isFullBonusPayment : isFullBonusPayment // ignore: cast_nullable_to_non_nullable
as bool,canChangeBonuses: null == canChangeBonuses ? _self.canChangeBonuses : canChangeBonuses // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res>? get paymentType {
    if (_self.paymentType == null) {
    return null;
  }

  return $PaymentTypeCopyWith<$Res>(_self.paymentType!, (value) {
    return _then(_self.copyWith(paymentType: value));
  });
}/// Create a copy of CartState
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
mixin _$CartSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartSr()';
}


}

/// @nodoc
class $CartSrCopyWith<$Res>  {
$CartSrCopyWith(CartSr _, $Res Function(CartSr) __);
}


/// Adds pattern-matching-related methods to [CartSr].
extension CartSrPatterns on CartSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NewProductAddedSr value)?  newProductAdded,TResult Function( StoreNotSelected value)?  storeNotSelected,TResult Function( ErrorSr value)?  error,TResult Function( SubmitSr value)?  submit,TResult Function( CancelPaymentSr value)?  cancelPayment,TResult Function( ProcessPaymentSr value)?  processPayment,TResult Function( BarcodeNotFoundSr value)?  barcodeNotFound,TResult Function( ShowUnfinishedPurchaseOnboarding value)?  showUnfinishedPurchaseOnboarding,TResult Function( _ShowStoreListSr value)?  showStoreList,TResult Function( _ShowPaymentTypeList value)?  showPaymentTypeList,TResult Function( _ShowExpiredBarcodeAddingSr value)?  showExpiredBarcodeAdding,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NewProductAddedSr() when newProductAdded != null:
return newProductAdded(_that);case StoreNotSelected() when storeNotSelected != null:
return storeNotSelected(_that);case ErrorSr() when error != null:
return error(_that);case SubmitSr() when submit != null:
return submit(_that);case CancelPaymentSr() when cancelPayment != null:
return cancelPayment(_that);case ProcessPaymentSr() when processPayment != null:
return processPayment(_that);case BarcodeNotFoundSr() when barcodeNotFound != null:
return barcodeNotFound(_that);case ShowUnfinishedPurchaseOnboarding() when showUnfinishedPurchaseOnboarding != null:
return showUnfinishedPurchaseOnboarding(_that);case _ShowStoreListSr() when showStoreList != null:
return showStoreList(_that);case _ShowPaymentTypeList() when showPaymentTypeList != null:
return showPaymentTypeList(_that);case _ShowExpiredBarcodeAddingSr() when showExpiredBarcodeAdding != null:
return showExpiredBarcodeAdding(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NewProductAddedSr value)  newProductAdded,required TResult Function( StoreNotSelected value)  storeNotSelected,required TResult Function( ErrorSr value)  error,required TResult Function( SubmitSr value)  submit,required TResult Function( CancelPaymentSr value)  cancelPayment,required TResult Function( ProcessPaymentSr value)  processPayment,required TResult Function( BarcodeNotFoundSr value)  barcodeNotFound,required TResult Function( ShowUnfinishedPurchaseOnboarding value)  showUnfinishedPurchaseOnboarding,required TResult Function( _ShowStoreListSr value)  showStoreList,required TResult Function( _ShowPaymentTypeList value)  showPaymentTypeList,required TResult Function( _ShowExpiredBarcodeAddingSr value)  showExpiredBarcodeAdding,}){
final _that = this;
switch (_that) {
case NewProductAddedSr():
return newProductAdded(_that);case StoreNotSelected():
return storeNotSelected(_that);case ErrorSr():
return error(_that);case SubmitSr():
return submit(_that);case CancelPaymentSr():
return cancelPayment(_that);case ProcessPaymentSr():
return processPayment(_that);case BarcodeNotFoundSr():
return barcodeNotFound(_that);case ShowUnfinishedPurchaseOnboarding():
return showUnfinishedPurchaseOnboarding(_that);case _ShowStoreListSr():
return showStoreList(_that);case _ShowPaymentTypeList():
return showPaymentTypeList(_that);case _ShowExpiredBarcodeAddingSr():
return showExpiredBarcodeAdding(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NewProductAddedSr value)?  newProductAdded,TResult? Function( StoreNotSelected value)?  storeNotSelected,TResult? Function( ErrorSr value)?  error,TResult? Function( SubmitSr value)?  submit,TResult? Function( CancelPaymentSr value)?  cancelPayment,TResult? Function( ProcessPaymentSr value)?  processPayment,TResult? Function( BarcodeNotFoundSr value)?  barcodeNotFound,TResult? Function( ShowUnfinishedPurchaseOnboarding value)?  showUnfinishedPurchaseOnboarding,TResult? Function( _ShowStoreListSr value)?  showStoreList,TResult? Function( _ShowPaymentTypeList value)?  showPaymentTypeList,TResult? Function( _ShowExpiredBarcodeAddingSr value)?  showExpiredBarcodeAdding,}){
final _that = this;
switch (_that) {
case NewProductAddedSr() when newProductAdded != null:
return newProductAdded(_that);case StoreNotSelected() when storeNotSelected != null:
return storeNotSelected(_that);case ErrorSr() when error != null:
return error(_that);case SubmitSr() when submit != null:
return submit(_that);case CancelPaymentSr() when cancelPayment != null:
return cancelPayment(_that);case ProcessPaymentSr() when processPayment != null:
return processPayment(_that);case BarcodeNotFoundSr() when barcodeNotFound != null:
return barcodeNotFound(_that);case ShowUnfinishedPurchaseOnboarding() when showUnfinishedPurchaseOnboarding != null:
return showUnfinishedPurchaseOnboarding(_that);case _ShowStoreListSr() when showStoreList != null:
return showStoreList(_that);case _ShowPaymentTypeList() when showPaymentTypeList != null:
return showPaymentTypeList(_that);case _ShowExpiredBarcodeAddingSr() when showExpiredBarcodeAdding != null:
return showExpiredBarcodeAdding(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Product? product)?  newProductAdded,TResult Function()?  storeNotSelected,TResult Function( String error)?  error,TResult Function( OrderModel order)?  submit,TResult Function()?  cancelPayment,TResult Function( Payment payment,  String storeId)?  processPayment,TResult Function()?  barcodeNotFound,TResult Function()?  showUnfinishedPurchaseOnboarding,TResult Function()?  showStoreList,TResult Function( PaymentType? selected,  String storeId)?  showPaymentTypeList,TResult Function( RawBarcode barcode)?  showExpiredBarcodeAdding,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NewProductAddedSr() when newProductAdded != null:
return newProductAdded(_that.product);case StoreNotSelected() when storeNotSelected != null:
return storeNotSelected();case ErrorSr() when error != null:
return error(_that.error);case SubmitSr() when submit != null:
return submit(_that.order);case CancelPaymentSr() when cancelPayment != null:
return cancelPayment();case ProcessPaymentSr() when processPayment != null:
return processPayment(_that.payment,_that.storeId);case BarcodeNotFoundSr() when barcodeNotFound != null:
return barcodeNotFound();case ShowUnfinishedPurchaseOnboarding() when showUnfinishedPurchaseOnboarding != null:
return showUnfinishedPurchaseOnboarding();case _ShowStoreListSr() when showStoreList != null:
return showStoreList();case _ShowPaymentTypeList() when showPaymentTypeList != null:
return showPaymentTypeList(_that.selected,_that.storeId);case _ShowExpiredBarcodeAddingSr() when showExpiredBarcodeAdding != null:
return showExpiredBarcodeAdding(_that.barcode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Product? product)  newProductAdded,required TResult Function()  storeNotSelected,required TResult Function( String error)  error,required TResult Function( OrderModel order)  submit,required TResult Function()  cancelPayment,required TResult Function( Payment payment,  String storeId)  processPayment,required TResult Function()  barcodeNotFound,required TResult Function()  showUnfinishedPurchaseOnboarding,required TResult Function()  showStoreList,required TResult Function( PaymentType? selected,  String storeId)  showPaymentTypeList,required TResult Function( RawBarcode barcode)  showExpiredBarcodeAdding,}) {final _that = this;
switch (_that) {
case NewProductAddedSr():
return newProductAdded(_that.product);case StoreNotSelected():
return storeNotSelected();case ErrorSr():
return error(_that.error);case SubmitSr():
return submit(_that.order);case CancelPaymentSr():
return cancelPayment();case ProcessPaymentSr():
return processPayment(_that.payment,_that.storeId);case BarcodeNotFoundSr():
return barcodeNotFound();case ShowUnfinishedPurchaseOnboarding():
return showUnfinishedPurchaseOnboarding();case _ShowStoreListSr():
return showStoreList();case _ShowPaymentTypeList():
return showPaymentTypeList(_that.selected,_that.storeId);case _ShowExpiredBarcodeAddingSr():
return showExpiredBarcodeAdding(_that.barcode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Product? product)?  newProductAdded,TResult? Function()?  storeNotSelected,TResult? Function( String error)?  error,TResult? Function( OrderModel order)?  submit,TResult? Function()?  cancelPayment,TResult? Function( Payment payment,  String storeId)?  processPayment,TResult? Function()?  barcodeNotFound,TResult? Function()?  showUnfinishedPurchaseOnboarding,TResult? Function()?  showStoreList,TResult? Function( PaymentType? selected,  String storeId)?  showPaymentTypeList,TResult? Function( RawBarcode barcode)?  showExpiredBarcodeAdding,}) {final _that = this;
switch (_that) {
case NewProductAddedSr() when newProductAdded != null:
return newProductAdded(_that.product);case StoreNotSelected() when storeNotSelected != null:
return storeNotSelected();case ErrorSr() when error != null:
return error(_that.error);case SubmitSr() when submit != null:
return submit(_that.order);case CancelPaymentSr() when cancelPayment != null:
return cancelPayment();case ProcessPaymentSr() when processPayment != null:
return processPayment(_that.payment,_that.storeId);case BarcodeNotFoundSr() when barcodeNotFound != null:
return barcodeNotFound();case ShowUnfinishedPurchaseOnboarding() when showUnfinishedPurchaseOnboarding != null:
return showUnfinishedPurchaseOnboarding();case _ShowStoreListSr() when showStoreList != null:
return showStoreList();case _ShowPaymentTypeList() when showPaymentTypeList != null:
return showPaymentTypeList(_that.selected,_that.storeId);case _ShowExpiredBarcodeAddingSr() when showExpiredBarcodeAdding != null:
return showExpiredBarcodeAdding(_that.barcode);case _:
  return null;

}
}

}

/// @nodoc


class NewProductAddedSr implements CartSr {
  const NewProductAddedSr([this.product]);
  

 final  Product? product;

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewProductAddedSrCopyWith<NewProductAddedSr> get copyWith => _$NewProductAddedSrCopyWithImpl<NewProductAddedSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewProductAddedSr&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'CartSr.newProductAdded(product: $product)';
}


}

/// @nodoc
abstract mixin class $NewProductAddedSrCopyWith<$Res> implements $CartSrCopyWith<$Res> {
  factory $NewProductAddedSrCopyWith(NewProductAddedSr value, $Res Function(NewProductAddedSr) _then) = _$NewProductAddedSrCopyWithImpl;
@useResult
$Res call({
 Product? product
});


$ProductCopyWith<$Res>? get product;

}
/// @nodoc
class _$NewProductAddedSrCopyWithImpl<$Res>
    implements $NewProductAddedSrCopyWith<$Res> {
  _$NewProductAddedSrCopyWithImpl(this._self, this._then);

  final NewProductAddedSr _self;
  final $Res Function(NewProductAddedSr) _then;

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = freezed,}) {
  return _then(NewProductAddedSr(
freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,
  ));
}

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class StoreNotSelected implements CartSr {
  const StoreNotSelected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreNotSelected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartSr.storeNotSelected()';
}


}




/// @nodoc


class ErrorSr implements CartSr {
  const ErrorSr(this.error);
  

 final  String error;

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorSrCopyWith<ErrorSr> get copyWith => _$ErrorSrCopyWithImpl<ErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CartSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorSrCopyWith<$Res> implements $CartSrCopyWith<$Res> {
  factory $ErrorSrCopyWith(ErrorSr value, $Res Function(ErrorSr) _then) = _$ErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorSrCopyWithImpl<$Res>
    implements $ErrorSrCopyWith<$Res> {
  _$ErrorSrCopyWithImpl(this._self, this._then);

  final ErrorSr _self;
  final $Res Function(ErrorSr) _then;

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SubmitSr implements CartSr {
  const SubmitSr({required this.order});
  

 final  OrderModel order;

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitSrCopyWith<SubmitSr> get copyWith => _$SubmitSrCopyWithImpl<SubmitSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitSr&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'CartSr.submit(order: $order)';
}


}

/// @nodoc
abstract mixin class $SubmitSrCopyWith<$Res> implements $CartSrCopyWith<$Res> {
  factory $SubmitSrCopyWith(SubmitSr value, $Res Function(SubmitSr) _then) = _$SubmitSrCopyWithImpl;
@useResult
$Res call({
 OrderModel order
});


$OrderModelCopyWith<$Res> get order;

}
/// @nodoc
class _$SubmitSrCopyWithImpl<$Res>
    implements $SubmitSrCopyWith<$Res> {
  _$SubmitSrCopyWithImpl(this._self, this._then);

  final SubmitSr _self;
  final $Res Function(SubmitSr) _then;

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(SubmitSr(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderModel,
  ));
}

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res> get order {
  
  return $OrderModelCopyWith<$Res>(_self.order, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}

/// @nodoc


class CancelPaymentSr implements CartSr {
  const CancelPaymentSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelPaymentSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartSr.cancelPayment()';
}


}




/// @nodoc


class ProcessPaymentSr implements CartSr {
  const ProcessPaymentSr(this.payment, this.storeId);
  

 final  Payment payment;
 final  String storeId;

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcessPaymentSrCopyWith<ProcessPaymentSr> get copyWith => _$ProcessPaymentSrCopyWithImpl<ProcessPaymentSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessPaymentSr&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.storeId, storeId) || other.storeId == storeId));
}


@override
int get hashCode => Object.hash(runtimeType,payment,storeId);

@override
String toString() {
  return 'CartSr.processPayment(payment: $payment, storeId: $storeId)';
}


}

/// @nodoc
abstract mixin class $ProcessPaymentSrCopyWith<$Res> implements $CartSrCopyWith<$Res> {
  factory $ProcessPaymentSrCopyWith(ProcessPaymentSr value, $Res Function(ProcessPaymentSr) _then) = _$ProcessPaymentSrCopyWithImpl;
@useResult
$Res call({
 Payment payment, String storeId
});


$PaymentCopyWith<$Res> get payment;

}
/// @nodoc
class _$ProcessPaymentSrCopyWithImpl<$Res>
    implements $ProcessPaymentSrCopyWith<$Res> {
  _$ProcessPaymentSrCopyWithImpl(this._self, this._then);

  final ProcessPaymentSr _self;
  final $Res Function(ProcessPaymentSr) _then;

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? payment = null,Object? storeId = null,}) {
  return _then(ProcessPaymentSr(
null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as Payment,null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CartSr
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


class BarcodeNotFoundSr implements CartSr {
  const BarcodeNotFoundSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BarcodeNotFoundSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartSr.barcodeNotFound()';
}


}




/// @nodoc


class ShowUnfinishedPurchaseOnboarding implements CartSr {
  const ShowUnfinishedPurchaseOnboarding();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowUnfinishedPurchaseOnboarding);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartSr.showUnfinishedPurchaseOnboarding()';
}


}




/// @nodoc


class _ShowStoreListSr implements CartSr {
  const _ShowStoreListSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowStoreListSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartSr.showStoreList()';
}


}




/// @nodoc


class _ShowPaymentTypeList implements CartSr {
  const _ShowPaymentTypeList({this.selected, required this.storeId});
  

 final  PaymentType? selected;
 final  String storeId;

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowPaymentTypeListCopyWith<_ShowPaymentTypeList> get copyWith => __$ShowPaymentTypeListCopyWithImpl<_ShowPaymentTypeList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowPaymentTypeList&&(identical(other.selected, selected) || other.selected == selected)&&(identical(other.storeId, storeId) || other.storeId == storeId));
}


@override
int get hashCode => Object.hash(runtimeType,selected,storeId);

@override
String toString() {
  return 'CartSr.showPaymentTypeList(selected: $selected, storeId: $storeId)';
}


}

/// @nodoc
abstract mixin class _$ShowPaymentTypeListCopyWith<$Res> implements $CartSrCopyWith<$Res> {
  factory _$ShowPaymentTypeListCopyWith(_ShowPaymentTypeList value, $Res Function(_ShowPaymentTypeList) _then) = __$ShowPaymentTypeListCopyWithImpl;
@useResult
$Res call({
 PaymentType? selected, String storeId
});


$PaymentTypeCopyWith<$Res>? get selected;

}
/// @nodoc
class __$ShowPaymentTypeListCopyWithImpl<$Res>
    implements _$ShowPaymentTypeListCopyWith<$Res> {
  __$ShowPaymentTypeListCopyWithImpl(this._self, this._then);

  final _ShowPaymentTypeList _self;
  final $Res Function(_ShowPaymentTypeList) _then;

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selected = freezed,Object? storeId = null,}) {
  return _then(_ShowPaymentTypeList(
selected: freezed == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as PaymentType?,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res>? get selected {
    if (_self.selected == null) {
    return null;
  }

  return $PaymentTypeCopyWith<$Res>(_self.selected!, (value) {
    return _then(_self.copyWith(selected: value));
  });
}
}

/// @nodoc


class _ShowExpiredBarcodeAddingSr implements CartSr {
  const _ShowExpiredBarcodeAddingSr(this.barcode);
  

 final  RawBarcode barcode;

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowExpiredBarcodeAddingSrCopyWith<_ShowExpiredBarcodeAddingSr> get copyWith => __$ShowExpiredBarcodeAddingSrCopyWithImpl<_ShowExpiredBarcodeAddingSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowExpiredBarcodeAddingSr&&(identical(other.barcode, barcode) || other.barcode == barcode));
}


@override
int get hashCode => Object.hash(runtimeType,barcode);

@override
String toString() {
  return 'CartSr.showExpiredBarcodeAdding(barcode: $barcode)';
}


}

/// @nodoc
abstract mixin class _$ShowExpiredBarcodeAddingSrCopyWith<$Res> implements $CartSrCopyWith<$Res> {
  factory _$ShowExpiredBarcodeAddingSrCopyWith(_ShowExpiredBarcodeAddingSr value, $Res Function(_ShowExpiredBarcodeAddingSr) _then) = __$ShowExpiredBarcodeAddingSrCopyWithImpl;
@useResult
$Res call({
 RawBarcode barcode
});


$RawBarcodeCopyWith<$Res> get barcode;

}
/// @nodoc
class __$ShowExpiredBarcodeAddingSrCopyWithImpl<$Res>
    implements _$ShowExpiredBarcodeAddingSrCopyWith<$Res> {
  __$ShowExpiredBarcodeAddingSrCopyWithImpl(this._self, this._then);

  final _ShowExpiredBarcodeAddingSr _self;
  final $Res Function(_ShowExpiredBarcodeAddingSr) _then;

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? barcode = null,}) {
  return _then(_ShowExpiredBarcodeAddingSr(
null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as RawBarcode,
  ));
}

/// Create a copy of CartSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RawBarcodeCopyWith<$Res> get barcode {
  
  return $RawBarcodeCopyWith<$Res>(_self.barcode, (value) {
    return _then(_self.copyWith(barcode: value));
  });
}
}

// dart format on
