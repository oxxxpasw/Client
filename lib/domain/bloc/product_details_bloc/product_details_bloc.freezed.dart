// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductDetailsState {

 ProductDetailsStateStatus get status; Product? get product;
/// Create a copy of ProductDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailsStateCopyWith<ProductDetailsState> get copyWith => _$ProductDetailsStateCopyWithImpl<ProductDetailsState>(this as ProductDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,status,product);

@override
String toString() {
  return 'ProductDetailsState(status: $status, product: $product)';
}


}

/// @nodoc
abstract mixin class $ProductDetailsStateCopyWith<$Res>  {
  factory $ProductDetailsStateCopyWith(ProductDetailsState value, $Res Function(ProductDetailsState) _then) = _$ProductDetailsStateCopyWithImpl;
@useResult
$Res call({
 ProductDetailsStateStatus status, Product? product
});


$ProductCopyWith<$Res>? get product;

}
/// @nodoc
class _$ProductDetailsStateCopyWithImpl<$Res>
    implements $ProductDetailsStateCopyWith<$Res> {
  _$ProductDetailsStateCopyWithImpl(this._self, this._then);

  final ProductDetailsState _self;
  final $Res Function(ProductDetailsState) _then;

/// Create a copy of ProductDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? product = freezed,}) {
  return _then(ProductDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductDetailsStateStatus,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,
  ));
}
/// Create a copy of ProductDetailsState
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


/// Adds pattern-matching-related methods to [ProductDetailsState].
extension ProductDetailsStatePatterns on ProductDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductDetailsStateStatus status,  Product? product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailsState() when $default != null:
return $default(_that.status,_that.product);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductDetailsStateStatus status,  Product? product)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailsState():
return $default(_that.status,_that.product);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductDetailsStateStatus status,  Product? product)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailsState() when $default != null:
return $default(_that.status,_that.product);case _:
  return null;

}
}

}

/// @nodoc


class _ProductDetailsState implements ProductDetailsState {
  const _ProductDetailsState({this.status = ProductDetailsStateStatus.loading, this.product});
  

@override@JsonKey() final  ProductDetailsStateStatus status;
@override final  Product? product;

/// Create a copy of ProductDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailsStateCopyWith<_ProductDetailsState> get copyWith => __$ProductDetailsStateCopyWithImpl<_ProductDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,status,product);

@override
String toString() {
  return 'ProductDetailsState(status: $status, product: $product)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailsStateCopyWith<$Res> implements $ProductDetailsStateCopyWith<$Res> {
  factory _$ProductDetailsStateCopyWith(_ProductDetailsState value, $Res Function(_ProductDetailsState) _then) = __$ProductDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 ProductDetailsStateStatus status, Product? product
});


@override $ProductCopyWith<$Res>? get product;

}
/// @nodoc
class __$ProductDetailsStateCopyWithImpl<$Res>
    implements _$ProductDetailsStateCopyWith<$Res> {
  __$ProductDetailsStateCopyWithImpl(this._self, this._then);

  final _ProductDetailsState _self;
  final $Res Function(_ProductDetailsState) _then;

/// Create a copy of ProductDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? product = freezed,}) {
  return _then(_ProductDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductDetailsStateStatus,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,
  ));
}

/// Create a copy of ProductDetailsState
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
mixin _$ProductDetailsSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailsSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductDetailsSr()';
}


}

/// @nodoc
class $ProductDetailsSrCopyWith<$Res>  {
$ProductDetailsSrCopyWith(ProductDetailsSr _, $Res Function(ProductDetailsSr) __);
}


/// Adds pattern-matching-related methods to [ProductDetailsSr].
extension ProductDetailsSrPatterns on ProductDetailsSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ErrorSr value)?  error,TResult Function( _AddedSr value)?  added,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _AddedSr() when added != null:
return added(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ErrorSr value)  error,required TResult Function( _AddedSr value)  added,}){
final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that);case _AddedSr():
return added(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ErrorSr value)?  error,TResult? Function( _AddedSr value)?  added,}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _AddedSr() when added != null:
return added(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function()?  added,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _AddedSr() when added != null:
return added();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function()  added,}) {final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that.error);case _AddedSr():
return added();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function()?  added,}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _AddedSr() when added != null:
return added();case _:
  return null;

}
}

}

/// @nodoc


class _ErrorSr implements ProductDetailsSr {
  const _ErrorSr(this.error);
  

 final  String error;

/// Create a copy of ProductDetailsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorSrCopyWith<_ErrorSr> get copyWith => __$ErrorSrCopyWithImpl<_ErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ProductDetailsSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorSrCopyWith<$Res> implements $ProductDetailsSrCopyWith<$Res> {
  factory _$ErrorSrCopyWith(_ErrorSr value, $Res Function(_ErrorSr) _then) = __$ErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorSrCopyWithImpl<$Res>
    implements _$ErrorSrCopyWith<$Res> {
  __$ErrorSrCopyWithImpl(this._self, this._then);

  final _ErrorSr _self;
  final $Res Function(_ErrorSr) _then;

/// Create a copy of ProductDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddedSr implements ProductDetailsSr {
  const _AddedSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddedSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductDetailsSr.added()';
}


}




// dart format on
