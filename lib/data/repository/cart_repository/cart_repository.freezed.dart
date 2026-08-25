// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartData implements DiagnosticableTreeMixin {

 List<CartItem> get products; Store? get store; bool get useBonuses; bool get canUseBonuses; int? get id; String? get fridgeId; String? get coffeeMachineId; User? get user; double? get summ; double? get summWithoutDiscount; double? get bonusesCanSpent; CustomerApiPurchase? get purchase;
/// Create a copy of CartData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartDataCopyWith<CartData> get copyWith => _$CartDataCopyWithImpl<CartData>(this as CartData, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CartData'))
    ..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('store', store))..add(DiagnosticsProperty('useBonuses', useBonuses))..add(DiagnosticsProperty('canUseBonuses', canUseBonuses))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('fridgeId', fridgeId))..add(DiagnosticsProperty('coffeeMachineId', coffeeMachineId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('summ', summ))..add(DiagnosticsProperty('summWithoutDiscount', summWithoutDiscount))..add(DiagnosticsProperty('bonusesCanSpent', bonusesCanSpent))..add(DiagnosticsProperty('purchase', purchase));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartData&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.store, store) || other.store == store)&&(identical(other.useBonuses, useBonuses) || other.useBonuses == useBonuses)&&(identical(other.canUseBonuses, canUseBonuses) || other.canUseBonuses == canUseBonuses)&&(identical(other.id, id) || other.id == id)&&(identical(other.fridgeId, fridgeId) || other.fridgeId == fridgeId)&&(identical(other.coffeeMachineId, coffeeMachineId) || other.coffeeMachineId == coffeeMachineId)&&(identical(other.user, user) || other.user == user)&&(identical(other.summ, summ) || other.summ == summ)&&(identical(other.summWithoutDiscount, summWithoutDiscount) || other.summWithoutDiscount == summWithoutDiscount)&&(identical(other.bonusesCanSpent, bonusesCanSpent) || other.bonusesCanSpent == bonusesCanSpent)&&(identical(other.purchase, purchase) || other.purchase == purchase));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),store,useBonuses,canUseBonuses,id,fridgeId,coffeeMachineId,user,summ,summWithoutDiscount,bonusesCanSpent,purchase);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CartData(products: $products, store: $store, useBonuses: $useBonuses, canUseBonuses: $canUseBonuses, id: $id, fridgeId: $fridgeId, coffeeMachineId: $coffeeMachineId, user: $user, summ: $summ, summWithoutDiscount: $summWithoutDiscount, bonusesCanSpent: $bonusesCanSpent, purchase: $purchase)';
}


}

