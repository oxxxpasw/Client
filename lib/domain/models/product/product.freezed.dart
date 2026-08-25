// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Product {

 String get id; String? get groupId; String? get folderId; String get name; double get price; String get currencySymbol; String? get imageUrl; String? get description; List<ModifierGroup> get modifierGroups; CalorieIntake get calorieIntake; String get shortName; bool get isDefault; String get keywords; bool get weight; String? get ingredientsDescription; String? get sizeDescription; List<StoreQuantityResponse>? get stores; String? get itemCode; String? get descriptionHTML; StockStatus get status; String? get volume;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.folderId, folderId) || other.folderId == folderId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.modifierGroups, modifierGroups)&&(identical(other.calorieIntake, calorieIntake) || other.calorieIntake == calorieIntake)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.keywords, keywords) || other.keywords == keywords)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.ingredientsDescription, ingredientsDescription) || other.ingredientsDescription == ingredientsDescription)&&(identical(other.sizeDescription, sizeDescription) || other.sizeDescription == sizeDescription)&&const DeepCollectionEquality().equals(other.stores, stores)&&(identical(other.itemCode, itemCode) || other.itemCode == itemCode)&&(identical(other.descriptionHTML, descriptionHTML) || other.descriptionHTML == descriptionHTML)&&(identical(other.status, status) || other.status == status)&&(identical(other.volume, volume) || other.volume == volume));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,groupId,folderId,name,price,currencySymbol,imageUrl,description,const DeepCollectionEquality().hash(modifierGroups),calorieIntake,shortName,isDefault,keywords,weight,ingredientsDescription,sizeDescription,const DeepCollectionEquality().hash(stores),itemCode,descriptionHTML,status,volume]);

@override
String toString() {
  return 'Product(id: $id, groupId: $groupId, folderId: $folderId, name: $name, price: $price, currencySymbol: $currencySymbol, imageUrl: $imageUrl, description: $description, modifierGroups: $modifierGroups, calorieIntake: $calorieIntake, shortName: $shortName, isDefault: $isDefault, keywords: $keywords, weight: $weight, ingredientsDescription: $ingredientsDescription, sizeDescription: $sizeDescription, stores: $stores, itemCode: $itemCode, descriptionHTML: $descriptionHTML, status: $status, volume: $volume)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 String id, String? groupId, String? folderId, String name, double price, String currencySymbol, String? imageUrl, String? description, List<ModifierGroup> modifierGroups, CalorieIntake calorieIntake, String shortName, bool isDefault, String keywords, bool weight, String? ingredientsDescription, String? sizeDescription, List<StoreQuantityResponse>? stores, String? itemCode, String? descriptionHTML, StockStatus status, String? volume
});


