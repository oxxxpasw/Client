// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assortment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssortmentResponse implements DiagnosticableTreeMixin {

 DateTime? get datetime; List<GroupResponse> get groups; List<ModifierGroupResponse> get modifiersGroups; List<ProductResponse> get products; List<ModifierResponse> get modifiers;
/// Create a copy of AssortmentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssortmentResponseCopyWith<AssortmentResponse> get copyWith => _$AssortmentResponseCopyWithImpl<AssortmentResponse>(this as AssortmentResponse, _$identity);

  /// Serializes this AssortmentResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AssortmentResponse'))
    ..add(DiagnosticsProperty('datetime', datetime))..add(DiagnosticsProperty('groups', groups))..add(DiagnosticsProperty('modifiersGroups', modifiersGroups))..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('modifiers', modifiers));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssortmentResponse&&(identical(other.datetime, datetime) || other.datetime == datetime)&&const DeepCollectionEquality().equals(other.groups, groups)&&const DeepCollectionEquality().equals(other.modifiersGroups, modifiersGroups)&&const DeepCollectionEquality().equals(other.products, products)&&const DeepCollectionEquality().equals(other.modifiers, modifiers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,datetime,const DeepCollectionEquality().hash(groups),const DeepCollectionEquality().hash(modifiersGroups),const DeepCollectionEquality().hash(products),const DeepCollectionEquality().hash(modifiers));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AssortmentResponse(datetime: $datetime, groups: $groups, modifiersGroups: $modifiersGroups, products: $products, modifiers: $modifiers)';
}


}

/// @nodoc
abstract mixin class $AssortmentResponseCopyWith<$Res>  {
  factory $AssortmentResponseCopyWith(AssortmentResponse value, $Res Function(AssortmentResponse) _then) = _$AssortmentResponseCopyWithImpl;
@useResult
$Res call({
 DateTime? datetime, List<GroupResponse> groups, List<ModifierGroupResponse> modifiersGroups, List<ProductResponse> products, List<ModifierResponse> modifiers
});




}
/// @nodoc
class _$AssortmentResponseCopyWithImpl<$Res>
    implements $AssortmentResponseCopyWith<$Res> {
  _$AssortmentResponseCopyWithImpl(this._self, this._then);

  final AssortmentResponse _self;
  final $Res Function(AssortmentResponse) _then;

/// Create a copy of AssortmentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? datetime = freezed,Object? groups = null,Object? modifiersGroups = null,Object? products = null,Object? modifiers = null,}) {
  return _then(AssortmentResponse(
datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as DateTime?,groups: null == groups ? _self.groups : groups // ignore: cast_nullable_to_non_nullable
as List<GroupResponse>,modifiersGroups: null == modifiersGroups ? _self.modifiersGroups : modifiersGroups // ignore: cast_nullable_to_non_nullable
as List<ModifierGroupResponse>,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductResponse>,modifiers: null == modifiers ? _self.modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<ModifierResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [AssortmentResponse].
extension AssortmentResponsePatterns on AssortmentResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssortmentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssortmentResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssortmentResponse value)  $default,){
final _that = this;
switch (_that) {
case _AssortmentResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssortmentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AssortmentResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? datetime,  List<GroupResponse> groups,  List<ModifierGroupResponse> modifiersGroups,  List<ProductResponse> products,  List<ModifierResponse> modifiers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssortmentResponse() when $default != null:
return $default(_that.datetime,_that.groups,_that.modifiersGroups,_that.products,_that.modifiers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? datetime,  List<GroupResponse> groups,  List<ModifierGroupResponse> modifiersGroups,  List<ProductResponse> products,  List<ModifierResponse> modifiers)  $default,) {final _that = this;
switch (_that) {
case _AssortmentResponse():
return $default(_that.datetime,_that.groups,_that.modifiersGroups,_that.products,_that.modifiers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? datetime,  List<GroupResponse> groups,  List<ModifierGroupResponse> modifiersGroups,  List<ProductResponse> products,  List<ModifierResponse> modifiers)?  $default,) {final _that = this;
switch (_that) {
case _AssortmentResponse() when $default != null:
return $default(_that.datetime,_that.groups,_that.modifiersGroups,_that.products,_that.modifiers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssortmentResponse with DiagnosticableTreeMixin implements AssortmentResponse {
  const _AssortmentResponse({this.datetime,  List<GroupResponse> groups = const [],  List<ModifierGroupResponse> modifiersGroups = const [],  List<ProductResponse> products = const [],  List<ModifierResponse> modifiers = const []}): _groups = groups,_modifiersGroups = modifiersGroups,_products = products,_modifiers = modifiers;
  factory _AssortmentResponse.fromJson(Map<String, dynamic> json) => _$AssortmentResponseFromJson(json);

@override final  DateTime? datetime;
 final  List<GroupResponse> _groups;
@override@JsonKey() List<GroupResponse> get groups {
  if (_groups is EqualUnmodifiableListView) return _groups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_groups);
}

 final  List<ModifierGroupResponse> _modifiersGroups;
@override@JsonKey() List<ModifierGroupResponse> get modifiersGroups {
  if (_modifiersGroups is EqualUnmodifiableListView) return _modifiersGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modifiersGroups);
}

 final  List<ProductResponse> _products;
@override@JsonKey() List<ProductResponse> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<ModifierResponse> _modifiers;
@override@JsonKey() List<ModifierResponse> get modifiers {
  if (_modifiers is EqualUnmodifiableListView) return _modifiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modifiers);
}


/// Create a copy of AssortmentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssortmentResponseCopyWith<_AssortmentResponse> get copyWith => __$AssortmentResponseCopyWithImpl<_AssortmentResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssortmentResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AssortmentResponse'))
    ..add(DiagnosticsProperty('datetime', datetime))..add(DiagnosticsProperty('groups', groups))..add(DiagnosticsProperty('modifiersGroups', modifiersGroups))..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('modifiers', modifiers));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssortmentResponse&&(identical(other.datetime, datetime) || other.datetime == datetime)&&const DeepCollectionEquality().equals(other._groups, _groups)&&const DeepCollectionEquality().equals(other._modifiersGroups, _modifiersGroups)&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._modifiers, _modifiers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,datetime,const DeepCollectionEquality().hash(_groups),const DeepCollectionEquality().hash(_modifiersGroups),const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_modifiers));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AssortmentResponse(datetime: $datetime, groups: $groups, modifiersGroups: $modifiersGroups, products: $products, modifiers: $modifiers)';
}


}

/// @nodoc
abstract mixin class _$AssortmentResponseCopyWith<$Res> implements $AssortmentResponseCopyWith<$Res> {
  factory _$AssortmentResponseCopyWith(_AssortmentResponse value, $Res Function(_AssortmentResponse) _then) = __$AssortmentResponseCopyWithImpl;
@override @useResult
$Res call({
 DateTime? datetime, List<GroupResponse> groups, List<ModifierGroupResponse> modifiersGroups, List<ProductResponse> products, List<ModifierResponse> modifiers
});




}
/// @nodoc
class __$AssortmentResponseCopyWithImpl<$Res>
    implements _$AssortmentResponseCopyWith<$Res> {
  __$AssortmentResponseCopyWithImpl(this._self, this._then);

  final _AssortmentResponse _self;
  final $Res Function(_AssortmentResponse) _then;

/// Create a copy of AssortmentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? datetime = freezed,Object? groups = null,Object? modifiersGroups = null,Object? products = null,Object? modifiers = null,}) {
  return _then(_AssortmentResponse(
datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as DateTime?,groups: null == groups ? _self._groups : groups // ignore: cast_nullable_to_non_nullable
as List<GroupResponse>,modifiersGroups: null == modifiersGroups ? _self._modifiersGroups : modifiersGroups // ignore: cast_nullable_to_non_nullable
as List<ModifierGroupResponse>,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductResponse>,modifiers: null == modifiers ? _self._modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<ModifierResponse>,
  ));
}


}


/// @nodoc
mixin _$GroupResponse implements DiagnosticableTreeMixin {

 String get id;@JsonKey(name: 'label') String get name;@JsonKey(name: 'parentGroupId') String? get groupId; List<String> get products; String? get image;
/// Create a copy of GroupResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupResponseCopyWith<GroupResponse> get copyWith => _$GroupResponseCopyWithImpl<GroupResponse>(this as GroupResponse, _$identity);

  /// Serializes this GroupResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GroupResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,groupId,const DeepCollectionEquality().hash(products),image);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GroupResponse(id: $id, name: $name, groupId: $groupId, products: $products, image: $image)';
}


}

