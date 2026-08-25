// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Cart {

 int? get id; String? get userId; Store? get store; List<CartItem> get products; List<CartItem> get unavailableProducts; double get summ; double get summWithoutDiscount; double? get bonusesToSpent; bool get canUseBonuses; bool get useBonuses; String? get fridgeId; String? get coffeeMachineId; CustomerApiPurchase? get purchase;
/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCopyWith<Cart> get copyWith => _$CartCopyWithImpl<Cart>(this as Cart, _$identity);

  /// Serializes this Cart to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cart&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.store, store) || other.store == store)&&const DeepCollectionEquality().equals(other.products, products)&&const DeepCollectionEquality().equals(other.unavailableProducts, unavailableProducts)&&(identical(other.summ, summ) || other.summ == summ)&&(identical(other.summWithoutDiscount, summWithoutDiscount) || other.summWithoutDiscount == summWithoutDiscount)&&(identical(other.bonusesToSpent, bonusesToSpent) || other.bonusesToSpent == bonusesToSpent)&&(identical(other.canUseBonuses, canUseBonuses) || other.canUseBonuses == canUseBonuses)&&(identical(other.useBonuses, useBonuses) || other.useBonuses == useBonuses)&&(identical(other.fridgeId, fridgeId) || other.fridgeId == fridgeId)&&(identical(other.coffeeMachineId, coffeeMachineId) || other.coffeeMachineId == coffeeMachineId)&&(identical(other.purchase, purchase) || other.purchase == purchase));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,store,const DeepCollectionEquality().hash(products),const DeepCollectionEquality().hash(unavailableProducts),summ,summWithoutDiscount,bonusesToSpent,canUseBonuses,useBonuses,fridgeId,coffeeMachineId,purchase);

@override
String toString() {
  return 'Cart(id: $id, userId: $userId, store: $store, products: $products, unavailableProducts: $unavailableProducts, summ: $summ, summWithoutDiscount: $summWithoutDiscount, bonusesToSpent: $bonusesToSpent, canUseBonuses: $canUseBonuses, useBonuses: $useBonuses, fridgeId: $fridgeId, coffeeMachineId: $coffeeMachineId, purchase: $purchase)';
}


}

/// @nodoc
abstract mixin class $CartCopyWith<$Res>  {
  factory $CartCopyWith(Cart value, $Res Function(Cart) _then) = _$CartCopyWithImpl;
@useResult
$Res call({
 int? id, String? userId, Store? store, List<CartItem> products, List<CartItem> unavailableProducts, double summ, double summWithoutDiscount, double? bonusesToSpent, bool canUseBonuses, bool useBonuses, String? fridgeId, String? coffeeMachineId, CustomerApiPurchase? purchase
});


$StoreCopyWith<$Res>? get store;$CustomerApiPurchaseCopyWith<$Res>? get purchase;

}
/// @nodoc
class _$CartCopyWithImpl<$Res>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._self, this._then);

  final Cart _self;
  final $Res Function(Cart) _then;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? store = freezed,Object? products = null,Object? unavailableProducts = null,Object? summ = null,Object? summWithoutDiscount = null,Object? bonusesToSpent = freezed,Object? canUseBonuses = null,Object? useBonuses = null,Object? fridgeId = freezed,Object? coffeeMachineId = freezed,Object? purchase = freezed,}) {
  return _then(Cart(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<CartItem>,unavailableProducts: null == unavailableProducts ? _self.unavailableProducts : unavailableProducts // ignore: cast_nullable_to_non_nullable
as List<CartItem>,summ: null == summ ? _self.summ : summ // ignore: cast_nullable_to_non_nullable
as double,summWithoutDiscount: null == summWithoutDiscount ? _self.summWithoutDiscount : summWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double,bonusesToSpent: freezed == bonusesToSpent ? _self.bonusesToSpent : bonusesToSpent // ignore: cast_nullable_to_non_nullable
as double?,canUseBonuses: null == canUseBonuses ? _self.canUseBonuses : canUseBonuses // ignore: cast_nullable_to_non_nullable
as bool,useBonuses: null == useBonuses ? _self.useBonuses : useBonuses // ignore: cast_nullable_to_non_nullable
as bool,fridgeId: freezed == fridgeId ? _self.fridgeId : fridgeId // ignore: cast_nullable_to_non_nullable
as String?,coffeeMachineId: freezed == coffeeMachineId ? _self.coffeeMachineId : coffeeMachineId // ignore: cast_nullable_to_non_nullable
as String?,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as CustomerApiPurchase?,
  ));
}
/// Create a copy of Cart
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
}/// Create a copy of Cart
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


