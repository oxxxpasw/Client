// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewResponse implements DiagnosticableTreeMixin {

@JsonKey(name: 'ID') String get id; String? get ownerCustomerId; String? get comment; int? get rating;@JsonKey(unknownEnumValue: ObjectType.unknown, defaultValue: ObjectType.unknown) ObjectType get objectType; String? get objectId; String? get htmlContent; String? get dataOwnerID; DateTime? get createDate; String? get mobileNumber;@JsonKey(name: 'JsonContent')@ReviewDataResponseConverter() ReviewDataResponse? get data; List<String>? get imageLinks;
/// Create a copy of ReviewResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewResponseCopyWith<ReviewResponse> get copyWith => _$ReviewResponseCopyWithImpl<ReviewResponse>(this as ReviewResponse, _$identity);

  /// Serializes this ReviewResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('ownerCustomerId', ownerCustomerId))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('rating', rating))..add(DiagnosticsProperty('objectType', objectType))..add(DiagnosticsProperty('objectId', objectId))..add(DiagnosticsProperty('htmlContent', htmlContent))..add(DiagnosticsProperty('dataOwnerID', dataOwnerID))..add(DiagnosticsProperty('createDate', createDate))..add(DiagnosticsProperty('mobileNumber', mobileNumber))..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('imageLinks', imageLinks));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerCustomerId, ownerCustomerId) || other.ownerCustomerId == ownerCustomerId)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.htmlContent, htmlContent) || other.htmlContent == htmlContent)&&(identical(other.dataOwnerID, dataOwnerID) || other.dataOwnerID == dataOwnerID)&&(identical(other.createDate, createDate) || other.createDate == createDate)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.imageLinks, imageLinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ownerCustomerId,comment,rating,objectType,objectId,htmlContent,dataOwnerID,createDate,mobileNumber,data,const DeepCollectionEquality().hash(imageLinks));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewResponse(id: $id, ownerCustomerId: $ownerCustomerId, comment: $comment, rating: $rating, objectType: $objectType, objectId: $objectId, htmlContent: $htmlContent, dataOwnerID: $dataOwnerID, createDate: $createDate, mobileNumber: $mobileNumber, data: $data, imageLinks: $imageLinks)';
}


}

/// @nodoc
abstract mixin class $ReviewResponseCopyWith<$Res>  {
  factory $ReviewResponseCopyWith(ReviewResponse value, $Res Function(ReviewResponse) _then) = _$ReviewResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ID') String id, String? ownerCustomerId, String? comment, int? rating,@JsonKey(unknownEnumValue: ObjectType.unknown, defaultValue: ObjectType.unknown) ObjectType objectType, String? objectId, String? htmlContent, String? dataOwnerID, DateTime? createDate, String? mobileNumber,@JsonKey(name: 'JsonContent')@ReviewDataResponseConverter() ReviewDataResponse? data, List<String>? imageLinks
});


