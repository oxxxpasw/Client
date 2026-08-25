// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserReview {

 String get id; ObjectType get objectType; String? get comment; int? get rating; List<String>? get images; String? get ownerCustomerId; String? get objectId; String? get htmlContent; String? get dataOwnerID; DateTime? get createDate; String? get mobileNumber; UserReviewStoreData? get store; UserReviewProductData? get product; UserReviewPurchaseData? get purchase;
/// Create a copy of UserReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReviewCopyWith<UserReview> get copyWith => _$UserReviewCopyWithImpl<UserReview>(this as UserReview, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReview&&(identical(other.id, id) || other.id == id)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.ownerCustomerId, ownerCustomerId) || other.ownerCustomerId == ownerCustomerId)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.htmlContent, htmlContent) || other.htmlContent == htmlContent)&&(identical(other.dataOwnerID, dataOwnerID) || other.dataOwnerID == dataOwnerID)&&(identical(other.createDate, createDate) || other.createDate == createDate)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.store, store) || other.store == store)&&(identical(other.product, product) || other.product == product)&&(identical(other.purchase, purchase) || other.purchase == purchase));
}


@override
int get hashCode => Object.hash(runtimeType,id,objectType,comment,rating,const DeepCollectionEquality().hash(images),ownerCustomerId,objectId,htmlContent,dataOwnerID,createDate,mobileNumber,store,product,purchase);

@override
String toString() {
  return 'UserReview(id: $id, objectType: $objectType, comment: $comment, rating: $rating, images: $images, ownerCustomerId: $ownerCustomerId, objectId: $objectId, htmlContent: $htmlContent, dataOwnerID: $dataOwnerID, createDate: $createDate, mobileNumber: $mobileNumber, store: $store, product: $product, purchase: $purchase)';
}


}

/// @nodoc
abstract mixin class $UserReviewCopyWith<$Res>  {
  factory $UserReviewCopyWith(UserReview value, $Res Function(UserReview) _then) = _$UserReviewCopyWithImpl;
@useResult
$Res call({
 String id, ObjectType objectType, String? comment, int? rating, List<String>? images, String? ownerCustomerId, String? objectId, String? htmlContent, String? dataOwnerID, DateTime? createDate, String? mobileNumber, UserReviewStoreData? store, UserReviewProductData? product, UserReviewPurchaseData? purchase
});


$UserReviewStoreDataCopyWith<$Res>? get store;$UserReviewProductDataCopyWith<$Res>? get product;$UserReviewPurchaseDataCopyWith<$Res>? get purchase;

}
/// @nodoc
class _$UserReviewCopyWithImpl<$Res>
    implements $UserReviewCopyWith<$Res> {
  _$UserReviewCopyWithImpl(this._self, this._then);

  final UserReview _self;
  final $Res Function(UserReview) _then;

/// Create a copy of UserReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? objectType = null,Object? comment = freezed,Object? rating = freezed,Object? images = freezed,Object? ownerCustomerId = freezed,Object? objectId = freezed,Object? htmlContent = freezed,Object? dataOwnerID = freezed,Object? createDate = freezed,Object? mobileNumber = freezed,Object? store = freezed,Object? product = freezed,Object? purchase = freezed,}) {
  return _then(UserReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as ObjectType,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,ownerCustomerId: freezed == ownerCustomerId ? _self.ownerCustomerId : ownerCustomerId // ignore: cast_nullable_to_non_nullable
as String?,objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,htmlContent: freezed == htmlContent ? _self.htmlContent : htmlContent // ignore: cast_nullable_to_non_nullable
as String?,dataOwnerID: freezed == dataOwnerID ? _self.dataOwnerID : dataOwnerID // ignore: cast_nullable_to_non_nullable
as String?,createDate: freezed == createDate ? _self.createDate : createDate // ignore: cast_nullable_to_non_nullable
as DateTime?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as UserReviewStoreData?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as UserReviewProductData?,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as UserReviewPurchaseData?,
  ));
}
/// Create a copy of UserReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewStoreDataCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $UserReviewStoreDataCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of UserReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewProductDataCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $UserReviewProductDataCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of UserReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewPurchaseDataCopyWith<$Res>? get purchase {
    if (_self.purchase == null) {
    return null;
  }

  return $UserReviewPurchaseDataCopyWith<$Res>(_self.purchase!, (value) {
    return _then(_self.copyWith(purchase: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserReview].
extension UserReviewPatterns on UserReview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReview value)  $default,){
final _that = this;
switch (_that) {
case _UserReview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReview value)?  $default,){
final _that = this;
switch (_that) {
case _UserReview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  ObjectType objectType,  String? comment,  int? rating,  List<String>? images,  String? ownerCustomerId,  String? objectId,  String? htmlContent,  String? dataOwnerID,  DateTime? createDate,  String? mobileNumber,  UserReviewStoreData? store,  UserReviewProductData? product,  UserReviewPurchaseData? purchase)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserReview() when $default != null:
return $default(_that.id,_that.objectType,_that.comment,_that.rating,_that.images,_that.ownerCustomerId,_that.objectId,_that.htmlContent,_that.dataOwnerID,_that.createDate,_that.mobileNumber,_that.store,_that.product,_that.purchase);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  ObjectType objectType,  String? comment,  int? rating,  List<String>? images,  String? ownerCustomerId,  String? objectId,  String? htmlContent,  String? dataOwnerID,  DateTime? createDate,  String? mobileNumber,  UserReviewStoreData? store,  UserReviewProductData? product,  UserReviewPurchaseData? purchase)  $default,) {final _that = this;
switch (_that) {
case _UserReview():
return $default(_that.id,_that.objectType,_that.comment,_that.rating,_that.images,_that.ownerCustomerId,_that.objectId,_that.htmlContent,_that.dataOwnerID,_that.createDate,_that.mobileNumber,_that.store,_that.product,_that.purchase);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  ObjectType objectType,  String? comment,  int? rating,  List<String>? images,  String? ownerCustomerId,  String? objectId,  String? htmlContent,  String? dataOwnerID,  DateTime? createDate,  String? mobileNumber,  UserReviewStoreData? store,  UserReviewProductData? product,  UserReviewPurchaseData? purchase)?  $default,) {final _that = this;
switch (_that) {
case _UserReview() when $default != null:
return $default(_that.id,_that.objectType,_that.comment,_that.rating,_that.images,_that.ownerCustomerId,_that.objectId,_that.htmlContent,_that.dataOwnerID,_that.createDate,_that.mobileNumber,_that.store,_that.product,_that.purchase);case _:
  return null;

}
}

}