/// @nodoc
abstract mixin class $CartDataCopyWith<$Res>  {
  factory $CartDataCopyWith(CartData value, $Res Function(CartData) _then) = _$CartDataCopyWithImpl;
@useResult
$Res call({
 List<CartItem> products, Store? store, bool useBonuses, bool canUseBonuses, int? id, String? fridgeId, String? coffeeMachineId, User? user, double? summ, double? summWithoutDiscount, double? bonusesCanSpent, CustomerApiPurchase? purchase
});


$StoreCopyWith<$Res>? get store;$UserCopyWith<$Res>? get user;$CustomerApiPurchaseCopyWith<$Res>? get purchase;

}
/// @nodoc
class _$CartDataCopyWithImpl<$Res>
    implements $CartDataCopyWith<$Res> {
  _$CartDataCopyWithImpl(this._self, this._then);

  final CartData _self;
  final $Res Function(CartData) _then;

/// Create a copy of CartData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? store = freezed,Object? useBonuses = null,Object? canUseBonuses = null,Object? id = freezed,Object? fridgeId = freezed,Object? coffeeMachineId = freezed,Object? user = freezed,Object? summ = freezed,Object? summWithoutDiscount = freezed,Object? bonusesCanSpent = freezed,Object? purchase = freezed,}) {
  return _then(CartData(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<CartItem>,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,useBonuses: null == useBonuses ? _self.useBonuses : useBonuses // ignore: cast_nullable_to_non_nullable
as bool,canUseBonuses: null == canUseBonuses ? _self.canUseBonuses : canUseBonuses // ignore: cast_nullable_to_non_nullable
as bool,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,fridgeId: freezed == fridgeId ? _self.fridgeId : fridgeId // ignore: cast_nullable_to_non_nullable
as String?,coffeeMachineId: freezed == coffeeMachineId ? _self.coffeeMachineId : coffeeMachineId // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,summ: freezed == summ ? _self.summ : summ // ignore: cast_nullable_to_non_nullable
as double?,summWithoutDiscount: freezed == summWithoutDiscount ? _self.summWithoutDiscount : summWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double?,bonusesCanSpent: freezed == bonusesCanSpent ? _self.bonusesCanSpent : bonusesCanSpent // ignore: cast_nullable_to_non_nullable
as double?,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as CustomerApiPurchase?,
  ));
}
/// Create a copy of CartData
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
}/// Create a copy of CartData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of CartData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerApiPurchaseCopyWith<$Res>? get purchase {
    if (_self.purchase == null) {
    return null;
  }

  return $CustomerApiPurchaseCopyWith<$Res>(_self.purchase!, (value) {
    return _then(_self.copyWith(purchase: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartData].
extension CartDataPatterns on CartData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartData value)  $default,){
final _that = this;
switch (_that) {
case _CartData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartData value)?  $default,){
final _that = this;
switch (_that) {
case _CartData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartItem> products,  Store? store,  bool useBonuses,  bool canUseBonuses,  int? id,  String? fridgeId,  String? coffeeMachineId,  User? user,  double? summ,  double? summWithoutDiscount,  double? bonusesCanSpent,  CustomerApiPurchase? purchase)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartData() when $default != null:
return $default(_that.products,_that.store,_that.useBonuses,_that.canUseBonuses,_that.id,_that.fridgeId,_that.coffeeMachineId,_that.user,_that.summ,_that.summWithoutDiscount,_that.bonusesCanSpent,_that.purchase);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartItem> products,  Store? store,  bool useBonuses,  bool canUseBonuses,  int? id,  String? fridgeId,  String? coffeeMachineId,  User? user,  double? summ,  double? summWithoutDiscount,  double? bonusesCanSpent,  CustomerApiPurchase? purchase)  $default,) {final _that = this;
switch (_that) {
case _CartData():
return $default(_that.products,_that.store,_that.useBonuses,_that.canUseBonuses,_that.id,_that.fridgeId,_that.coffeeMachineId,_that.user,_that.summ,_that.summWithoutDiscount,_that.bonusesCanSpent,_that.purchase);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartItem> products,  Store? store,  bool useBonuses,  bool canUseBonuses,  int? id,  String? fridgeId,  String? coffeeMachineId,  User? user,  double? summ,  double? summWithoutDiscount,  double? bonusesCanSpent,  CustomerApiPurchase? purchase)?  $default,) {final _that = this;
switch (_that) {
case _CartData() when $default != null:
return $default(_that.products,_that.store,_that.useBonuses,_that.canUseBonuses,_that.id,_that.fridgeId,_that.coffeeMachineId,_that.user,_that.summ,_that.summWithoutDiscount,_that.bonusesCanSpent,_that.purchase);case _:
  return null;

}
}

}

/// @nodoc