$ReviewDataResponseCopyWith<$Res>? get data;

}
/// @nodoc
class _$ReviewResponseCopyWithImpl<$Res>
    implements $ReviewResponseCopyWith<$Res> {
  _$ReviewResponseCopyWithImpl(this._self, this._then);

  final ReviewResponse _self;
  final $Res Function(ReviewResponse) _then;

/// Create a copy of ReviewResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ownerCustomerId = freezed,Object? comment = freezed,Object? rating = freezed,Object? objectType = null,Object? objectId = freezed,Object? htmlContent = freezed,Object? dataOwnerID = freezed,Object? createDate = freezed,Object? mobileNumber = freezed,Object? data = freezed,Object? imageLinks = freezed,}) {
  return _then(ReviewResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ownerCustomerId: freezed == ownerCustomerId ? _self.ownerCustomerId : ownerCustomerId // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as ObjectType,objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,htmlContent: freezed == htmlContent ? _self.htmlContent : htmlContent // ignore: cast_nullable_to_non_nullable
as String?,dataOwnerID: freezed == dataOwnerID ? _self.dataOwnerID : dataOwnerID // ignore: cast_nullable_to_non_nullable
as String?,createDate: freezed == createDate ? _self.createDate : createDate // ignore: cast_nullable_to_non_nullable
as DateTime?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ReviewDataResponse?,imageLinks: freezed == imageLinks ? _self.imageLinks : imageLinks // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of ReviewResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewDataResponseCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ReviewDataResponseCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewResponse].
extension ReviewResponsePatterns on ReviewResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReviewResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  String id,  String? ownerCustomerId,  String? comment,  int? rating, @JsonKey(unknownEnumValue: ObjectType.unknown, defaultValue: ObjectType.unknown)  ObjectType objectType,  String? objectId,  String? htmlContent,  String? dataOwnerID,  DateTime? createDate,  String? mobileNumber, @JsonKey(name: 'JsonContent')@ReviewDataResponseConverter()  ReviewDataResponse? data,  List<String>? imageLinks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewResponse() when $default != null:
return $default(_that.id,_that.ownerCustomerId,_that.comment,_that.rating,_that.objectType,_that.objectId,_that.htmlContent,_that.dataOwnerID,_that.createDate,_that.mobileNumber,_that.data,_that.imageLinks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  String id,  String? ownerCustomerId,  String? comment,  int? rating, @JsonKey(unknownEnumValue: ObjectType.unknown, defaultValue: ObjectType.unknown)  ObjectType objectType,  String? objectId,  String? htmlContent,  String? dataOwnerID,  DateTime? createDate,  String? mobileNumber, @JsonKey(name: 'JsonContent')@ReviewDataResponseConverter()  ReviewDataResponse? data,  List<String>? imageLinks)  $default,) {final _that = this;
switch (_that) {
case _ReviewResponse():
return $default(_that.id,_that.ownerCustomerId,_that.comment,_that.rating,_that.objectType,_that.objectId,_that.htmlContent,_that.dataOwnerID,_that.createDate,_that.mobileNumber,_that.data,_that.imageLinks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ID')  String id,  String? ownerCustomerId,  String? comment,  int? rating, @JsonKey(unknownEnumValue: ObjectType.unknown, defaultValue: ObjectType.unknown)  ObjectType objectType,  String? objectId,  String? htmlContent,  String? dataOwnerID,  DateTime? createDate,  String? mobileNumber, @JsonKey(name: 'JsonContent')@ReviewDataResponseConverter()  ReviewDataResponse? data,  List<String>? imageLinks)?  $default,) {final _that = this;
switch (_that) {
case _ReviewResponse() when $default != null:
return $default(_that.id,_that.ownerCustomerId,_that.comment,_that.rating,_that.objectType,_that.objectId,_that.htmlContent,_that.dataOwnerID,_that.createDate,_that.mobileNumber,_that.data,_that.imageLinks);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _ReviewResponse extends ReviewResponse with DiagnosticableTreeMixin {
  const _ReviewResponse({@JsonKey(name: 'ID') required this.id, this.ownerCustomerId, this.comment, this.rating, @JsonKey(unknownEnumValue: ObjectType.unknown, defaultValue: ObjectType.unknown) required this.objectType, this.objectId, this.htmlContent, this.dataOwnerID, this.createDate, this.mobileNumber, @JsonKey(name: 'JsonContent')@ReviewDataResponseConverter() this.data,  List<String>? imageLinks}): _imageLinks = imageLinks,super._();
  factory _ReviewResponse.fromJson(Map<String, dynamic> json) => _$ReviewResponseFromJson(json);

@override@JsonKey(name: 'ID') final  String id;
@override final  String? ownerCustomerId;
@override final  String? comment;
@override final  int? rating;
@override@JsonKey(unknownEnumValue: ObjectType.unknown, defaultValue: ObjectType.unknown) final  ObjectType objectType;
@override final  String? objectId;
@override final  String? htmlContent;
@override final  String? dataOwnerID;
@override final  DateTime? createDate;
@override final  String? mobileNumber;
@override@JsonKey(name: 'JsonContent')@ReviewDataResponseConverter() final  ReviewDataResponse? data;
 final  List<String>? _imageLinks;
@override List<String>? get imageLinks {
  final value = _imageLinks;
  if (value == null) return null;
  if (_imageLinks is EqualUnmodifiableListView) return _imageLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ReviewResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewResponseCopyWith<_ReviewResponse> get copyWith => __$ReviewResponseCopyWithImpl<_ReviewResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('ownerCustomerId', ownerCustomerId))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('rating', rating))..add(DiagnosticsProperty('objectType', objectType))..add(DiagnosticsProperty('objectId', objectId))..add(DiagnosticsProperty('htmlContent', htmlContent))..add(DiagnosticsProperty('dataOwnerID', dataOwnerID))..add(DiagnosticsProperty('createDate', createDate))..add(DiagnosticsProperty('mobileNumber', mobileNumber))..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('imageLinks', imageLinks));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerCustomerId, ownerCustomerId) || other.ownerCustomerId == ownerCustomerId)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.objectId, objectId) || other.objectId == objectId)&&(identical(other.htmlContent, htmlContent) || other.htmlContent == htmlContent)&&(identical(other.dataOwnerID, dataOwnerID) || other.dataOwnerID == dataOwnerID)&&(identical(other.createDate, createDate) || other.createDate == createDate)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._imageLinks, _imageLinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ownerCustomerId,comment,rating,objectType,objectId,htmlContent,dataOwnerID,createDate,mobileNumber,data,const DeepCollectionEquality().hash(_imageLinks));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewResponse(id: $id, ownerCustomerId: $ownerCustomerId, comment: $comment, rating: $rating, objectType: $objectType, objectId: $objectId, htmlContent: $htmlContent, dataOwnerID: $dataOwnerID, createDate: $createDate, mobileNumber: $mobileNumber, data: $data, imageLinks: $imageLinks)';
}


}

/// @nodoc
abstract mixin class _$ReviewResponseCopyWith<$Res> implements $ReviewResponseCopyWith<$Res> {
  factory _$ReviewResponseCopyWith(_ReviewResponse value, $Res Function(_ReviewResponse) _then) = __$ReviewResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ID') String id, String? ownerCustomerId, String? comment, int? rating,@JsonKey(unknownEnumValue: ObjectType.unknown, defaultValue: ObjectType.unknown) ObjectType objectType, String? objectId, String? htmlContent, String? dataOwnerID, DateTime? createDate, String? mobileNumber,@JsonKey(name: 'JsonContent')@ReviewDataResponseConverter() ReviewDataResponse? data, List<String>? imageLinks
});