$CalorieIntakeCopyWith<$Res> get calorieIntake;

}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? groupId = freezed,Object? folderId = freezed,Object? name = null,Object? price = null,Object? currencySymbol = null,Object? imageUrl = freezed,Object? description = freezed,Object? modifierGroups = null,Object? calorieIntake = null,Object? shortName = null,Object? isDefault = null,Object? keywords = null,Object? weight = null,Object? ingredientsDescription = freezed,Object? sizeDescription = freezed,Object? stores = freezed,Object? itemCode = freezed,Object? descriptionHTML = freezed,Object? status = null,Object? volume = freezed,}) {
  return _then(Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,folderId: freezed == folderId ? _self.folderId : folderId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,modifierGroups: null == modifierGroups ? _self.modifierGroups : modifierGroups // ignore: cast_nullable_to_non_nullable
as List<ModifierGroup>,calorieIntake: null == calorieIntake ? _self.calorieIntake : calorieIntake // ignore: cast_nullable_to_non_nullable
as CalorieIntake,shortName: null == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,keywords: null == keywords ? _self.keywords : keywords // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as bool,ingredientsDescription: freezed == ingredientsDescription ? _self.ingredientsDescription : ingredientsDescription // ignore: cast_nullable_to_non_nullable
as String?,sizeDescription: freezed == sizeDescription ? _self.sizeDescription : sizeDescription // ignore: cast_nullable_to_non_nullable
as String?,stores: freezed == stores ? _self.stores : stores // ignore: cast_nullable_to_non_nullable
as List<StoreQuantityResponse>?,itemCode: freezed == itemCode ? _self.itemCode : itemCode // ignore: cast_nullable_to_non_nullable
as String?,descriptionHTML: freezed == descriptionHTML ? _self.descriptionHTML : descriptionHTML // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StockStatus,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalorieIntakeCopyWith<$Res> get calorieIntake {
  
  return $CalorieIntakeCopyWith<$Res>(_self.calorieIntake, (value) {
    return _then(_self.copyWith(calorieIntake: value));
  });
}
}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( DefaultProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case DefaultProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( DefaultProduct value)  $default,){
final _that = this;
switch (_that) {
case DefaultProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( DefaultProduct value)?  $default,){
final _that = this;
switch (_that) {
case DefaultProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? groupId,  String? folderId,  String name,  double price,  String currencySymbol,  String? imageUrl,  String? description,  List<ModifierGroup> modifierGroups,  CalorieIntake calorieIntake,  String shortName,  bool isDefault,  String keywords,  bool weight,  String? ingredientsDescription,  String? sizeDescription,  List<StoreQuantityResponse>? stores,  String? itemCode,  String? descriptionHTML,  StockStatus status,  String? volume)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case DefaultProduct() when $default != null:
return $default(_that.id,_that.groupId,_that.folderId,_that.name,_that.price,_that.currencySymbol,_that.imageUrl,_that.description,_that.modifierGroups,_that.calorieIntake,_that.shortName,_that.isDefault,_that.keywords,_that.weight,_that.ingredientsDescription,_that.sizeDescription,_that.stores,_that.itemCode,_that.descriptionHTML,_that.status,_that.volume);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? groupId,  String? folderId,  String name,  double price,  String currencySymbol,  String? imageUrl,  String? description,  List<ModifierGroup> modifierGroups,  CalorieIntake calorieIntake,  String shortName,  bool isDefault,  String keywords,  bool weight,  String? ingredientsDescription,  String? sizeDescription,  List<StoreQuantityResponse>? stores,  String? itemCode,  String? descriptionHTML,  StockStatus status,  String? volume)  $default,) {final _that = this;
switch (_that) {
case DefaultProduct():
return $default(_that.id,_that.groupId,_that.folderId,_that.name,_that.price,_that.currencySymbol,_that.imageUrl,_that.description,_that.modifierGroups,_that.calorieIntake,_that.shortName,_that.isDefault,_that.keywords,_that.weight,_that.ingredientsDescription,_that.sizeDescription,_that.stores,_that.itemCode,_that.descriptionHTML,_that.status,_that.volume);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? groupId,  String? folderId,  String name,  double price,  String currencySymbol,  String? imageUrl,  String? description,  List<ModifierGroup> modifierGroups,  CalorieIntake calorieIntake,  String shortName,  bool isDefault,  String keywords,  bool weight,  String? ingredientsDescription,  String? sizeDescription,  List<StoreQuantityResponse>? stores,  String? itemCode,  String? descriptionHTML,  StockStatus status,  String? volume)?  $default,) {final _that = this;
switch (_that) {
case DefaultProduct() when $default != null:
return $default(_that.id,_that.groupId,_that.folderId,_that.name,_that.price,_that.currencySymbol,_that.imageUrl,_that.description,_that.modifierGroups,_that.calorieIntake,_that.shortName,_that.isDefault,_that.keywords,_that.weight,_that.ingredientsDescription,_that.sizeDescription,_that.stores,_that.itemCode,_that.descriptionHTML,_that.status,_that.volume);case _:
  return null;

}
}

}

/// @nodoc