/// @nodoc
abstract mixin class $GroupResponseCopyWith<$Res>  {
  factory $GroupResponseCopyWith(GroupResponse value, $Res Function(GroupResponse) _then) = _$GroupResponseCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'label') String name,@JsonKey(name: 'parentGroupId') String? groupId, List<String> products, String? image
});




}
/// @nodoc
class _$GroupResponseCopyWithImpl<$Res>
    implements $GroupResponseCopyWith<$Res> {
  _$GroupResponseCopyWithImpl(this._self, this._then);

  final GroupResponse _self;
  final $Res Function(GroupResponse) _then;

/// Create a copy of GroupResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? groupId = freezed,Object? products = null,Object? image = freezed,}) {
  return _then(GroupResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<String>,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupResponse].
extension GroupResponsePatterns on GroupResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupResponse value)  $default,){
final _that = this;
switch (_that) {
case _GroupResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GroupResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'label')  String name, @JsonKey(name: 'parentGroupId')  String? groupId,  List<String> products,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupResponse() when $default != null:
return $default(_that.id,_that.name,_that.groupId,_that.products,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'label')  String name, @JsonKey(name: 'parentGroupId')  String? groupId,  List<String> products,  String? image)  $default,) {final _that = this;
switch (_that) {
case _GroupResponse():
return $default(_that.id,_that.name,_that.groupId,_that.products,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'label')  String name, @JsonKey(name: 'parentGroupId')  String? groupId,  List<String> products,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _GroupResponse() when $default != null:
return $default(_that.id,_that.name,_that.groupId,_that.products,_that.image);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _GroupResponse with DiagnosticableTreeMixin implements GroupResponse {
  const _GroupResponse({required this.id, @JsonKey(name: 'label') this.name = '', @JsonKey(name: 'parentGroupId') this.groupId,  List<String> products = const [], this.image}): _products = products;
  factory _GroupResponse.fromJson(Map<String, dynamic> json) => _$GroupResponseFromJson(json);

@override final  String id;
@override@JsonKey(name: 'label') final  String name;
@override@JsonKey(name: 'parentGroupId') final  String? groupId;
 final  List<String> _products;
@override@JsonKey() List<String> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  String? image;

/// Create a copy of GroupResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupResponseCopyWith<_GroupResponse> get copyWith => __$GroupResponseCopyWithImpl<_GroupResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GroupResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('products', products))..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,groupId,const DeepCollectionEquality().hash(_products),image);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GroupResponse(id: $id, name: $name, groupId: $groupId, products: $products, image: $image)';
}


}

/// @nodoc
abstract mixin class _$GroupResponseCopyWith<$Res> implements $GroupResponseCopyWith<$Res> {
  factory _$GroupResponseCopyWith(_GroupResponse value, $Res Function(_GroupResponse) _then) = __$GroupResponseCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'label') String name,@JsonKey(name: 'parentGroupId') String? groupId, List<String> products, String? image
});




}
/// @nodoc
class __$GroupResponseCopyWithImpl<$Res>
    implements _$GroupResponseCopyWith<$Res> {
  __$GroupResponseCopyWithImpl(this._self, this._then);

  final _GroupResponse _self;
  final $Res Function(_GroupResponse) _then;

/// Create a copy of GroupResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? groupId = freezed,Object? products = null,Object? image = freezed,}) {
  return _then(_GroupResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<String>,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ModifierResponseRestrictions implements DiagnosticableTreeMixin {

 int get minQuantity; int get maxQuantity; int get freeQuantity; int get byDefault; bool get required;
/// Create a copy of ModifierResponseRestrictions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModifierResponseRestrictionsCopyWith<ModifierResponseRestrictions> get copyWith => _$ModifierResponseRestrictionsCopyWithImpl<ModifierResponseRestrictions>(this as ModifierResponseRestrictions, _$identity);

  /// Serializes this ModifierResponseRestrictions to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ModifierResponseRestrictions'))
    ..add(DiagnosticsProperty('minQuantity', minQuantity))..add(DiagnosticsProperty('maxQuantity', maxQuantity))..add(DiagnosticsProperty('freeQuantity', freeQuantity))..add(DiagnosticsProperty('byDefault', byDefault))..add(DiagnosticsProperty('required', required));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModifierResponseRestrictions&&(identical(other.minQuantity, minQuantity) || other.minQuantity == minQuantity)&&(identical(other.maxQuantity, maxQuantity) || other.maxQuantity == maxQuantity)&&(identical(other.freeQuantity, freeQuantity) || other.freeQuantity == freeQuantity)&&(identical(other.byDefault, byDefault) || other.byDefault == byDefault)&&(identical(other.required, required) || other.required == required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minQuantity,maxQuantity,freeQuantity,byDefault,required);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ModifierResponseRestrictions(minQuantity: $minQuantity, maxQuantity: $maxQuantity, freeQuantity: $freeQuantity, byDefault: $byDefault, required: $required)';
}


}

/// @nodoc
abstract mixin class $ModifierResponseRestrictionsCopyWith<$Res>  {
  factory $ModifierResponseRestrictionsCopyWith(ModifierResponseRestrictions value, $Res Function(ModifierResponseRestrictions) _then) = _$ModifierResponseRestrictionsCopyWithImpl;
@useResult
$Res call({
 int minQuantity, int maxQuantity, int freeQuantity, int byDefault, bool required
});




}
/// @nodoc
class _$ModifierResponseRestrictionsCopyWithImpl<$Res>
    implements $ModifierResponseRestrictionsCopyWith<$Res> {
  _$ModifierResponseRestrictionsCopyWithImpl(this._self, this._then);

  final ModifierResponseRestrictions _self;
  final $Res Function(ModifierResponseRestrictions) _then;

/// Create a copy of ModifierResponseRestrictions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minQuantity = null,Object? maxQuantity = null,Object? freeQuantity = null,Object? byDefault = null,Object? required = null,}) {
  return _then(ModifierResponseRestrictions(
minQuantity: null == minQuantity ? _self.minQuantity : minQuantity // ignore: cast_nullable_to_non_nullable
as int,maxQuantity: null == maxQuantity ? _self.maxQuantity : maxQuantity // ignore: cast_nullable_to_non_nullable
as int,freeQuantity: null == freeQuantity ? _self.freeQuantity : freeQuantity // ignore: cast_nullable_to_non_nullable
as int,byDefault: null == byDefault ? _self.byDefault : byDefault // ignore: cast_nullable_to_non_nullable
as int,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ModifierResponseRestrictions].
extension ModifierResponseRestrictionsPatterns on ModifierResponseRestrictions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModifierResponseRestrictions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModifierResponseRestrictions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModifierResponseRestrictions value)  $default,){
final _that = this;
switch (_that) {
case _ModifierResponseRestrictions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModifierResponseRestrictions value)?  $default,){
final _that = this;
switch (_that) {
case _ModifierResponseRestrictions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int minQuantity,  int maxQuantity,  int freeQuantity,  int byDefault,  bool required)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModifierResponseRestrictions() when $default != null:
return $default(_that.minQuantity,_that.maxQuantity,_that.freeQuantity,_that.byDefault,_that.required);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int minQuantity,  int maxQuantity,  int freeQuantity,  int byDefault,  bool required)  $default,) {final _that = this;
switch (_that) {
case _ModifierResponseRestrictions():
return $default(_that.minQuantity,_that.maxQuantity,_that.freeQuantity,_that.byDefault,_that.required);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int minQuantity,  int maxQuantity,  int freeQuantity,  int byDefault,  bool required)?  $default,) {final _that = this;
switch (_that) {
case _ModifierResponseRestrictions() when $default != null:
return $default(_that.minQuantity,_that.maxQuantity,_that.freeQuantity,_that.byDefault,_that.required);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _ModifierResponseRestrictions with DiagnosticableTreeMixin implements ModifierResponseRestrictions {
  const _ModifierResponseRestrictions({this.minQuantity = 0, this.maxQuantity = 999, this.freeQuantity = 999, this.byDefault = 0, this.required = false});
  factory _ModifierResponseRestrictions.fromJson(Map<String, dynamic> json) => _$ModifierResponseRestrictionsFromJson(json);

@override@JsonKey() final  int minQuantity;
@override@JsonKey() final  int maxQuantity;
@override@JsonKey() final  int freeQuantity;
@override@JsonKey() final  int byDefault;
@override@JsonKey() final  bool required;

/// Create a copy of ModifierResponseRestrictions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModifierResponseRestrictionsCopyWith<_ModifierResponseRestrictions> get copyWith => __$ModifierResponseRestrictionsCopyWithImpl<_ModifierResponseRestrictions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModifierResponseRestrictionsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ModifierResponseRestrictions'))
    ..add(DiagnosticsProperty('minQuantity', minQuantity))..add(DiagnosticsProperty('maxQuantity', maxQuantity))..add(DiagnosticsProperty('freeQuantity', freeQuantity))..add(DiagnosticsProperty('byDefault', byDefault))..add(DiagnosticsProperty('required', required));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModifierResponseRestrictions&&(identical(other.minQuantity, minQuantity) || other.minQuantity == minQuantity)&&(identical(other.maxQuantity, maxQuantity) || other.maxQuantity == maxQuantity)&&(identical(other.freeQuantity, freeQuantity) || other.freeQuantity == freeQuantity)&&(identical(other.byDefault, byDefault) || other.byDefault == byDefault)&&(identical(other.required, required) || other.required == required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minQuantity,maxQuantity,freeQuantity,byDefault,required);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ModifierResponseRestrictions(minQuantity: $minQuantity, maxQuantity: $maxQuantity, freeQuantity: $freeQuantity, byDefault: $byDefault, required: $required)';
}


}

/// @nodoc
abstract mixin class _$ModifierResponseRestrictionsCopyWith<$Res> implements $ModifierResponseRestrictionsCopyWith<$Res> {
  factory _$ModifierResponseRestrictionsCopyWith(_ModifierResponseRestrictions value, $Res Function(_ModifierResponseRestrictions) _then) = __$ModifierResponseRestrictionsCopyWithImpl;
@override @useResult
$Res call({
 int minQuantity, int maxQuantity, int freeQuantity, int byDefault, bool required
});




}
/// @nodoc
class __$ModifierResponseRestrictionsCopyWithImpl<$Res>
    implements _$ModifierResponseRestrictionsCopyWith<$Res> {
  __$ModifierResponseRestrictionsCopyWithImpl(this._self, this._then);

  final _ModifierResponseRestrictions _self;
  final $Res Function(_ModifierResponseRestrictions) _then;

/// Create a copy of ModifierResponseRestrictions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minQuantity = null,Object? maxQuantity = null,Object? freeQuantity = null,Object? byDefault = null,Object? required = null,}) {
  return _then(_ModifierResponseRestrictions(
minQuantity: null == minQuantity ? _self.minQuantity : minQuantity // ignore: cast_nullable_to_non_nullable
as int,maxQuantity: null == maxQuantity ? _self.maxQuantity : maxQuantity // ignore: cast_nullable_to_non_nullable
as int,freeQuantity: null == freeQuantity ? _self.freeQuantity : freeQuantity // ignore: cast_nullable_to_non_nullable
as int,byDefault: null == byDefault ? _self.byDefault : byDefault // ignore: cast_nullable_to_non_nullable
as int,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ModifierResponse implements DiagnosticableTreeMixin {

 String get id; String get name; String? get groupId; ModifierResponseRestrictions get restrictions; double get price;
/// Create a copy of ModifierResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModifierResponseCopyWith<ModifierResponse> get copyWith => _$ModifierResponseCopyWithImpl<ModifierResponse>(this as ModifierResponse, _$identity);

  /// Serializes this ModifierResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ModifierResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('restrictions', restrictions))..add(DiagnosticsProperty('price', price));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModifierResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.restrictions, restrictions) || other.restrictions == restrictions)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,groupId,restrictions,price);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ModifierResponse(id: $id, name: $name, groupId: $groupId, restrictions: $restrictions, price: $price)';
}


}

/// @nodoc
abstract mixin class $ModifierResponseCopyWith<$Res>  {
  factory $ModifierResponseCopyWith(ModifierResponse value, $Res Function(ModifierResponse) _then) = _$ModifierResponseCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? groupId, ModifierResponseRestrictions restrictions, double price
});


$ModifierResponseRestrictionsCopyWith<$Res> get restrictions;

}
/// @nodoc
class _$ModifierResponseCopyWithImpl<$Res>
    implements $ModifierResponseCopyWith<$Res> {
  _$ModifierResponseCopyWithImpl(this._self, this._then);

  final ModifierResponse _self;
  final $Res Function(ModifierResponse) _then;

/// Create a copy of ModifierResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? groupId = freezed,Object? restrictions = null,Object? price = null,}) {
  return _then(ModifierResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,restrictions: null == restrictions ? _self.restrictions : restrictions // ignore: cast_nullable_to_non_nullable
as ModifierResponseRestrictions,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of ModifierResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModifierResponseRestrictionsCopyWith<$Res> get restrictions {
  
  return $ModifierResponseRestrictionsCopyWith<$Res>(_self.restrictions, (value) {
    return _then(_self.copyWith(restrictions: value));
  });
}
}


/// Adds pattern-matching-related methods to [ModifierResponse].
extension ModifierResponsePatterns on ModifierResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModifierResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModifierResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModifierResponse value)  $default,){
final _that = this;
switch (_that) {
case _ModifierResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModifierResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ModifierResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? groupId,  ModifierResponseRestrictions restrictions,  double price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModifierResponse() when $default != null:
return $default(_that.id,_that.name,_that.groupId,_that.restrictions,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? groupId,  ModifierResponseRestrictions restrictions,  double price)  $default,) {final _that = this;
switch (_that) {
case _ModifierResponse():
return $default(_that.id,_that.name,_that.groupId,_that.restrictions,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? groupId,  ModifierResponseRestrictions restrictions,  double price)?  $default,) {final _that = this;
switch (_that) {
case _ModifierResponse() when $default != null:
return $default(_that.id,_that.name,_that.groupId,_that.restrictions,_that.price);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _ModifierResponse extends ModifierResponse with DiagnosticableTreeMixin {
  const _ModifierResponse({required this.id, this.name = '', this.groupId, required this.restrictions, this.price = 0.0}): super._();
  factory _ModifierResponse.fromJson(Map<String, dynamic> json) => _$ModifierResponseFromJson(json);

@override final  String id;
@override@JsonKey() final  String name;
@override final  String? groupId;
@override final  ModifierResponseRestrictions restrictions;
@override@JsonKey() final  double price;

/// Create a copy of ModifierResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModifierResponseCopyWith<_ModifierResponse> get copyWith => __$ModifierResponseCopyWithImpl<_ModifierResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModifierResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ModifierResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('restrictions', restrictions))..add(DiagnosticsProperty('price', price));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModifierResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.restrictions, restrictions) || other.restrictions == restrictions)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,groupId,restrictions,price);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ModifierResponse(id: $id, name: $name, groupId: $groupId, restrictions: $restrictions, price: $price)';
}


}

/// @nodoc
abstract mixin class _$ModifierResponseCopyWith<$Res> implements $ModifierResponseCopyWith<$Res> {
  factory _$ModifierResponseCopyWith(_ModifierResponse value, $Res Function(_ModifierResponse) _then) = __$ModifierResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? groupId, ModifierResponseRestrictions restrictions, double price
});


@override $ModifierResponseRestrictionsCopyWith<$Res> get restrictions;

}
/// @nodoc
class __$ModifierResponseCopyWithImpl<$Res>
    implements _$ModifierResponseCopyWith<$Res> {
  __$ModifierResponseCopyWithImpl(this._self, this._then);

  final _ModifierResponse _self;
  final $Res Function(_ModifierResponse) _then;

/// Create a copy of ModifierResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? groupId = freezed,Object? restrictions = null,Object? price = null,}) {
  return _then(_ModifierResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,restrictions: null == restrictions ? _self.restrictions : restrictions // ignore: cast_nullable_to_non_nullable
as ModifierResponseRestrictions,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of ModifierResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModifierResponseRestrictionsCopyWith<$Res> get restrictions {
  
  return $ModifierResponseRestrictionsCopyWith<$Res>(_self.restrictions, (value) {
    return _then(_self.copyWith(restrictions: value));
  });
}
}


/// @nodoc
mixin _$ModifierGroupResponse implements DiagnosticableTreeMixin {

 String get id; String get name; ModifierGroupResponseRestriction get restrictions; ModifierSelectionType get modifierSelectionType;
/// Create a copy of ModifierGroupResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModifierGroupResponseCopyWith<ModifierGroupResponse> get copyWith => _$ModifierGroupResponseCopyWithImpl<ModifierGroupResponse>(this as ModifierGroupResponse, _$identity);

  /// Serializes this ModifierGroupResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ModifierGroupResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('restrictions', restrictions))..add(DiagnosticsProperty('modifierSelectionType', modifierSelectionType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModifierGroupResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.restrictions, restrictions) || other.restrictions == restrictions)&&(identical(other.modifierSelectionType, modifierSelectionType) || other.modifierSelectionType == modifierSelectionType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,restrictions,modifierSelectionType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ModifierGroupResponse(id: $id, name: $name, restrictions: $restrictions, modifierSelectionType: $modifierSelectionType)';
}


}

/// @nodoc
abstract mixin class $ModifierGroupResponseCopyWith<$Res>  {
  factory $ModifierGroupResponseCopyWith(ModifierGroupResponse value, $Res Function(ModifierGroupResponse) _then) = _$ModifierGroupResponseCopyWithImpl;
@useResult
$Res call({
 String id, String name, ModifierGroupResponseRestriction restrictions, ModifierSelectionType modifierSelectionType
});


$ModifierGroupResponseRestrictionCopyWith<$Res> get restrictions;

}
/// @nodoc
class _$ModifierGroupResponseCopyWithImpl<$Res>
    implements $ModifierGroupResponseCopyWith<$Res> {
  _$ModifierGroupResponseCopyWithImpl(this._self, this._then);

  final ModifierGroupResponse _self;
  final $Res Function(ModifierGroupResponse) _then;

/// Create a copy of ModifierGroupResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? restrictions = null,Object? modifierSelectionType = null,}) {
  return _then(ModifierGroupResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,restrictions: null == restrictions ? _self.restrictions : restrictions // ignore: cast_nullable_to_non_nullable
as ModifierGroupResponseRestriction,modifierSelectionType: null == modifierSelectionType ? _self.modifierSelectionType : modifierSelectionType // ignore: cast_nullable_to_non_nullable
as ModifierSelectionType,
  ));
}
/// Create a copy of ModifierGroupResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModifierGroupResponseRestrictionCopyWith<$Res> get restrictions {
  
  return $ModifierGroupResponseRestrictionCopyWith<$Res>(_self.restrictions, (value) {
    return _then(_self.copyWith(restrictions: value));
  });
}
}