@override $ReviewDataResponseCopyWith<$Res>? get data;

}
/// @nodoc
class __$ReviewResponseCopyWithImpl<$Res>
    implements _$ReviewResponseCopyWith<$Res> {
  __$ReviewResponseCopyWithImpl(this._self, this._then);

  final _ReviewResponse _self;
  final $Res Function(_ReviewResponse) _then;

/// Create a copy of ReviewResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ownerCustomerId = freezed,Object? comment = freezed,Object? rating = freezed,Object? objectType = null,Object? objectId = freezed,Object? htmlContent = freezed,Object? dataOwnerID = freezed,Object? createDate = freezed,Object? mobileNumber = freezed,Object? data = freezed,Object? imageLinks = freezed,}) {
  return _then(_ReviewResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ownerCustomerId: freezed == ownerCustomerId ? _self.ownerCustomerId : ownerCustomerId // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as ObjectType,objectId: freezed == objectId ? _self.objectId : objectId // ignore: cast_nullable_to_non_nullable
as String?,htmlContent: freezed == htmlContent ? _self.htmlContent : htmlContent // ignore: cast_nullable_to_non_nullable
as String?,dataOwnerID: freezed == dataOwnerID ? _self.dataOwnerID : dataOwnerID // ignore: cast_nullable_to_non_nullable
as String?,createDate: freezed == createDate ? _self.createDate : createDate // ignore: cast_nullable_to_non_nullable
as DateTime?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ReviewDataResponse?,imageLinks: freezed == imageLinks ? _self._imageLinks : imageLinks // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of ReviewResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewDataResponseCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ReviewDataResponseCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ReviewDataResponse implements DiagnosticableTreeMixin {

 ReviewStoreDataResponse? get store; ReviewProductDataResponse? get product; ReviewPurchaseDataResponse? get purchase;
/// Create a copy of ReviewDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewDataResponseCopyWith<ReviewDataResponse> get copyWith => _$ReviewDataResponseCopyWithImpl<ReviewDataResponse>(this as ReviewDataResponse, _$identity);

  /// Serializes this ReviewDataResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewDataResponse'))
    ..add(DiagnosticsProperty('store', store))..add(DiagnosticsProperty('product', product))..add(DiagnosticsProperty('purchase', purchase));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewDataResponse&&(identical(other.store, store) || other.store == store)&&(identical(other.product, product) || other.product == product)&&(identical(other.purchase, purchase) || other.purchase == purchase));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,store,product,purchase);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewDataResponse(store: $store, product: $product, purchase: $purchase)';
}


}

/// @nodoc
abstract mixin class $ReviewDataResponseCopyWith<$Res>  {
  factory $ReviewDataResponseCopyWith(ReviewDataResponse value, $Res Function(ReviewDataResponse) _then) = _$ReviewDataResponseCopyWithImpl;
@useResult
$Res call({
 ReviewStoreDataResponse? store, ReviewProductDataResponse? product, ReviewPurchaseDataResponse? purchase
});


$ReviewStoreDataResponseCopyWith<$Res>? get store;$ReviewProductDataResponseCopyWith<$Res>? get product;$ReviewPurchaseDataResponseCopyWith<$Res>? get purchase;

}
/// @nodoc
class _$ReviewDataResponseCopyWithImpl<$Res>
    implements $ReviewDataResponseCopyWith<$Res> {
  _$ReviewDataResponseCopyWithImpl(this._self, this._then);

  final ReviewDataResponse _self;
  final $Res Function(ReviewDataResponse) _then;

/// Create a copy of ReviewDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? store = freezed,Object? product = freezed,Object? purchase = freezed,}) {
  return _then(ReviewDataResponse(
store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as ReviewStoreDataResponse?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ReviewProductDataResponse?,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as ReviewPurchaseDataResponse?,
  ));
}
/// Create a copy of ReviewDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewStoreDataResponseCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $ReviewStoreDataResponseCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of ReviewDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewProductDataResponseCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ReviewProductDataResponseCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of ReviewDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewPurchaseDataResponseCopyWith<$Res>? get purchase {
    if (_self.purchase == null) {
    return null;
  }

  return $ReviewPurchaseDataResponseCopyWith<$Res>(_self.purchase!, (value) {
    return _then(_self.copyWith(purchase: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewDataResponse].
extension ReviewDataResponsePatterns on ReviewDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReviewDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewDataResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReviewStoreDataResponse? store,  ReviewProductDataResponse? product,  ReviewPurchaseDataResponse? purchase)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewDataResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReviewStoreDataResponse? store,  ReviewProductDataResponse? product,  ReviewPurchaseDataResponse? purchase)  $default,) {final _that = this;
switch (_that) {
case _ReviewDataResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReviewStoreDataResponse? store,  ReviewProductDataResponse? product,  ReviewPurchaseDataResponse? purchase)?  $default,) {final _that = this;
switch (_that) {
case _ReviewDataResponse() when $default != null:
return $default(_that.store,_that.product,_that.purchase);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewDataResponse with DiagnosticableTreeMixin implements ReviewDataResponse {
  const _ReviewDataResponse({this.store, this.product, this.purchase});
  factory _ReviewDataResponse.fromJson(Map<String, dynamic> json) => _$ReviewDataResponseFromJson(json);

@override final  ReviewStoreDataResponse? store;
@override final  ReviewProductDataResponse? product;
@override final  ReviewPurchaseDataResponse? purchase;

/// Create a copy of ReviewDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewDataResponseCopyWith<_ReviewDataResponse> get copyWith => __$ReviewDataResponseCopyWithImpl<_ReviewDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewDataResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewDataResponse'))
    ..add(DiagnosticsProperty('store', store))..add(DiagnosticsProperty('product', product))..add(DiagnosticsProperty('purchase', purchase));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewDataResponse&&(identical(other.store, store) || other.store == store)&&(identical(other.product, product) || other.product == product)&&(identical(other.purchase, purchase) || other.purchase == purchase));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,store,product,purchase);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewDataResponse(store: $store, product: $product, purchase: $purchase)';
}


}

/// @nodoc
abstract mixin class _$ReviewDataResponseCopyWith<$Res> implements $ReviewDataResponseCopyWith<$Res> {
  factory _$ReviewDataResponseCopyWith(_ReviewDataResponse value, $Res Function(_ReviewDataResponse) _then) = __$ReviewDataResponseCopyWithImpl;
@override @useResult
$Res call({
 ReviewStoreDataResponse? store, ReviewProductDataResponse? product, ReviewPurchaseDataResponse? purchase
});


@override $ReviewStoreDataResponseCopyWith<$Res>? get store;@override $ReviewProductDataResponseCopyWith<$Res>? get product;@override $ReviewPurchaseDataResponseCopyWith<$Res>? get purchase;

}
/// @nodoc
class __$ReviewDataResponseCopyWithImpl<$Res>
    implements _$ReviewDataResponseCopyWith<$Res> {
  __$ReviewDataResponseCopyWithImpl(this._self, this._then);

  final _ReviewDataResponse _self;
  final $Res Function(_ReviewDataResponse) _then;

/// Create a copy of ReviewDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? store = freezed,Object? product = freezed,Object? purchase = freezed,}) {
  return _then(_ReviewDataResponse(
store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as ReviewStoreDataResponse?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ReviewProductDataResponse?,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as ReviewPurchaseDataResponse?,
  ));
}