class _CartData extends CartData with DiagnosticableTreeMixin {
  const _CartData({required this.products, required this.store, this.useBonuses = false, this.canUseBonuses = false, this.id, this.fridgeId, this.coffeeMachineId, this.user, this.summ, this.summWithoutDiscount, this.bonusesCanSpent, this.purchase}): super._();
  

@override final  List<CartItem> products;
@override final  Store? store;
@override@JsonKey() final  bool useBonuses;
@override@JsonKey() final  bool canUseBonuses;
@override final  int? id;
@override final  String? fridgeId;
@override final  String? coffeeMachineId;
@override final  User? user;
@override final  double? summ;
@override final  double? summWithoutDiscount;
@override final  double? bonusesCanSpent;
@override final  CustomerApiPurchase? purchase;

/// Create a copy of CartData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartDataCopyWith<_CartData> get copyWith => __$CartDataCopyWithImpl<_CartData>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CartData'))
    ..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('store', store))..add(DiagnosticsProperty('useBonuses', useBonuses))..add(DiagnosticsProperty('canUseBonuses', canUseBonuses))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('fridgeId', fridgeId))..add(DiagnosticsProperty('coffeeMachineId', coffeeMachineId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('summ', summ))..add(DiagnosticsProperty('summWithoutDiscount', summWithoutDiscount))..add(DiagnosticsProperty('bonusesCanSpent', bonusesCanSpent))..add(DiagnosticsProperty('purchase', purchase));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartData&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.store, store) || other.store == store)&&(identical(other.useBonuses, useBonuses) || other.useBonuses == useBonuses)&&(identical(other.canUseBonuses, canUseBonuses) || other.canUseBonuses == canUseBonuses)&&(identical(other.id, id) || other.id == id)&&(identical(other.fridgeId, fridgeId) || other.fridgeId == fridgeId)&&(identical(other.coffeeMachineId, coffeeMachineId) || other.coffeeMachineId == coffeeMachineId)&&(identical(other.user, user) || other.user == user)&&(identical(other.summ, summ) || other.summ == summ)&&(identical(other.summWithoutDiscount, summWithoutDiscount) || other.summWithoutDiscount == summWithoutDiscount)&&(identical(other.bonusesCanSpent, bonusesCanSpent) || other.bonusesCanSpent == bonusesCanSpent)&&(identical(other.purchase, purchase) || other.purchase == purchase));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),store,useBonuses,canUseBonuses,id,fridgeId,coffeeMachineId,user,summ,summWithoutDiscount,bonusesCanSpent,purchase);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CartData(products: $products, store: $store, useBonuses: $useBonuses, canUseBonuses: $canUseBonuses, id: $id, fridgeId: $fridgeId, coffeeMachineId: $coffeeMachineId, user: $user, summ: $summ, summWithoutDiscount: $summWithoutDiscount, bonusesCanSpent: $bonusesCanSpent, purchase: $purchase)';
}


}

/// @nodoc
abstract mixin class _$CartDataCopyWith<$Res> implements $CartDataCopyWith<$Res> {
  factory _$CartDataCopyWith(_CartData value, $Res Function(_CartData) _then) = __$CartDataCopyWithImpl;
@override @useResult
$Res call({
 List<CartItem> products, Store? store, bool useBonuses, bool canUseBonuses, int? id, String? fridgeId, String? coffeeMachineId, User? user, double? summ, double? summWithoutDiscount, double? bonusesCanSpent, CustomerApiPurchase? purchase
});


@override $StoreCopyWith<$Res>? get store;@override $UserCopyWith<$Res>? get user;@override $CustomerApiPurchaseCopyWith<$Res>? get purchase;

}
/// @nodoc
class __$CartDataCopyWithImpl<$Res>
    implements _$CartDataCopyWith<$Res> {
  __$CartDataCopyWithImpl(this._self, this._then);

  final _CartData _self;
  final $Res Function(_CartData) _then;

/// Create a copy of CartData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? store = freezed,Object? useBonuses = null,Object? canUseBonuses = null,Object? id = freezed,Object? fridgeId = freezed,Object? coffeeMachineId = freezed,Object? user = freezed,Object? summ = freezed,Object? summWithoutDiscount = freezed,Object? bonusesCanSpent = freezed,Object? purchase = freezed,}) {
  return _then(_CartData(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<CartItem>,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,useBonuses: null == useBonuses ? _self.useBonuses : useBonuses // ignore: cast_nullable_to_non_nullable
as bool,canUseBonuses: null == canUseBonuses ? _self.canUseBonuses : canUseBonuses // ignore: cast_nullable_to_non_nullable
as bool,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,fridgeId: freezed == fridgeId ? _self.fridgeId : fridgeId // ignore: cast_nullable_to_non_nullable
as String?,coffeeMachineId: freezed == coffeeMachineId ? _self.coffeeMachineId : coffeeMachineId // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,summ: freezed == summ ? _self.summ : summ // ignore: cast_nullable_to_non_nullable
as double?,summWithoutDiscount: freezed == summWithoutDiscount ? _self.summWithoutDiscount : summWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double?,bonusesCanSpent: freezed == bonusesCanSpent ? _self.bonusesCanSpent : bonusesCanSpent // ignore: cast_nullable_to_non_nullable
as double?,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as CustomerApiPurchase?,
  ));
}