/// @nodoc


class _UserReview implements UserReview {
  const _UserReview({required this.id, required this.objectType, this.comment, this.rating,  List<String>? images, this.ownerCustomerId, this.objectId, this.htmlContent, this.dataOwnerID, this.createDate, this.mobileNumber, this.store, this.product, this.purchase}): _images = images;
  

@override final  String id;
@override final  ObjectType objectType;
@override final  String? comment;
@override final  int? rating;
 final  List<String>? _images;
@override List<String>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? ownerCustomerId;
@override final  String? objectId;
@override final  String? htmlContent;
@override final  String? dataOwnerID;
@override final  DateTime? createDate;
@override final  String? mobileNumber;
@override final  UserReviewStoreData? store;
@override final  UserReviewProductData? product;
@override final  UserReviewPurchaseData? purchase;

/// Create a copy of UserReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReviewCopyWith<_UserReview> get copyWith => __$UserReviewCopyWithImpl<_UserReview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReview&&(identical(other.id, id) || other.id == id)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.ownerCustomerId, ownerCustomerId) || other.ownerCustomerId == ownerCustomerId)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.htmlContent, htmlContent) || other.htmlContent == htmlContent)&&(identical(other.dataOwnerID, dataOwnerID) || other.dataOwnerID == dataOwnerID)&&(identical(other.createDate, createDate) || other.createDate == createDate)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.store, store) || other.store == store)&&(identical(other.product, product) || other.product == product)&&(identical(other.purchase, purchase) || other.purchase == purchase));
}


@override
int get hashCode => Object.hash(runtimeType,id,objectType,comment,rating,const DeepCollectionEquality().hash(_images),ownerCustomerId,objectId,htmlContent,dataOwnerID,createDate,mobileNumber,store,product,purchase);

@override
String toString() {
  return 'UserReview(id: $id, objectType: $objectType, comment: $comment, rating: $rating, images: $images, ownerCustomerId: $ownerCustomerId, objectId: $objectId, htmlContent: $htmlContent, dataOwnerID: $dataOwnerID, createDate: $createDate, mobileNumber: $mobileNumber, store: $store, product: $product, purchase: $purchase)';
}


}

