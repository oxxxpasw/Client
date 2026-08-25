// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_purchase_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LastPurchaseState {

 UnfinishedPurchase? get unfinishedPurchase; AcceptedOrder? get unpaidOrder; bool get showFeedbackBanner;
/// Create a copy of LastPurchaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastPurchaseStateCopyWith<LastPurchaseState> get copyWith => _$LastPurchaseStateCopyWithImpl<LastPurchaseState>(this as LastPurchaseState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastPurchaseState&&(identical(other.unfinishedPurchase, unfinishedPurchase) || other.unfinishedPurchase == unfinishedPurchase)&&(identical(other.unpaidOrder, unpaidOrder) || other.unpaidOrder == unpaidOrder)&&(identical(other.showFeedbackBanner, showFeedbackBanner) || other.showFeedbackBanner == showFeedbackBanner));
}


@override
int get hashCode => Object.hash(runtimeType,unfinishedPurchase,unpaidOrder,showFeedbackBanner);

@override
String toString() {
  return 'LastPurchaseState(unfinishedPurchase: $unfinishedPurchase, unpaidOrder: $unpaidOrder, showFeedbackBanner: $showFeedbackBanner)';
}


}

/// @nodoc
abstract mixin class $LastPurchaseStateCopyWith<$Res>  {
  factory $LastPurchaseStateCopyWith(LastPurchaseState value, $Res Function(LastPurchaseState) _then) = _$LastPurchaseStateCopyWithImpl;
@useResult
$Res call({
 UnfinishedPurchase? unfinishedPurchase, AcceptedOrder? unpaidOrder, bool showFeedbackBanner
});


$UnfinishedPurchaseCopyWith<$Res>? get unfinishedPurchase;$AcceptedOrderCopyWith<$Res>? get unpaidOrder;

}
/// @nodoc
class _$LastPurchaseStateCopyWithImpl<$Res>
    implements $LastPurchaseStateCopyWith<$Res> {
  _$LastPurchaseStateCopyWithImpl(this._self, this._then);

  final LastPurchaseState _self;
  final $Res Function(LastPurchaseState) _then;

/// Create a copy of LastPurchaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unfinishedPurchase = freezed,Object? unpaidOrder = freezed,Object? showFeedbackBanner = null,}) {
  return _then(LastPurchaseState(
unfinishedPurchase: freezed == unfinishedPurchase ? _self.unfinishedPurchase : unfinishedPurchase // ignore: cast_nullable_to_non_nullable
as UnfinishedPurchase?,unpaidOrder: freezed == unpaidOrder ? _self.unpaidOrder : unpaidOrder // ignore: cast_nullable_to_non_nullable
as AcceptedOrder?,showFeedbackBanner: null == showFeedbackBanner ? _self.showFeedbackBanner : showFeedbackBanner // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of LastPurchaseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UnfinishedPurchaseCopyWith<$Res>? get unfinishedPurchase {
    if (_self.unfinishedPurchase == null) {
    return null;
  }

  return $UnfinishedPurchaseCopyWith<$Res>(_self.unfinishedPurchase!, (value) {
    return _then(_self.copyWith(unfinishedPurchase: value));
  });
}/// Create a copy of LastPurchaseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcceptedOrderCopyWith<$Res>? get unpaidOrder {
    if (_self.unpaidOrder == null) {
    return null;
  }

  return $AcceptedOrderCopyWith<$Res>(_self.unpaidOrder!, (value) {
    return _then(_self.copyWith(unpaidOrder: value));
  });
}
}


/// Adds pattern-matching-related methods to [LastPurchaseState].
extension LastPurchaseStatePatterns on LastPurchaseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LastPurchaseState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LastPurchaseState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LastPurchaseState value)  $default,){
final _that = this;
switch (_that) {
case _LastPurchaseState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LastPurchaseState value)?  $default,){
final _that = this;
switch (_that) {
case _LastPurchaseState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UnfinishedPurchase? unfinishedPurchase,  AcceptedOrder? unpaidOrder,  bool showFeedbackBanner)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LastPurchaseState() when $default != null:
return $default(_that.unfinishedPurchase,_that.unpaidOrder,_that.showFeedbackBanner);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UnfinishedPurchase? unfinishedPurchase,  AcceptedOrder? unpaidOrder,  bool showFeedbackBanner)  $default,) {final _that = this;
switch (_that) {
case _LastPurchaseState():
return $default(_that.unfinishedPurchase,_that.unpaidOrder,_that.showFeedbackBanner);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UnfinishedPurchase? unfinishedPurchase,  AcceptedOrder? unpaidOrder,  bool showFeedbackBanner)?  $default,) {final _that = this;
switch (_that) {
case _LastPurchaseState() when $default != null:
return $default(_that.unfinishedPurchase,_that.unpaidOrder,_that.showFeedbackBanner);case _:
  return null;

}
}

}