/// Create a copy of CartData
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
}/// Create a copy of CartData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of CartData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerApiPurchaseCopyWith<$Res>? get purchase {
    if (_self.purchase == null) {
    return null;
  }

  return $CustomerApiPurchaseCopyWith<$Res>(_self.purchase!, (value) {
    return _then(_self.copyWith(purchase: value));
  });
}
}

/// @nodoc
mixin _$CartData2 implements DiagnosticableTreeMixin {

 List<CartItem> get products; Store? get store; CoffeeMachine? get coffeeMachine; bool get useBonuses; String? get fridgeId; User? get user; int? get id;
/// Create a copy of CartData2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartData2CopyWith<CartData2> get copyWith => _$CartData2CopyWithImpl<CartData2>(this as CartData2, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CartData2'))
    ..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('store', store))..add(DiagnosticsProperty('coffeeMachine', coffeeMachine))..add(DiagnosticsProperty('useBonuses', useBonuses))..add(DiagnosticsProperty('fridgeId', fridgeId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartData2&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.store, store) || other.store == store)&&(identical(other.coffeeMachine, coffeeMachine) || other.coffeeMachine == coffeeMachine)&&(identical(other.useBonuses, useBonuses) || other.useBonuses == useBonuses)&&(identical(other.fridgeId, fridgeId) || other.fridgeId == fridgeId)&&(identical(other.user, user) || other.user == user)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),store,coffeeMachine,useBonuses,fridgeId,user,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CartData2(products: $products, store: $store, coffeeMachine: $coffeeMachine, useBonuses: $useBonuses, fridgeId: $fridgeId, user: $user, id: $id)';
}


}