/// Create a copy of ReviewDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewStoreDataResponseCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $ReviewStoreDataResponseCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}/// Create a copy of ReviewDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewProductDataResponseCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ReviewProductDataResponseCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of ReviewDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewPurchaseDataResponseCopyWith<$Res>? get purchase {
    if (_self.purchase == null) {
    return null;
  }

  return $ReviewPurchaseDataResponseCopyWith<$Res>(_self.purchase!, (value) {
    return _then(_self.copyWith(purchase: value));
  });
}
}


/// @nodoc
mixin _$ReviewStoreDataResponse implements DiagnosticableTreeMixin {

 String get id; String? get name; String? get address;
/// Create a copy of ReviewStoreDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewStoreDataResponseCopyWith<ReviewStoreDataResponse> get copyWith => _$ReviewStoreDataResponseCopyWithImpl<ReviewStoreDataResponse>(this as ReviewStoreDataResponse, _$identity);

  /// Serializes this ReviewStoreDataResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewStoreDataResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('address', address));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewStoreDataResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewStoreDataResponse(id: $id, name: $name, address: $address)';
}


}

/// @nodoc
abstract mixin class $ReviewStoreDataResponseCopyWith<$Res>  {
  factory $ReviewStoreDataResponseCopyWith(ReviewStoreDataResponse value, $Res Function(ReviewStoreDataResponse) _then) = _$ReviewStoreDataResponseCopyWithImpl;
@useResult
$Res call({
 String id, String? name, String? address
});




}
/// @nodoc
class _$ReviewStoreDataResponseCopyWithImpl<$Res>
    implements $ReviewStoreDataResponseCopyWith<$Res> {
  _$ReviewStoreDataResponseCopyWithImpl(this._self, this._then);

  final ReviewStoreDataResponse _self;
  final $Res Function(ReviewStoreDataResponse) _then;

/// Create a copy of ReviewStoreDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? address = freezed,}) {
  return _then(ReviewStoreDataResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewStoreDataResponse].
extension ReviewStoreDataResponsePatterns on ReviewStoreDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewStoreDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewStoreDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewStoreDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReviewStoreDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewStoreDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewStoreDataResponse() when $default != null:
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
case _ReviewStoreDataResponse() when $default != null:
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
case _ReviewStoreDataResponse():
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
case _ReviewStoreDataResponse() when $default != null:
return $default(_that.id,_that.name,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewStoreDataResponse with DiagnosticableTreeMixin implements ReviewStoreDataResponse {
  const _ReviewStoreDataResponse({required this.id, this.name, this.address});
  factory _ReviewStoreDataResponse.fromJson(Map<String, dynamic> json) => _$ReviewStoreDataResponseFromJson(json);

@override final  String id;
@override final  String? name;
@override final  String? address;

/// Create a copy of ReviewStoreDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewStoreDataResponseCopyWith<_ReviewStoreDataResponse> get copyWith => __$ReviewStoreDataResponseCopyWithImpl<_ReviewStoreDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewStoreDataResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewStoreDataResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('address', address));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewStoreDataResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewStoreDataResponse(id: $id, name: $name, address: $address)';
}


}

/// @nodoc
abstract mixin class _$ReviewStoreDataResponseCopyWith<$Res> implements $ReviewStoreDataResponseCopyWith<$Res> {
  factory _$ReviewStoreDataResponseCopyWith(_ReviewStoreDataResponse value, $Res Function(_ReviewStoreDataResponse) _then) = __$ReviewStoreDataResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, String? address
});




}
/// @nodoc
class __$ReviewStoreDataResponseCopyWithImpl<$Res>
    implements _$ReviewStoreDataResponseCopyWith<$Res> {
  __$ReviewStoreDataResponseCopyWithImpl(this._self, this._then);

  final _ReviewStoreDataResponse _self;
  final $Res Function(_ReviewStoreDataResponse) _then;

/// Create a copy of ReviewStoreDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? address = freezed,}) {
  return _then(_ReviewStoreDataResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReviewProductDataResponse implements DiagnosticableTreeMixin {

 String get id; String? get name;
/// Create a copy of ReviewProductDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewProductDataResponseCopyWith<ReviewProductDataResponse> get copyWith => _$ReviewProductDataResponseCopyWithImpl<ReviewProductDataResponse>(this as ReviewProductDataResponse, _$identity);

  /// Serializes this ReviewProductDataResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewProductDataResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewProductDataResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewProductDataResponse(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ReviewProductDataResponseCopyWith<$Res>  {
  factory $ReviewProductDataResponseCopyWith(ReviewProductDataResponse value, $Res Function(ReviewProductDataResponse) _then) = _$ReviewProductDataResponseCopyWithImpl;
@useResult
$Res call({
 String id, String? name
});




}
/// @nodoc
class _$ReviewProductDataResponseCopyWithImpl<$Res>
    implements $ReviewProductDataResponseCopyWith<$Res> {
  _$ReviewProductDataResponseCopyWithImpl(this._self, this._then);

  final ReviewProductDataResponse _self;
  final $Res Function(ReviewProductDataResponse) _then;

/// Create a copy of ReviewProductDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,}) {
  return _then(ReviewProductDataResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewProductDataResponse].
extension ReviewProductDataResponsePatterns on ReviewProductDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewProductDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewProductDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewProductDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReviewProductDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewProductDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewProductDataResponse() when $default != null:
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
case _ReviewProductDataResponse() when $default != null:
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
case _ReviewProductDataResponse():
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
case _ReviewProductDataResponse() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewProductDataResponse with DiagnosticableTreeMixin implements ReviewProductDataResponse {
  const _ReviewProductDataResponse({required this.id, this.name});
  factory _ReviewProductDataResponse.fromJson(Map<String, dynamic> json) => _$ReviewProductDataResponseFromJson(json);

@override final  String id;
@override final  String? name;

/// Create a copy of ReviewProductDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewProductDataResponseCopyWith<_ReviewProductDataResponse> get copyWith => __$ReviewProductDataResponseCopyWithImpl<_ReviewProductDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewProductDataResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewProductDataResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewProductDataResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewProductDataResponse(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ReviewProductDataResponseCopyWith<$Res> implements $ReviewProductDataResponseCopyWith<$Res> {
  factory _$ReviewProductDataResponseCopyWith(_ReviewProductDataResponse value, $Res Function(_ReviewProductDataResponse) _then) = __$ReviewProductDataResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name
});




}
/// @nodoc
class __$ReviewProductDataResponseCopyWithImpl<$Res>
    implements _$ReviewProductDataResponseCopyWith<$Res> {
  __$ReviewProductDataResponseCopyWithImpl(this._self, this._then);

  final _ReviewProductDataResponse _self;
  final $Res Function(_ReviewProductDataResponse) _then;

/// Create a copy of ReviewProductDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,}) {
  return _then(_ReviewProductDataResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReviewPurchaseDataResponse implements DiagnosticableTreeMixin {

 String get id; DateTime? get createdDatetime; List<ReviewOrderedProductResponse> get products; double? get total; ReviewStoreDataResponse? get store;
/// Create a copy of ReviewPurchaseDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewPurchaseDataResponseCopyWith<ReviewPurchaseDataResponse> get copyWith => _$ReviewPurchaseDataResponseCopyWithImpl<ReviewPurchaseDataResponse>(this as ReviewPurchaseDataResponse, _$identity);

  /// Serializes this ReviewPurchaseDataResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewPurchaseDataResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('createdDatetime', createdDatetime))..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('total', total))..add(DiagnosticsProperty('store', store));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewPurchaseDataResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.createdDatetime, createdDatetime) || other.createdDatetime == createdDatetime)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.total, total) || other.total == total)&&(identical(other.store, store) || other.store == store));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdDatetime,const DeepCollectionEquality().hash(products),total,store);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewPurchaseDataResponse(id: $id, createdDatetime: $createdDatetime, products: $products, total: $total, store: $store)';
}


}

/// @nodoc
abstract mixin class $ReviewPurchaseDataResponseCopyWith<$Res>  {
  factory $ReviewPurchaseDataResponseCopyWith(ReviewPurchaseDataResponse value, $Res Function(ReviewPurchaseDataResponse) _then) = _$ReviewPurchaseDataResponseCopyWithImpl;
@useResult
$Res call({
 String id, DateTime? createdDatetime, List<ReviewOrderedProductResponse> products, double? total, ReviewStoreDataResponse? store
});


$ReviewStoreDataResponseCopyWith<$Res>? get store;

}
/// @nodoc
class _$ReviewPurchaseDataResponseCopyWithImpl<$Res>
    implements $ReviewPurchaseDataResponseCopyWith<$Res> {
  _$ReviewPurchaseDataResponseCopyWithImpl(this._self, this._then);

  final ReviewPurchaseDataResponse _self;
  final $Res Function(ReviewPurchaseDataResponse) _then;

/// Create a copy of ReviewPurchaseDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdDatetime = freezed,Object? products = null,Object? total = freezed,Object? store = freezed,}) {
  return _then(ReviewPurchaseDataResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdDatetime: freezed == createdDatetime ? _self.createdDatetime : createdDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ReviewOrderedProductResponse>,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as ReviewStoreDataResponse?,
  ));
}
/// Create a copy of ReviewPurchaseDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewStoreDataResponseCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $ReviewStoreDataResponseCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewPurchaseDataResponse].
extension ReviewPurchaseDataResponsePatterns on ReviewPurchaseDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewPurchaseDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewPurchaseDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewPurchaseDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReviewPurchaseDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewPurchaseDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewPurchaseDataResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime? createdDatetime,  List<ReviewOrderedProductResponse> products,  double? total,  ReviewStoreDataResponse? store)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewPurchaseDataResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime? createdDatetime,  List<ReviewOrderedProductResponse> products,  double? total,  ReviewStoreDataResponse? store)  $default,) {final _that = this;
switch (_that) {
case _ReviewPurchaseDataResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime? createdDatetime,  List<ReviewOrderedProductResponse> products,  double? total,  ReviewStoreDataResponse? store)?  $default,) {final _that = this;
switch (_that) {
case _ReviewPurchaseDataResponse() when $default != null:
return $default(_that.id,_that.createdDatetime,_that.products,_that.total,_that.store);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewPurchaseDataResponse with DiagnosticableTreeMixin implements ReviewPurchaseDataResponse {
  const _ReviewPurchaseDataResponse({required this.id, this.createdDatetime,  List<ReviewOrderedProductResponse> products = const [], this.total, this.store}): _products = products;
  factory _ReviewPurchaseDataResponse.fromJson(Map<String, dynamic> json) => _$ReviewPurchaseDataResponseFromJson(json);

@override final  String id;
@override final  DateTime? createdDatetime;
 final  List<ReviewOrderedProductResponse> _products;
@override@JsonKey() List<ReviewOrderedProductResponse> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  double? total;
@override final  ReviewStoreDataResponse? store;

/// Create a copy of ReviewPurchaseDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewPurchaseDataResponseCopyWith<_ReviewPurchaseDataResponse> get copyWith => __$ReviewPurchaseDataResponseCopyWithImpl<_ReviewPurchaseDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewPurchaseDataResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewPurchaseDataResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('createdDatetime', createdDatetime))..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('total', total))..add(DiagnosticsProperty('store', store));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewPurchaseDataResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.createdDatetime, createdDatetime) || other.createdDatetime == createdDatetime)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.total, total) || other.total == total)&&(identical(other.store, store) || other.store == store));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdDatetime,const DeepCollectionEquality().hash(_products),total,store);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewPurchaseDataResponse(id: $id, createdDatetime: $createdDatetime, products: $products, total: $total, store: $store)';
}


}

/// @nodoc
abstract mixin class _$ReviewPurchaseDataResponseCopyWith<$Res> implements $ReviewPurchaseDataResponseCopyWith<$Res> {
  factory _$ReviewPurchaseDataResponseCopyWith(_ReviewPurchaseDataResponse value, $Res Function(_ReviewPurchaseDataResponse) _then) = __$ReviewPurchaseDataResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime? createdDatetime, List<ReviewOrderedProductResponse> products, double? total, ReviewStoreDataResponse? store
});


