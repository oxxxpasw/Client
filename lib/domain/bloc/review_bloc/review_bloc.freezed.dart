// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReviewEvent()';
}


}

/// @nodoc
class $ReviewEventCopyWith<$Res>  {
$ReviewEventCopyWith(ReviewEvent _, $Res Function(ReviewEvent) __);
}


/// Adds pattern-matching-related methods to [ReviewEvent].
extension ReviewEventPatterns on ReviewEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _Submit value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _Submit() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _Submit value)  submit,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _Submit():
return submit(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _Submit value)?  submit,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _Submit() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Store? store,  AcceptedOrder? order,  Product? product)?  init,TResult Function( String comment,  int rating,  List<XFile> images)?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that.store,_that.order,_that.product);case _Submit() when submit != null:
return submit(_that.comment,_that.rating,_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Store? store,  AcceptedOrder? order,  Product? product)  init,required TResult Function( String comment,  int rating,  List<XFile> images)  submit,}) {final _that = this;
switch (_that) {
case _Init():
return init(_that.store,_that.order,_that.product);case _Submit():
return submit(_that.comment,_that.rating,_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Store? store,  AcceptedOrder? order,  Product? product)?  init,TResult? Function( String comment,  int rating,  List<XFile> images)?  submit,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that.store,_that.order,_that.product);case _Submit() when submit != null:
return submit(_that.comment,_that.rating,_that.images);case _:
  return null;

}
}

}

/// @nodoc


class _Init implements ReviewEvent {
  const _Init({this.store, this.order, this.product});
  

 final  Store? store;
 final  AcceptedOrder? order;
 final  Product? product;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitCopyWith<_Init> get copyWith => __$InitCopyWithImpl<_Init>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init&&(identical(other.store, store) || other.store == store)&&(identical(other.order, order) || other.order == order)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,store,order,product);

@override
String toString() {
  return 'ReviewEvent.init(store: $store, order: $order, product: $product)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $ReviewEventCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) _then) = __$InitCopyWithImpl;
@useResult
$Res call({
 Store? store, AcceptedOrder? order, Product? product
});


$StoreCopyWith<$Res>? get store;$AcceptedOrderCopyWith<$Res>? get order;$ProductCopyWith<$Res>? get product;

}
/// @nodoc
class __$InitCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(this._self, this._then);

  final _Init _self;
  final $Res Function(_Init) _then;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? store = freezed,Object? order = freezed,Object? product = freezed,}) {
  return _then(_Init(
store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AcceptedOrder?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,
  ));
}

/// Create a copy of ReviewEvent
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
}/// Create a copy of ReviewEvent
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
}/// Create a copy of ReviewEvent
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


class _Submit implements ReviewEvent {
  const _Submit({required this.comment, required this.rating, required  List<XFile> images}): _images = images;
  

 final  String comment;
 final  int rating;
 final  List<XFile> _images;
 List<XFile> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}


/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitCopyWith<_Submit> get copyWith => __$SubmitCopyWithImpl<_Submit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submit&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other._images, _images));
}


@override
int get hashCode => Object.hash(runtimeType,comment,rating,const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'ReviewEvent.submit(comment: $comment, rating: $rating, images: $images)';
}


}

/// @nodoc
abstract mixin class _$SubmitCopyWith<$Res> implements $ReviewEventCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) _then) = __$SubmitCopyWithImpl;
@useResult
$Res call({
 String comment, int rating, List<XFile> images
});




}
/// @nodoc
class __$SubmitCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(this._self, this._then);

  final _Submit _self;
  final $Res Function(_Submit) _then;

/// Create a copy of ReviewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? comment = null,Object? rating = null,Object? images = null,}) {
  return _then(_Submit(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<XFile>,
  ));
}


}

/// @nodoc
mixin _$ReviewState {

 ReviewStateStatus get status; Store? get store; AcceptedOrder? get order; Product? get product;
/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewStateCopyWith<ReviewState> get copyWith => _$ReviewStateCopyWithImpl<ReviewState>(this as ReviewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewState&&(identical(other.status, status) || other.status == status)&&(identical(other.store, store) || other.store == store)&&(identical(other.order, order) || other.order == order)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,status,store,order,product);

@override
String toString() {
  return 'ReviewState(status: $status, store: $store, order: $order, product: $product)';
}


}

/// @nodoc
abstract mixin class $ReviewStateCopyWith<$Res>  {
  factory $ReviewStateCopyWith(ReviewState value, $Res Function(ReviewState) _then) = _$ReviewStateCopyWithImpl;
@useResult
$Res call({
 ReviewStateStatus status, Store? store, AcceptedOrder? order, Product? product
});


$StoreCopyWith<$Res>? get store;$AcceptedOrderCopyWith<$Res>? get order;$ProductCopyWith<$Res>? get product;

}
/// @nodoc
class _$ReviewStateCopyWithImpl<$Res>
    implements $ReviewStateCopyWith<$Res> {
  _$ReviewStateCopyWithImpl(this._self, this._then);

  final ReviewState _self;
  final $Res Function(ReviewState) _then;

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? store = freezed,Object? order = freezed,Object? product = freezed,}) {
  return _then(ReviewState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReviewStateStatus,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AcceptedOrder?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,
  ));
}
/// Create a copy of ReviewState
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
}/// Create a copy of ReviewState
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
}/// Create a copy of ReviewState
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