/// @nodoc
abstract mixin class $CartData2CopyWith<$Res>  {
  factory $CartData2CopyWith(CartData2 value, $Res Function(CartData2) _then) = _$CartData2CopyWithImpl;
@useResult
$Res call({
 List<CartItem> products, Store? store, CoffeeMachine? coffeeMachine, bool useBonuses, String? fridgeId, User? user, int? id
});


$StoreCopyWith<$Res>? get store;$CoffeeMachineCopyWith<$Res>? get coffeeMachine;$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$CartData2CopyWithImpl<$Res>
    implements $CartData2CopyWith<$Res> {
  _$CartData2CopyWithImpl(this._self, this._then);

  final CartData2 _self;
  final $Res Function(CartData2) _then;

/// Create a copy of CartData2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? store = freezed,Object? coffeeMachine = freezed,Object? useBonuses = null,Object? fridgeId = freezed,Object? user = freezed,Object? id = freezed,}) {
  return _then(CartData2(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<CartItem>,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,coffeeMachine: freezed == coffeeMachine ? _self.coffeeMachine : coffeeMachine // ignore: cast_nullable_to_non_nullable
as CoffeeMachine?,useBonuses: null == useBonuses ? _self.useBonuses : useBonuses // ignore: cast_nullable_to_non_nullable
as bool,fridgeId: freezed == fridgeId ? _self.fridgeId : fridgeId // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of CartData2
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
}/// Create a copy of CartData2
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
}/// Create a copy of CartData2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartData2].
extension CartData2Patterns on CartData2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartData2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartData2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartData2 value)  $default,){
final _that = this;
switch (_that) {
case _CartData2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartData2 value)?  $default,){
final _that = this;
switch (_that) {
case _CartData2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartItem> products,  Store? store,  CoffeeMachine? coffeeMachine,  bool useBonuses,  String? fridgeId,  User? user,  int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartData2() when $default != null:
return $default(_that.products,_that.store,_that.coffeeMachine,_that.useBonuses,_that.fridgeId,_that.user,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartItem> products,  Store? store,  CoffeeMachine? coffeeMachine,  bool useBonuses,  String? fridgeId,  User? user,  int? id)  $default,) {final _that = this;
switch (_that) {
case _CartData2():
return $default(_that.products,_that.store,_that.coffeeMachine,_that.useBonuses,_that.fridgeId,_that.user,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartItem> products,  Store? store,  CoffeeMachine? coffeeMachine,  bool useBonuses,  String? fridgeId,  User? user,  int? id)?  $default,) {final _that = this;
switch (_that) {
case _CartData2() when $default != null:
return $default(_that.products,_that.store,_that.coffeeMachine,_that.useBonuses,_that.fridgeId,_that.user,_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _CartData2 with DiagnosticableTreeMixin implements CartData2 {
  const _CartData2({required this.products, required this.store, this.coffeeMachine, this.useBonuses = false, this.fridgeId, this.user, this.id});
  

@override final  List<CartItem> products;
@override final  Store? store;
@override final  CoffeeMachine? coffeeMachine;
@override@JsonKey() final  bool useBonuses;
@override final  String? fridgeId;
@override final  User? user;
@override final  int? id;

/// Create a copy of CartData2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartData2CopyWith<_CartData2> get copyWith => __$CartData2CopyWithImpl<_CartData2>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CartData2'))
    ..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('store', store))..add(DiagnosticsProperty('coffeeMachine', coffeeMachine))..add(DiagnosticsProperty('useBonuses', useBonuses))..add(DiagnosticsProperty('fridgeId', fridgeId))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('id', id));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartData2&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.store, store) || other.store == store)&&(identical(other.coffeeMachine, coffeeMachine) || other.coffeeMachine == coffeeMachine)&&(identical(other.useBonuses, useBonuses) || other.useBonuses == useBonuses)&&(identical(other.fridgeId, fridgeId) || other.fridgeId == fridgeId)&&(identical(other.user, user) || other.user == user)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),store,coffeeMachine,useBonuses,fridgeId,user,id);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CartData2(products: $products, store: $store, coffeeMachine: $coffeeMachine, useBonuses: $useBonuses, fridgeId: $fridgeId, user: $user, id: $id)';
}


}

/// @nodoc
abstract mixin class _$CartData2CopyWith<$Res> implements $CartData2CopyWith<$Res> {
  factory _$CartData2CopyWith(_CartData2 value, $Res Function(_CartData2) _then) = __$CartData2CopyWithImpl;
@override @useResult
$Res call({
 List<CartItem> products, Store? store, CoffeeMachine? coffeeMachine, bool useBonuses, String? fridgeId, User? user, int? id
});


@override $StoreCopyWith<$Res>? get store;@override $CoffeeMachineCopyWith<$Res>? get coffeeMachine;@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$CartData2CopyWithImpl<$Res>
    implements _$CartData2CopyWith<$Res> {
  __$CartData2CopyWithImpl(this._self, this._then);

  final _CartData2 _self;
  final $Res Function(_CartData2) _then;

/// Create a copy of CartData2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? store = freezed,Object? coffeeMachine = freezed,Object? useBonuses = null,Object? fridgeId = freezed,Object? user = freezed,Object? id = freezed,}) {
  return _then(_CartData2(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<CartItem>,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,coffeeMachine: freezed == coffeeMachine ? _self.coffeeMachine : coffeeMachine // ignore: cast_nullable_to_non_nullable
as CoffeeMachine?,useBonuses: null == useBonuses ? _self.useBonuses : useBonuses // ignore: cast_nullable_to_non_nullable
as bool,fridgeId: freezed == fridgeId ? _self.fridgeId : fridgeId // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of CartData2
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
}/// Create a copy of CartData2
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
}/// Create a copy of CartData2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
