// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartSearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartSearchEvent()';
}


}

/// @nodoc
class $CartSearchEventCopyWith<$Res>  {
$CartSearchEventCopyWith(CartSearchEvent _, $Res Function(CartSearchEvent) __);
}


/// Adds pattern-matching-related methods to [CartSearchEvent].
extension CartSearchEventPatterns on CartSearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _OnSearch value)?  onSearch,TResult Function( _OnProductDecrement value)?  onProductDecrement,TResult Function( _OnProductIncrement value)?  onProductIncrement,TResult Function( _OnNextButtonPressed value)?  onNextButtonPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnSearch() when onSearch != null:
return onSearch(_that);case _OnProductDecrement() when onProductDecrement != null:
return onProductDecrement(_that);case _OnProductIncrement() when onProductIncrement != null:
return onProductIncrement(_that);case _OnNextButtonPressed() when onNextButtonPressed != null:
return onNextButtonPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _OnSearch value)  onSearch,required TResult Function( _OnProductDecrement value)  onProductDecrement,required TResult Function( _OnProductIncrement value)  onProductIncrement,required TResult Function( _OnNextButtonPressed value)  onNextButtonPressed,}){
final _that = this;
switch (_that) {
case _OnSearch():
return onSearch(_that);case _OnProductDecrement():
return onProductDecrement(_that);case _OnProductIncrement():
return onProductIncrement(_that);case _OnNextButtonPressed():
return onNextButtonPressed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _OnSearch value)?  onSearch,TResult? Function( _OnProductDecrement value)?  onProductDecrement,TResult? Function( _OnProductIncrement value)?  onProductIncrement,TResult? Function( _OnNextButtonPressed value)?  onNextButtonPressed,}){
final _that = this;
switch (_that) {
case _OnSearch() when onSearch != null:
return onSearch(_that);case _OnProductDecrement() when onProductDecrement != null:
return onProductDecrement(_that);case _OnProductIncrement() when onProductIncrement != null:
return onProductIncrement(_that);case _OnNextButtonPressed() when onNextButtonPressed != null:
return onNextButtonPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String value)?  onSearch,TResult Function( Product product)?  onProductDecrement,TResult Function( Product product)?  onProductIncrement,TResult Function()?  onNextButtonPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnSearch() when onSearch != null:
return onSearch(_that.value);case _OnProductDecrement() when onProductDecrement != null:
return onProductDecrement(_that.product);case _OnProductIncrement() when onProductIncrement != null:
return onProductIncrement(_that.product);case _OnNextButtonPressed() when onNextButtonPressed != null:
return onNextButtonPressed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String value)  onSearch,required TResult Function( Product product)  onProductDecrement,required TResult Function( Product product)  onProductIncrement,required TResult Function()  onNextButtonPressed,}) {final _that = this;
switch (_that) {
case _OnSearch():
return onSearch(_that.value);case _OnProductDecrement():
return onProductDecrement(_that.product);case _OnProductIncrement():
return onProductIncrement(_that.product);case _OnNextButtonPressed():
return onNextButtonPressed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String value)?  onSearch,TResult? Function( Product product)?  onProductDecrement,TResult? Function( Product product)?  onProductIncrement,TResult? Function()?  onNextButtonPressed,}) {final _that = this;
switch (_that) {
case _OnSearch() when onSearch != null:
return onSearch(_that.value);case _OnProductDecrement() when onProductDecrement != null:
return onProductDecrement(_that.product);case _OnProductIncrement() when onProductIncrement != null:
return onProductIncrement(_that.product);case _OnNextButtonPressed() when onNextButtonPressed != null:
return onNextButtonPressed();case _:
  return null;

}
}

}

/// @nodoc


class _OnSearch implements CartSearchEvent {
  const _OnSearch(this.value);
  

 final  String value;

/// Create a copy of CartSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnSearchCopyWith<_OnSearch> get copyWith => __$OnSearchCopyWithImpl<_OnSearch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnSearch&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CartSearchEvent.onSearch(value: $value)';
}


}