@override $ReviewStoreDataResponseCopyWith<$Res>? get store;

}
/// @nodoc
class __$ReviewPurchaseDataResponseCopyWithImpl<$Res>
    implements _$ReviewPurchaseDataResponseCopyWith<$Res> {
  __$ReviewPurchaseDataResponseCopyWithImpl(this._self, this._then);

  final _ReviewPurchaseDataResponse _self;
  final $Res Function(_ReviewPurchaseDataResponse) _then;

/// Create a copy of ReviewPurchaseDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdDatetime = freezed,Object? products = null,Object? total = freezed,Object? store = freezed,}) {
  return _then(_ReviewPurchaseDataResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdDatetime: freezed == createdDatetime ? _self.createdDatetime : createdDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ReviewOrderedProductResponse>,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as ReviewStoreDataResponse?,
  ));
}

/// Create a copy of ReviewPurchaseDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewStoreDataResponseCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $ReviewStoreDataResponseCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// @nodoc
mixin _$ReviewOrderedProductResponse implements DiagnosticableTreeMixin {

 String get id; double get price; String? get name; String? get image; List<ReviewOrderedModifierGroupResponse> get modifiers; double? get quantity;@JsonKey(name: 'currencySymbol') String get currencySymbol;
/// Create a copy of ReviewOrderedProductResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewOrderedProductResponseCopyWith<ReviewOrderedProductResponse> get copyWith => _$ReviewOrderedProductResponseCopyWithImpl<ReviewOrderedProductResponse>(this as ReviewOrderedProductResponse, _$identity);

  /// Serializes this ReviewOrderedProductResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewOrderedProductResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('modifiers', modifiers))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('currencySymbol', currencySymbol));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewOrderedProductResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.modifiers, modifiers)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,price,name,image,const DeepCollectionEquality().hash(modifiers),quantity,currencySymbol);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewOrderedProductResponse(id: $id, price: $price, name: $name, image: $image, modifiers: $modifiers, quantity: $quantity, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class $ReviewOrderedProductResponseCopyWith<$Res>  {
  factory $ReviewOrderedProductResponseCopyWith(ReviewOrderedProductResponse value, $Res Function(ReviewOrderedProductResponse) _then) = _$ReviewOrderedProductResponseCopyWithImpl;
@useResult
$Res call({
 String id, double price, String? name, String? image, List<ReviewOrderedModifierGroupResponse> modifiers, double? quantity,@JsonKey(name: 'currencySymbol') String currencySymbol
});




}
/// @nodoc
class _$ReviewOrderedProductResponseCopyWithImpl<$Res>
    implements $ReviewOrderedProductResponseCopyWith<$Res> {
  _$ReviewOrderedProductResponseCopyWithImpl(this._self, this._then);

  final ReviewOrderedProductResponse _self;
  final $Res Function(ReviewOrderedProductResponse) _then;

/// Create a copy of ReviewOrderedProductResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? price = null,Object? name = freezed,Object? image = freezed,Object? modifiers = null,Object? quantity = freezed,Object? currencySymbol = null,}) {
  return _then(ReviewOrderedProductResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,modifiers: null == modifiers ? _self.modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<ReviewOrderedModifierGroupResponse>,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewOrderedProductResponse].
extension ReviewOrderedProductResponsePatterns on ReviewOrderedProductResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewOrderedProductResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewOrderedProductResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewOrderedProductResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReviewOrderedProductResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewOrderedProductResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewOrderedProductResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  double price,  String? name,  String? image,  List<ReviewOrderedModifierGroupResponse> modifiers,  double? quantity, @JsonKey(name: 'currencySymbol')  String currencySymbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewOrderedProductResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  double price,  String? name,  String? image,  List<ReviewOrderedModifierGroupResponse> modifiers,  double? quantity, @JsonKey(name: 'currencySymbol')  String currencySymbol)  $default,) {final _that = this;
switch (_that) {
case _ReviewOrderedProductResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  double price,  String? name,  String? image,  List<ReviewOrderedModifierGroupResponse> modifiers,  double? quantity, @JsonKey(name: 'currencySymbol')  String currencySymbol)?  $default,) {final _that = this;
switch (_that) {
case _ReviewOrderedProductResponse() when $default != null:
return $default(_that.id,_that.price,_that.name,_that.image,_that.modifiers,_that.quantity,_that.currencySymbol);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewOrderedProductResponse with DiagnosticableTreeMixin implements ReviewOrderedProductResponse {
  const _ReviewOrderedProductResponse({required this.id, required this.price, this.name, this.image,  List<ReviewOrderedModifierGroupResponse> modifiers = const [], this.quantity, @JsonKey(name: 'currencySymbol') this.currencySymbol = ''}): _modifiers = modifiers;
  factory _ReviewOrderedProductResponse.fromJson(Map<String, dynamic> json) => _$ReviewOrderedProductResponseFromJson(json);

@override final  String id;
@override final  double price;
@override final  String? name;
@override final  String? image;
 final  List<ReviewOrderedModifierGroupResponse> _modifiers;
@override@JsonKey() List<ReviewOrderedModifierGroupResponse> get modifiers {
  if (_modifiers is EqualUnmodifiableListView) return _modifiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modifiers);
}

@override final  double? quantity;
@override@JsonKey(name: 'currencySymbol') final  String currencySymbol;

/// Create a copy of ReviewOrderedProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewOrderedProductResponseCopyWith<_ReviewOrderedProductResponse> get copyWith => __$ReviewOrderedProductResponseCopyWithImpl<_ReviewOrderedProductResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewOrderedProductResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewOrderedProductResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('modifiers', modifiers))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('currencySymbol', currencySymbol));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewOrderedProductResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._modifiers, _modifiers)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,price,name,image,const DeepCollectionEquality().hash(_modifiers),quantity,currencySymbol);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewOrderedProductResponse(id: $id, price: $price, name: $name, image: $image, modifiers: $modifiers, quantity: $quantity, currencySymbol: $currencySymbol)';
}


}