/// @nodoc


class _LastPurchaseState extends LastPurchaseState {
  const _LastPurchaseState({this.unfinishedPurchase, this.unpaidOrder, this.showFeedbackBanner = false}): super._();
  

@override final  UnfinishedPurchase? unfinishedPurchase;
@override final  AcceptedOrder? unpaidOrder;
@override@JsonKey() final  bool showFeedbackBanner;

/// Create a copy of LastPurchaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastPurchaseStateCopyWith<_LastPurchaseState> get copyWith => __$LastPurchaseStateCopyWithImpl<_LastPurchaseState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastPurchaseState&&(identical(other.unfinishedPurchase, unfinishedPurchase) || other.unfinishedPurchase == unfinishedPurchase)&&(identical(other.unpaidOrder, unpaidOrder) || other.unpaidOrder == unpaidOrder)&&(identical(other.showFeedbackBanner, showFeedbackBanner) || other.showFeedbackBanner == showFeedbackBanner));
}


@override
int get hashCode => Object.hash(runtimeType,unfinishedPurchase,unpaidOrder,showFeedbackBanner);

@override
String toString() {
  return 'LastPurchaseState(unfinishedPurchase: $unfinishedPurchase, unpaidOrder: $unpaidOrder, showFeedbackBanner: $showFeedbackBanner)';
}


}

/// @nodoc
abstract mixin class _$LastPurchaseStateCopyWith<$Res> implements $LastPurchaseStateCopyWith<$Res> {
  factory _$LastPurchaseStateCopyWith(_LastPurchaseState value, $Res Function(_LastPurchaseState) _then) = __$LastPurchaseStateCopyWithImpl;
@override @useResult
$Res call({
 UnfinishedPurchase? unfinishedPurchase, AcceptedOrder? unpaidOrder, bool showFeedbackBanner
});


@override $UnfinishedPurchaseCopyWith<$Res>? get unfinishedPurchase;@override $AcceptedOrderCopyWith<$Res>? get unpaidOrder;

}
/// @nodoc
class __$LastPurchaseStateCopyWithImpl<$Res>
    implements _$LastPurchaseStateCopyWith<$Res> {
  __$LastPurchaseStateCopyWithImpl(this._self, this._then);

  final _LastPurchaseState _self;
  final $Res Function(_LastPurchaseState) _then;

/// Create a copy of LastPurchaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unfinishedPurchase = freezed,Object? unpaidOrder = freezed,Object? showFeedbackBanner = null,}) {
  return _then(_LastPurchaseState(
unfinishedPurchase: freezed == unfinishedPurchase ? _self.unfinishedPurchase : unfinishedPurchase // ignore: cast_nullable_to_non_nullable
as UnfinishedPurchase?,unpaidOrder: freezed == unpaidOrder ? _self.unpaidOrder : unpaidOrder // ignore: cast_nullable_to_non_nullable
as AcceptedOrder?,showFeedbackBanner: null == showFeedbackBanner ? _self.showFeedbackBanner : showFeedbackBanner // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of LastPurchaseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UnfinishedPurchaseCopyWith<$Res>? get unfinishedPurchase {
    if (_self.unfinishedPurchase == null) {
    return null;
  }

  return $UnfinishedPurchaseCopyWith<$Res>(_self.unfinishedPurchase!, (value) {
    return _then(_self.copyWith(unfinishedPurchase: value));
  });
}/// Create a copy of LastPurchaseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcceptedOrderCopyWith<$Res>? get unpaidOrder {
    if (_self.unpaidOrder == null) {
    return null;
  }

  return $AcceptedOrderCopyWith<$Res>(_self.unpaidOrder!, (value) {
    return _then(_self.copyWith(unpaidOrder: value));
  });
}
}

/// @nodoc
mixin _$LastPurchaseSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastPurchaseSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LastPurchaseSr()';
}


}

