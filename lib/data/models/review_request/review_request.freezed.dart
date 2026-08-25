// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewRequest implements DiagnosticableTreeMixin {

 String get comment; int get rating; ObjectType get objectType; String? get objectId; String? get subTargetId; List<String> get images; ReviewDataRequest? get reviewData; String? get htmlContent;
/// Create a copy of ReviewRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewRequestCopyWith<ReviewRequest> get copyWith => _$ReviewRequestCopyWithImpl<ReviewRequest>(this as ReviewRequest, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewRequest'))
    ..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('rating', rating))..add(DiagnosticsProperty('objectType', objectType))..add(DiagnosticsProperty('objectId', objectId))..add(DiagnosticsProperty('subTargetId', subTargetId))..add(DiagnosticsProperty('images', images))..add(DiagnosticsProperty('reviewData', reviewData))..add(DiagnosticsProperty('htmlContent', htmlContent));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewRequest&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.subTargetId, subTargetId) || other.subTargetId == subTargetId)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.reviewData, reviewData) || other.reviewData == reviewData)&&(identical(other.htmlContent, htmlContent) || other.htmlContent == htmlContent));
}


@override
int get hashCode => Object.hash(runtimeType,comment,rating,objectType,objectId,subTargetId,const DeepCollectionEquality().hash(images),reviewData,htmlContent);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewRequest(comment: $comment, rating: $rating, objectType: $objectType, objectId: $objectId, subTargetId: $subTargetId, images: $images, reviewData: $reviewData, htmlContent: $htmlContent)';
}


}

/// @nodoc
abstract mixin class $ReviewRequestCopyWith<$Res>  {
  factory $ReviewRequestCopyWith(ReviewRequest value, $Res Function(ReviewRequest) _then) = _$ReviewRequestCopyWithImpl;
@useResult
$Res call({
 String comment, int rating, ObjectType objectType, String? objectId, String? subTargetId, List<String> images, ReviewDataRequest? reviewData, String? htmlContent
});


$ReviewDataRequestCopyWith<$Res>? get reviewData;

}
/// @nodoc
class _$ReviewRequestCopyWithImpl<$Res>
    implements $ReviewRequestCopyWith<$Res> {
  _$ReviewRequestCopyWithImpl(this._self, this._then);

  final ReviewRequest _self;
  final $Res Function(ReviewRequest) _then;

/// Create a copy of ReviewRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comment = null,Object? rating = null,Object? objectType = null,Object? objectId = freezed,Object? subTargetId = freezed,Object? images = null,Object? reviewData = freezed,Object? htmlContent = freezed,}) {
  return _then(ReviewRequest(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as ObjectType,objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,subTargetId: freezed == subTargetId ? _self.subTargetId : subTargetId // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,reviewData: freezed == reviewData ? _self.reviewData : reviewData // ignore: cast_nullable_to_non_nullable
as ReviewDataRequest?,htmlContent: freezed == htmlContent ? _self.htmlContent : htmlContent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ReviewRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewDataRequestCopyWith<$Res>? get reviewData {
    if (_self.reviewData == null) {
    return null;
  }

  return $ReviewDataRequestCopyWith<$Res>(_self.reviewData!, (value) {
    return _then(_self.copyWith(reviewData: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewRequest].
extension ReviewRequestPatterns on ReviewRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewRequest value)  $default,){
final _that = this;
switch (_that) {
case _ReviewRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String comment,  int rating,  ObjectType objectType,  String? objectId,  String? subTargetId,  List<String> images,  ReviewDataRequest? reviewData,  String? htmlContent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewRequest() when $default != null:
return $default(_that.comment,_that.rating,_that.objectType,_that.objectId,_that.subTargetId,_that.images,_that.reviewData,_that.htmlContent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String comment,  int rating,  ObjectType objectType,  String? objectId,  String? subTargetId,  List<String> images,  ReviewDataRequest? reviewData,  String? htmlContent)  $default,) {final _that = this;
switch (_that) {
case _ReviewRequest():
return $default(_that.comment,_that.rating,_that.objectType,_that.objectId,_that.subTargetId,_that.images,_that.reviewData,_that.htmlContent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String comment,  int rating,  ObjectType objectType,  String? objectId,  String? subTargetId,  List<String> images,  ReviewDataRequest? reviewData,  String? htmlContent)?  $default,) {final _that = this;
switch (_that) {
case _ReviewRequest() when $default != null:
return $default(_that.comment,_that.rating,_that.objectType,_that.objectId,_that.subTargetId,_that.images,_that.reviewData,_that.htmlContent);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewRequest extends ReviewRequest with DiagnosticableTreeMixin {
  const _ReviewRequest({required this.comment, required this.rating, required this.objectType, required this.objectId, required this.subTargetId, required  List<String> images, this.reviewData, this.htmlContent}): _images = images,super._();
  

@override final  String comment;
@override final  int rating;
@override final  ObjectType objectType;
@override final  String? objectId;
@override final  String? subTargetId;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  ReviewDataRequest? reviewData;
@override final  String? htmlContent;

/// Create a copy of ReviewRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewRequestCopyWith<_ReviewRequest> get copyWith => __$ReviewRequestCopyWithImpl<_ReviewRequest>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewRequest'))
    ..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('rating', rating))..add(DiagnosticsProperty('objectType', objectType))..add(DiagnosticsProperty('objectId', objectId))..add(DiagnosticsProperty('subTargetId', subTargetId))..add(DiagnosticsProperty('images', images))..add(DiagnosticsProperty('reviewData', reviewData))..add(DiagnosticsProperty('htmlContent', htmlContent));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewRequest&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.subTargetId, subTargetId) || other.subTargetId == subTargetId)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.reviewData, reviewData) || other.reviewData == reviewData)&&(identical(other.htmlContent, htmlContent) || other.htmlContent == htmlContent));
}


@override
int get hashCode => Object.hash(runtimeType,comment,rating,objectType,objectId,subTargetId,const DeepCollectionEquality().hash(_images),reviewData,htmlContent);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewRequest(comment: $comment, rating: $rating, objectType: $objectType, objectId: $objectId, subTargetId: $subTargetId, images: $images, reviewData: $reviewData, htmlContent: $htmlContent)';
}


}

/// @nodoc
abstract mixin class _$ReviewRequestCopyWith<$Res> implements $ReviewRequestCopyWith<$Res> {
  factory _$ReviewRequestCopyWith(_ReviewRequest value, $Res Function(_ReviewRequest) _then) = __$ReviewRequestCopyWithImpl;
@override @useResult
$Res call({
 String comment, int rating, ObjectType objectType, String? objectId, String? subTargetId, List<String> images, ReviewDataRequest? reviewData, String? htmlContent
});


@override $ReviewDataRequestCopyWith<$Res>? get reviewData;

}
/// @nodoc
class __$ReviewRequestCopyWithImpl<$Res>
    implements _$ReviewRequestCopyWith<$Res> {
  __$ReviewRequestCopyWithImpl(this._self, this._then);

  final _ReviewRequest _self;
  final $Res Function(_ReviewRequest) _then;

/// Create a copy of ReviewRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comment = null,Object? rating = null,Object? objectType = null,Object? objectId = freezed,Object? subTargetId = freezed,Object? images = null,Object? reviewData = freezed,Object? htmlContent = freezed,}) {
  return _then(_ReviewRequest(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as ObjectType,objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,subTargetId: freezed == subTargetId ? _self.subTargetId : subTargetId // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,reviewData: freezed == reviewData ? _self.reviewData : reviewData // ignore: cast_nullable_to_non_nullable
as ReviewDataRequest?,htmlContent: freezed == htmlContent ? _self.htmlContent : htmlContent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ReviewRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewDataRequestCopyWith<$Res>? get reviewData {
    if (_self.reviewData == null) {
    return null;
  }

  return $ReviewDataRequestCopyWith<$Res>(_self.reviewData!, (value) {
    return _then(_self.copyWith(reviewData: value));
  });
}
}

/// @nodoc
mixin _$ReviewDataRequest implements DiagnosticableTreeMixin {

 ReviewStoreDataRequest? get store; ReviewProductDataRequest? get product; ReviewPurchaseDataRequest? get purchase;
/// Create a copy of ReviewDataRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewDataRequestCopyWith<ReviewDataRequest> get copyWith => _$ReviewDataRequestCopyWithImpl<ReviewDataRequest>(this as ReviewDataRequest, _$identity);

  /// Serializes this ReviewDataRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewDataRequest'))
    ..add(DiagnosticsProperty('store', store))..add(DiagnosticsProperty('product', product))..add(DiagnosticsProperty('purchase', purchase));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewDataRequest&&(identical(other.store, store) || other.store == store)&&(identical(other.product, product) || other.product == product)&&(identical(other.purchase, purchase) || other.purchase == purchase));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,store,product,purchase);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewDataRequest(store: $store, product: $product, purchase: $purchase)';
}


}