/// @nodoc
abstract mixin class _$ReviewOrderedProductResponseCopyWith<$Res> implements $ReviewOrderedProductResponseCopyWith<$Res> {
  factory _$ReviewOrderedProductResponseCopyWith(_ReviewOrderedProductResponse value, $Res Function(_ReviewOrderedProductResponse) _then) = __$ReviewOrderedProductResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, double price, String? name, String? image, List<ReviewOrderedModifierGroupResponse> modifiers, double? quantity,@JsonKey(name: 'currencySymbol') String currencySymbol
});




}
/// @nodoc
class __$ReviewOrderedProductResponseCopyWithImpl<$Res>
    implements _$ReviewOrderedProductResponseCopyWith<$Res> {
  __$ReviewOrderedProductResponseCopyWithImpl(this._self, this._then);

  final _ReviewOrderedProductResponse _self;
  final $Res Function(_ReviewOrderedProductResponse) _then;

/// Create a copy of ReviewOrderedProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? price = null,Object? name = freezed,Object? image = freezed,Object? modifiers = null,Object? quantity = freezed,Object? currencySymbol = null,}) {
  return _then(_ReviewOrderedProductResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,modifiers: null == modifiers ? _self._modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<ReviewOrderedModifierGroupResponse>,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ReviewOrderedModifierGroupResponse implements DiagnosticableTreeMixin {

 String? get name; List<ReviewOrderedModifierResponse> get options;
/// Create a copy of ReviewOrderedModifierGroupResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewOrderedModifierGroupResponseCopyWith<ReviewOrderedModifierGroupResponse> get copyWith => _$ReviewOrderedModifierGroupResponseCopyWithImpl<ReviewOrderedModifierGroupResponse>(this as ReviewOrderedModifierGroupResponse, _$identity);

  /// Serializes this ReviewOrderedModifierGroupResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewOrderedModifierGroupResponse'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('options', options));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewOrderedModifierGroupResponse&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(options));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewOrderedModifierGroupResponse(name: $name, options: $options)';
}


}

/// @nodoc
abstract mixin class $ReviewOrderedModifierGroupResponseCopyWith<$Res>  {
  factory $ReviewOrderedModifierGroupResponseCopyWith(ReviewOrderedModifierGroupResponse value, $Res Function(ReviewOrderedModifierGroupResponse) _then) = _$ReviewOrderedModifierGroupResponseCopyWithImpl;
@useResult
$Res call({
 String? name, List<ReviewOrderedModifierResponse> options
});




}
/// @nodoc
class _$ReviewOrderedModifierGroupResponseCopyWithImpl<$Res>
    implements $ReviewOrderedModifierGroupResponseCopyWith<$Res> {
  _$ReviewOrderedModifierGroupResponseCopyWithImpl(this._self, this._then);

  final ReviewOrderedModifierGroupResponse _self;
  final $Res Function(ReviewOrderedModifierGroupResponse) _then;

/// Create a copy of ReviewOrderedModifierGroupResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? options = null,}) {
  return _then(ReviewOrderedModifierGroupResponse(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<ReviewOrderedModifierResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewOrderedModifierGroupResponse].
extension ReviewOrderedModifierGroupResponsePatterns on ReviewOrderedModifierGroupResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewOrderedModifierGroupResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewOrderedModifierGroupResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewOrderedModifierGroupResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReviewOrderedModifierGroupResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewOrderedModifierGroupResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewOrderedModifierGroupResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  List<ReviewOrderedModifierResponse> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewOrderedModifierGroupResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  List<ReviewOrderedModifierResponse> options)  $default,) {final _that = this;
switch (_that) {
case _ReviewOrderedModifierGroupResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  List<ReviewOrderedModifierResponse> options)?  $default,) {final _that = this;
switch (_that) {
case _ReviewOrderedModifierGroupResponse() when $default != null:
return $default(_that.name,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewOrderedModifierGroupResponse with DiagnosticableTreeMixin implements ReviewOrderedModifierGroupResponse {
  const _ReviewOrderedModifierGroupResponse({this.name, required  List<ReviewOrderedModifierResponse> options}): _options = options;
  factory _ReviewOrderedModifierGroupResponse.fromJson(Map<String, dynamic> json) => _$ReviewOrderedModifierGroupResponseFromJson(json);

@override final  String? name;
 final  List<ReviewOrderedModifierResponse> _options;
@override List<ReviewOrderedModifierResponse> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of ReviewOrderedModifierGroupResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewOrderedModifierGroupResponseCopyWith<_ReviewOrderedModifierGroupResponse> get copyWith => __$ReviewOrderedModifierGroupResponseCopyWithImpl<_ReviewOrderedModifierGroupResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewOrderedModifierGroupResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewOrderedModifierGroupResponse'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('options', options));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewOrderedModifierGroupResponse&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_options));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewOrderedModifierGroupResponse(name: $name, options: $options)';
}


}

/// @nodoc
abstract mixin class _$ReviewOrderedModifierGroupResponseCopyWith<$Res> implements $ReviewOrderedModifierGroupResponseCopyWith<$Res> {
  factory _$ReviewOrderedModifierGroupResponseCopyWith(_ReviewOrderedModifierGroupResponse value, $Res Function(_ReviewOrderedModifierGroupResponse) _then) = __$ReviewOrderedModifierGroupResponseCopyWithImpl;
@override @useResult
$Res call({
 String? name, List<ReviewOrderedModifierResponse> options
});




}
/// @nodoc
class __$ReviewOrderedModifierGroupResponseCopyWithImpl<$Res>
    implements _$ReviewOrderedModifierGroupResponseCopyWith<$Res> {
  __$ReviewOrderedModifierGroupResponseCopyWithImpl(this._self, this._then);

  final _ReviewOrderedModifierGroupResponse _self;
  final $Res Function(_ReviewOrderedModifierGroupResponse) _then;

/// Create a copy of ReviewOrderedModifierGroupResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? options = null,}) {
  return _then(_ReviewOrderedModifierGroupResponse(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<ReviewOrderedModifierResponse>,
  ));
}


}


/// @nodoc
mixin _$ReviewOrderedModifierResponse implements DiagnosticableTreeMixin {

 String get id; String? get name; double? get quantity; double? get price;
/// Create a copy of ReviewOrderedModifierResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewOrderedModifierResponseCopyWith<ReviewOrderedModifierResponse> get copyWith => _$ReviewOrderedModifierResponseCopyWithImpl<ReviewOrderedModifierResponse>(this as ReviewOrderedModifierResponse, _$identity);

  /// Serializes this ReviewOrderedModifierResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewOrderedModifierResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('price', price));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewOrderedModifierResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,quantity,price);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewOrderedModifierResponse(id: $id, name: $name, quantity: $quantity, price: $price)';
}


}

/// @nodoc
abstract mixin class $ReviewOrderedModifierResponseCopyWith<$Res>  {
  factory $ReviewOrderedModifierResponseCopyWith(ReviewOrderedModifierResponse value, $Res Function(ReviewOrderedModifierResponse) _then) = _$ReviewOrderedModifierResponseCopyWithImpl;
@useResult
$Res call({
 String id, String? name, double? quantity, double? price
});




}
/// @nodoc
class _$ReviewOrderedModifierResponseCopyWithImpl<$Res>
    implements $ReviewOrderedModifierResponseCopyWith<$Res> {
  _$ReviewOrderedModifierResponseCopyWithImpl(this._self, this._then);

  final ReviewOrderedModifierResponse _self;
  final $Res Function(ReviewOrderedModifierResponse) _then;

/// Create a copy of ReviewOrderedModifierResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? quantity = freezed,Object? price = freezed,}) {
  return _then(ReviewOrderedModifierResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewOrderedModifierResponse].
extension ReviewOrderedModifierResponsePatterns on ReviewOrderedModifierResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewOrderedModifierResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewOrderedModifierResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewOrderedModifierResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReviewOrderedModifierResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewOrderedModifierResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewOrderedModifierResponse() when $default != null:
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
case _ReviewOrderedModifierResponse() when $default != null:
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
case _ReviewOrderedModifierResponse():
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
case _ReviewOrderedModifierResponse() when $default != null:
return $default(_that.id,_that.name,_that.quantity,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewOrderedModifierResponse with DiagnosticableTreeMixin implements ReviewOrderedModifierResponse {
  const _ReviewOrderedModifierResponse({required this.id, this.name, this.quantity, this.price});
  factory _ReviewOrderedModifierResponse.fromJson(Map<String, dynamic> json) => _$ReviewOrderedModifierResponseFromJson(json);

@override final  String id;
@override final  String? name;
@override final  double? quantity;
@override final  double? price;

/// Create a copy of ReviewOrderedModifierResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewOrderedModifierResponseCopyWith<_ReviewOrderedModifierResponse> get copyWith => __$ReviewOrderedModifierResponseCopyWithImpl<_ReviewOrderedModifierResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewOrderedModifierResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewOrderedModifierResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('price', price));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewOrderedModifierResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,quantity,price);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewOrderedModifierResponse(id: $id, name: $name, quantity: $quantity, price: $price)';
}


}

/// @nodoc
abstract mixin class _$ReviewOrderedModifierResponseCopyWith<$Res> implements $ReviewOrderedModifierResponseCopyWith<$Res> {
  factory _$ReviewOrderedModifierResponseCopyWith(_ReviewOrderedModifierResponse value, $Res Function(_ReviewOrderedModifierResponse) _then) = __$ReviewOrderedModifierResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, double? quantity, double? price
});




}
/// @nodoc
class __$ReviewOrderedModifierResponseCopyWithImpl<$Res>
    implements _$ReviewOrderedModifierResponseCopyWith<$Res> {
  __$ReviewOrderedModifierResponseCopyWithImpl(this._self, this._then);

  final _ReviewOrderedModifierResponse _self;
  final $Res Function(_ReviewOrderedModifierResponse) _then;

/// Create a copy of ReviewOrderedModifierResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? quantity = freezed,Object? price = freezed,}) {
  return _then(_ReviewOrderedModifierResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
