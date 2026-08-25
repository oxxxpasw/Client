// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Review {

 String get comment; int get rating; List<XFile> get images; Store? get store; Product? get product; AcceptedOrder? get order;
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCopyWith<Review> get copyWith => _$ReviewCopyWithImpl<Review>(this as Review, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Review&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.store, store) || other.store == store)&&(identical(other.product, product) || other.product == product)&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,comment,rating,const DeepCollectionEquality().hash(images),store,product,order);

@override
String toString() {
  return 'Review(comment: $comment, rating: $rating, images: $images, store: $store, product: $product, order: $order)';
}


}

/// @nodoc
abstract mixin class $ReviewCopyWith<$Res>  {
  factory $ReviewCopyWith(Review value, $Res Function(Review) _then) = _$ReviewCopyWithImpl;
@useResult
$Res call({
 String comment, int rating, List<XFile> images, Store? store, Product? product, AcceptedOrder? order
});


$StoreCopyWith<$Res>? get store;$ProductCopyWith<$Res>? get product;$AcceptedOrderCopyWith<$Res>? get order;

}
/// @nodoc
class _$ReviewCopyWithImpl<$Res>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._self, this._then);

  final Review _self;
  final $Res Function(Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comment = null,Object? rating = null,Object? images = null,Object? store = freezed,Object? product = freezed,Object? order = freezed,}) {
  return _then(Review(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<XFile>,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AcceptedOrder?,
  ));
}
/// Create a copy of Review
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
}/// Create a copy of Review
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
}/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcceptedOrderCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $AcceptedOrderCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}


/// Adds pattern-matching-related methods to [Review].
extension ReviewPatterns on Review {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Review value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Review value)  $default,){
final _that = this;
switch (_that) {
case _Review():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Review value)?  $default,){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String comment,  int rating,  List<XFile> images,  Store? store,  Product? product,  AcceptedOrder? order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.comment,_that.rating,_that.images,_that.store,_that.product,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String comment,  int rating,  List<XFile> images,  Store? store,  Product? product,  AcceptedOrder? order)  $default,) {final _that = this;
switch (_that) {
case _Review():
return $default(_that.comment,_that.rating,_that.images,_that.store,_that.product,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String comment,  int rating,  List<XFile> images,  Store? store,  Product? product,  AcceptedOrder? order)?  $default,) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.comment,_that.rating,_that.images,_that.store,_that.product,_that.order);case _:
  return null;

}
}

}

/// @nodoc


class _Review implements Review {
  const _Review({required this.comment, required this.rating, required  List<XFile> images, this.store, this.product, this.order}): _images = images;
  

@override final  String comment;
@override final  int rating;
 final  List<XFile> _images;
@override List<XFile> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  Store? store;
@override final  Product? product;
@override final  AcceptedOrder? order;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCopyWith<_Review> get copyWith => __$ReviewCopyWithImpl<_Review>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Review&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.store, store) || other.store == store)&&(identical(other.product, product) || other.product == product)&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,comment,rating,const DeepCollectionEquality().hash(_images),store,product,order);

@override
String toString() {
  return 'Review(comment: $comment, rating: $rating, images: $images, store: $store, product: $product, order: $order)';
}


}

/// @nodoc
abstract mixin class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) _then) = __$ReviewCopyWithImpl;
@override @useResult
$Res call({
 String comment, int rating, List<XFile> images, Store? store, Product? product, AcceptedOrder? order
});


@override $StoreCopyWith<$Res>? get store;@override $ProductCopyWith<$Res>? get product;@override $AcceptedOrderCopyWith<$Res>? get order;

}
/// @nodoc
class __$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(this._self, this._then);

  final _Review _self;
  final $Res Function(_Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comment = null,Object? rating = null,Object? images = null,Object? store = freezed,Object? product = freezed,Object? order = freezed,}) {
  return _then(_Review(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<XFile>,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AcceptedOrder?,
  ));
}

/// Create a copy of Review
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
}/// Create a copy of Review
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
}/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcceptedOrderCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $AcceptedOrderCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}

// dart format on
