// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsState implements DiagnosticableTreeMixin {

 List<Group>? get categoryWithProducts; List<Product>? get searchResult; ProductsStateStatus get status;
/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsStateCopyWith<ProductsState> get copyWith => _$ProductsStateCopyWithImpl<ProductsState>(this as ProductsState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductsState'))
    ..add(DiagnosticsProperty('categoryWithProducts', categoryWithProducts))..add(DiagnosticsProperty('searchResult', searchResult))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsState&&const DeepCollectionEquality().equals(other.categoryWithProducts, categoryWithProducts)&&const DeepCollectionEquality().equals(other.searchResult, searchResult)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categoryWithProducts),const DeepCollectionEquality().hash(searchResult),status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductsState(categoryWithProducts: $categoryWithProducts, searchResult: $searchResult, status: $status)';
}


}

/// @nodoc
abstract mixin class $ProductsStateCopyWith<$Res>  {
  factory $ProductsStateCopyWith(ProductsState value, $Res Function(ProductsState) _then) = _$ProductsStateCopyWithImpl;
@useResult
$Res call({
 List<Group>? categoryWithProducts, List<Product>? searchResult, ProductsStateStatus status
});




}
/// @nodoc
class _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._self, this._then);

  final ProductsState _self;
  final $Res Function(ProductsState) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryWithProducts = freezed,Object? searchResult = freezed,Object? status = null,}) {
  return _then(ProductsState(
categoryWithProducts: freezed == categoryWithProducts ? _self.categoryWithProducts : categoryWithProducts // ignore: cast_nullable_to_non_nullable
as List<Group>?,searchResult: freezed == searchResult ? _self.searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<Product>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductsStateStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductsState].
extension ProductsStatePatterns on ProductsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsState value)  $default,){
final _that = this;
switch (_that) {
case _ProductsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Group>? categoryWithProducts,  List<Product>? searchResult,  ProductsStateStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsState() when $default != null:
return $default(_that.categoryWithProducts,_that.searchResult,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Group>? categoryWithProducts,  List<Product>? searchResult,  ProductsStateStatus status)  $default,) {final _that = this;
switch (_that) {
case _ProductsState():
return $default(_that.categoryWithProducts,_that.searchResult,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Group>? categoryWithProducts,  List<Product>? searchResult,  ProductsStateStatus status)?  $default,) {final _that = this;
switch (_that) {
case _ProductsState() when $default != null:
return $default(_that.categoryWithProducts,_that.searchResult,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _ProductsState with DiagnosticableTreeMixin implements ProductsState {
  const _ProductsState({ List<Group>? categoryWithProducts,  List<Product>? searchResult, this.status = ProductsStateStatus.init}): _categoryWithProducts = categoryWithProducts,_searchResult = searchResult;
  

 final  List<Group>? _categoryWithProducts;
@override List<Group>? get categoryWithProducts {
  final value = _categoryWithProducts;
  if (value == null) return null;
  if (_categoryWithProducts is EqualUnmodifiableListView) return _categoryWithProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Product>? _searchResult;
@override List<Product>? get searchResult {
  final value = _searchResult;
  if (value == null) return null;
  if (_searchResult is EqualUnmodifiableListView) return _searchResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  ProductsStateStatus status;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsStateCopyWith<_ProductsState> get copyWith => __$ProductsStateCopyWithImpl<_ProductsState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductsState'))
    ..add(DiagnosticsProperty('categoryWithProducts', categoryWithProducts))..add(DiagnosticsProperty('searchResult', searchResult))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsState&&const DeepCollectionEquality().equals(other._categoryWithProducts, _categoryWithProducts)&&const DeepCollectionEquality().equals(other._searchResult, _searchResult)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categoryWithProducts),const DeepCollectionEquality().hash(_searchResult),status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductsState(categoryWithProducts: $categoryWithProducts, searchResult: $searchResult, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ProductsStateCopyWith<$Res> implements $ProductsStateCopyWith<$Res> {
  factory _$ProductsStateCopyWith(_ProductsState value, $Res Function(_ProductsState) _then) = __$ProductsStateCopyWithImpl;
@override @useResult
$Res call({
 List<Group>? categoryWithProducts, List<Product>? searchResult, ProductsStateStatus status
});




}
/// @nodoc
class __$ProductsStateCopyWithImpl<$Res>
    implements _$ProductsStateCopyWith<$Res> {
  __$ProductsStateCopyWithImpl(this._self, this._then);

  final _ProductsState _self;
  final $Res Function(_ProductsState) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryWithProducts = freezed,Object? searchResult = freezed,Object? status = null,}) {
  return _then(_ProductsState(
categoryWithProducts: freezed == categoryWithProducts ? _self._categoryWithProducts : categoryWithProducts // ignore: cast_nullable_to_non_nullable
as List<Group>?,searchResult: freezed == searchResult ? _self._searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<Product>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductsStateStatus,
  ));
}


}

/// @nodoc
mixin _$ProductsSr implements DiagnosticableTreeMixin {

 String get error;
/// Create a copy of ProductsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsSrCopyWith<ProductsSr> get copyWith => _$ProductsSrCopyWithImpl<ProductsSr>(this as ProductsSr, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductsSr'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductsSr(error: $error)';
}


}

/// @nodoc
abstract mixin class $ProductsSrCopyWith<$Res>  {
  factory $ProductsSrCopyWith(ProductsSr value, $Res Function(ProductsSr) _then) = _$ProductsSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ProductsSrCopyWithImpl<$Res>
    implements $ProductsSrCopyWith<$Res> {
  _$ProductsSrCopyWithImpl(this._self, this._then);

  final ProductsSr _self;
  final $Res Function(ProductsSr) _then;

/// Create a copy of ProductsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,}) {
  return _then(ProductsSr.error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductsSr].
extension ProductsSrPatterns on ProductsSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductsSrError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductsSrError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductsSrError value)  error,}){
final _that = this;
switch (_that) {
case ProductsSrError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductsSrError value)?  error,}){
final _that = this;
switch (_that) {
case ProductsSrError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductsSrError() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case ProductsSrError():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case ProductsSrError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class ProductsSrError with DiagnosticableTreeMixin implements ProductsSr {
  const ProductsSrError(this.error);
  

@override final  String error;

/// Create a copy of ProductsSr
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsSrErrorCopyWith<ProductsSrError> get copyWith => _$ProductsSrErrorCopyWithImpl<ProductsSrError>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductsSr.error'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsSrError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductsSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ProductsSrErrorCopyWith<$Res> implements $ProductsSrCopyWith<$Res> {
  factory $ProductsSrErrorCopyWith(ProductsSrError value, $Res Function(ProductsSrError) _then) = _$ProductsSrErrorCopyWithImpl;
@override @useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ProductsSrErrorCopyWithImpl<$Res>
    implements $ProductsSrErrorCopyWith<$Res> {
  _$ProductsSrErrorCopyWithImpl(this._self, this._then);

  final ProductsSrError _self;
  final $Res Function(ProductsSrError) _then;

/// Create a copy of ProductsSr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ProductsSrError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