/// @nodoc
abstract mixin class _$UserReviewCopyWith<$Res> implements $UserReviewCopyWith<$Res> {
  factory _$UserReviewCopyWith(_UserReview value, $Res Function(_UserReview) _then) = __$UserReviewCopyWithImpl;
@override @useResult
$Res call({
 String id, ObjectType objectType, String? comment, int? rating, List<String>? images, String? ownerCustomerId, String? objectId, String? htmlContent, String? dataOwnerID, DateTime? createDate, String? mobileNumber, UserReviewStoreData? store, UserReviewProductData? product, UserReviewPurchaseData? purchase
});


@override $UserReviewStoreDataCopyWith<$Res>? get store;@override $UserReviewProductDataCopyWith<$Res>? get product;@override $UserReviewPurchaseDataCopyWith<$Res>? get purchase;

}
/// @nodoc
class __$UserReviewCopyWithImpl<$Res>
    implements _$UserReviewCopyWith<$Res> {
  __$UserReviewCopyWithImpl(this._self, this._then);

  final _UserReview _self;
  final $Res Function(_UserReview) _then;

/// Create a copy of UserReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? objectType = null,Object? comment = freezed,Object? rating = freezed,Object? images = freezed,Object? ownerCustomerId = freezed,Object? objectId = freezed,Object? htmlContent = freezed,Object? dataOwnerID = freezed,Object? createDate = freezed,Object? mobileNumber = freezed,Object? store = freezed,Object? product = freezed,Object? purchase = freezed,}) {
  return _then(_UserReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as ObjectType,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,ownerCustomerId: freezed == ownerCustomerId ? _self.ownerCustomerId : ownerCustomerId // ignore: cast_nullable_to_non_nullable
as String?,objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,htmlContent: freezed == htmlContent ? _self.htmlContent : htmlContent // ignore: cast_nullable_to_non_nullable
as String?,dataOwnerID: freezed == dataOwnerID ? _self.dataOwnerID : dataOwnerID // ignore: cast_nullable_to_non_nullable
as String?,createDate: freezed == createDate ? _self.createDate : createDate // ignore: cast_nullable_to_non_nullable
as DateTime?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as UserReviewStoreData?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as UserReviewProductData?,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as UserReviewPurchaseData?,
  ));
}

/// Create a copy of UserReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewStoreDataCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $UserReviewStoreDataCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of UserReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewProductDataCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $UserReviewProductDataCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of UserReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewPurchaseDataCopyWith<$Res>? get purchase {
    if (_self.purchase == null) {
    return null;
  }

  return $UserReviewPurchaseDataCopyWith<$Res>(_self.purchase!, (value) {
    return _then(_self.copyWith(purchase: value));
  });
}
}

/// @nodoc
mixin _$UserReviewStoreData {

 String get id; String? get name; String? get address;
/// Create a copy of UserReviewStoreData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReviewStoreDataCopyWith<UserReviewStoreData> get copyWith => _$UserReviewStoreDataCopyWithImpl<UserReviewStoreData>(this as UserReviewStoreData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReviewStoreData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,address);

@override
String toString() {
  return 'UserReviewStoreData(id: $id, name: $name, address: $address)';
}


}

/// @nodoc
abstract mixin class $UserReviewStoreDataCopyWith<$Res>  {
  factory $UserReviewStoreDataCopyWith(UserReviewStoreData value, $Res Function(UserReviewStoreData) _then) = _$UserReviewStoreDataCopyWithImpl;
@useResult
$Res call({
 String id, String? name, String? address
});




}
/// @nodoc
class _$UserReviewStoreDataCopyWithImpl<$Res>
    implements $UserReviewStoreDataCopyWith<$Res> {
  _$UserReviewStoreDataCopyWithImpl(this._self, this._then);

  final UserReviewStoreData _self;
  final $Res Function(UserReviewStoreData) _then;

/// Create a copy of UserReviewStoreData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? address = freezed,}) {
  return _then(UserReviewStoreData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserReviewStoreData].
extension UserReviewStoreDataPatterns on UserReviewStoreData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReviewStoreData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReviewStoreData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReviewStoreData value)  $default,){
final _that = this;
switch (_that) {
case _UserReviewStoreData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReviewStoreData value)?  $default,){
final _that = this;
switch (_that) {
case _UserReviewStoreData() when $default != null:
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
case _UserReviewStoreData() when $default != null:
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
case _UserReviewStoreData():
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
case _UserReviewStoreData() when $default != null:
return $default(_that.id,_that.name,_that.address);case _:
  return null;

}
}

}

/// @nodoc


class _UserReviewStoreData implements UserReviewStoreData {
  const _UserReviewStoreData({required this.id, this.name, this.address});
  

@override final  String id;
@override final  String? name;
@override final  String? address;

/// Create a copy of UserReviewStoreData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReviewStoreDataCopyWith<_UserReviewStoreData> get copyWith => __$UserReviewStoreDataCopyWithImpl<_UserReviewStoreData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReviewStoreData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,address);

@override
String toString() {
  return 'UserReviewStoreData(id: $id, name: $name, address: $address)';
}


}