/// Adds pattern-matching-related methods to [Cart].
extension CartPatterns on Cart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cart value)  $default,){
final _that = this;
switch (_that) {
case _Cart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cart value)?  $default,){
final _that = this;
switch (_that) {
case _Cart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? userId,  Store? store,  List<CartItem> products,  List<CartItem> unavailableProducts,  double summ,  double summWithoutDiscount,  double? bonusesToSpent,  bool canUseBonuses,  bool useBonuses,  String? fridgeId,  String? coffeeMachineId,  CustomerApiPurchase? purchase)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cart() when $default != null:
return $default(_that.id,_that.userId,_that.store,_that.products,_that.unavailableProducts,_that.summ,_that.summWithoutDiscount,_that.bonusesToSpent,_that.canUseBonuses,_that.useBonuses,_that.fridgeId,_that.coffeeMachineId,_that.purchase);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? userId,  Store? store,  List<CartItem> products,  List<CartItem> unavailableProducts,  double summ,  double summWithoutDiscount,  double? bonusesToSpent,  bool canUseBonuses,  bool useBonuses,  String? fridgeId,  String? coffeeMachineId,  CustomerApiPurchase? purchase)  $default,) {final _that = this;
switch (_that) {
case _Cart():
return $default(_that.id,_that.userId,_that.store,_that.products,_that.unavailableProducts,_that.summ,_that.summWithoutDiscount,_that.bonusesToSpent,_that.canUseBonuses,_that.useBonuses,_that.fridgeId,_that.coffeeMachineId,_that.purchase);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? userId,  Store? store,  List<CartItem> products,  List<CartItem> unavailableProducts,  double summ,  double summWithoutDiscount,  double? bonusesToSpent,  bool canUseBonuses,  bool useBonuses,  String? fridgeId,  String? coffeeMachineId,  CustomerApiPurchase? purchase)?  $default,) {final _that = this;
switch (_that) {
case _Cart() when $default != null:
return $default(_that.id,_that.userId,_that.store,_that.products,_that.unavailableProducts,_that.summ,_that.summWithoutDiscount,_that.bonusesToSpent,_that.canUseBonuses,_that.useBonuses,_that.fridgeId,_that.coffeeMachineId,_that.purchase);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _Cart extends Cart {
  const _Cart({this.id, this.userId, this.store,  List<CartItem> products = const [],  List<CartItem> unavailableProducts = const [], required this.summ, required this.summWithoutDiscount, this.bonusesToSpent, this.canUseBonuses = false, this.useBonuses = false, this.fridgeId, this.coffeeMachineId, this.purchase}): _products = products,_unavailableProducts = unavailableProducts,super._();
  

@override final  int? id;
@override final  String? userId;
@override final  Store? store;
 final  List<CartItem> _products;
@override@JsonKey() List<CartItem> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<CartItem> _unavailableProducts;
@override@JsonKey() List<CartItem> get unavailableProducts {
  if (_unavailableProducts is EqualUnmodifiableListView) return _unavailableProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_unavailableProducts);
}

@override final  double summ;
@override final  double summWithoutDiscount;
@override final  double? bonusesToSpent;
@override@JsonKey() final  bool canUseBonuses;
@override@JsonKey() final  bool useBonuses;
@override final  String? fridgeId;
@override final  String? coffeeMachineId;
@override final  CustomerApiPurchase? purchase;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCopyWith<_Cart> get copyWith => __$CartCopyWithImpl<_Cart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cart&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.store, store) || other.store == store)&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._unavailableProducts, _unavailableProducts)&&(identical(other.summ, summ) || other.summ == summ)&&(identical(other.summWithoutDiscount, summWithoutDiscount) || other.summWithoutDiscount == summWithoutDiscount)&&(identical(other.bonusesToSpent, bonusesToSpent) || other.bonusesToSpent == bonusesToSpent)&&(identical(other.canUseBonuses, canUseBonuses) || other.canUseBonuses == canUseBonuses)&&(identical(other.useBonuses, useBonuses) || other.useBonuses == useBonuses)&&(identical(other.fridgeId, fridgeId) || other.fridgeId == fridgeId)&&(identical(other.coffeeMachineId, coffeeMachineId) || other.coffeeMachineId == coffeeMachineId)&&(identical(other.purchase, purchase) || other.purchase == purchase));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,store,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_unavailableProducts),summ,summWithoutDiscount,bonusesToSpent,canUseBonuses,useBonuses,fridgeId,coffeeMachineId,purchase);