/// Adds pattern-matching-related methods to [ReviewState].
extension ReviewStatePatterns on ReviewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewState value)  $default,){
final _that = this;
switch (_that) {
case _ReviewState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewState value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReviewStateStatus status,  Store? store,  AcceptedOrder? order,  Product? product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewState() when $default != null:
return $default(_that.status,_that.store,_that.order,_that.product);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReviewStateStatus status,  Store? store,  AcceptedOrder? order,  Product? product)  $default,) {final _that = this;
switch (_that) {
case _ReviewState():
return $default(_that.status,_that.store,_that.order,_that.product);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReviewStateStatus status,  Store? store,  AcceptedOrder? order,  Product? product)?  $default,) {final _that = this;
switch (_that) {
case _ReviewState() when $default != null:
return $default(_that.status,_that.store,_that.order,_that.product);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewState implements ReviewState {
  const _ReviewState({this.status = ReviewStateStatus.init, this.store, this.order, this.product});
  

@override@JsonKey() final  ReviewStateStatus status;
@override final  Store? store;
@override final  AcceptedOrder? order;
@override final  Product? product;

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewStateCopyWith<_ReviewState> get copyWith => __$ReviewStateCopyWithImpl<_ReviewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewState&&(identical(other.status, status) || other.status == status)&&(identical(other.store, store) || other.store == store)&&(identical(other.order, order) || other.order == order)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,status,store,order,product);

@override
String toString() {
  return 'ReviewState(status: $status, store: $store, order: $order, product: $product)';
}


}

/// @nodoc
abstract mixin class _$ReviewStateCopyWith<$Res> implements $ReviewStateCopyWith<$Res> {
  factory _$ReviewStateCopyWith(_ReviewState value, $Res Function(_ReviewState) _then) = __$ReviewStateCopyWithImpl;
@override @useResult
$Res call({
 ReviewStateStatus status, Store? store, AcceptedOrder? order, Product? product
});


@override $StoreCopyWith<$Res>? get store;@override $AcceptedOrderCopyWith<$Res>? get order;@override $ProductCopyWith<$Res>? get product;

}
/// @nodoc
class __$ReviewStateCopyWithImpl<$Res>
    implements _$ReviewStateCopyWith<$Res> {
  __$ReviewStateCopyWithImpl(this._self, this._then);

  final _ReviewState _self;
  final $Res Function(_ReviewState) _then;

/// Create a copy of ReviewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? store = freezed,Object? order = freezed,Object? product = freezed,}) {
  return _then(_ReviewState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReviewStateStatus,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AcceptedOrder?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,
  ));
}

/// Create a copy of ReviewState
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
}/// Create a copy of ReviewState
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
}/// Create a copy of ReviewState
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
mixin _$ReviewSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReviewSr()';
}


}

/// @nodoc
class $ReviewSrCopyWith<$Res>  {
$ReviewSrCopyWith(ReviewSr _, $Res Function(ReviewSr) __);
}


/// Adds pattern-matching-related methods to [ReviewSr].
extension ReviewSrPatterns on ReviewSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ReviewSuccessSr value)?  success,TResult Function( ReviewErrorSr value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ReviewSuccessSr() when success != null:
return success(_that);case ReviewErrorSr() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ReviewSuccessSr value)  success,required TResult Function( ReviewErrorSr value)  error,}){
final _that = this;
switch (_that) {
case ReviewSuccessSr():
return success(_that);case ReviewErrorSr():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ReviewSuccessSr value)?  success,TResult? Function( ReviewErrorSr value)?  error,}){
final _that = this;
switch (_that) {
case ReviewSuccessSr() when success != null:
return success(_that);case ReviewErrorSr() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ReviewSuccessSr() when success != null:
return success();case ReviewErrorSr() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ReviewSuccessSr():
return success();case ReviewErrorSr():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ReviewSuccessSr() when success != null:
return success();case ReviewErrorSr() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ReviewSuccessSr implements ReviewSr {
  const ReviewSuccessSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewSuccessSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReviewSr.success()';
}


}




/// @nodoc


class ReviewErrorSr implements ReviewSr {
  const ReviewErrorSr(this.message);
  

 final  String message;

/// Create a copy of ReviewSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewErrorSrCopyWith<ReviewErrorSr> get copyWith => _$ReviewErrorSrCopyWithImpl<ReviewErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReviewSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ReviewErrorSrCopyWith<$Res> implements $ReviewSrCopyWith<$Res> {
  factory $ReviewErrorSrCopyWith(ReviewErrorSr value, $Res Function(ReviewErrorSr) _then) = _$ReviewErrorSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ReviewErrorSrCopyWithImpl<$Res>
    implements $ReviewErrorSrCopyWith<$Res> {
  _$ReviewErrorSrCopyWithImpl(this._self, this._then);

  final ReviewErrorSr _self;
  final $Res Function(ReviewErrorSr) _then;

/// Create a copy of ReviewSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ReviewErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