/// @nodoc
abstract mixin class _$UserReviewStoreDataCopyWith<$Res> implements $UserReviewStoreDataCopyWith<$Res> {
  factory _$UserReviewStoreDataCopyWith(_UserReviewStoreData value, $Res Function(_UserReviewStoreData) _then) = __$UserReviewStoreDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, String? address
});




}
/// @nodoc
class __$UserReviewStoreDataCopyWithImpl<$Res>
    implements _$UserReviewStoreDataCopyWith<$Res> {
  __$UserReviewStoreDataCopyWithImpl(this._self, this._then);

  final _UserReviewStoreData _self;
  final $Res Function(_UserReviewStoreData) _then;

/// Create a copy of UserReviewStoreData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? address = freezed,}) {
  return _then(_UserReviewStoreData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$UserReviewProductData {

 String get id; String? get name;
/// Create a copy of UserReviewProductData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReviewProductDataCopyWith<UserReviewProductData> get copyWith => _$UserReviewProductDataCopyWithImpl<UserReviewProductData>(this as UserReviewProductData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReviewProductData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'UserReviewProductData(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $UserReviewProductDataCopyWith<$Res>  {
  factory $UserReviewProductDataCopyWith(UserReviewProductData value, $Res Function(UserReviewProductData) _then) = _$UserReviewProductDataCopyWithImpl;
@useResult
$Res call({
 String id, String? name
});




}
/// @nodoc
class _$UserReviewProductDataCopyWithImpl<$Res>
    implements $UserReviewProductDataCopyWith<$Res> {
  _$UserReviewProductDataCopyWithImpl(this._self, this._then);

  final UserReviewProductData _self;
  final $Res Function(UserReviewProductData) _then;

/// Create a copy of UserReviewProductData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,}) {
  return _then(UserReviewProductData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserReviewProductData].
extension UserReviewProductDataPatterns on UserReviewProductData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReviewProductData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReviewProductData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReviewProductData value)  $default,){
final _that = this;
switch (_that) {
case _UserReviewProductData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReviewProductData value)?  $default,){
final _that = this;
switch (_that) {
case _UserReviewProductData() when $default != null:
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
case _UserReviewProductData() when $default != null:
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
case _UserReviewProductData():
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
case _UserReviewProductData() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _UserReviewProductData implements UserReviewProductData {
  const _UserReviewProductData({required this.id, this.name});
  

@override final  String id;
@override final  String? name;

/// Create a copy of UserReviewProductData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReviewProductDataCopyWith<_UserReviewProductData> get copyWith => __$UserReviewProductDataCopyWithImpl<_UserReviewProductData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReviewProductData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'UserReviewProductData(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$UserReviewProductDataCopyWith<$Res> implements $UserReviewProductDataCopyWith<$Res> {
  factory _$UserReviewProductDataCopyWith(_UserReviewProductData value, $Res Function(_UserReviewProductData) _then) = __$UserReviewProductDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name
});




}
/// @nodoc
class __$UserReviewProductDataCopyWithImpl<$Res>
    implements _$UserReviewProductDataCopyWith<$Res> {
  __$UserReviewProductDataCopyWithImpl(this._self, this._then);

  final _UserReviewProductData _self;
  final $Res Function(_UserReviewProductData) _then;

/// Create a copy of UserReviewProductData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,}) {
  return _then(_UserReviewProductData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$UserReviewPurchaseData {

 String get id; DateTime? get createdDatetime; List<UserReviewOrderedProduct> get products; double? get total; UserReviewStoreData? get store;
/// Create a copy of UserReviewPurchaseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReviewPurchaseDataCopyWith<UserReviewPurchaseData> get copyWith => _$UserReviewPurchaseDataCopyWithImpl<UserReviewPurchaseData>(this as UserReviewPurchaseData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReviewPurchaseData&&(identical(other.id, id) || other.id == id)&&(identical(other.createdDatetime, createdDatetime) || other.createdDatetime == createdDatetime)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.total, total) || other.total == total)&&(identical(other.store, store) || other.store == store));
}


@override
int get hashCode => Object.hash(runtimeType,id,createdDatetime,const DeepCollectionEquality().hash(products),total,store);

@override
String toString() {
  return 'UserReviewPurchaseData(id: $id, createdDatetime: $createdDatetime, products: $products, total: $total, store: $store)';
}


}

/// @nodoc
abstract mixin class $UserReviewPurchaseDataCopyWith<$Res>  {
  factory $UserReviewPurchaseDataCopyWith(UserReviewPurchaseData value, $Res Function(UserReviewPurchaseData) _then) = _$UserReviewPurchaseDataCopyWithImpl;
@useResult
$Res call({
 String id, DateTime? createdDatetime, List<UserReviewOrderedProduct> products, double? total, UserReviewStoreData? store
});


$UserReviewStoreDataCopyWith<$Res>? get store;

}
/// @nodoc
class _$UserReviewPurchaseDataCopyWithImpl<$Res>
    implements $UserReviewPurchaseDataCopyWith<$Res> {
  _$UserReviewPurchaseDataCopyWithImpl(this._self, this._then);

  final UserReviewPurchaseData _self;
  final $Res Function(UserReviewPurchaseData) _then;

/// Create a copy of UserReviewPurchaseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdDatetime = freezed,Object? products = null,Object? total = freezed,Object? store = freezed,}) {
  return _then(UserReviewPurchaseData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdDatetime: freezed == createdDatetime ? _self.createdDatetime : createdDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<UserReviewOrderedProduct>,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as UserReviewStoreData?,
  ));
}
/// Create a copy of UserReviewPurchaseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewStoreDataCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $UserReviewStoreDataCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserReviewPurchaseData].
extension UserReviewPurchaseDataPatterns on UserReviewPurchaseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReviewPurchaseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReviewPurchaseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReviewPurchaseData value)  $default,){
final _that = this;
switch (_that) {
case _UserReviewPurchaseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReviewPurchaseData value)?  $default,){
final _that = this;
switch (_that) {
case _UserReviewPurchaseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime? createdDatetime,  List<UserReviewOrderedProduct> products,  double? total,  UserReviewStoreData? store)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserReviewPurchaseData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime? createdDatetime,  List<UserReviewOrderedProduct> products,  double? total,  UserReviewStoreData? store)  $default,) {final _that = this;
switch (_that) {
case _UserReviewPurchaseData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime? createdDatetime,  List<UserReviewOrderedProduct> products,  double? total,  UserReviewStoreData? store)?  $default,) {final _that = this;
switch (_that) {
case _UserReviewPurchaseData() when $default != null:
return $default(_that.id,_that.createdDatetime,_that.products,_that.total,_that.store);case _:
  return null;

}
}

}