@override
String toString() {
  return 'Cart(id: $id, userId: $userId, store: $store, products: $products, unavailableProducts: $unavailableProducts, summ: $summ, summWithoutDiscount: $summWithoutDiscount, bonusesToSpent: $bonusesToSpent, canUseBonuses: $canUseBonuses, useBonuses: $useBonuses, fridgeId: $fridgeId, coffeeMachineId: $coffeeMachineId, purchase: $purchase)';
}


}

/// @nodoc
abstract mixin class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) _then) = __$CartCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? userId, Store? store, List<CartItem> products, List<CartItem> unavailableProducts, double summ, double summWithoutDiscount, double? bonusesToSpent, bool canUseBonuses, bool useBonuses, String? fridgeId, String? coffeeMachineId, CustomerApiPurchase? purchase
});


@override $StoreCopyWith<$Res>? get store;@override $CustomerApiPurchaseCopyWith<$Res>? get purchase;

}
/// @nodoc
class __$CartCopyWithImpl<$Res>
    implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(this._self, this._then);

  final _Cart _self;
  final $Res Function(_Cart) _then;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? store = freezed,Object? products = null,Object? unavailableProducts = null,Object? summ = null,Object? summWithoutDiscount = null,Object? bonusesToSpent = freezed,Object? canUseBonuses = null,Object? useBonuses = null,Object? fridgeId = freezed,Object? coffeeMachineId = freezed,Object? purchase = freezed,}) {
  return _then(_Cart(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<CartItem>,unavailableProducts: null == unavailableProducts ? _self._unavailableProducts : unavailableProducts // ignore: cast_nullable_to_non_nullable
as List<CartItem>,summ: null == summ ? _self.summ : summ // ignore: cast_nullable_to_non_nullable
as double,summWithoutDiscount: null == summWithoutDiscount ? _self.summWithoutDiscount : summWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double,bonusesToSpent: freezed == bonusesToSpent ? _self.bonusesToSpent : bonusesToSpent // ignore: cast_nullable_to_non_nullable
as double?,canUseBonuses: null == canUseBonuses ? _self.canUseBonuses : canUseBonuses // ignore: cast_nullable_to_non_nullable
as bool,useBonuses: null == useBonuses ? _self.useBonuses : useBonuses // ignore: cast_nullable_to_non_nullable
as bool,fridgeId: freezed == fridgeId ? _self.fridgeId : fridgeId // ignore: cast_nullable_to_non_nullable
as String?,coffeeMachineId: freezed == coffeeMachineId ? _self.coffeeMachineId : coffeeMachineId // ignore: cast_nullable_to_non_nullable
as String?,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as CustomerApiPurchase?,
  ));
}

/// Create a copy of Cart
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
}/// Create a copy of Cart
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
mixin _$CartItem {

 int? get id; Product get product; double get amount; double? get summ; double? get summWithoutDiscount; List<BarcodeData> get barcodes; bool get hasDiscount;
/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemCopyWith<CartItem> get copyWith => _$CartItemCopyWithImpl<CartItem>(this as CartItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItem&&(identical(other.id, id) || other.id == id)&&(identical(other.product, product) || other.product == product)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.summ, summ) || other.summ == summ)&&(identical(other.summWithoutDiscount, summWithoutDiscount) || other.summWithoutDiscount == summWithoutDiscount)&&const DeepCollectionEquality().equals(other.barcodes, barcodes)&&(identical(other.hasDiscount, hasDiscount) || other.hasDiscount == hasDiscount));
}


@override
int get hashCode => Object.hash(runtimeType,id,product,amount,summ,summWithoutDiscount,const DeepCollectionEquality().hash(barcodes),hasDiscount);

@override
String toString() {
  return 'CartItem(id: $id, product: $product, amount: $amount, summ: $summ, summWithoutDiscount: $summWithoutDiscount, barcodes: $barcodes, hasDiscount: $hasDiscount)';
}


}

/// @nodoc
abstract mixin class $CartItemCopyWith<$Res>  {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) _then) = _$CartItemCopyWithImpl;
@useResult
$Res call({
 int? id, Product product, double amount, double? summ, double? summWithoutDiscount, List<BarcodeData> barcodes, bool hasDiscount
});