class DefaultProduct extends Product {
   DefaultProduct({required this.id, this.groupId, this.folderId, required this.name, required this.price, required this.currencySymbol, this.imageUrl, this.description, required  List<ModifierGroup> modifierGroups, required this.calorieIntake, required this.shortName, required this.isDefault, required this.keywords, required this.weight, this.ingredientsDescription, this.sizeDescription,  List<StoreQuantityResponse>? stores, this.itemCode, this.descriptionHTML, this.status = StockStatus.outOfStock, this.volume}): _modifierGroups = modifierGroups,_stores = stores,super._();
  

@override final  String id;
@override final  String? groupId;
@override final  String? folderId;
@override final  String name;
@override final  double price;
@override final  String currencySymbol;
@override final  String? imageUrl;
@override final  String? description;
 final  List<ModifierGroup> _modifierGroups;
@override List<ModifierGroup> get modifierGroups {
  if (_modifierGroups is EqualUnmodifiableListView) return _modifierGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modifierGroups);
}

@override final  CalorieIntake calorieIntake;
@override final  String shortName;
@override final  bool isDefault;
@override final  String keywords;
@override final  bool weight;
@override final  String? ingredientsDescription;
@override final  String? sizeDescription;
 final  List<StoreQuantityResponse>? _stores;
@override List<StoreQuantityResponse>? get stores {
  final value = _stores;
  if (value == null) return null;
  if (_stores is EqualUnmodifiableListView) return _stores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? itemCode;
@override final  String? descriptionHTML;
@override@JsonKey() final  StockStatus status;
@override final  String? volume;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DefaultProductCopyWith<DefaultProduct> get copyWith => _$DefaultProductCopyWithImpl<DefaultProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefaultProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.folderId, folderId) || other.folderId == folderId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._modifierGroups, _modifierGroups)&&(identical(other.calorieIntake, calorieIntake) || other.calorieIntake == calorieIntake)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.keywords, keywords) || other.keywords == keywords)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.ingredientsDescription, ingredientsDescription) || other.ingredientsDescription == ingredientsDescription)&&(identical(other.sizeDescription, sizeDescription) || other.sizeDescription == sizeDescription)&&const DeepCollectionEquality().equals(other._stores, _stores)&&(identical(other.itemCode, itemCode) || other.itemCode == itemCode)&&(identical(other.descriptionHTML, descriptionHTML) || other.descriptionHTML == descriptionHTML)&&(identical(other.status, status) || other.status == status)&&(identical(other.volume, volume) || other.volume == volume));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,groupId,folderId,name,price,currencySymbol,imageUrl,description,const DeepCollectionEquality().hash(_modifierGroups),calorieIntake,shortName,isDefault,keywords,weight,ingredientsDescription,sizeDescription,const DeepCollectionEquality().hash(_stores),itemCode,descriptionHTML,status,volume]);

@override
String toString() {
  return 'Product(id: $id, groupId: $groupId, folderId: $folderId, name: $name, price: $price, currencySymbol: $currencySymbol, imageUrl: $imageUrl, description: $description, modifierGroups: $modifierGroups, calorieIntake: $calorieIntake, shortName: $shortName, isDefault: $isDefault, keywords: $keywords, weight: $weight, ingredientsDescription: $ingredientsDescription, sizeDescription: $sizeDescription, stores: $stores, itemCode: $itemCode, descriptionHTML: $descriptionHTML, status: $status, volume: $volume)';
}


}

/// @nodoc
abstract mixin class $DefaultProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory $DefaultProductCopyWith(DefaultProduct value, $Res Function(DefaultProduct) _then) = _$DefaultProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String? groupId, String? folderId, String name, double price, String currencySymbol, String? imageUrl, String? description, List<ModifierGroup> modifierGroups, CalorieIntake calorieIntake, String shortName, bool isDefault, String keywords, bool weight, String? ingredientsDescription, String? sizeDescription, List<StoreQuantityResponse>? stores, String? itemCode, String? descriptionHTML, StockStatus status, String? volume
});