/// @nodoc


class _UserReviewPurchaseData implements UserReviewPurchaseData {
  const _UserReviewPurchaseData({required this.id, this.createdDatetime,  List<UserReviewOrderedProduct> products = const [], this.total, this.store}): _products = products;
  

@override final  String id;
@override final  DateTime? createdDatetime;
 final  List<UserReviewOrderedProduct> _products;
@override@JsonKey() List<UserReviewOrderedProduct> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  double? total;
@override final  UserReviewStoreData? store;

/// Create a copy of UserReviewPurchaseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReviewPurchaseDataCopyWith<_UserReviewPurchaseData> get copyWith => __$UserReviewPurchaseDataCopyWithImpl<_UserReviewPurchaseData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReviewPurchaseData&&(identical(other.id, id) || other.id == id)&&(identical(other.createdDatetime, createdDatetime) || other.createdDatetime == createdDatetime)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.total, total) || other.total == total)&&(identical(other.store, store) || other.store == store));
}


@override
int get hashCode => Object.hash(runtimeType,id,createdDatetime,const DeepCollectionEquality().hash(_products),total,store);

@override
String toString() {
  return 'UserReviewPurchaseData(id: $id, createdDatetime: $createdDatetime, products: $products, total: $total, store: $store)';
}


}

/// @nodoc
abstract mixin class _$UserReviewPurchaseDataCopyWith<$Res> implements $UserReviewPurchaseDataCopyWith<$Res> {
  factory _$UserReviewPurchaseDataCopyWith(_UserReviewPurchaseData value, $Res Function(_UserReviewPurchaseData) _then) = __$UserReviewPurchaseDataCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime? createdDatetime, List<UserReviewOrderedProduct> products, double? total, UserReviewStoreData? store
});


@override $UserReviewStoreDataCopyWith<$Res>? get store;

}
/// @nodoc
class __$UserReviewPurchaseDataCopyWithImpl<$Res>
    implements _$UserReviewPurchaseDataCopyWith<$Res> {
  __$UserReviewPurchaseDataCopyWithImpl(this._self, this._then);

  final _UserReviewPurchaseData _self;
  final $Res Function(_UserReviewPurchaseData) _then;

/// Create a copy of UserReviewPurchaseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdDatetime = freezed,Object? products = null,Object? total = freezed,Object? store = freezed,}) {
  return _then(_UserReviewPurchaseData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdDatetime: freezed == createdDatetime ? _self.createdDatetime : createdDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<UserReviewOrderedProduct>,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as UserReviewStoreData?,
  ));
}

/// Create a copy of UserReviewPurchaseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewStoreDataCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $UserReviewStoreDataCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}