/// @nodoc
abstract mixin class $ReviewDataRequestCopyWith<$Res>  {
  factory $ReviewDataRequestCopyWith(ReviewDataRequest value, $Res Function(ReviewDataRequest) _then) = _$ReviewDataRequestCopyWithImpl;
@useResult
$Res call({
 ReviewStoreDataRequest? store, ReviewProductDataRequest? product, ReviewPurchaseDataRequest? purchase
});


$ReviewStoreDataRequestCopyWith<$Res>? get store;$ReviewProductDataRequestCopyWith<$Res>? get product;$ReviewPurchaseDataRequestCopyWith<$Res>? get purchase;

}
/// @nodoc
class _$ReviewDataRequestCopyWithImpl<$Res>
    implements $ReviewDataRequestCopyWith<$Res> {
  _$ReviewDataRequestCopyWithImpl(this._self, this._then);

  final ReviewDataRequest _self;
  final $Res Function(ReviewDataRequest) _then;

/// Create a copy of ReviewDataRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? store = freezed,Object? product = freezed,Object? purchase = freezed,}) {
  return _then(ReviewDataRequest(
store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as ReviewStoreDataRequest?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ReviewProductDataRequest?,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as ReviewPurchaseDataRequest?,
  ));
}
/// Create a copy of ReviewDataRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewStoreDataRequestCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $ReviewStoreDataRequestCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of ReviewDataRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewProductDataRequestCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ReviewProductDataRequestCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of ReviewDataRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewPurchaseDataRequestCopyWith<$Res>? get purchase {
    if (_self.purchase == null) {
    return null;
  }

  return $ReviewPurchaseDataRequestCopyWith<$Res>(_self.purchase!, (value) {
    return _then(_self.copyWith(purchase: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewDataRequest].
extension ReviewDataRequestPatterns on ReviewDataRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewDataRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewDataRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewDataRequest value)  $default,){
final _that = this;
switch (_that) {
case _ReviewDataRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewDataRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewDataRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReviewStoreDataRequest? store,  ReviewProductDataRequest? product,  ReviewPurchaseDataRequest? purchase)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewDataRequest() when $default != null:
return $default(_that.store,_that.product,_that.purchase);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReviewStoreDataRequest? store,  ReviewProductDataRequest? product,  ReviewPurchaseDataRequest? purchase)  $default,) {final _that = this;
switch (_that) {
case _ReviewDataRequest():
return $default(_that.store,_that.product,_that.purchase);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReviewStoreDataRequest? store,  ReviewProductDataRequest? product,  ReviewPurchaseDataRequest? purchase)?  $default,) {final _that = this;
switch (_that) {
case _ReviewDataRequest() when $default != null:
return $default(_that.store,_that.product,_that.purchase);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _ReviewDataRequest with DiagnosticableTreeMixin implements ReviewDataRequest {
  const _ReviewDataRequest({this.store, this.product, this.purchase});
  

@override final  ReviewStoreDataRequest? store;
@override final  ReviewProductDataRequest? product;
@override final  ReviewPurchaseDataRequest? purchase;

/// Create a copy of ReviewDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewDataRequestCopyWith<_ReviewDataRequest> get copyWith => __$ReviewDataRequestCopyWithImpl<_ReviewDataRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewDataRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewDataRequest'))
    ..add(DiagnosticsProperty('store', store))..add(DiagnosticsProperty('product', product))..add(DiagnosticsProperty('purchase', purchase));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewDataRequest&&(identical(other.store, store) || other.store == store)&&(identical(other.product, product) || other.product == product)&&(identical(other.purchase, purchase) || other.purchase == purchase));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,store,product,purchase);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewDataRequest(store: $store, product: $product, purchase: $purchase)';
}


}