/// @nodoc
class $LastPurchaseSrCopyWith<$Res>  {
$LastPurchaseSrCopyWith(LastPurchaseSr _, $Res Function(LastPurchaseSr) __);
}


/// Adds pattern-matching-related methods to [LastPurchaseSr].
extension LastPurchaseSrPatterns on LastPurchaseSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OpenUnpaidOrderDetailsSr value)?  openUnpaidOrderDetails,TResult Function( OpenFridgeQrScanner value)?  openFridgeQrScanner,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OpenUnpaidOrderDetailsSr() when openUnpaidOrderDetails != null:
return openUnpaidOrderDetails(_that);case OpenFridgeQrScanner() when openFridgeQrScanner != null:
return openFridgeQrScanner(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OpenUnpaidOrderDetailsSr value)  openUnpaidOrderDetails,required TResult Function( OpenFridgeQrScanner value)  openFridgeQrScanner,}){
final _that = this;
switch (_that) {
case OpenUnpaidOrderDetailsSr():
return openUnpaidOrderDetails(_that);case OpenFridgeQrScanner():
return openFridgeQrScanner(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OpenUnpaidOrderDetailsSr value)?  openUnpaidOrderDetails,TResult? Function( OpenFridgeQrScanner value)?  openFridgeQrScanner,}){
final _that = this;
switch (_that) {
case OpenUnpaidOrderDetailsSr() when openUnpaidOrderDetails != null:
return openUnpaidOrderDetails(_that);case OpenFridgeQrScanner() when openFridgeQrScanner != null:
return openFridgeQrScanner(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  openUnpaidOrderDetails,TResult Function()?  openFridgeQrScanner,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OpenUnpaidOrderDetailsSr() when openUnpaidOrderDetails != null:
return openUnpaidOrderDetails();case OpenFridgeQrScanner() when openFridgeQrScanner != null:
return openFridgeQrScanner();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  openUnpaidOrderDetails,required TResult Function()  openFridgeQrScanner,}) {final _that = this;
switch (_that) {
case OpenUnpaidOrderDetailsSr():
return openUnpaidOrderDetails();case OpenFridgeQrScanner():
return openFridgeQrScanner();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  openUnpaidOrderDetails,TResult? Function()?  openFridgeQrScanner,}) {final _that = this;
switch (_that) {
case OpenUnpaidOrderDetailsSr() when openUnpaidOrderDetails != null:
return openUnpaidOrderDetails();case OpenFridgeQrScanner() when openFridgeQrScanner != null:
return openFridgeQrScanner();case _:
  return null;

}
}

}

/// @nodoc


class OpenUnpaidOrderDetailsSr implements LastPurchaseSr {
  const OpenUnpaidOrderDetailsSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenUnpaidOrderDetailsSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LastPurchaseSr.openUnpaidOrderDetails()';
}


}




/// @nodoc


class OpenFridgeQrScanner implements LastPurchaseSr {
  const OpenFridgeQrScanner();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenFridgeQrScanner);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LastPurchaseSr.openFridgeQrScanner()';
}


}




/// @nodoc
mixin _$UnfinishedPurchase {

 bool get hasProducts; dynamic get summ; dynamic get currencySymbol;
/// Create a copy of UnfinishedPurchase
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnfinishedPurchaseCopyWith<UnfinishedPurchase> get copyWith => _$UnfinishedPurchaseCopyWithImpl<UnfinishedPurchase>(this as UnfinishedPurchase, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnfinishedPurchase&&(identical(other.hasProducts, hasProducts) || other.hasProducts == hasProducts)&&const DeepCollectionEquality().equals(other.summ, summ)&&const DeepCollectionEquality().equals(other.currencySymbol, currencySymbol));
}


@override
int get hashCode => Object.hash(runtimeType,hasProducts,const DeepCollectionEquality().hash(summ),const DeepCollectionEquality().hash(currencySymbol));