/// @nodoc
mixin _$UserReviewOrderedProduct {

 String get id; double get price; String? get name; String? get image; List<UserReviewOrderedModifierGroup> get modifiers; double? get quantity; String get currencySymbol;
/// Create a copy of UserReviewOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReviewOrderedProductCopyWith<UserReviewOrderedProduct> get copyWith => _$UserReviewOrderedProductCopyWithImpl<UserReviewOrderedProduct>(this as UserReviewOrderedProduct, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReviewOrderedProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.modifiers, modifiers)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol));
}


@override
int get hashCode => Object.hash(runtimeType,id,price,name,image,const DeepCollectionEquality().hash(modifiers),quantity,currencySymbol);

@override
String toString() {
  return 'UserReviewOrderedProduct(id: $id, price: $price, name: $name, image: $image, modifiers: $modifiers, quantity: $quantity, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class $UserReviewOrderedProductCopyWith<$Res>  {
  factory $UserReviewOrderedProductCopyWith(UserReviewOrderedProduct value, $Res Function(UserReviewOrderedProduct) _then) = _$UserReviewOrderedProductCopyWithImpl;
@useResult
$Res call({
 String id, double price, String? name, String? image, List<UserReviewOrderedModifierGroup> modifiers, double? quantity, String currencySymbol
});




}
/// @nodoc
class _$UserReviewOrderedProductCopyWithImpl<$Res>
    implements $UserReviewOrderedProductCopyWith<$Res> {
  _$UserReviewOrderedProductCopyWithImpl(this._self, this._then);

  final UserReviewOrderedProduct _self;
  final $Res Function(UserReviewOrderedProduct) _then;

/// Create a copy of UserReviewOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? price = null,Object? name = freezed,Object? image = freezed,Object? modifiers = null,Object? quantity = freezed,Object? currencySymbol = null,}) {
  return _then(UserReviewOrderedProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,modifiers: null == modifiers ? _self.modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<UserReviewOrderedModifierGroup>,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserReviewOrderedProduct].
extension UserReviewOrderedProductPatterns on UserReviewOrderedProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReviewOrderedProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReviewOrderedProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReviewOrderedProduct value)  $default,){
final _that = this;
switch (_that) {
case _UserReviewOrderedProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReviewOrderedProduct value)?  $default,){
final _that = this;
switch (_that) {
case _UserReviewOrderedProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  double price,  String? name,  String? image,  List<UserReviewOrderedModifierGroup> modifiers,  double? quantity,  String currencySymbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserReviewOrderedProduct() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  double price,  String? name,  String? image,  List<UserReviewOrderedModifierGroup> modifiers,  double? quantity,  String currencySymbol)  $default,) {final _that = this;
switch (_that) {
case _UserReviewOrderedProduct():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  double price,  String? name,  String? image,  List<UserReviewOrderedModifierGroup> modifiers,  double? quantity,  String currencySymbol)?  $default,) {final _that = this;
switch (_that) {
case _UserReviewOrderedProduct() when $default != null:
return $default(_that.id,_that.price,_that.name,_that.image,_that.modifiers,_that.quantity,_that.currencySymbol);case _:
  return null;

}
}

}

/// @nodoc


class _UserReviewOrderedProduct implements UserReviewOrderedProduct {
  const _UserReviewOrderedProduct({required this.id, required this.price, this.name, this.image, required  List<UserReviewOrderedModifierGroup> modifiers, this.quantity, required this.currencySymbol}): _modifiers = modifiers;
  

@override final  String id;
@override final  double price;
@override final  String? name;
@override final  String? image;
 final  List<UserReviewOrderedModifierGroup> _modifiers;
@override List<UserReviewOrderedModifierGroup> get modifiers {
  if (_modifiers is EqualUnmodifiableListView) return _modifiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modifiers);
}

@override final  double? quantity;
@override final  String currencySymbol;

/// Create a copy of UserReviewOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReviewOrderedProductCopyWith<_UserReviewOrderedProduct> get copyWith => __$UserReviewOrderedProductCopyWithImpl<_UserReviewOrderedProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReviewOrderedProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._modifiers, _modifiers)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol));
}


@override
int get hashCode => Object.hash(runtimeType,id,price,name,image,const DeepCollectionEquality().hash(_modifiers),quantity,currencySymbol);