/// Adds pattern-matching-related methods to [ModifierGroupResponse].
extension ModifierGroupResponsePatterns on ModifierGroupResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModifierGroupResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModifierGroupResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModifierGroupResponse value)  $default,){
final _that = this;
switch (_that) {
case _ModifierGroupResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModifierGroupResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ModifierGroupResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  ModifierGroupResponseRestriction restrictions,  ModifierSelectionType modifierSelectionType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModifierGroupResponse() when $default != null:
return $default(_that.id,_that.name,_that.restrictions,_that.modifierSelectionType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  ModifierGroupResponseRestriction restrictions,  ModifierSelectionType modifierSelectionType)  $default,) {final _that = this;
switch (_that) {
case _ModifierGroupResponse():
return $default(_that.id,_that.name,_that.restrictions,_that.modifierSelectionType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  ModifierGroupResponseRestriction restrictions,  ModifierSelectionType modifierSelectionType)?  $default,) {final _that = this;
switch (_that) {
case _ModifierGroupResponse() when $default != null:
return $default(_that.id,_that.name,_that.restrictions,_that.modifierSelectionType);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _ModifierGroupResponse extends ModifierGroupResponse with DiagnosticableTreeMixin {
  const _ModifierGroupResponse({required this.id, this.name = '', required this.restrictions, this.modifierSelectionType = ModifierSelectionType.dropdown}): super._();
  factory _ModifierGroupResponse.fromJson(Map<String, dynamic> json) => _$ModifierGroupResponseFromJson(json);

@override final  String id;
@override@JsonKey() final  String name;
@override final  ModifierGroupResponseRestriction restrictions;
@override@JsonKey() final  ModifierSelectionType modifierSelectionType;

/// Create a copy of ModifierGroupResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModifierGroupResponseCopyWith<_ModifierGroupResponse> get copyWith => __$ModifierGroupResponseCopyWithImpl<_ModifierGroupResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModifierGroupResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ModifierGroupResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('restrictions', restrictions))..add(DiagnosticsProperty('modifierSelectionType', modifierSelectionType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModifierGroupResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.restrictions, restrictions) || other.restrictions == restrictions)&&(identical(other.modifierSelectionType, modifierSelectionType) || other.modifierSelectionType == modifierSelectionType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,restrictions,modifierSelectionType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ModifierGroupResponse(id: $id, name: $name, restrictions: $restrictions, modifierSelectionType: $modifierSelectionType)';
}


}

/// @nodoc
abstract mixin class _$ModifierGroupResponseCopyWith<$Res> implements $ModifierGroupResponseCopyWith<$Res> {
  factory _$ModifierGroupResponseCopyWith(_ModifierGroupResponse value, $Res Function(_ModifierGroupResponse) _then) = __$ModifierGroupResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, ModifierGroupResponseRestriction restrictions, ModifierSelectionType modifierSelectionType
});


@override $ModifierGroupResponseRestrictionCopyWith<$Res> get restrictions;

}
/// @nodoc
class __$ModifierGroupResponseCopyWithImpl<$Res>
    implements _$ModifierGroupResponseCopyWith<$Res> {
  __$ModifierGroupResponseCopyWithImpl(this._self, this._then);

  final _ModifierGroupResponse _self;
  final $Res Function(_ModifierGroupResponse) _then;

/// Create a copy of ModifierGroupResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? restrictions = null,Object? modifierSelectionType = null,}) {
  return _then(_ModifierGroupResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,restrictions: null == restrictions ? _self.restrictions : restrictions // ignore: cast_nullable_to_non_nullable
as ModifierGroupResponseRestriction,modifierSelectionType: null == modifierSelectionType ? _self.modifierSelectionType : modifierSelectionType // ignore: cast_nullable_to_non_nullable
as ModifierSelectionType,
  ));
}