@override
String toString() {
  return 'UnfinishedPurchase(hasProducts: $hasProducts, summ: $summ, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class $UnfinishedPurchaseCopyWith<$Res>  {
  factory $UnfinishedPurchaseCopyWith(UnfinishedPurchase value, $Res Function(UnfinishedPurchase) _then) = _$UnfinishedPurchaseCopyWithImpl;
@useResult
$Res call({
 bool hasProducts, dynamic summ, dynamic currencySymbol
});




}
/// @nodoc
class _$UnfinishedPurchaseCopyWithImpl<$Res>
    implements $UnfinishedPurchaseCopyWith<$Res> {
  _$UnfinishedPurchaseCopyWithImpl(this._self, this._then);

  final UnfinishedPurchase _self;
  final $Res Function(UnfinishedPurchase) _then;

/// Create a copy of UnfinishedPurchase
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasProducts = null,Object? summ = freezed,Object? currencySymbol = freezed,}) {
  return _then(UnfinishedPurchase(
hasProducts: null == hasProducts ? _self.hasProducts : hasProducts // ignore: cast_nullable_to_non_nullable
as bool,summ: freezed == summ ? _self.summ : summ // ignore: cast_nullable_to_non_nullable
as dynamic,currencySymbol: freezed == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [UnfinishedPurchase].
extension UnfinishedPurchasePatterns on UnfinishedPurchase {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnfinishedPurchase value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnfinishedPurchase() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnfinishedPurchase value)  $default,){
final _that = this;
switch (_that) {
case _UnfinishedPurchase():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnfinishedPurchase value)?  $default,){
final _that = this;
switch (_that) {
case _UnfinishedPurchase() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool hasProducts,  dynamic summ,  dynamic currencySymbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnfinishedPurchase() when $default != null:
return $default(_that.hasProducts,_that.summ,_that.currencySymbol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool hasProducts,  dynamic summ,  dynamic currencySymbol)  $default,) {final _that = this;
switch (_that) {
case _UnfinishedPurchase():
return $default(_that.hasProducts,_that.summ,_that.currencySymbol);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool hasProducts,  dynamic summ,  dynamic currencySymbol)?  $default,) {final _that = this;
switch (_that) {
case _UnfinishedPurchase() when $default != null:
return $default(_that.hasProducts,_that.summ,_that.currencySymbol);case _:
  return null;

}
}

}

/// @nodoc


class _UnfinishedPurchase implements UnfinishedPurchase {
  const _UnfinishedPurchase({this.hasProducts = false, this.summ = 0.0, this.currencySymbol = "BYN"});
  

@override@JsonKey() final  bool hasProducts;
@override@JsonKey() final  dynamic summ;
@override@JsonKey() final  dynamic currencySymbol;

/// Create a copy of UnfinishedPurchase
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnfinishedPurchaseCopyWith<_UnfinishedPurchase> get copyWith => __$UnfinishedPurchaseCopyWithImpl<_UnfinishedPurchase>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnfinishedPurchase&&(identical(other.hasProducts, hasProducts) || other.hasProducts == hasProducts)&&const DeepCollectionEquality().equals(other.summ, summ)&&const DeepCollectionEquality().equals(other.currencySymbol, currencySymbol));
}


@override
int get hashCode => Object.hash(runtimeType,hasProducts,const DeepCollectionEquality().hash(summ),const DeepCollectionEquality().hash(currencySymbol));

@override
String toString() {
  return 'UnfinishedPurchase(hasProducts: $hasProducts, summ: $summ, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class _$UnfinishedPurchaseCopyWith<$Res> implements $UnfinishedPurchaseCopyWith<$Res> {
  factory _$UnfinishedPurchaseCopyWith(_UnfinishedPurchase value, $Res Function(_UnfinishedPurchase) _then) = __$UnfinishedPurchaseCopyWithImpl;
@override @useResult
$Res call({
 bool hasProducts, dynamic summ, dynamic currencySymbol
});




}
/// @nodoc
class __$UnfinishedPurchaseCopyWithImpl<$Res>
    implements _$UnfinishedPurchaseCopyWith<$Res> {
  __$UnfinishedPurchaseCopyWithImpl(this._self, this._then);

  final _UnfinishedPurchase _self;
  final $Res Function(_UnfinishedPurchase) _then;

/// Create a copy of UnfinishedPurchase
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasProducts = null,Object? summ = freezed,Object? currencySymbol = freezed,}) {
  return _then(_UnfinishedPurchase(
hasProducts: null == hasProducts ? _self.hasProducts : hasProducts // ignore: cast_nullable_to_non_nullable
as bool,summ: freezed == summ ? _self.summ : summ // ignore: cast_nullable_to_non_nullable
as dynamic,currencySymbol: freezed == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