/// @nodoc
abstract mixin class _$ReviewDataRequestCopyWith<$Res> implements $ReviewDataRequestCopyWith<$Res> {
  factory _$ReviewDataRequestCopyWith(_ReviewDataRequest value, $Res Function(_ReviewDataRequest) _then) = __$ReviewDataRequestCopyWithImpl;
@override @useResult
$Res call({
 ReviewStoreDataRequest? store, ReviewProductDataRequest? product, ReviewPurchaseDataRequest? purchase
});


@override $ReviewStoreDataRequestCopyWith<$Res>? get store;@override $ReviewProductDataRequestCopyWith<$Res>? get product;@override $ReviewPurchaseDataRequestCopyWith<$Res>? get purchase;

}
/// @nodoc
class __$ReviewDataRequestCopyWithImpl<$Res>
    implements _$ReviewDataRequestCopyWith<$Res> {
  __$ReviewDataRequestCopyWithImpl(this._self, this._then);

  final _ReviewDataRequest _self;
  final $Res Function(_ReviewDataRequest) _then;

/// Create a copy of ReviewDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? store = freezed,Object? product = freezed,Object? purchase = freezed,}) {
  return _then(_ReviewDataRequest(
store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as ReviewStoreDataRequest?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ReviewProductDataRequest?,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as ReviewPurchaseDataRequest?,
  ));
}

/// Create a copy of ReviewDataRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewStoreDataRequestCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $ReviewStoreDataRequestCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of ReviewDataRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewProductDataRequestCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ReviewProductDataRequestCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of ReviewDataRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewPurchaseDataRequestCopyWith<$Res>? get purchase {
    if (_self.purchase == null) {
    return null;
  }

  return $ReviewPurchaseDataRequestCopyWith<$Res>(_self.purchase!, (value) {
    return _then(_self.copyWith(purchase: value));
  });
}
}

/// @nodoc
mixin _$ReviewStoreDataRequest implements DiagnosticableTreeMixin {

 String get id; String? get name; String? get address;
/// Create a copy of ReviewStoreDataRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewStoreDataRequestCopyWith<ReviewStoreDataRequest> get copyWith => _$ReviewStoreDataRequestCopyWithImpl<ReviewStoreDataRequest>(this as ReviewStoreDataRequest, _$identity);

  /// Serializes this ReviewStoreDataRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewStoreDataRequest'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('address', address));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewStoreDataRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewStoreDataRequest(id: $id, name: $name, address: $address)';
}


}