@override $CalorieIntakeCopyWith<$Res> get calorieIntake;

}
/// @nodoc
class _$DefaultProductCopyWithImpl<$Res>
    implements $DefaultProductCopyWith<$Res> {
  _$DefaultProductCopyWithImpl(this._self, this._then);

  final DefaultProduct _self;
  final $Res Function(DefaultProduct) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? groupId = freezed,Object? folderId = freezed,Object? name = null,Object? price = null,Object? currencySymbol = null,Object? imageUrl = freezed,Object? description = freezed,Object? modifierGroups = null,Object? calorieIntake = null,Object? shortName = null,Object? isDefault = null,Object? keywords = null,Object? weight = null,Object? ingredientsDescription = freezed,Object? sizeDescription = freezed,Object? stores = freezed,Object? itemCode = freezed,Object? descriptionHTML = freezed,Object? status = null,Object? volume = freezed,}) {
  return _then(DefaultProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,folderId: freezed == folderId ? _self.folderId : folderId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,modifierGroups: null == modifierGroups ? _self._modifierGroups : modifierGroups // ignore: cast_nullable_to_non_nullable
as List<ModifierGroup>,calorieIntake: null == calorieIntake ? _self.calorieIntake : calorieIntake // ignore: cast_nullable_to_non_nullable
as CalorieIntake,shortName: null == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,keywords: null == keywords ? _self.keywords : keywords // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as bool,ingredientsDescription: freezed == ingredientsDescription ? _self.ingredientsDescription : ingredientsDescription // ignore: cast_nullable_to_non_nullable
as String?,sizeDescription: freezed == sizeDescription ? _self.sizeDescription : sizeDescription // ignore: cast_nullable_to_non_nullable
as String?,stores: freezed == stores ? _self._stores : stores // ignore: cast_nullable_to_non_nullable
as List<StoreQuantityResponse>?,itemCode: freezed == itemCode ? _self.itemCode : itemCode // ignore: cast_nullable_to_non_nullable
as String?,descriptionHTML: freezed == descriptionHTML ? _self.descriptionHTML : descriptionHTML // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StockStatus,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalorieIntakeCopyWith<$Res> get calorieIntake {
  
  return $CalorieIntakeCopyWith<$Res>(_self.calorieIntake, (value) {
    return _then(_self.copyWith(calorieIntake: value));
  });
}
}

/// @nodoc
mixin _$ModifierGroup {

 String get id; String get name; List<Modifier> get modifiers; List<Modifier> get selectedModifiers; int get maxOptions; int get minOptions; bool get required; ModifierSelectionType get modifierSelectionType;
/// Create a copy of ModifierGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModifierGroupCopyWith<ModifierGroup> get copyWith => _$ModifierGroupCopyWithImpl<ModifierGroup>(this as ModifierGroup, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModifierGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.modifiers, modifiers)&&const DeepCollectionEquality().equals(other.selectedModifiers, selectedModifiers)&&(identical(other.maxOptions, maxOptions) || other.maxOptions == maxOptions)&&(identical(other.minOptions, minOptions) || other.minOptions == minOptions)&&(identical(other.required, required) || other.required == required)&&(identical(other.modifierSelectionType, modifierSelectionType) || other.modifierSelectionType == modifierSelectionType));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(modifiers),const DeepCollectionEquality().hash(selectedModifiers),maxOptions,minOptions,required,modifierSelectionType);

@override
String toString() {
  return 'ModifierGroup(id: $id, name: $name, modifiers: $modifiers, selectedModifiers: $selectedModifiers, maxOptions: $maxOptions, minOptions: $minOptions, required: $required, modifierSelectionType: $modifierSelectionType)';
}


}