/// Create a copy of ModifierGroupResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModifierGroupResponseRestrictionCopyWith<$Res> get restrictions {
  
  return $ModifierGroupResponseRestrictionCopyWith<$Res>(_self.restrictions, (value) {
    return _then(_self.copyWith(restrictions: value));
  });
}
}

ModifierGroupResponseRestriction _$ModifierGroupResponseRestrictionFromJson(
  Map<String, dynamic> json
) {
    return _ModifierGroupRestriction.fromJson(
      json
    );
}

/// @nodoc
mixin _$ModifierGroupResponseRestriction implements DiagnosticableTreeMixin {

 int get minQuantity; int get maxQuantity; bool get required;
/// Create a copy of ModifierGroupResponseRestriction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModifierGroupResponseRestrictionCopyWith<ModifierGroupResponseRestriction> get copyWith => _$ModifierGroupResponseRestrictionCopyWithImpl<ModifierGroupResponseRestriction>(this as ModifierGroupResponseRestriction, _$identity);

  /// Serializes this ModifierGroupResponseRestriction to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ModifierGroupResponseRestriction'))
    ..add(DiagnosticsProperty('minQuantity', minQuantity))..add(DiagnosticsProperty('maxQuantity', maxQuantity))..add(DiagnosticsProperty('required', required));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModifierGroupResponseRestriction&&(identical(other.minQuantity, minQuantity) || other.minQuantity == minQuantity)&&(identical(other.maxQuantity, maxQuantity) || other.maxQuantity == maxQuantity)&&(identical(other.required, required) || other.required == required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minQuantity,maxQuantity,required);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ModifierGroupResponseRestriction(minQuantity: $minQuantity, maxQuantity: $maxQuantity, required: $required)';
}


}