@override
String toString() {
  return 'UserReviewOrderedProduct(id: $id, price: $price, name: $name, image: $image, modifiers: $modifiers, quantity: $quantity, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class _$UserReviewOrderedProductCopyWith<$Res> implements $UserReviewOrderedProductCopyWith<$Res> {
  factory _$UserReviewOrderedProductCopyWith(_UserReviewOrderedProduct value, $Res Function(_UserReviewOrderedProduct) _then) = __$UserReviewOrderedProductCopyWithImpl;
@override @useResult
$Res call({
 String id, double price, String? name, String? image, List<UserReviewOrderedModifierGroup> modifiers, double? quantity, String currencySymbol
});




}
/// @nodoc
class __$UserReviewOrderedProductCopyWithImpl<$Res>
    implements _$UserReviewOrderedProductCopyWith<$Res> {
  __$UserReviewOrderedProductCopyWithImpl(this._self, this._then);

  final _UserReviewOrderedProduct _self;
  final $Res Function(_UserReviewOrderedProduct) _then;

/// Create a copy of UserReviewOrderedProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? price = null,Object? name = freezed,Object? image = freezed,Object? modifiers = null,Object? quantity = freezed,Object? currencySymbol = null,}) {
  return _then(_UserReviewOrderedProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,modifiers: null == modifiers ? _self._modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<UserReviewOrderedModifierGroup>,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$UserReviewOrderedModifierGroup {

 String? get name; List<UserReviewOrderedModifier> get options;
/// Create a copy of UserReviewOrderedModifierGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReviewOrderedModifierGroupCopyWith<UserReviewOrderedModifierGroup> get copyWith => _$UserReviewOrderedModifierGroupCopyWithImpl<UserReviewOrderedModifierGroup>(this as UserReviewOrderedModifierGroup, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReviewOrderedModifierGroup&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.options, options));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'UserReviewOrderedModifierGroup(name: $name, options: $options)';
}


}

/// @nodoc
abstract mixin class $UserReviewOrderedModifierGroupCopyWith<$Res>  {
  factory $UserReviewOrderedModifierGroupCopyWith(UserReviewOrderedModifierGroup value, $Res Function(UserReviewOrderedModifierGroup) _then) = _$UserReviewOrderedModifierGroupCopyWithImpl;
@useResult
$Res call({
 String? name, List<UserReviewOrderedModifier> options
});




}
/// @nodoc
class _$UserReviewOrderedModifierGroupCopyWithImpl<$Res>
    implements $UserReviewOrderedModifierGroupCopyWith<$Res> {
  _$UserReviewOrderedModifierGroupCopyWithImpl(this._self, this._then);

  final UserReviewOrderedModifierGroup _self;
  final $Res Function(UserReviewOrderedModifierGroup) _then;

/// Create a copy of UserReviewOrderedModifierGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? options = null,}) {
  return _then(UserReviewOrderedModifierGroup(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<UserReviewOrderedModifier>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserReviewOrderedModifierGroup].
extension UserReviewOrderedModifierGroupPatterns on UserReviewOrderedModifierGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReviewOrderedModifierGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReviewOrderedModifierGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReviewOrderedModifierGroup value)  $default,){
final _that = this;
switch (_that) {
case _UserReviewOrderedModifierGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReviewOrderedModifierGroup value)?  $default,){
final _that = this;
switch (_that) {
case _UserReviewOrderedModifierGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  List<UserReviewOrderedModifier> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserReviewOrderedModifierGroup() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  List<UserReviewOrderedModifier> options)  $default,) {final _that = this;
switch (_that) {
case _UserReviewOrderedModifierGroup():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  List<UserReviewOrderedModifier> options)?  $default,) {final _that = this;
switch (_that) {
case _UserReviewOrderedModifierGroup() when $default != null:
return $default(_that.name,_that.options);case _:
  return null;

}
}

}

/// @nodoc


class _UserReviewOrderedModifierGroup implements UserReviewOrderedModifierGroup {
  const _UserReviewOrderedModifierGroup({this.name, required  List<UserReviewOrderedModifier> options}): _options = options;
  

@override final  String? name;
 final  List<UserReviewOrderedModifier> _options;
@override List<UserReviewOrderedModifier> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of UserReviewOrderedModifierGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReviewOrderedModifierGroupCopyWith<_UserReviewOrderedModifierGroup> get copyWith => __$UserReviewOrderedModifierGroupCopyWithImpl<_UserReviewOrderedModifierGroup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReviewOrderedModifierGroup&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._options, _options));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'UserReviewOrderedModifierGroup(name: $name, options: $options)';
}


}