/// @nodoc
abstract mixin class $ModifierGroupCopyWith<$Res>  {
  factory $ModifierGroupCopyWith(ModifierGroup value, $Res Function(ModifierGroup) _then) = _$ModifierGroupCopyWithImpl;
@useResult
$Res call({
 String id, String name, List<Modifier> modifiers, List<Modifier> selectedModifiers, int maxOptions, int minOptions, bool required, ModifierSelectionType modifierSelectionType
});




}
/// @nodoc
class _$ModifierGroupCopyWithImpl<$Res>
    implements $ModifierGroupCopyWith<$Res> {
  _$ModifierGroupCopyWithImpl(this._self, this._then);

  final ModifierGroup _self;
  final $Res Function(ModifierGroup) _then;

/// Create a copy of ModifierGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? modifiers = null,Object? selectedModifiers = null,Object? maxOptions = null,Object? minOptions = null,Object? required = null,Object? modifierSelectionType = null,}) {
  return _then(ModifierGroup(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,modifiers: null == modifiers ? _self.modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<Modifier>,selectedModifiers: null == selectedModifiers ? _self.selectedModifiers : selectedModifiers // ignore: cast_nullable_to_non_nullable
as List<Modifier>,maxOptions: null == maxOptions ? _self.maxOptions : maxOptions // ignore: cast_nullable_to_non_nullable
as int,minOptions: null == minOptions ? _self.minOptions : minOptions // ignore: cast_nullable_to_non_nullable
as int,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,modifierSelectionType: null == modifierSelectionType ? _self.modifierSelectionType : modifierSelectionType // ignore: cast_nullable_to_non_nullable
as ModifierSelectionType,
  ));
}

}


/// Adds pattern-matching-related methods to [ModifierGroup].
extension ModifierGroupPatterns on ModifierGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModifierGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModifierGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModifierGroup value)  $default,){
final _that = this;
switch (_that) {
case _ModifierGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModifierGroup value)?  $default,){
final _that = this;
switch (_that) {
case _ModifierGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  List<Modifier> modifiers,  List<Modifier> selectedModifiers,  int maxOptions,  int minOptions,  bool required,  ModifierSelectionType modifierSelectionType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModifierGroup() when $default != null:
return $default(_that.id,_that.name,_that.modifiers,_that.selectedModifiers,_that.maxOptions,_that.minOptions,_that.required,_that.modifierSelectionType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  List<Modifier> modifiers,  List<Modifier> selectedModifiers,  int maxOptions,  int minOptions,  bool required,  ModifierSelectionType modifierSelectionType)  $default,) {final _that = this;
switch (_that) {
case _ModifierGroup():
return $default(_that.id,_that.name,_that.modifiers,_that.selectedModifiers,_that.maxOptions,_that.minOptions,_that.required,_that.modifierSelectionType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  List<Modifier> modifiers,  List<Modifier> selectedModifiers,  int maxOptions,  int minOptions,  bool required,  ModifierSelectionType modifierSelectionType)?  $default,) {final _that = this;
switch (_that) {
case _ModifierGroup() when $default != null:
return $default(_that.id,_that.name,_that.modifiers,_that.selectedModifiers,_that.maxOptions,_that.minOptions,_that.required,_that.modifierSelectionType);case _:
  return null;

}
}

}

/// @nodoc


class _ModifierGroup extends ModifierGroup {
   _ModifierGroup({required this.id, required this.name, required  List<Modifier> modifiers, required  List<Modifier> selectedModifiers, required this.maxOptions, required this.minOptions, required this.required, required this.modifierSelectionType}): _modifiers = modifiers,_selectedModifiers = selectedModifiers,super._();
  

@override final  String id;
@override final  String name;
 final  List<Modifier> _modifiers;
@override List<Modifier> get modifiers {
  if (_modifiers is EqualUnmodifiableListView) return _modifiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modifiers);
}

 final  List<Modifier> _selectedModifiers;
@override List<Modifier> get selectedModifiers {
  if (_selectedModifiers is EqualUnmodifiableListView) return _selectedModifiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedModifiers);
}

@override final  int maxOptions;
@override final  int minOptions;
@override final  bool required;
@override final  ModifierSelectionType modifierSelectionType;

/// Create a copy of ModifierGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModifierGroupCopyWith<_ModifierGroup> get copyWith => __$ModifierGroupCopyWithImpl<_ModifierGroup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModifierGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._modifiers, _modifiers)&&const DeepCollectionEquality().equals(other._selectedModifiers, _selectedModifiers)&&(identical(other.maxOptions, maxOptions) || other.maxOptions == maxOptions)&&(identical(other.minOptions, minOptions) || other.minOptions == minOptions)&&(identical(other.required, required) || other.required == required)&&(identical(other.modifierSelectionType, modifierSelectionType) || other.modifierSelectionType == modifierSelectionType));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_modifiers),const DeepCollectionEquality().hash(_selectedModifiers),maxOptions,minOptions,required,modifierSelectionType);

