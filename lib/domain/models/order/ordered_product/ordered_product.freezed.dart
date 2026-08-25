// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ordered_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderedProduct implements DiagnosticableTreeMixin {

 String get id; String get name; double get price; List<OrderedModifier> get modifiers; double get amount; double get quantity; List<OrderProblem>? get orderProblem; String? get image; String? get currencySymbol;
/// Create a copy of OrderedProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderedProductCopyWith<OrderedProduct> get copyWith => _$OrderedProductCopyWithImpl<OrderedProduct>(this as OrderedProduct, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderedProduct'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('modifiers', modifiers))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('orderProblem', orderProblem))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('currencySymbol', currencySymbol));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderedProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other.modifiers, modifiers)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other.orderProblem, orderProblem)&&(identical(other.image, image) || other.image == image)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,price,const DeepCollectionEquality().hash(modifiers),amount,quantity,const DeepCollectionEquality().hash(orderProblem),image,currencySymbol);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderedProduct(id: $id, name: $name, price: $price, modifiers: $modifiers, amount: $amount, quantity: $quantity, orderProblem: $orderProblem, image: $image, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class $OrderedProductCopyWith<$Res>  {
  factory $OrderedProductCopyWith(OrderedProduct value, $Res Function(OrderedProduct) _then) = _$OrderedProductCopyWithImpl;
@useResult
$Res call({
 String id, String name, double price, List<OrderedModifier> modifiers, double amount, double quantity, List<OrderProblem>? orderProblem, String? image, String? currencySymbol
});




}
/// @nodoc
class _$OrderedProductCopyWithImpl<$Res>
    implements $OrderedProductCopyWith<$Res> {
  _$OrderedProductCopyWithImpl(this._self, this._then);

  final OrderedProduct _self;
  final $Res Function(OrderedProduct) _then;

/// Create a copy of OrderedProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? price = null,Object? modifiers = null,Object? amount = null,Object? quantity = null,Object? orderProblem = freezed,Object? image = freezed,Object? currencySymbol = freezed,}) {
  return _then(OrderedProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,modifiers: null == modifiers ? _self.modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<OrderedModifier>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,orderProblem: freezed == orderProblem ? _self.orderProblem : orderProblem // ignore: cast_nullable_to_non_nullable
as List<OrderProblem>?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,currencySymbol: freezed == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderedProduct].
extension OrderedProductPatterns on OrderedProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderedProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderedProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderedProduct value)  $default,){
final _that = this;
switch (_that) {
case _OrderedProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderedProduct value)?  $default,){
final _that = this;
switch (_that) {
case _OrderedProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  double price,  List<OrderedModifier> modifiers,  double amount,  double quantity,  List<OrderProblem>? orderProblem,  String? image,  String? currencySymbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderedProduct() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.modifiers,_that.amount,_that.quantity,_that.orderProblem,_that.image,_that.currencySymbol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  double price,  List<OrderedModifier> modifiers,  double amount,  double quantity,  List<OrderProblem>? orderProblem,  String? image,  String? currencySymbol)  $default,) {final _that = this;
switch (_that) {
case _OrderedProduct():
return $default(_that.id,_that.name,_that.price,_that.modifiers,_that.amount,_that.quantity,_that.orderProblem,_that.image,_that.currencySymbol);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  double price,  List<OrderedModifier> modifiers,  double amount,  double quantity,  List<OrderProblem>? orderProblem,  String? image,  String? currencySymbol)?  $default,) {final _that = this;
switch (_that) {
case _OrderedProduct() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.modifiers,_that.amount,_that.quantity,_that.orderProblem,_that.image,_that.currencySymbol);case _:
  return null;

}
}

}

/// @nodoc


class _OrderedProduct with DiagnosticableTreeMixin implements OrderedProduct {
  const _OrderedProduct({required this.id, required this.name, required this.price, required  List<OrderedModifier> modifiers, required this.amount, required this.quantity, required  List<OrderProblem>? orderProblem, this.image, this.currencySymbol}): _modifiers = modifiers,_orderProblem = orderProblem;
  

@override final  String id;
@override final  String name;
@override final  double price;
 final  List<OrderedModifier> _modifiers;
@override List<OrderedModifier> get modifiers {
  if (_modifiers is EqualUnmodifiableListView) return _modifiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modifiers);
}

@override final  double amount;
@override final  double quantity;
 final  List<OrderProblem>? _orderProblem;
@override List<OrderProblem>? get orderProblem {
  final value = _orderProblem;
  if (value == null) return null;
  if (_orderProblem is EqualUnmodifiableListView) return _orderProblem;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? image;
@override final  String? currencySymbol;

/// Create a copy of OrderedProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderedProductCopyWith<_OrderedProduct> get copyWith => __$OrderedProductCopyWithImpl<_OrderedProduct>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderedProduct'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('modifiers', modifiers))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('orderProblem', orderProblem))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('currencySymbol', currencySymbol));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderedProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other._modifiers, _modifiers)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other._orderProblem, _orderProblem)&&(identical(other.image, image) || other.image == image)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,price,const DeepCollectionEquality().hash(_modifiers),amount,quantity,const DeepCollectionEquality().hash(_orderProblem),image,currencySymbol);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderedProduct(id: $id, name: $name, price: $price, modifiers: $modifiers, amount: $amount, quantity: $quantity, orderProblem: $orderProblem, image: $image, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class _$OrderedProductCopyWith<$Res> implements $OrderedProductCopyWith<$Res> {
  factory _$OrderedProductCopyWith(_OrderedProduct value, $Res Function(_OrderedProduct) _then) = __$OrderedProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, double price, List<OrderedModifier> modifiers, double amount, double quantity, List<OrderProblem>? orderProblem, String? image, String? currencySymbol
});




}
/// @nodoc
class __$OrderedProductCopyWithImpl<$Res>
    implements _$OrderedProductCopyWith<$Res> {
  __$OrderedProductCopyWithImpl(this._self, this._then);

  final _OrderedProduct _self;
  final $Res Function(_OrderedProduct) _then;

/// Create a copy of OrderedProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,Object? modifiers = null,Object? amount = null,Object? quantity = null,Object? orderProblem = freezed,Object? image = freezed,Object? currencySymbol = freezed,}) {
  return _then(_OrderedProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,modifiers: null == modifiers ? _self._modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<OrderedModifier>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,orderProblem: freezed == orderProblem ? _self._orderProblem : orderProblem // ignore: cast_nullable_to_non_nullable
as List<OrderProblem>?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,currencySymbol: freezed == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