/// @nodoc
abstract mixin class _$UserReviewOrderedModifierGroupCopyWith<$Res> implements $UserReviewOrderedModifierGroupCopyWith<$Res> {
  factory _$UserReviewOrderedModifierGroupCopyWith(_UserReviewOrderedModifierGroup value, $Res Function(_UserReviewOrderedModifierGroup) _then) = __$UserReviewOrderedModifierGroupCopyWithImpl;
@override @useResult
$Res call({
 String? name, List<UserReviewOrderedModifier> options
});




}
/// @nodoc
class __$UserReviewOrderedModifierGroupCopyWithImpl<$Res>
    implements _$UserReviewOrderedModifierGroupCopyWith<$Res> {
  __$UserReviewOrderedModifierGroupCopyWithImpl(this._self, this._then);

  final _UserReviewOrderedModifierGroup _self;
  final $Res Function(_UserReviewOrderedModifierGroup) _then;

/// Create a copy of UserReviewOrderedModifierGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? options = null,}) {
  return _then(_UserReviewOrderedModifierGroup(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<UserReviewOrderedModifier>,
  ));
}


}

/// @nodoc
mixin _$UserReviewOrderedModifier {

 String get id; String? get name; double? get quantity; double? get price;
/// Create a copy of UserReviewOrderedModifier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReviewOrderedModifierCopyWith<UserReviewOrderedModifier> get copyWith => _$UserReviewOrderedModifierCopyWithImpl<UserReviewOrderedModifier>(this as UserReviewOrderedModifier, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReviewOrderedModifier&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,quantity,price);

@override
String toString() {
  return 'UserReviewOrderedModifier(id: $id, name: $name, quantity: $quantity, price: $price)';
}


}

/// @nodoc
abstract mixin class $UserReviewOrderedModifierCopyWith<$Res>  {
  factory $UserReviewOrderedModifierCopyWith(UserReviewOrderedModifier value, $Res Function(UserReviewOrderedModifier) _then) = _$UserReviewOrderedModifierCopyWithImpl;
@useResult
$Res call({
 String id, String? name, double? quantity, double? price
});




}
/// @nodoc
class _$UserReviewOrderedModifierCopyWithImpl<$Res>
    implements $UserReviewOrderedModifierCopyWith<$Res> {
  _$UserReviewOrderedModifierCopyWithImpl(this._self, this._then);

  final UserReviewOrderedModifier _self;
  final $Res Function(UserReviewOrderedModifier) _then;

/// Create a copy of UserReviewOrderedModifier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? quantity = freezed,Object? price = freezed,}) {
  return _then(UserReviewOrderedModifier(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserReviewOrderedModifier].
extension UserReviewOrderedModifierPatterns on UserReviewOrderedModifier {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReviewOrderedModifier value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReviewOrderedModifier() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReviewOrderedModifier value)  $default,){
final _that = this;
switch (_that) {
case _UserReviewOrderedModifier():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReviewOrderedModifier value)?  $default,){
final _that = this;
switch (_that) {
case _UserReviewOrderedModifier() when $default != null:
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
case _UserReviewOrderedModifier() when $default != null:
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
case _UserReviewOrderedModifier():
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
case _UserReviewOrderedModifier() when $default != null:
return $default(_that.id,_that.name,_that.quantity,_that.price);case _:
  return null;

}
}

}

/// @nodoc


class _UserReviewOrderedModifier implements UserReviewOrderedModifier {
  const _UserReviewOrderedModifier({required this.id, this.name, this.quantity, this.price});
  

@override final  String id;
@override final  String? name;
@override final  double? quantity;
@override final  double? price;

/// Create a copy of UserReviewOrderedModifier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReviewOrderedModifierCopyWith<_UserReviewOrderedModifier> get copyWith => __$UserReviewOrderedModifierCopyWithImpl<_UserReviewOrderedModifier>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReviewOrderedModifier&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,quantity,price);

@override
String toString() {
  return 'UserReviewOrderedModifier(id: $id, name: $name, quantity: $quantity, price: $price)';
}


}

/// @nodoc
abstract mixin class _$UserReviewOrderedModifierCopyWith<$Res> implements $UserReviewOrderedModifierCopyWith<$Res> {
  factory _$UserReviewOrderedModifierCopyWith(_UserReviewOrderedModifier value, $Res Function(_UserReviewOrderedModifier) _then) = __$UserReviewOrderedModifierCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, double? quantity, double? price
});




}
/// @nodoc
class __$UserReviewOrderedModifierCopyWithImpl<$Res>
    implements _$UserReviewOrderedModifierCopyWith<$Res> {
  __$UserReviewOrderedModifierCopyWithImpl(this._self, this._then);

  final _UserReviewOrderedModifier _self;
  final $Res Function(_UserReviewOrderedModifier) _then;

/// Create a copy of UserReviewOrderedModifier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? quantity = freezed,Object? price = freezed,}) {
  return _then(_UserReviewOrderedModifier(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