@override
String toString() {
  return 'ModifierGroup(id: $id, name: $name, modifiers: $modifiers, selectedModifiers: $selectedModifiers, maxOptions: $maxOptions, minOptions: $minOptions, required: $required, modifierSelectionType: $modifierSelectionType)';
}


}

/// @nodoc
abstract mixin class _$ModifierGroupCopyWith<$Res> implements $ModifierGroupCopyWith<$Res> {
  factory _$ModifierGroupCopyWith(_ModifierGroup value, $Res Function(_ModifierGroup) _then) = __$ModifierGroupCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, List<Modifier> modifiers, List<Modifier> selectedModifiers, int maxOptions, int minOptions, bool required, ModifierSelectionType modifierSelectionType
});




}
/// @nodoc
class __$ModifierGroupCopyWithImpl<$Res>
    implements _$ModifierGroupCopyWith<$Res> {
  __$ModifierGroupCopyWithImpl(this._self, this._then);

  final _ModifierGroup _self;
  final $Res Function(_ModifierGroup) _then;

/// Create a copy of ModifierGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? modifiers = null,Object? selectedModifiers = null,Object? maxOptions = null,Object? minOptions = null,Object? required = null,Object? modifierSelectionType = null,}) {
  return _then(_ModifierGroup(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,modifiers: null == modifiers ? _self._modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<Modifier>,selectedModifiers: null == selectedModifiers ? _self._selectedModifiers : selectedModifiers // ignore: cast_nullable_to_non_nullable
as List<Modifier>,maxOptions: null == maxOptions ? _self.maxOptions : maxOptions // ignore: cast_nullable_to_non_nullable
as int,minOptions: null == minOptions ? _self.minOptions : minOptions // ignore: cast_nullable_to_non_nullable
as int,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,modifierSelectionType: null == modifierSelectionType ? _self.modifierSelectionType : modifierSelectionType // ignore: cast_nullable_to_non_nullable
as ModifierSelectionType,
  ));
}


}

/// @nodoc
mixin _$Modifier {

 String get id; String? get groupId; String get name; double get price; int get amount; int get maxOptions; int get minOptions; bool get required; bool get byDefault;
/// Create a copy of Modifier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModifierCopyWith<Modifier> get copyWith => _$ModifierCopyWithImpl<Modifier>(this as Modifier, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Modifier&&(identical(other.id, id) || other.id == id)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.maxOptions, maxOptions) || other.maxOptions == maxOptions)&&(identical(other.minOptions, minOptions) || other.minOptions == minOptions)&&(identical(other.required, required) || other.required == required)&&(identical(other.byDefault, byDefault) || other.byDefault == byDefault));
}


@override
int get hashCode => Object.hash(runtimeType,id,groupId,name,price,amount,maxOptions,minOptions,required,byDefault);

@override
String toString() {
  return 'Modifier(id: $id, groupId: $groupId, name: $name, price: $price, amount: $amount, maxOptions: $maxOptions, minOptions: $minOptions, required: $required, byDefault: $byDefault)';
}


}