/// @nodoc
abstract mixin class $ReviewStoreDataRequestCopyWith<$Res>  {
  factory $ReviewStoreDataRequestCopyWith(ReviewStoreDataRequest value, $Res Function(ReviewStoreDataRequest) _then) = _$ReviewStoreDataRequestCopyWithImpl;
@useResult
$Res call({
 String id, String? name, String? address
});




}
/// @nodoc
class _$ReviewStoreDataRequestCopyWithImpl<$Res>
    implements $ReviewStoreDataRequestCopyWith<$Res> {
  _$ReviewStoreDataRequestCopyWithImpl(this._self, this._then);

  final ReviewStoreDataRequest _self;
  final $Res Function(ReviewStoreDataRequest) _then;

/// Create a copy of ReviewStoreDataRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? address = freezed,}) {
  return _then(ReviewStoreDataRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewStoreDataRequest].
extension ReviewStoreDataRequestPatterns on ReviewStoreDataRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewStoreDataRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewStoreDataRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewStoreDataRequest value)  $default,){
final _that = this;
switch (_that) {
case _ReviewStoreDataRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewStoreDataRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewStoreDataRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name,  String? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewStoreDataRequest() when $default != null:
return $default(_that.id,_that.name,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name,  String? address)  $default,) {final _that = this;
switch (_that) {
case _ReviewStoreDataRequest():
return $default(_that.id,_that.name,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name,  String? address)?  $default,) {final _that = this;
switch (_that) {
case _ReviewStoreDataRequest() when $default != null:
return $default(_that.id,_that.name,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _ReviewStoreDataRequest with DiagnosticableTreeMixin implements ReviewStoreDataRequest {
  const _ReviewStoreDataRequest({required this.id, this.name, this.address});
  

@override final  String id;
@override final  String? name;
@override final  String? address;

/// Create a copy of ReviewStoreDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewStoreDataRequestCopyWith<_ReviewStoreDataRequest> get copyWith => __$ReviewStoreDataRequestCopyWithImpl<_ReviewStoreDataRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewStoreDataRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewStoreDataRequest'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('address', address));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewStoreDataRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewStoreDataRequest(id: $id, name: $name, address: $address)';
}


}

/// @nodoc
abstract mixin class _$ReviewStoreDataRequestCopyWith<$Res> implements $ReviewStoreDataRequestCopyWith<$Res> {
  factory _$ReviewStoreDataRequestCopyWith(_ReviewStoreDataRequest value, $Res Function(_ReviewStoreDataRequest) _then) = __$ReviewStoreDataRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, String? address
});




}
/// @nodoc
class __$ReviewStoreDataRequestCopyWithImpl<$Res>
    implements _$ReviewStoreDataRequestCopyWith<$Res> {
  __$ReviewStoreDataRequestCopyWithImpl(this._self, this._then);

  final _ReviewStoreDataRequest _self;
  final $Res Function(_ReviewStoreDataRequest) _then;

/// Create a copy of ReviewStoreDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? address = freezed,}) {
  return _then(_ReviewStoreDataRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ReviewProductDataRequest implements DiagnosticableTreeMixin {

 String get id; String? get name;
/// Create a copy of ReviewProductDataRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewProductDataRequestCopyWith<ReviewProductDataRequest> get copyWith => _$ReviewProductDataRequestCopyWithImpl<ReviewProductDataRequest>(this as ReviewProductDataRequest, _$identity);

  /// Serializes this ReviewProductDataRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewProductDataRequest'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewProductDataRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewProductDataRequest(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ReviewProductDataRequestCopyWith<$Res>  {
  factory $ReviewProductDataRequestCopyWith(ReviewProductDataRequest value, $Res Function(ReviewProductDataRequest) _then) = _$ReviewProductDataRequestCopyWithImpl;
@useResult
$Res call({
 String id, String? name
});




}
/// @nodoc
class _$ReviewProductDataRequestCopyWithImpl<$Res>
    implements $ReviewProductDataRequestCopyWith<$Res> {
  _$ReviewProductDataRequestCopyWithImpl(this._self, this._then);

  final ReviewProductDataRequest _self;
  final $Res Function(ReviewProductDataRequest) _then;

/// Create a copy of ReviewProductDataRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,}) {
  return _then(ReviewProductDataRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewProductDataRequest].
extension ReviewProductDataRequestPatterns on ReviewProductDataRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewProductDataRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewProductDataRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewProductDataRequest value)  $default,){
final _that = this;
switch (_that) {
case _ReviewProductDataRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewProductDataRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewProductDataRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewProductDataRequest() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _ReviewProductDataRequest():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _ReviewProductDataRequest() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _ReviewProductDataRequest with DiagnosticableTreeMixin implements ReviewProductDataRequest {
  const _ReviewProductDataRequest({required this.id, this.name});
  

@override final  String id;
@override final  String? name;

/// Create a copy of ReviewProductDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewProductDataRequestCopyWith<_ReviewProductDataRequest> get copyWith => __$ReviewProductDataRequestCopyWithImpl<_ReviewProductDataRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewProductDataRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewProductDataRequest'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewProductDataRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewProductDataRequest(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ReviewProductDataRequestCopyWith<$Res> implements $ReviewProductDataRequestCopyWith<$Res> {
  factory _$ReviewProductDataRequestCopyWith(_ReviewProductDataRequest value, $Res Function(_ReviewProductDataRequest) _then) = __$ReviewProductDataRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name
});




}
/// @nodoc
class __$ReviewProductDataRequestCopyWithImpl<$Res>
    implements _$ReviewProductDataRequestCopyWith<$Res> {
  __$ReviewProductDataRequestCopyWithImpl(this._self, this._then);

  final _ReviewProductDataRequest _self;
  final $Res Function(_ReviewProductDataRequest) _then;

/// Create a copy of ReviewProductDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,}) {
  return _then(_ReviewProductDataRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ReviewPurchaseDataRequest implements DiagnosticableTreeMixin {

 String get id; DateTime? get createdDatetime; List<ReviewOrderedProductRequest> get products; double? get total; ReviewStoreDataRequest? get store;
/// Create a copy of ReviewPurchaseDataRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewPurchaseDataRequestCopyWith<ReviewPurchaseDataRequest> get copyWith => _$ReviewPurchaseDataRequestCopyWithImpl<ReviewPurchaseDataRequest>(this as ReviewPurchaseDataRequest, _$identity);

  /// Serializes this ReviewPurchaseDataRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewPurchaseDataRequest'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('createdDatetime', createdDatetime))..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('total', total))..add(DiagnosticsProperty('store', store));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewPurchaseDataRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.createdDatetime, createdDatetime) || other.createdDatetime == createdDatetime)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.total, total) || other.total == total)&&(identical(other.store, store) || other.store == store));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdDatetime,const DeepCollectionEquality().hash(products),total,store);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewPurchaseDataRequest(id: $id, createdDatetime: $createdDatetime, products: $products, total: $total, store: $store)';
}


}

/// @nodoc
abstract mixin class $ReviewPurchaseDataRequestCopyWith<$Res>  {
  factory $ReviewPurchaseDataRequestCopyWith(ReviewPurchaseDataRequest value, $Res Function(ReviewPurchaseDataRequest) _then) = _$ReviewPurchaseDataRequestCopyWithImpl;
@useResult
$Res call({
 String id, DateTime? createdDatetime, List<ReviewOrderedProductRequest> products, double? total, ReviewStoreDataRequest? store
});


$ReviewStoreDataRequestCopyWith<$Res>? get store;

}
/// @nodoc
class _$ReviewPurchaseDataRequestCopyWithImpl<$Res>
    implements $ReviewPurchaseDataRequestCopyWith<$Res> {
  _$ReviewPurchaseDataRequestCopyWithImpl(this._self, this._then);

  final ReviewPurchaseDataRequest _self;
  final $Res Function(ReviewPurchaseDataRequest) _then;

/// Create a copy of ReviewPurchaseDataRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdDatetime = freezed,Object? products = null,Object? total = freezed,Object? store = freezed,}) {
  return _then(ReviewPurchaseDataRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdDatetime: freezed == createdDatetime ? _self.createdDatetime : createdDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ReviewOrderedProductRequest>,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as ReviewStoreDataRequest?,
  ));
}
/// Create a copy of ReviewPurchaseDataRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewStoreDataRequestCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $ReviewStoreDataRequestCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewPurchaseDataRequest].
extension ReviewPurchaseDataRequestPatterns on ReviewPurchaseDataRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewPurchaseDataRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewPurchaseDataRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewPurchaseDataRequest value)  $default,){
final _that = this;
switch (_that) {
case _ReviewPurchaseDataRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewPurchaseDataRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewPurchaseDataRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime? createdDatetime,  List<ReviewOrderedProductRequest> products,  double? total,  ReviewStoreDataRequest? store)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewPurchaseDataRequest() when $default != null:
return $default(_that.id,_that.createdDatetime,_that.products,_that.total,_that.store);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime? createdDatetime,  List<ReviewOrderedProductRequest> products,  double? total,  ReviewStoreDataRequest? store)  $default,) {final _that = this;
switch (_that) {
case _ReviewPurchaseDataRequest():
return $default(_that.id,_that.createdDatetime,_that.products,_that.total,_that.store);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime? createdDatetime,  List<ReviewOrderedProductRequest> products,  double? total,  ReviewStoreDataRequest? store)?  $default,) {final _that = this;
switch (_that) {
case _ReviewPurchaseDataRequest() when $default != null:
return $default(_that.id,_that.createdDatetime,_that.products,_that.total,_that.store);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _ReviewPurchaseDataRequest with DiagnosticableTreeMixin implements ReviewPurchaseDataRequest {
  const _ReviewPurchaseDataRequest({required this.id, this.createdDatetime,  List<ReviewOrderedProductRequest> products = const [], this.total, this.store}): _products = products;
  

@override final  String id;
@override final  DateTime? createdDatetime;
 final  List<ReviewOrderedProductRequest> _products;
@override@JsonKey() List<ReviewOrderedProductRequest> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  double? total;
@override final  ReviewStoreDataRequest? store;

/// Create a copy of ReviewPurchaseDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewPurchaseDataRequestCopyWith<_ReviewPurchaseDataRequest> get copyWith => __$ReviewPurchaseDataRequestCopyWithImpl<_ReviewPurchaseDataRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewPurchaseDataRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewPurchaseDataRequest'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('createdDatetime', createdDatetime))..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('total', total))..add(DiagnosticsProperty('store', store));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewPurchaseDataRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.createdDatetime, createdDatetime) || other.createdDatetime == createdDatetime)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.total, total) || other.total == total)&&(identical(other.store, store) || other.store == store));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdDatetime,const DeepCollectionEquality().hash(_products),total,store);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewPurchaseDataRequest(id: $id, createdDatetime: $createdDatetime, products: $products, total: $total, store: $store)';
}


}

/// @nodoc
abstract mixin class _$ReviewPurchaseDataRequestCopyWith<$Res> implements $ReviewPurchaseDataRequestCopyWith<$Res> {
  factory _$ReviewPurchaseDataRequestCopyWith(_ReviewPurchaseDataRequest value, $Res Function(_ReviewPurchaseDataRequest) _then) = __$ReviewPurchaseDataRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime? createdDatetime, List<ReviewOrderedProductRequest> products, double? total, ReviewStoreDataRequest? store
});