/// @nodoc
abstract mixin class _$OnSearchCopyWith<$Res> implements $CartSearchEventCopyWith<$Res> {
  factory _$OnSearchCopyWith(_OnSearch value, $Res Function(_OnSearch) _then) = __$OnSearchCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$OnSearchCopyWithImpl<$Res>
    implements _$OnSearchCopyWith<$Res> {
  __$OnSearchCopyWithImpl(this._self, this._then);

  final _OnSearch _self;
  final $Res Function(_OnSearch) _then;

/// Create a copy of CartSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_OnSearch(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _OnProductDecrement implements CartSearchEvent {
  const _OnProductDecrement(this.product);
  

 final  Product product;

/// Create a copy of CartSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnProductDecrementCopyWith<_OnProductDecrement> get copyWith => __$OnProductDecrementCopyWithImpl<_OnProductDecrement>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnProductDecrement&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'CartSearchEvent.onProductDecrement(product: $product)';
}


}

/// @nodoc
abstract mixin class _$OnProductDecrementCopyWith<$Res> implements $CartSearchEventCopyWith<$Res> {
  factory _$OnProductDecrementCopyWith(_OnProductDecrement value, $Res Function(_OnProductDecrement) _then) = __$OnProductDecrementCopyWithImpl;
@useResult
$Res call({
 Product product
});


$ProductCopyWith<$Res> get product;

}
/// @nodoc
class __$OnProductDecrementCopyWithImpl<$Res>
    implements _$OnProductDecrementCopyWith<$Res> {
  __$OnProductDecrementCopyWithImpl(this._self, this._then);

  final _OnProductDecrement _self;
  final $Res Function(_OnProductDecrement) _then;

/// Create a copy of CartSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(_OnProductDecrement(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}

/// Create a copy of CartSearchEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class _OnProductIncrement implements CartSearchEvent {
  const _OnProductIncrement(this.product);
  

 final  Product product;

/// Create a copy of CartSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnProductIncrementCopyWith<_OnProductIncrement> get copyWith => __$OnProductIncrementCopyWithImpl<_OnProductIncrement>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnProductIncrement&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'CartSearchEvent.onProductIncrement(product: $product)';
}


}

/// @nodoc
abstract mixin class _$OnProductIncrementCopyWith<$Res> implements $CartSearchEventCopyWith<$Res> {
  factory _$OnProductIncrementCopyWith(_OnProductIncrement value, $Res Function(_OnProductIncrement) _then) = __$OnProductIncrementCopyWithImpl;
@useResult
$Res call({
 Product product
});


$ProductCopyWith<$Res> get product;

}
/// @nodoc
class __$OnProductIncrementCopyWithImpl<$Res>
    implements _$OnProductIncrementCopyWith<$Res> {
  __$OnProductIncrementCopyWithImpl(this._self, this._then);

  final _OnProductIncrement _self;
  final $Res Function(_OnProductIncrement) _then;

/// Create a copy of CartSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(_OnProductIncrement(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}

/// Create a copy of CartSearchEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class _OnNextButtonPressed implements CartSearchEvent {
  const _OnNextButtonPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnNextButtonPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartSearchEvent.onNextButtonPressed()';
}


}




/// @nodoc
mixin _$CartSearchState {

 CartSearchStatus get status; List<Product> get searchResult; Map<Product, double> get productsToAddToCart;
/// Create a copy of CartSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartSearchStateCopyWith<CartSearchState> get copyWith => _$CartSearchStateCopyWithImpl<CartSearchState>(this as CartSearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartSearchState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.searchResult, searchResult)&&const DeepCollectionEquality().equals(other.productsToAddToCart, productsToAddToCart));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(searchResult),const DeepCollectionEquality().hash(productsToAddToCart));

@override
String toString() {
  return 'CartSearchState(status: $status, searchResult: $searchResult, productsToAddToCart: $productsToAddToCart)';
}


}

/// @nodoc
abstract mixin class $CartSearchStateCopyWith<$Res>  {
  factory $CartSearchStateCopyWith(CartSearchState value, $Res Function(CartSearchState) _then) = _$CartSearchStateCopyWithImpl;
@useResult
$Res call({
 CartSearchStatus status, List<Product> searchResult, Map<Product, double> productsToAddToCart
});




}
/// @nodoc
class _$CartSearchStateCopyWithImpl<$Res>
    implements $CartSearchStateCopyWith<$Res> {
  _$CartSearchStateCopyWithImpl(this._self, this._then);

  final CartSearchState _self;
  final $Res Function(CartSearchState) _then;

/// Create a copy of CartSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? searchResult = null,Object? productsToAddToCart = null,}) {
  return _then(CartSearchState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CartSearchStatus,searchResult: null == searchResult ? _self.searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<Product>,productsToAddToCart: null == productsToAddToCart ? _self.productsToAddToCart : productsToAddToCart // ignore: cast_nullable_to_non_nullable
as Map<Product, double>,
  ));
}

}