$ProductCopyWith<$Res> get product;

}
/// @nodoc
class _$CartItemCopyWithImpl<$Res>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._self, this._then);

  final CartItem _self;
  final $Res Function(CartItem) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? product = null,Object? amount = null,Object? summ = freezed,Object? summWithoutDiscount = freezed,Object? barcodes = null,Object? hasDiscount = null,}) {
  return _then(CartItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,summ: freezed == summ ? _self.summ : summ // ignore: cast_nullable_to_non_nullable
as double?,summWithoutDiscount: freezed == summWithoutDiscount ? _self.summWithoutDiscount : summWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double?,barcodes: null == barcodes ? _self.barcodes : barcodes // ignore: cast_nullable_to_non_nullable
as List<BarcodeData>,hasDiscount: null == hasDiscount ? _self.hasDiscount : hasDiscount // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartItem].
extension CartItemPatterns on CartItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItem value)  $default,){
final _that = this;
switch (_that) {
case _CartItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItem value)?  $default,){
final _that = this;
switch (_that) {
case _CartItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  Product product,  double amount,  double? summ,  double? summWithoutDiscount,  List<BarcodeData> barcodes,  bool hasDiscount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItem() when $default != null:
return $default(_that.id,_that.product,_that.amount,_that.summ,_that.summWithoutDiscount,_that.barcodes,_that.hasDiscount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  Product product,  double amount,  double? summ,  double? summWithoutDiscount,  List<BarcodeData> barcodes,  bool hasDiscount)  $default,) {final _that = this;
switch (_that) {
case _CartItem():
return $default(_that.id,_that.product,_that.amount,_that.summ,_that.summWithoutDiscount,_that.barcodes,_that.hasDiscount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  Product product,  double amount,  double? summ,  double? summWithoutDiscount,  List<BarcodeData> barcodes,  bool hasDiscount)?  $default,) {final _that = this;
switch (_that) {
case _CartItem() when $default != null:
return $default(_that.id,_that.product,_that.amount,_that.summ,_that.summWithoutDiscount,_that.barcodes,_that.hasDiscount);case _:
  return null;

}
}

}

/// @nodoc


class _CartItem extends CartItem {
  const _CartItem({this.id, required this.product, required this.amount, this.summ, this.summWithoutDiscount,  List<BarcodeData> barcodes = const [], this.hasDiscount = false}): _barcodes = barcodes,super._();
  

@override final  int? id;
@override final  Product product;
@override final  double amount;
@override final  double? summ;
@override final  double? summWithoutDiscount;
 final  List<BarcodeData> _barcodes;
@override@JsonKey() List<BarcodeData> get barcodes {
  if (_barcodes is EqualUnmodifiableListView) return _barcodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_barcodes);
}

@override@JsonKey() final  bool hasDiscount;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemCopyWith<_CartItem> get copyWith => __$CartItemCopyWithImpl<_CartItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItem&&(identical(other.id, id) || other.id == id)&&(identical(other.product, product) || other.product == product)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.summ, summ) || other.summ == summ)&&(identical(other.summWithoutDiscount, summWithoutDiscount) || other.summWithoutDiscount == summWithoutDiscount)&&const DeepCollectionEquality().equals(other._barcodes, _barcodes)&&(identical(other.hasDiscount, hasDiscount) || other.hasDiscount == hasDiscount));
}


@override
int get hashCode => Object.hash(runtimeType,id,product,amount,summ,summWithoutDiscount,const DeepCollectionEquality().hash(_barcodes),hasDiscount);

@override
String toString() {
  return 'CartItem(id: $id, product: $product, amount: $amount, summ: $summ, summWithoutDiscount: $summWithoutDiscount, barcodes: $barcodes, hasDiscount: $hasDiscount)';
}


}

/// @nodoc
abstract mixin class _$CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$CartItemCopyWith(_CartItem value, $Res Function(_CartItem) _then) = __$CartItemCopyWithImpl;
@override @useResult
$Res call({
 int? id, Product product, double amount, double? summ, double? summWithoutDiscount, List<BarcodeData> barcodes, bool hasDiscount
});


@override $ProductCopyWith<$Res> get product;

}
/// @nodoc
class __$CartItemCopyWithImpl<$Res>
    implements _$CartItemCopyWith<$Res> {
  __$CartItemCopyWithImpl(this._self, this._then);

  final _CartItem _self;
  final $Res Function(_CartItem) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? product = null,Object? amount = null,Object? summ = freezed,Object? summWithoutDiscount = freezed,Object? barcodes = null,Object? hasDiscount = null,}) {
  return _then(_CartItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,summ: freezed == summ ? _self.summ : summ // ignore: cast_nullable_to_non_nullable
as double?,summWithoutDiscount: freezed == summWithoutDiscount ? _self.summWithoutDiscount : summWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double?,barcodes: null == barcodes ? _self._barcodes : barcodes // ignore: cast_nullable_to_non_nullable
as List<BarcodeData>,hasDiscount: null == hasDiscount ? _self.hasDiscount : hasDiscount // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