/// @nodoc
abstract mixin class $ModifierCopyWith<$Res>  {
  factory $ModifierCopyWith(Modifier value, $Res Function(Modifier) _then) = _$ModifierCopyWithImpl;
@useResult
$Res call({
 String id, String? groupId, String name, double price, int amount, int maxOptions, int minOptions, bool required, bool byDefault
});




}
/// @nodoc
class _$ModifierCopyWithImpl<$Res>
    implements $ModifierCopyWith<$Res> {
  _$ModifierCopyWithImpl(this._self, this._then);

  final Modifier _self;
  final $Res Function(Modifier) _then;

/// Create a copy of Modifier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? groupId = freezed,Object? name = null,Object? price = null,Object? amount = null,Object? maxOptions = null,Object? minOptions = null,Object? required = null,Object? byDefault = null,}) {
  return _then(Modifier(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,maxOptions: null == maxOptions ? _self.maxOptions : maxOptions // ignore: cast_nullable_to_non_nullable
as int,minOptions: null == minOptions ? _self.minOptions : minOptions // ignore: cast_nullable_to_non_nullable
as int,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,byDefault: null == byDefault ? _self.byDefault : byDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Modifier].
extension ModifierPatterns on Modifier {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Modifier value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Modifier() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Modifier value)  $default,){
final _that = this;
switch (_that) {
case _Modifier():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Modifier value)?  $default,){
final _that = this;
switch (_that) {
case _Modifier() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? groupId,  String name,  double price,  int amount,  int maxOptions,  int minOptions,  bool required,  bool byDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Modifier() when $default != null:
return $default(_that.id,_that.groupId,_that.name,_that.price,_that.amount,_that.maxOptions,_that.minOptions,_that.required,_that.byDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? groupId,  String name,  double price,  int amount,  int maxOptions,  int minOptions,  bool required,  bool byDefault)  $default,) {final _that = this;
switch (_that) {
case _Modifier():
return $default(_that.id,_that.groupId,_that.name,_that.price,_that.amount,_that.maxOptions,_that.minOptions,_that.required,_that.byDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? groupId,  String name,  double price,  int amount,  int maxOptions,  int minOptions,  bool required,  bool byDefault)?  $default,) {final _that = this;
switch (_that) {
case _Modifier() when $default != null:
return $default(_that.id,_that.groupId,_that.name,_that.price,_that.amount,_that.maxOptions,_that.minOptions,_that.required,_that.byDefault);case _:
  return null;

}
}

}

/// @nodoc


class _Modifier extends Modifier {
  const _Modifier({required this.id, this.groupId, required this.name, required this.price, required this.amount, required this.maxOptions, required this.minOptions, required this.required, this.byDefault = false}): super._();
  

@override final  String id;
@override final  String? groupId;
@override final  String name;
@override final  double price;
@override final  int amount;
@override final  int maxOptions;
@override final  int minOptions;
@override final  bool required;
@override@JsonKey() final  bool byDefault;

/// Create a copy of Modifier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModifierCopyWith<_Modifier> get copyWith => __$ModifierCopyWithImpl<_Modifier>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Modifier&&(identical(other.id, id) || other.id == id)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.maxOptions, maxOptions) || other.maxOptions == maxOptions)&&(identical(other.minOptions, minOptions) || other.minOptions == minOptions)&&(identical(other.required, required) || other.required == required)&&(identical(other.byDefault, byDefault) || other.byDefault == byDefault));
}


@override
int get hashCode => Object.hash(runtimeType,id,groupId,name,price,amount,maxOptions,minOptions,required,byDefault);

@override
String toString() {
  return 'Modifier(id: $id, groupId: $groupId, name: $name, price: $price, amount: $amount, maxOptions: $maxOptions, minOptions: $minOptions, required: $required, byDefault: $byDefault)';
}


}

/// @nodoc
abstract mixin class _$ModifierCopyWith<$Res> implements $ModifierCopyWith<$Res> {
  factory _$ModifierCopyWith(_Modifier value, $Res Function(_Modifier) _then) = __$ModifierCopyWithImpl;
@override @useResult
$Res call({
 String id, String? groupId, String name, double price, int amount, int maxOptions, int minOptions, bool required, bool byDefault
});




}
/// @nodoc
class __$ModifierCopyWithImpl<$Res>
    implements _$ModifierCopyWith<$Res> {
  __$ModifierCopyWithImpl(this._self, this._then);

  final _Modifier _self;
  final $Res Function(_Modifier) _then;

/// Create a copy of Modifier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? groupId = freezed,Object? name = null,Object? price = null,Object? amount = null,Object? maxOptions = null,Object? minOptions = null,Object? required = null,Object? byDefault = null,}) {
  return _then(_Modifier(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,maxOptions: null == maxOptions ? _self.maxOptions : maxOptions // ignore: cast_nullable_to_non_nullable
as int,minOptions: null == minOptions ? _self.minOptions : minOptions // ignore: cast_nullable_to_non_nullable
as int,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,byDefault: null == byDefault ? _self.byDefault : byDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