/// Adds pattern-matching-related methods to [CartSearchState].
extension CartSearchStatePatterns on CartSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ready value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ready() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ready value)  $default,){
final _that = this;
switch (_that) {
case _Ready():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ready value)?  $default,){
final _that = this;
switch (_that) {
case _Ready() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CartSearchStatus status,  List<Product> searchResult,  Map<Product, double> productsToAddToCart)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ready() when $default != null:
return $default(_that.status,_that.searchResult,_that.productsToAddToCart);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CartSearchStatus status,  List<Product> searchResult,  Map<Product, double> productsToAddToCart)  $default,) {final _that = this;
switch (_that) {
case _Ready():
return $default(_that.status,_that.searchResult,_that.productsToAddToCart);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CartSearchStatus status,  List<Product> searchResult,  Map<Product, double> productsToAddToCart)?  $default,) {final _that = this;
switch (_that) {
case _Ready() when $default != null:
return $default(_that.status,_that.searchResult,_that.productsToAddToCart);case _:
  return null;

}
}

}

/// @nodoc


class _Ready implements CartSearchState {
  const _Ready({this.status = CartSearchStatus.init,  List<Product> searchResult = const [],  Map<Product, double> productsToAddToCart = const {}}): _searchResult = searchResult,_productsToAddToCart = productsToAddToCart;
  

@override@JsonKey() final  CartSearchStatus status;
 final  List<Product> _searchResult;
@override@JsonKey() List<Product> get searchResult {
  if (_searchResult is EqualUnmodifiableListView) return _searchResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResult);
}

 final  Map<Product, double> _productsToAddToCart;
@override@JsonKey() Map<Product, double> get productsToAddToCart {
  if (_productsToAddToCart is EqualUnmodifiableMapView) return _productsToAddToCart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_productsToAddToCart);
}


/// Create a copy of CartSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadyCopyWith<_Ready> get copyWith => __$ReadyCopyWithImpl<_Ready>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ready&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._searchResult, _searchResult)&&const DeepCollectionEquality().equals(other._productsToAddToCart, _productsToAddToCart));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_searchResult),const DeepCollectionEquality().hash(_productsToAddToCart));

@override
String toString() {
  return 'CartSearchState(status: $status, searchResult: $searchResult, productsToAddToCart: $productsToAddToCart)';
}


}

/// @nodoc
abstract mixin class _$ReadyCopyWith<$Res> implements $CartSearchStateCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) _then) = __$ReadyCopyWithImpl;
@override @useResult
$Res call({
 CartSearchStatus status, List<Product> searchResult, Map<Product, double> productsToAddToCart
});




}
/// @nodoc
class __$ReadyCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(this._self, this._then);

  final _Ready _self;
  final $Res Function(_Ready) _then;

/// Create a copy of CartSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? searchResult = null,Object? productsToAddToCart = null,}) {
  return _then(_Ready(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CartSearchStatus,searchResult: null == searchResult ? _self._searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<Product>,productsToAddToCart: null == productsToAddToCart ? _self._productsToAddToCart : productsToAddToCart // ignore: cast_nullable_to_non_nullable
as Map<Product, double>,
  ));
}


}

/// @nodoc
mixin _$CartSearchSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartSearchSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartSearchSr()';
}


}

/// @nodoc
class $CartSearchSrCopyWith<$Res>  {
$CartSearchSrCopyWith(CartSearchSr _, $Res Function(CartSearchSr) __);
}