/// @nodoc
abstract mixin class $ModifierGroupResponseRestrictionCopyWith<$Res>  {
  factory $ModifierGroupResponseRestrictionCopyWith(ModifierGroupResponseRestriction value, $Res Function(ModifierGroupResponseRestriction) _then) = _$ModifierGroupResponseRestrictionCopyWithImpl;
@useResult
$Res call({
 int minQuantity, int maxQuantity, bool required
});




}
/// @nodoc
class _$ModifierGroupResponseRestrictionCopyWithImpl<$Res>
    implements $ModifierGroupResponseRestrictionCopyWith<$Res> {
  _$ModifierGroupResponseRestrictionCopyWithImpl(this._self, this._then);

  final ModifierGroupResponseRestriction _self;
  final $Res Function(ModifierGroupResponseRestriction) _then;

/// Create a copy of ModifierGroupResponseRestriction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minQuantity = null,Object? maxQuantity = null,Object? required = null,}) {
  return _then(ModifierGroupResponseRestriction(
minQuantity: null == minQuantity ? _self.minQuantity : minQuantity // ignore: cast_nullable_to_non_nullable
as int,maxQuantity: null == maxQuantity ? _self.maxQuantity : maxQuantity // ignore: cast_nullable_to_non_nullable
as int,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ModifierGroupResponseRestriction].
extension ModifierGroupResponseRestrictionPatterns on ModifierGroupResponseRestriction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModifierGroupRestriction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModifierGroupRestriction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModifierGroupRestriction value)  $default,){
final _that = this;
switch (_that) {
case _ModifierGroupRestriction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModifierGroupRestriction value)?  $default,){
final _that = this;
switch (_that) {
case _ModifierGroupRestriction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int minQuantity,  int maxQuantity,  bool required)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModifierGroupRestriction() when $default != null:
return $default(_that.minQuantity,_that.maxQuantity,_that.required);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int minQuantity,  int maxQuantity,  bool required)  $default,) {final _that = this;
switch (_that) {
case _ModifierGroupRestriction():
return $default(_that.minQuantity,_that.maxQuantity,_that.required);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int minQuantity,  int maxQuantity,  bool required)?  $default,) {final _that = this;
switch (_that) {
case _ModifierGroupRestriction() when $default != null:
return $default(_that.minQuantity,_that.maxQuantity,_that.required);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _ModifierGroupRestriction with DiagnosticableTreeMixin implements ModifierGroupResponseRestriction {
  const _ModifierGroupRestriction({this.minQuantity = 0, this.maxQuantity = 999, this.required = false});
  factory _ModifierGroupRestriction.fromJson(Map<String, dynamic> json) => _$ModifierGroupRestrictionFromJson(json);

@override@JsonKey() final  int minQuantity;
@override@JsonKey() final  int maxQuantity;
@override@JsonKey() final  bool required;

/// Create a copy of ModifierGroupResponseRestriction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModifierGroupRestrictionCopyWith<_ModifierGroupRestriction> get copyWith => __$ModifierGroupRestrictionCopyWithImpl<_ModifierGroupRestriction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModifierGroupRestrictionToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ModifierGroupResponseRestriction'))
    ..add(DiagnosticsProperty('minQuantity', minQuantity))..add(DiagnosticsProperty('maxQuantity', maxQuantity))..add(DiagnosticsProperty('required', required));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModifierGroupRestriction&&(identical(other.minQuantity, minQuantity) || other.minQuantity == minQuantity)&&(identical(other.maxQuantity, maxQuantity) || other.maxQuantity == maxQuantity)&&(identical(other.required, required) || other.required == required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minQuantity,maxQuantity,required);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ModifierGroupResponseRestriction(minQuantity: $minQuantity, maxQuantity: $maxQuantity, required: $required)';
}


}

/// @nodoc
abstract mixin class _$ModifierGroupRestrictionCopyWith<$Res> implements $ModifierGroupResponseRestrictionCopyWith<$Res> {
  factory _$ModifierGroupRestrictionCopyWith(_ModifierGroupRestriction value, $Res Function(_ModifierGroupRestriction) _then) = __$ModifierGroupRestrictionCopyWithImpl;
@override @useResult
$Res call({
 int minQuantity, int maxQuantity, bool required
});




}
/// @nodoc
class __$ModifierGroupRestrictionCopyWithImpl<$Res>
    implements _$ModifierGroupRestrictionCopyWith<$Res> {
  __$ModifierGroupRestrictionCopyWithImpl(this._self, this._then);

  final _ModifierGroupRestriction _self;
  final $Res Function(_ModifierGroupRestriction) _then;

/// Create a copy of ModifierGroupResponseRestriction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minQuantity = null,Object? maxQuantity = null,Object? required = null,}) {
  return _then(_ModifierGroupRestriction(
minQuantity: null == minQuantity ? _self.minQuantity : minQuantity // ignore: cast_nullable_to_non_nullable
as int,maxQuantity: null == maxQuantity ? _self.maxQuantity : maxQuantity // ignore: cast_nullable_to_non_nullable
as int,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

ProductResponse _$ProductResponseFromJson(
  Map<String, dynamic> json
) {
    return _DefaultProductResponse.fromJson(
      json
    );
}

/// @nodoc
mixin _$ProductResponse implements DiagnosticableTreeMixin {

 String get id; List<String>? get barcodes; int? get sku; String get name; String? get groupId; String? get folderId; double get price; String? get image;@JsonKey(name: 'modifiers_group') List<String> get modifiersGroup; String get currencySymbol; String? get description; CalorieIntake get calorieIntake; String? get shortName; bool get isDefault; String? get ingredientsDescription; String? get sizeDescription; List<StoreQuantityResponse>? get stores; String? get itemCode; String? get descriptionHTML; double get quantity; String? get quantityText; bool get weight; String? get volume;
/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductResponseCopyWith<ProductResponse> get copyWith => _$ProductResponseCopyWithImpl<ProductResponse>(this as ProductResponse, _$identity);

  /// Serializes this ProductResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('barcodes', barcodes))..add(DiagnosticsProperty('sku', sku))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('folderId', folderId))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('modifiersGroup', modifiersGroup))..add(DiagnosticsProperty('currencySymbol', currencySymbol))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('calorieIntake', calorieIntake))..add(DiagnosticsProperty('shortName', shortName))..add(DiagnosticsProperty('isDefault', isDefault))..add(DiagnosticsProperty('ingredientsDescription', ingredientsDescription))..add(DiagnosticsProperty('sizeDescription', sizeDescription))..add(DiagnosticsProperty('stores', stores))..add(DiagnosticsProperty('itemCode', itemCode))..add(DiagnosticsProperty('descriptionHTML', descriptionHTML))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('quantityText', quantityText))..add(DiagnosticsProperty('weight', weight))..add(DiagnosticsProperty('volume', volume));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductResponse&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.barcodes, barcodes)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.name, name) || other.name == name)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.folderId, folderId) || other.folderId == folderId)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.modifiersGroup, modifiersGroup)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol)&&(identical(other.description, description) || other.description == description)&&(identical(other.calorieIntake, calorieIntake) || other.calorieIntake == calorieIntake)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.ingredientsDescription, ingredientsDescription) || other.ingredientsDescription == ingredientsDescription)&&(identical(other.sizeDescription, sizeDescription) || other.sizeDescription == sizeDescription)&&const DeepCollectionEquality().equals(other.stores, stores)&&(identical(other.itemCode, itemCode) || other.itemCode == itemCode)&&(identical(other.descriptionHTML, descriptionHTML) || other.descriptionHTML == descriptionHTML)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.quantityText, quantityText) || other.quantityText == quantityText)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.volume, volume) || other.volume == volume));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,const DeepCollectionEquality().hash(barcodes),sku,name,groupId,folderId,price,image,const DeepCollectionEquality().hash(modifiersGroup),currencySymbol,description,calorieIntake,shortName,isDefault,ingredientsDescription,sizeDescription,const DeepCollectionEquality().hash(stores),itemCode,descriptionHTML,quantity,quantityText,weight,volume]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductResponse(id: $id, barcodes: $barcodes, sku: $sku, name: $name, groupId: $groupId, folderId: $folderId, price: $price, image: $image, modifiersGroup: $modifiersGroup, currencySymbol: $currencySymbol, description: $description, calorieIntake: $calorieIntake, shortName: $shortName, isDefault: $isDefault, ingredientsDescription: $ingredientsDescription, sizeDescription: $sizeDescription, stores: $stores, itemCode: $itemCode, descriptionHTML: $descriptionHTML, quantity: $quantity, quantityText: $quantityText, weight: $weight, volume: $volume)';
}


}

/// @nodoc
abstract mixin class $ProductResponseCopyWith<$Res>  {
  factory $ProductResponseCopyWith(ProductResponse value, $Res Function(ProductResponse) _then) = _$ProductResponseCopyWithImpl;
@useResult
$Res call({
 String id, List<String>? barcodes, int? sku, String name, String? groupId, String? folderId, double price, String? image,@JsonKey(name: 'modifiers_group') List<String> modifiersGroup, String currencySymbol, String? description, CalorieIntake calorieIntake, String? shortName, bool isDefault, String? ingredientsDescription, String? sizeDescription, List<StoreQuantityResponse>? stores, String? itemCode, String? descriptionHTML, double quantity, String? quantityText, bool weight, String? volume
});


$CalorieIntakeCopyWith<$Res> get calorieIntake;

}
/// @nodoc
class _$ProductResponseCopyWithImpl<$Res>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._self, this._then);

  final ProductResponse _self;
  final $Res Function(ProductResponse) _then;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? barcodes = freezed,Object? sku = freezed,Object? name = null,Object? groupId = freezed,Object? folderId = freezed,Object? price = null,Object? image = freezed,Object? modifiersGroup = null,Object? currencySymbol = null,Object? description = freezed,Object? calorieIntake = null,Object? shortName = freezed,Object? isDefault = null,Object? ingredientsDescription = freezed,Object? sizeDescription = freezed,Object? stores = freezed,Object? itemCode = freezed,Object? descriptionHTML = freezed,Object? quantity = null,Object? quantityText = freezed,Object? weight = null,Object? volume = freezed,}) {
  return _then(ProductResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,barcodes: freezed == barcodes ? _self.barcodes : barcodes // ignore: cast_nullable_to_non_nullable
as List<String>?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,folderId: freezed == folderId ? _self.folderId : folderId // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,modifiersGroup: null == modifiersGroup ? _self.modifiersGroup : modifiersGroup // ignore: cast_nullable_to_non_nullable
as List<String>,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,calorieIntake: null == calorieIntake ? _self.calorieIntake : calorieIntake // ignore: cast_nullable_to_non_nullable
as CalorieIntake,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,ingredientsDescription: freezed == ingredientsDescription ? _self.ingredientsDescription : ingredientsDescription // ignore: cast_nullable_to_non_nullable
as String?,sizeDescription: freezed == sizeDescription ? _self.sizeDescription : sizeDescription // ignore: cast_nullable_to_non_nullable
as String?,stores: freezed == stores ? _self.stores : stores // ignore: cast_nullable_to_non_nullable
as List<StoreQuantityResponse>?,itemCode: freezed == itemCode ? _self.itemCode : itemCode // ignore: cast_nullable_to_non_nullable
as String?,descriptionHTML: freezed == descriptionHTML ? _self.descriptionHTML : descriptionHTML // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,quantityText: freezed == quantityText ? _self.quantityText : quantityText // ignore: cast_nullable_to_non_nullable
as String?,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as bool,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalorieIntakeCopyWith<$Res> get calorieIntake {
  
  return $CalorieIntakeCopyWith<$Res>(_self.calorieIntake, (value) {
    return _then(_self.copyWith(calorieIntake: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductResponse].
extension ProductResponsePatterns on ProductResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DefaultProductResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DefaultProductResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DefaultProductResponse value)  $default,){
final _that = this;
switch (_that) {
case _DefaultProductResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DefaultProductResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DefaultProductResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<String>? barcodes,  int? sku,  String name,  String? groupId,  String? folderId,  double price,  String? image, @JsonKey(name: 'modifiers_group')  List<String> modifiersGroup,  String currencySymbol,  String? description,  CalorieIntake calorieIntake,  String? shortName,  bool isDefault,  String? ingredientsDescription,  String? sizeDescription,  List<StoreQuantityResponse>? stores,  String? itemCode,  String? descriptionHTML,  double quantity,  String? quantityText,  bool weight,  String? volume)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DefaultProductResponse() when $default != null:
return $default(_that.id,_that.barcodes,_that.sku,_that.name,_that.groupId,_that.folderId,_that.price,_that.image,_that.modifiersGroup,_that.currencySymbol,_that.description,_that.calorieIntake,_that.shortName,_that.isDefault,_that.ingredientsDescription,_that.sizeDescription,_that.stores,_that.itemCode,_that.descriptionHTML,_that.quantity,_that.quantityText,_that.weight,_that.volume);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<String>? barcodes,  int? sku,  String name,  String? groupId,  String? folderId,  double price,  String? image, @JsonKey(name: 'modifiers_group')  List<String> modifiersGroup,  String currencySymbol,  String? description,  CalorieIntake calorieIntake,  String? shortName,  bool isDefault,  String? ingredientsDescription,  String? sizeDescription,  List<StoreQuantityResponse>? stores,  String? itemCode,  String? descriptionHTML,  double quantity,  String? quantityText,  bool weight,  String? volume)  $default,) {final _that = this;
switch (_that) {
case _DefaultProductResponse():
return $default(_that.id,_that.barcodes,_that.sku,_that.name,_that.groupId,_that.folderId,_that.price,_that.image,_that.modifiersGroup,_that.currencySymbol,_that.description,_that.calorieIntake,_that.shortName,_that.isDefault,_that.ingredientsDescription,_that.sizeDescription,_that.stores,_that.itemCode,_that.descriptionHTML,_that.quantity,_that.quantityText,_that.weight,_that.volume);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<String>? barcodes,  int? sku,  String name,  String? groupId,  String? folderId,  double price,  String? image, @JsonKey(name: 'modifiers_group')  List<String> modifiersGroup,  String currencySymbol,  String? description,  CalorieIntake calorieIntake,  String? shortName,  bool isDefault,  String? ingredientsDescription,  String? sizeDescription,  List<StoreQuantityResponse>? stores,  String? itemCode,  String? descriptionHTML,  double quantity,  String? quantityText,  bool weight,  String? volume)?  $default,) {final _that = this;
switch (_that) {
case _DefaultProductResponse() when $default != null:
return $default(_that.id,_that.barcodes,_that.sku,_that.name,_that.groupId,_that.folderId,_that.price,_that.image,_that.modifiersGroup,_that.currencySymbol,_that.description,_that.calorieIntake,_that.shortName,_that.isDefault,_that.ingredientsDescription,_that.sizeDescription,_that.stores,_that.itemCode,_that.descriptionHTML,_that.quantity,_that.quantityText,_that.weight,_that.volume);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _DefaultProductResponse with DiagnosticableTreeMixin implements ProductResponse {
  const _DefaultProductResponse({required this.id,  List<String>? barcodes, this.sku, this.name = '', this.groupId, this.folderId, required this.price, this.image, @JsonKey(name: 'modifiers_group')  List<String> modifiersGroup = const [], this.currencySymbol = 'BYN', this.description, this.calorieIntake = const CalorieIntake(), this.shortName, this.isDefault = false, this.ingredientsDescription, this.sizeDescription,  List<StoreQuantityResponse>? stores, this.itemCode, this.descriptionHTML, this.quantity = 0, this.quantityText, this.weight = false, this.volume}): _barcodes = barcodes,_modifiersGroup = modifiersGroup,_stores = stores;
  factory _DefaultProductResponse.fromJson(Map<String, dynamic> json) => _$DefaultProductResponseFromJson(json);

@override final  String id;
 final  List<String>? _barcodes;
@override List<String>? get barcodes {
  final value = _barcodes;
  if (value == null) return null;
  if (_barcodes is EqualUnmodifiableListView) return _barcodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? sku;
@override@JsonKey() final  String name;
@override final  String? groupId;
@override final  String? folderId;
@override final  double price;
@override final  String? image;
 final  List<String> _modifiersGroup;
@override@JsonKey(name: 'modifiers_group') List<String> get modifiersGroup {
  if (_modifiersGroup is EqualUnmodifiableListView) return _modifiersGroup;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modifiersGroup);
}

@override@JsonKey() final  String currencySymbol;
@override final  String? description;
@override@JsonKey() final  CalorieIntake calorieIntake;
@override final  String? shortName;
@override@JsonKey() final  bool isDefault;
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
@override@JsonKey() final  double quantity;
@override final  String? quantityText;
@override@JsonKey() final  bool weight;
@override final  String? volume;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DefaultProductResponseCopyWith<_DefaultProductResponse> get copyWith => __$DefaultProductResponseCopyWithImpl<_DefaultProductResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DefaultProductResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('barcodes', barcodes))..add(DiagnosticsProperty('sku', sku))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('groupId', groupId))..add(DiagnosticsProperty('folderId', folderId))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('modifiersGroup', modifiersGroup))..add(DiagnosticsProperty('currencySymbol', currencySymbol))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('calorieIntake', calorieIntake))..add(DiagnosticsProperty('shortName', shortName))..add(DiagnosticsProperty('isDefault', isDefault))..add(DiagnosticsProperty('ingredientsDescription', ingredientsDescription))..add(DiagnosticsProperty('sizeDescription', sizeDescription))..add(DiagnosticsProperty('stores', stores))..add(DiagnosticsProperty('itemCode', itemCode))..add(DiagnosticsProperty('descriptionHTML', descriptionHTML))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('quantityText', quantityText))..add(DiagnosticsProperty('weight', weight))..add(DiagnosticsProperty('volume', volume));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DefaultProductResponse&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._barcodes, _barcodes)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.name, name) || other.name == name)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.folderId, folderId) || other.folderId == folderId)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._modifiersGroup, _modifiersGroup)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol)&&(identical(other.description, description) || other.description == description)&&(identical(other.calorieIntake, calorieIntake) || other.calorieIntake == calorieIntake)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.ingredientsDescription, ingredientsDescription) || other.ingredientsDescription == ingredientsDescription)&&(identical(other.sizeDescription, sizeDescription) || other.sizeDescription == sizeDescription)&&const DeepCollectionEquality().equals(other._stores, _stores)&&(identical(other.itemCode, itemCode) || other.itemCode == itemCode)&&(identical(other.descriptionHTML, descriptionHTML) || other.descriptionHTML == descriptionHTML)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.quantityText, quantityText) || other.quantityText == quantityText)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.volume, volume) || other.volume == volume));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,const DeepCollectionEquality().hash(_barcodes),sku,name,groupId,folderId,price,image,const DeepCollectionEquality().hash(_modifiersGroup),currencySymbol,description,calorieIntake,shortName,isDefault,ingredientsDescription,sizeDescription,const DeepCollectionEquality().hash(_stores),itemCode,descriptionHTML,quantity,quantityText,weight,volume]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductResponse(id: $id, barcodes: $barcodes, sku: $sku, name: $name, groupId: $groupId, folderId: $folderId, price: $price, image: $image, modifiersGroup: $modifiersGroup, currencySymbol: $currencySymbol, description: $description, calorieIntake: $calorieIntake, shortName: $shortName, isDefault: $isDefault, ingredientsDescription: $ingredientsDescription, sizeDescription: $sizeDescription, stores: $stores, itemCode: $itemCode, descriptionHTML: $descriptionHTML, quantity: $quantity, quantityText: $quantityText, weight: $weight, volume: $volume)';
}


}