@override $ReviewStoreDataRequestCopyWith<$Res>? get store;

}
/// @nodoc
class __$ReviewPurchaseDataRequestCopyWithImpl<$Res>
    implements _$ReviewPurchaseDataRequestCopyWith<$Res> {
  __$ReviewPurchaseDataRequestCopyWithImpl(this._self, this._then);

  final _ReviewPurchaseDataRequest _self;
  final $Res Function(_ReviewPurchaseDataRequest) _then;

/// Create a copy of ReviewPurchaseDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdDatetime = freezed,Object? products = null,Object? total = freezed,Object? store = freezed,}) {
  return _then(_ReviewPurchaseDataRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdDatetime: freezed == createdDatetime ? _self.createdDatetime : createdDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ReviewOrderedProductRequest>,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as ReviewStoreDataRequest?,
  ));
}

/// Create a copy of ReviewPurchaseDataRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewStoreDataRequestCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $ReviewStoreDataRequestCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}

/// @nodoc
mixin _$ReviewOrderedProductRequest implements DiagnosticableTreeMixin {

 String get id; double get price; String? get name; String? get image; List<ReviewOrderedModifierGroupRequest> get modifiers; double? get quantity; String? get currencySymbol;
/// Create a copy of ReviewOrderedProductRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewOrderedProductRequestCopyWith<ReviewOrderedProductRequest> get copyWith => _$ReviewOrderedProductRequestCopyWithImpl<ReviewOrderedProductRequest>(this as ReviewOrderedProductRequest, _$identity);

  /// Serializes this ReviewOrderedProductRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewOrderedProductRequest'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('modifiers', modifiers))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('currencySymbol', currencySymbol));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewOrderedProductRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.modifiers, modifiers)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,price,name,image,const DeepCollectionEquality().hash(modifiers),quantity,currencySymbol);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewOrderedProductRequest(id: $id, price: $price, name: $name, image: $image, modifiers: $modifiers, quantity: $quantity, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class $ReviewOrderedProductRequestCopyWith<$Res>  {
  factory $ReviewOrderedProductRequestCopyWith(ReviewOrderedProductRequest value, $Res Function(ReviewOrderedProductRequest) _then) = _$ReviewOrderedProductRequestCopyWithImpl;
@useResult
$Res call({
 String id, double price, String? name, String? image, List<ReviewOrderedModifierGroupRequest> modifiers, double? quantity, String? currencySymbol
});




}
/// @nodoc
class _$ReviewOrderedProductRequestCopyWithImpl<$Res>
    implements $ReviewOrderedProductRequestCopyWith<$Res> {
  _$ReviewOrderedProductRequestCopyWithImpl(this._self, this._then);

  final ReviewOrderedProductRequest _self;
  final $Res Function(ReviewOrderedProductRequest) _then;

/// Create a copy of ReviewOrderedProductRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? price = null,Object? name = freezed,Object? image = freezed,Object? modifiers = null,Object? quantity = freezed,Object? currencySymbol = freezed,}) {
  return _then(ReviewOrderedProductRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,modifiers: null == modifiers ? _self.modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<ReviewOrderedModifierGroupRequest>,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,currencySymbol: freezed == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewOrderedProductRequest].
extension ReviewOrderedProductRequestPatterns on ReviewOrderedProductRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewOrderedProductRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewOrderedProductRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewOrderedProductRequest value)  $default,){
final _that = this;
switch (_that) {
case _ReviewOrderedProductRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewOrderedProductRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewOrderedProductRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  double price,  String? name,  String? image,  List<ReviewOrderedModifierGroupRequest> modifiers,  double? quantity,  String? currencySymbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewOrderedProductRequest() when $default != null:
return $default(_that.id,_that.price,_that.name,_that.image,_that.modifiers,_that.quantity,_that.currencySymbol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  double price,  String? name,  String? image,  List<ReviewOrderedModifierGroupRequest> modifiers,  double? quantity,  String? currencySymbol)  $default,) {final _that = this;
switch (_that) {
case _ReviewOrderedProductRequest():
return $default(_that.id,_that.price,_that.name,_that.image,_that.modifiers,_that.quantity,_that.currencySymbol);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  double price,  String? name,  String? image,  List<ReviewOrderedModifierGroupRequest> modifiers,  double? quantity,  String? currencySymbol)?  $default,) {final _that = this;
switch (_that) {
case _ReviewOrderedProductRequest() when $default != null:
return $default(_that.id,_that.price,_that.name,_that.image,_that.modifiers,_that.quantity,_that.currencySymbol);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _ReviewOrderedProductRequest with DiagnosticableTreeMixin implements ReviewOrderedProductRequest {
  const _ReviewOrderedProductRequest({required this.id, required this.price, this.name, this.image,  List<ReviewOrderedModifierGroupRequest> modifiers = const [], this.quantity, this.currencySymbol}): _modifiers = modifiers;
  

@override final  String id;
@override final  double price;
@override final  String? name;
@override final  String? image;
 final  List<ReviewOrderedModifierGroupRequest> _modifiers;
@override@JsonKey() List<ReviewOrderedModifierGroupRequest> get modifiers {
  if (_modifiers is EqualUnmodifiableListView) return _modifiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modifiers);
}

@override final  double? quantity;
@override final  String? currencySymbol;

/// Create a copy of ReviewOrderedProductRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewOrderedProductRequestCopyWith<_ReviewOrderedProductRequest> get copyWith => __$ReviewOrderedProductRequestCopyWithImpl<_ReviewOrderedProductRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewOrderedProductRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewOrderedProductRequest'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('modifiers', modifiers))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('currencySymbol', currencySymbol));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewOrderedProductRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._modifiers, _modifiers)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,price,name,image,const DeepCollectionEquality().hash(_modifiers),quantity,currencySymbol);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewOrderedProductRequest(id: $id, price: $price, name: $name, image: $image, modifiers: $modifiers, quantity: $quantity, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class _$ReviewOrderedProductRequestCopyWith<$Res> implements $ReviewOrderedProductRequestCopyWith<$Res> {
  factory _$ReviewOrderedProductRequestCopyWith(_ReviewOrderedProductRequest value, $Res Function(_ReviewOrderedProductRequest) _then) = __$ReviewOrderedProductRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, double price, String? name, String? image, List<ReviewOrderedModifierGroupRequest> modifiers, double? quantity, String? currencySymbol
});




}
/// @nodoc
class __$ReviewOrderedProductRequestCopyWithImpl<$Res>
    implements _$ReviewOrderedProductRequestCopyWith<$Res> {
  __$ReviewOrderedProductRequestCopyWithImpl(this._self, this._then);

  final _ReviewOrderedProductRequest _self;
  final $Res Function(_ReviewOrderedProductRequest) _then;

/// Create a copy of ReviewOrderedProductRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? price = null,Object? name = freezed,Object? image = freezed,Object? modifiers = null,Object? quantity = freezed,Object? currencySymbol = freezed,}) {
  return _then(_ReviewOrderedProductRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,modifiers: null == modifiers ? _self._modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<ReviewOrderedModifierGroupRequest>,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,currencySymbol: freezed == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ReviewOrderedModifierGroupRequest implements DiagnosticableTreeMixin {

 String? get name; List<ReviewOrderedModifierRequest> get options;
/// Create a copy of ReviewOrderedModifierGroupRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewOrderedModifierGroupRequestCopyWith<ReviewOrderedModifierGroupRequest> get copyWith => _$ReviewOrderedModifierGroupRequestCopyWithImpl<ReviewOrderedModifierGroupRequest>(this as ReviewOrderedModifierGroupRequest, _$identity);

  /// Serializes this ReviewOrderedModifierGroupRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewOrderedModifierGroupRequest'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('options', options));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewOrderedModifierGroupRequest&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(options));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewOrderedModifierGroupRequest(name: $name, options: $options)';
}


}

/// @nodoc
abstract mixin class $ReviewOrderedModifierGroupRequestCopyWith<$Res>  {
  factory $ReviewOrderedModifierGroupRequestCopyWith(ReviewOrderedModifierGroupRequest value, $Res Function(ReviewOrderedModifierGroupRequest) _then) = _$ReviewOrderedModifierGroupRequestCopyWithImpl;
@useResult
$Res call({
 String? name, List<ReviewOrderedModifierRequest> options
});




}
/// @nodoc
class _$ReviewOrderedModifierGroupRequestCopyWithImpl<$Res>
    implements $ReviewOrderedModifierGroupRequestCopyWith<$Res> {
  _$ReviewOrderedModifierGroupRequestCopyWithImpl(this._self, this._then);

  final ReviewOrderedModifierGroupRequest _self;
  final $Res Function(ReviewOrderedModifierGroupRequest) _then;

/// Create a copy of ReviewOrderedModifierGroupRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? options = null,}) {
  return _then(ReviewOrderedModifierGroupRequest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<ReviewOrderedModifierRequest>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewOrderedModifierGroupRequest].
extension ReviewOrderedModifierGroupRequestPatterns on ReviewOrderedModifierGroupRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewOrderedModifierGroupRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewOrderedModifierGroupRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewOrderedModifierGroupRequest value)  $default,){
final _that = this;
switch (_that) {
case _ReviewOrderedModifierGroupRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewOrderedModifierGroupRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewOrderedModifierGroupRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  List<ReviewOrderedModifierRequest> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewOrderedModifierGroupRequest() when $default != null:
return $default(_that.name,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  List<ReviewOrderedModifierRequest> options)  $default,) {final _that = this;
switch (_that) {
case _ReviewOrderedModifierGroupRequest():
return $default(_that.name,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  List<ReviewOrderedModifierRequest> options)?  $default,) {final _that = this;
switch (_that) {
case _ReviewOrderedModifierGroupRequest() when $default != null:
return $default(_that.name,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _ReviewOrderedModifierGroupRequest with DiagnosticableTreeMixin implements ReviewOrderedModifierGroupRequest {
  const _ReviewOrderedModifierGroupRequest({this.name, required  List<ReviewOrderedModifierRequest> options}): _options = options;
  

@override final  String? name;
 final  List<ReviewOrderedModifierRequest> _options;
@override List<ReviewOrderedModifierRequest> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of ReviewOrderedModifierGroupRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewOrderedModifierGroupRequestCopyWith<_ReviewOrderedModifierGroupRequest> get copyWith => __$ReviewOrderedModifierGroupRequestCopyWithImpl<_ReviewOrderedModifierGroupRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewOrderedModifierGroupRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewOrderedModifierGroupRequest'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('options', options));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewOrderedModifierGroupRequest&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_options));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewOrderedModifierGroupRequest(name: $name, options: $options)';
}


}

/// @nodoc
abstract mixin class _$ReviewOrderedModifierGroupRequestCopyWith<$Res> implements $ReviewOrderedModifierGroupRequestCopyWith<$Res> {
  factory _$ReviewOrderedModifierGroupRequestCopyWith(_ReviewOrderedModifierGroupRequest value, $Res Function(_ReviewOrderedModifierGroupRequest) _then) = __$ReviewOrderedModifierGroupRequestCopyWithImpl;
@override @useResult
$Res call({
 String? name, List<ReviewOrderedModifierRequest> options
});




}
/// @nodoc
class __$ReviewOrderedModifierGroupRequestCopyWithImpl<$Res>
    implements _$ReviewOrderedModifierGroupRequestCopyWith<$Res> {
  __$ReviewOrderedModifierGroupRequestCopyWithImpl(this._self, this._then);

  final _ReviewOrderedModifierGroupRequest _self;
  final $Res Function(_ReviewOrderedModifierGroupRequest) _then;

/// Create a copy of ReviewOrderedModifierGroupRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? options = null,}) {
  return _then(_ReviewOrderedModifierGroupRequest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<ReviewOrderedModifierRequest>,
  ));
}


}

/// @nodoc
mixin _$ReviewOrderedModifierRequest implements DiagnosticableTreeMixin {

 String get id; String? get name; double? get quantity; double? get price;
/// Create a copy of ReviewOrderedModifierRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewOrderedModifierRequestCopyWith<ReviewOrderedModifierRequest> get copyWith => _$ReviewOrderedModifierRequestCopyWithImpl<ReviewOrderedModifierRequest>(this as ReviewOrderedModifierRequest, _$identity);

  /// Serializes this ReviewOrderedModifierRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewOrderedModifierRequest'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('price', price));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewOrderedModifierRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,quantity,price);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewOrderedModifierRequest(id: $id, name: $name, quantity: $quantity, price: $price)';
}


}

/// @nodoc
abstract mixin class $ReviewOrderedModifierRequestCopyWith<$Res>  {
  factory $ReviewOrderedModifierRequestCopyWith(ReviewOrderedModifierRequest value, $Res Function(ReviewOrderedModifierRequest) _then) = _$ReviewOrderedModifierRequestCopyWithImpl;
@useResult
$Res call({
 String id, String? name, double? quantity, double? price
});




}
/// @nodoc
class _$ReviewOrderedModifierRequestCopyWithImpl<$Res>
    implements $ReviewOrderedModifierRequestCopyWith<$Res> {
  _$ReviewOrderedModifierRequestCopyWithImpl(this._self, this._then);

  final ReviewOrderedModifierRequest _self;
  final $Res Function(ReviewOrderedModifierRequest) _then;

/// Create a copy of ReviewOrderedModifierRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? quantity = freezed,Object? price = freezed,}) {
  return _then(ReviewOrderedModifierRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewOrderedModifierRequest].
extension ReviewOrderedModifierRequestPatterns on ReviewOrderedModifierRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewOrderedModifierRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewOrderedModifierRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewOrderedModifierRequest value)  $default,){
final _that = this;
switch (_that) {
case _ReviewOrderedModifierRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewOrderedModifierRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewOrderedModifierRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name,  double? quantity,  double? price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewOrderedModifierRequest() when $default != null:
return $default(_that.id,_that.name,_that.quantity,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name,  double? quantity,  double? price)  $default,) {final _that = this;
switch (_that) {
case _ReviewOrderedModifierRequest():
return $default(_that.id,_that.name,_that.quantity,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name,  double? quantity,  double? price)?  $default,) {final _that = this;
switch (_that) {
case _ReviewOrderedModifierRequest() when $default != null:
return $default(_that.id,_that.name,_that.quantity,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _ReviewOrderedModifierRequest with DiagnosticableTreeMixin implements ReviewOrderedModifierRequest {
  const _ReviewOrderedModifierRequest({required this.id, this.name, this.quantity, this.price});
  

@override final  String id;
@override final  String? name;
@override final  double? quantity;
@override final  double? price;

/// Create a copy of ReviewOrderedModifierRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewOrderedModifierRequestCopyWith<_ReviewOrderedModifierRequest> get copyWith => __$ReviewOrderedModifierRequestCopyWithImpl<_ReviewOrderedModifierRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewOrderedModifierRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewOrderedModifierRequest'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('price', price));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewOrderedModifierRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,quantity,price);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewOrderedModifierRequest(id: $id, name: $name, quantity: $quantity, price: $price)';
}


}

/// @nodoc
abstract mixin class _$ReviewOrderedModifierRequestCopyWith<$Res> implements $ReviewOrderedModifierRequestCopyWith<$Res> {
  factory _$ReviewOrderedModifierRequestCopyWith(_ReviewOrderedModifierRequest value, $Res Function(_ReviewOrderedModifierRequest) _then) = __$ReviewOrderedModifierRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, double? quantity, double? price
});




}
/// @nodoc
class __$ReviewOrderedModifierRequestCopyWithImpl<$Res>
    implements _$ReviewOrderedModifierRequestCopyWith<$Res> {
  __$ReviewOrderedModifierRequestCopyWithImpl(this._self, this._then);

  final _ReviewOrderedModifierRequest _self;
  final $Res Function(_ReviewOrderedModifierRequest) _then;

/// Create a copy of ReviewOrderedModifierRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? quantity = freezed,Object? price = freezed,}) {
  return _then(_ReviewOrderedModifierRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