/// Adds pattern-matching-related methods to [CartSearchSr].
extension CartSearchSrPatterns on CartSearchSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CartSearchSr value)?  error,TResult Function( _AddToCartSr value)?  addToCart,TResult Function( _ShowWeightProductMessageSr value)?  showWeightProductMessage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartSearchSr() when error != null:
return error(_that);case _AddToCartSr() when addToCart != null:
return addToCart(_that);case _ShowWeightProductMessageSr() when showWeightProductMessage != null:
return showWeightProductMessage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CartSearchSr value)  error,required TResult Function( _AddToCartSr value)  addToCart,required TResult Function( _ShowWeightProductMessageSr value)  showWeightProductMessage,}){
final _that = this;
switch (_that) {
case _CartSearchSr():
return error(_that);case _AddToCartSr():
return addToCart(_that);case _ShowWeightProductMessageSr():
return showWeightProductMessage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CartSearchSr value)?  error,TResult? Function( _AddToCartSr value)?  addToCart,TResult? Function( _ShowWeightProductMessageSr value)?  showWeightProductMessage,}){
final _that = this;
switch (_that) {
case _CartSearchSr() when error != null:
return error(_that);case _AddToCartSr() when addToCart != null:
return addToCart(_that);case _ShowWeightProductMessageSr() when showWeightProductMessage != null:
return showWeightProductMessage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function( Map<Product, double> products)?  addToCart,TResult Function()?  showWeightProductMessage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartSearchSr() when error != null:
return error(_that.error);case _AddToCartSr() when addToCart != null:
return addToCart(_that.products);case _ShowWeightProductMessageSr() when showWeightProductMessage != null:
return showWeightProductMessage();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function( Map<Product, double> products)  addToCart,required TResult Function()  showWeightProductMessage,}) {final _that = this;
switch (_that) {
case _CartSearchSr():
return error(_that.error);case _AddToCartSr():
return addToCart(_that.products);case _ShowWeightProductMessageSr():
return showWeightProductMessage();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function( Map<Product, double> products)?  addToCart,TResult? Function()?  showWeightProductMessage,}) {final _that = this;
switch (_that) {
case _CartSearchSr() when error != null:
return error(_that.error);case _AddToCartSr() when addToCart != null:
return addToCart(_that.products);case _ShowWeightProductMessageSr() when showWeightProductMessage != null:
return showWeightProductMessage();case _:
  return null;

}
}

}

/// @nodoc


class _CartSearchSr implements CartSearchSr {
  const _CartSearchSr(this.error);
  

 final  String error;

/// Create a copy of CartSearchSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartSearchSrCopyWith<_CartSearchSr> get copyWith => __$CartSearchSrCopyWithImpl<_CartSearchSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartSearchSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CartSearchSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$CartSearchSrCopyWith<$Res> implements $CartSearchSrCopyWith<$Res> {
  factory _$CartSearchSrCopyWith(_CartSearchSr value, $Res Function(_CartSearchSr) _then) = __$CartSearchSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$CartSearchSrCopyWithImpl<$Res>
    implements _$CartSearchSrCopyWith<$Res> {
  __$CartSearchSrCopyWithImpl(this._self, this._then);

  final _CartSearchSr _self;
  final $Res Function(_CartSearchSr) _then;

/// Create a copy of CartSearchSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_CartSearchSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddToCartSr implements CartSearchSr {
  const _AddToCartSr( Map<Product, double> products): _products = products;
  

 final  Map<Product, double> _products;
 Map<Product, double> get products {
  if (_products is EqualUnmodifiableMapView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_products);
}


/// Create a copy of CartSearchSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddToCartSrCopyWith<_AddToCartSr> get copyWith => __$AddToCartSrCopyWithImpl<_AddToCartSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToCartSr&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'CartSearchSr.addToCart(products: $products)';
}


}

/// @nodoc
abstract mixin class _$AddToCartSrCopyWith<$Res> implements $CartSearchSrCopyWith<$Res> {
  factory _$AddToCartSrCopyWith(_AddToCartSr value, $Res Function(_AddToCartSr) _then) = __$AddToCartSrCopyWithImpl;
@useResult
$Res call({
 Map<Product, double> products
});




}
/// @nodoc
class __$AddToCartSrCopyWithImpl<$Res>
    implements _$AddToCartSrCopyWith<$Res> {
  __$AddToCartSrCopyWithImpl(this._self, this._then);

  final _AddToCartSr _self;
  final $Res Function(_AddToCartSr) _then;

/// Create a copy of CartSearchSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,}) {
  return _then(_AddToCartSr(
null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as Map<Product, double>,
  ));
}


}

/// @nodoc


class _ShowWeightProductMessageSr implements CartSearchSr {
  const _ShowWeightProductMessageSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowWeightProductMessageSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartSearchSr.showWeightProductMessage()';
}


}




// dart format on