/// @nodoc
abstract mixin class _$DefaultProductResponseCopyWith<$Res> implements $ProductResponseCopyWith<$Res> {
  factory _$DefaultProductResponseCopyWith(_DefaultProductResponse value, $Res Function(_DefaultProductResponse) _then) = __$DefaultProductResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, List<String>? barcodes, int? sku, String name, String? groupId, String? folderId, double price, String? image,@JsonKey(name: 'modifiers_group') List<String> modifiersGroup, String currencySymbol, String? description, CalorieIntake calorieIntake, String? shortName, bool isDefault, String? ingredientsDescription, String? sizeDescription, List<StoreQuantityResponse>? stores, String? itemCode, String? descriptionHTML, double quantity, String? quantityText, bool weight, String? volume
});


@override $CalorieIntakeCopyWith<$Res> get calorieIntake;

}
/// @nodoc
class __$DefaultProductResponseCopyWithImpl<$Res>
    implements _$DefaultProductResponseCopyWith<$Res> {
  __$DefaultProductResponseCopyWithImpl(this._self, this._then);

  final _DefaultProductResponse _self;
  final $Res Function(_DefaultProductResponse) _then;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? barcodes = freezed,Object? sku = freezed,Object? name = null,Object? groupId = freezed,Object? folderId = freezed,Object? price = null,Object? image = freezed,Object? modifiersGroup = null,Object? currencySymbol = null,Object? description = freezed,Object? calorieIntake = null,Object? shortName = freezed,Object? isDefault = null,Object? ingredientsDescription = freezed,Object? sizeDescription = freezed,Object? stores = freezed,Object? itemCode = freezed,Object? descriptionHTML = freezed,Object? quantity = null,Object? quantityText = freezed,Object? weight = null,Object? volume = freezed,}) {
  return _then(_DefaultProductResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,barcodes: freezed == barcodes ? _self._barcodes : barcodes // ignore: cast_nullable_to_non_nullable
as List<String>?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,folderId: freezed == folderId ? _self.folderId : folderId // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,modifiersGroup: null == modifiersGroup ? _self._modifiersGroup : modifiersGroup // ignore: cast_nullable_to_non_nullable
as List<String>,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,calorieIntake: null == calorieIntake ? _self.calorieIntake : calorieIntake // ignore: cast_nullable_to_non_nullable
as CalorieIntake,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,ingredientsDescription: freezed == ingredientsDescription ? _self.ingredientsDescription : ingredientsDescription // ignore: cast_nullable_to_non_nullable
as String?,sizeDescription: freezed == sizeDescription ? _self.sizeDescription : sizeDescription // ignore: cast_nullable_to_non_nullable
as String?,stores: freezed == stores ? _self._stores : stores // ignore: cast_nullable_to_non_nullable
as List<StoreQuantityResponse>?,itemCode: freezed == itemCode ? _self.itemCode : itemCode // ignore: cast_nullable_to_non_nullable
as String?,descriptionHTML: freezed == descriptionHTML ? _self.descriptionHTML : descriptionHTML // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,quantityText: freezed == quantityText ? _self.quantityText : quantityText // ignore: cast_nullable_to_non_nullable
as String?,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as bool,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ProductResponse
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
mixin _$ProductProperty implements DiagnosticableTreeMixin {

 String get name;@JsonKey(readValue: readProductPropertyValue) String get value;
/// Create a copy of ProductProperty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductPropertyCopyWith<ProductProperty> get copyWith => _$ProductPropertyCopyWithImpl<ProductProperty>(this as ProductProperty, _$identity);

  /// Serializes this ProductProperty to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductProperty'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('value', value));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductProperty&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,value);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductProperty(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class $ProductPropertyCopyWith<$Res>  {
  factory $ProductPropertyCopyWith(ProductProperty value, $Res Function(ProductProperty) _then) = _$ProductPropertyCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(readValue: readProductPropertyValue) String value
});




}
/// @nodoc
class _$ProductPropertyCopyWithImpl<$Res>
    implements $ProductPropertyCopyWith<$Res> {
  _$ProductPropertyCopyWithImpl(this._self, this._then);

  final ProductProperty _self;
  final $Res Function(ProductProperty) _then;

/// Create a copy of ProductProperty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? value = null,}) {
  return _then(ProductProperty(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductProperty].
extension ProductPropertyPatterns on ProductProperty {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductProperty value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductProperty() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductProperty value)  $default,){
final _that = this;
switch (_that) {
case _ProductProperty():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductProperty value)?  $default,){
final _that = this;
switch (_that) {
case _ProductProperty() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(readValue: readProductPropertyValue)  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductProperty() when $default != null:
return $default(_that.name,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(readValue: readProductPropertyValue)  String value)  $default,) {final _that = this;
switch (_that) {
case _ProductProperty():
return $default(_that.name,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(readValue: readProductPropertyValue)  String value)?  $default,) {final _that = this;
switch (_that) {
case _ProductProperty() when $default != null:
return $default(_that.name,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductProperty with DiagnosticableTreeMixin implements ProductProperty {
  const _ProductProperty({required this.name, @JsonKey(readValue: readProductPropertyValue) required this.value});
  factory _ProductProperty.fromJson(Map<String, dynamic> json) => _$ProductPropertyFromJson(json);

@override final  String name;
@override@JsonKey(readValue: readProductPropertyValue) final  String value;

/// Create a copy of ProductProperty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductPropertyCopyWith<_ProductProperty> get copyWith => __$ProductPropertyCopyWithImpl<_ProductProperty>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductPropertyToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductProperty'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('value', value));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductProperty&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,value);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductProperty(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ProductPropertyCopyWith<$Res> implements $ProductPropertyCopyWith<$Res> {
  factory _$ProductPropertyCopyWith(_ProductProperty value, $Res Function(_ProductProperty) _then) = __$ProductPropertyCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(readValue: readProductPropertyValue) String value
});




}
/// @nodoc
class __$ProductPropertyCopyWithImpl<$Res>
    implements _$ProductPropertyCopyWith<$Res> {
  __$ProductPropertyCopyWithImpl(this._self, this._then);

  final _ProductProperty _self;
  final $Res Function(_ProductProperty) _then;

/// Create a copy of ProductProperty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? value = null,}) {
  return _then(_ProductProperty(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CalorieIntake implements DiagnosticableTreeMixin {

 double? get fatAmount; double? get proteinsAmount; double? get carbohydratesAmount; double? get energyAmount; double? get fatFullAmount; double? get proteinsFullAmount; double? get carbohydratesFullAmount; double? get energyFullAmount; String get weightMeasure; double? get weight;
/// Create a copy of CalorieIntake
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalorieIntakeCopyWith<CalorieIntake> get copyWith => _$CalorieIntakeCopyWithImpl<CalorieIntake>(this as CalorieIntake, _$identity);

  /// Serializes this CalorieIntake to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CalorieIntake'))
    ..add(DiagnosticsProperty('fatAmount', fatAmount))..add(DiagnosticsProperty('proteinsAmount', proteinsAmount))..add(DiagnosticsProperty('carbohydratesAmount', carbohydratesAmount))..add(DiagnosticsProperty('energyAmount', energyAmount))..add(DiagnosticsProperty('fatFullAmount', fatFullAmount))..add(DiagnosticsProperty('proteinsFullAmount', proteinsFullAmount))..add(DiagnosticsProperty('carbohydratesFullAmount', carbohydratesFullAmount))..add(DiagnosticsProperty('energyFullAmount', energyFullAmount))..add(DiagnosticsProperty('weightMeasure', weightMeasure))..add(DiagnosticsProperty('weight', weight));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalorieIntake&&(identical(other.fatAmount, fatAmount) || other.fatAmount == fatAmount)&&(identical(other.proteinsAmount, proteinsAmount) || other.proteinsAmount == proteinsAmount)&&(identical(other.carbohydratesAmount, carbohydratesAmount) || other.carbohydratesAmount == carbohydratesAmount)&&(identical(other.energyAmount, energyAmount) || other.energyAmount == energyAmount)&&(identical(other.fatFullAmount, fatFullAmount) || other.fatFullAmount == fatFullAmount)&&(identical(other.proteinsFullAmount, proteinsFullAmount) || other.proteinsFullAmount == proteinsFullAmount)&&(identical(other.carbohydratesFullAmount, carbohydratesFullAmount) || other.carbohydratesFullAmount == carbohydratesFullAmount)&&(identical(other.energyFullAmount, energyFullAmount) || other.energyFullAmount == energyFullAmount)&&(identical(other.weightMeasure, weightMeasure) || other.weightMeasure == weightMeasure)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fatAmount,proteinsAmount,carbohydratesAmount,energyAmount,fatFullAmount,proteinsFullAmount,carbohydratesFullAmount,energyFullAmount,weightMeasure,weight);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CalorieIntake(fatAmount: $fatAmount, proteinsAmount: $proteinsAmount, carbohydratesAmount: $carbohydratesAmount, energyAmount: $energyAmount, fatFullAmount: $fatFullAmount, proteinsFullAmount: $proteinsFullAmount, carbohydratesFullAmount: $carbohydratesFullAmount, energyFullAmount: $energyFullAmount, weightMeasure: $weightMeasure, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $CalorieIntakeCopyWith<$Res>  {
  factory $CalorieIntakeCopyWith(CalorieIntake value, $Res Function(CalorieIntake) _then) = _$CalorieIntakeCopyWithImpl;
@useResult
$Res call({
 double? fatAmount, double? proteinsAmount, double? carbohydratesAmount, double? energyAmount, double? fatFullAmount, double? proteinsFullAmount, double? carbohydratesFullAmount, double? energyFullAmount, String weightMeasure, double? weight
});




}
/// @nodoc
class _$CalorieIntakeCopyWithImpl<$Res>
    implements $CalorieIntakeCopyWith<$Res> {
  _$CalorieIntakeCopyWithImpl(this._self, this._then);

  final CalorieIntake _self;
  final $Res Function(CalorieIntake) _then;

/// Create a copy of CalorieIntake
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fatAmount = freezed,Object? proteinsAmount = freezed,Object? carbohydratesAmount = freezed,Object? energyAmount = freezed,Object? fatFullAmount = freezed,Object? proteinsFullAmount = freezed,Object? carbohydratesFullAmount = freezed,Object? energyFullAmount = freezed,Object? weightMeasure = null,Object? weight = freezed,}) {
  return _then(CalorieIntake(
fatAmount: freezed == fatAmount ? _self.fatAmount : fatAmount // ignore: cast_nullable_to_non_nullable
as double?,proteinsAmount: freezed == proteinsAmount ? _self.proteinsAmount : proteinsAmount // ignore: cast_nullable_to_non_nullable
as double?,carbohydratesAmount: freezed == carbohydratesAmount ? _self.carbohydratesAmount : carbohydratesAmount // ignore: cast_nullable_to_non_nullable
as double?,energyAmount: freezed == energyAmount ? _self.energyAmount : energyAmount // ignore: cast_nullable_to_non_nullable
as double?,fatFullAmount: freezed == fatFullAmount ? _self.fatFullAmount : fatFullAmount // ignore: cast_nullable_to_non_nullable
as double?,proteinsFullAmount: freezed == proteinsFullAmount ? _self.proteinsFullAmount : proteinsFullAmount // ignore: cast_nullable_to_non_nullable
as double?,carbohydratesFullAmount: freezed == carbohydratesFullAmount ? _self.carbohydratesFullAmount : carbohydratesFullAmount // ignore: cast_nullable_to_non_nullable
as double?,energyFullAmount: freezed == energyFullAmount ? _self.energyFullAmount : energyFullAmount // ignore: cast_nullable_to_non_nullable
as double?,weightMeasure: null == weightMeasure ? _self.weightMeasure : weightMeasure // ignore: cast_nullable_to_non_nullable
as String,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CalorieIntake].
extension CalorieIntakePatterns on CalorieIntake {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalorieIntake value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalorieIntake() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalorieIntake value)  $default,){
final _that = this;
switch (_that) {
case _CalorieIntake():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalorieIntake value)?  $default,){
final _that = this;
switch (_that) {
case _CalorieIntake() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? fatAmount,  double? proteinsAmount,  double? carbohydratesAmount,  double? energyAmount,  double? fatFullAmount,  double? proteinsFullAmount,  double? carbohydratesFullAmount,  double? energyFullAmount,  String weightMeasure,  double? weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalorieIntake() when $default != null:
return $default(_that.fatAmount,_that.proteinsAmount,_that.carbohydratesAmount,_that.energyAmount,_that.fatFullAmount,_that.proteinsFullAmount,_that.carbohydratesFullAmount,_that.energyFullAmount,_that.weightMeasure,_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? fatAmount,  double? proteinsAmount,  double? carbohydratesAmount,  double? energyAmount,  double? fatFullAmount,  double? proteinsFullAmount,  double? carbohydratesFullAmount,  double? energyFullAmount,  String weightMeasure,  double? weight)  $default,) {final _that = this;
switch (_that) {
case _CalorieIntake():
return $default(_that.fatAmount,_that.proteinsAmount,_that.carbohydratesAmount,_that.energyAmount,_that.fatFullAmount,_that.proteinsFullAmount,_that.carbohydratesFullAmount,_that.energyFullAmount,_that.weightMeasure,_that.weight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? fatAmount,  double? proteinsAmount,  double? carbohydratesAmount,  double? energyAmount,  double? fatFullAmount,  double? proteinsFullAmount,  double? carbohydratesFullAmount,  double? energyFullAmount,  String weightMeasure,  double? weight)?  $default,) {final _that = this;
switch (_that) {
case _CalorieIntake() when $default != null:
return $default(_that.fatAmount,_that.proteinsAmount,_that.carbohydratesAmount,_that.energyAmount,_that.fatFullAmount,_that.proteinsFullAmount,_that.carbohydratesFullAmount,_that.energyFullAmount,_that.weightMeasure,_that.weight);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _CalorieIntake extends CalorieIntake with DiagnosticableTreeMixin {
  const _CalorieIntake({this.fatAmount, this.proteinsAmount, this.carbohydratesAmount, this.energyAmount, this.fatFullAmount, this.proteinsFullAmount, this.carbohydratesFullAmount, this.energyFullAmount, this.weightMeasure = '', this.weight}): super._();
  factory _CalorieIntake.fromJson(Map<String, dynamic> json) => _$CalorieIntakeFromJson(json);

@override final  double? fatAmount;
@override final  double? proteinsAmount;
@override final  double? carbohydratesAmount;
@override final  double? energyAmount;
@override final  double? fatFullAmount;
@override final  double? proteinsFullAmount;
@override final  double? carbohydratesFullAmount;
@override final  double? energyFullAmount;
@override@JsonKey() final  String weightMeasure;
@override final  double? weight;

/// Create a copy of CalorieIntake
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalorieIntakeCopyWith<_CalorieIntake> get copyWith => __$CalorieIntakeCopyWithImpl<_CalorieIntake>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalorieIntakeToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CalorieIntake'))
    ..add(DiagnosticsProperty('fatAmount', fatAmount))..add(DiagnosticsProperty('proteinsAmount', proteinsAmount))..add(DiagnosticsProperty('carbohydratesAmount', carbohydratesAmount))..add(DiagnosticsProperty('energyAmount', energyAmount))..add(DiagnosticsProperty('fatFullAmount', fatFullAmount))..add(DiagnosticsProperty('proteinsFullAmount', proteinsFullAmount))..add(DiagnosticsProperty('carbohydratesFullAmount', carbohydratesFullAmount))..add(DiagnosticsProperty('energyFullAmount', energyFullAmount))..add(DiagnosticsProperty('weightMeasure', weightMeasure))..add(DiagnosticsProperty('weight', weight));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalorieIntake&&(identical(other.fatAmount, fatAmount) || other.fatAmount == fatAmount)&&(identical(other.proteinsAmount, proteinsAmount) || other.proteinsAmount == proteinsAmount)&&(identical(other.carbohydratesAmount, carbohydratesAmount) || other.carbohydratesAmount == carbohydratesAmount)&&(identical(other.energyAmount, energyAmount) || other.energyAmount == energyAmount)&&(identical(other.fatFullAmount, fatFullAmount) || other.fatFullAmount == fatFullAmount)&&(identical(other.proteinsFullAmount, proteinsFullAmount) || other.proteinsFullAmount == proteinsFullAmount)&&(identical(other.carbohydratesFullAmount, carbohydratesFullAmount) || other.carbohydratesFullAmount == carbohydratesFullAmount)&&(identical(other.energyFullAmount, energyFullAmount) || other.energyFullAmount == energyFullAmount)&&(identical(other.weightMeasure, weightMeasure) || other.weightMeasure == weightMeasure)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fatAmount,proteinsAmount,carbohydratesAmount,energyAmount,fatFullAmount,proteinsFullAmount,carbohydratesFullAmount,energyFullAmount,weightMeasure,weight);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CalorieIntake(fatAmount: $fatAmount, proteinsAmount: $proteinsAmount, carbohydratesAmount: $carbohydratesAmount, energyAmount: $energyAmount, fatFullAmount: $fatFullAmount, proteinsFullAmount: $proteinsFullAmount, carbohydratesFullAmount: $carbohydratesFullAmount, energyFullAmount: $energyFullAmount, weightMeasure: $weightMeasure, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$CalorieIntakeCopyWith<$Res> implements $CalorieIntakeCopyWith<$Res> {
  factory _$CalorieIntakeCopyWith(_CalorieIntake value, $Res Function(_CalorieIntake) _then) = __$CalorieIntakeCopyWithImpl;
@override @useResult
$Res call({
 double? fatAmount, double? proteinsAmount, double? carbohydratesAmount, double? energyAmount, double? fatFullAmount, double? proteinsFullAmount, double? carbohydratesFullAmount, double? energyFullAmount, String weightMeasure, double? weight
});




}
/// @nodoc
class __$CalorieIntakeCopyWithImpl<$Res>
    implements _$CalorieIntakeCopyWith<$Res> {
  __$CalorieIntakeCopyWithImpl(this._self, this._then);

  final _CalorieIntake _self;
  final $Res Function(_CalorieIntake) _then;

/// Create a copy of CalorieIntake
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fatAmount = freezed,Object? proteinsAmount = freezed,Object? carbohydratesAmount = freezed,Object? energyAmount = freezed,Object? fatFullAmount = freezed,Object? proteinsFullAmount = freezed,Object? carbohydratesFullAmount = freezed,Object? energyFullAmount = freezed,Object? weightMeasure = null,Object? weight = freezed,}) {
  return _then(_CalorieIntake(
fatAmount: freezed == fatAmount ? _self.fatAmount : fatAmount // ignore: cast_nullable_to_non_nullable
as double?,proteinsAmount: freezed == proteinsAmount ? _self.proteinsAmount : proteinsAmount // ignore: cast_nullable_to_non_nullable
as double?,carbohydratesAmount: freezed == carbohydratesAmount ? _self.carbohydratesAmount : carbohydratesAmount // ignore: cast_nullable_to_non_nullable
as double?,energyAmount: freezed == energyAmount ? _self.energyAmount : energyAmount // ignore: cast_nullable_to_non_nullable
as double?,fatFullAmount: freezed == fatFullAmount ? _self.fatFullAmount : fatFullAmount // ignore: cast_nullable_to_non_nullable
as double?,proteinsFullAmount: freezed == proteinsFullAmount ? _self.proteinsFullAmount : proteinsFullAmount // ignore: cast_nullable_to_non_nullable
as double?,carbohydratesFullAmount: freezed == carbohydratesFullAmount ? _self.carbohydratesFullAmount : carbohydratesFullAmount // ignore: cast_nullable_to_non_nullable
as double?,energyFullAmount: freezed == energyFullAmount ? _self.energyFullAmount : energyFullAmount // ignore: cast_nullable_to_non_nullable
as double?,weightMeasure: null == weightMeasure ? _self.weightMeasure : weightMeasure // ignore: cast_nullable_to_non_nullable
as String,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
