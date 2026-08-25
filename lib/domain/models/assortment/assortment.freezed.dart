// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assortment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Group {

 String get id; List<Product>? get products; List<Group>? get subGroups; String get name; String? get image;
/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupCopyWith<Group> get copyWith => _$GroupCopyWithImpl<Group>(this as Group, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Group&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.products, products)&&const DeepCollectionEquality().equals(other.subGroups, subGroups)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(products),const DeepCollectionEquality().hash(subGroups),name,image);

@override
String toString() {
  return 'Group(id: $id, products: $products, subGroups: $subGroups, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class $GroupCopyWith<$Res>  {
  factory $GroupCopyWith(Group value, $Res Function(Group) _then) = _$GroupCopyWithImpl;
@useResult
$Res call({
 String id, List<Product>? products, List<Group>? subGroups, String name, String? image
});




}
/// @nodoc
class _$GroupCopyWithImpl<$Res>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._self, this._then);

  final Group _self;
  final $Res Function(Group) _then;

/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? products = freezed,Object? subGroups = freezed,Object? name = null,Object? image = freezed,}) {
  return _then(Group(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<Product>?,subGroups: freezed == subGroups ? _self.subGroups : subGroups // ignore: cast_nullable_to_non_nullable
as List<Group>?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Group].
extension GroupPatterns on Group {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Group value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Group() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Group value)  $default,){
final _that = this;
switch (_that) {
case _Group():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Group value)?  $default,){
final _that = this;
switch (_that) {
case _Group() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<Product>? products,  List<Group>? subGroups,  String name,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Group() when $default != null:
return $default(_that.id,_that.products,_that.subGroups,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<Product>? products,  List<Group>? subGroups,  String name,  String? image)  $default,) {final _that = this;
switch (_that) {
case _Group():
return $default(_that.id,_that.products,_that.subGroups,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<Product>? products,  List<Group>? subGroups,  String name,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _Group() when $default != null:
return $default(_that.id,_that.products,_that.subGroups,_that.name,_that.image);case _:
  return null;

}
}

}

/// @nodoc


class _Group extends Group {
   _Group({required this.id,  List<Product>? products,  List<Group>? subGroups, required this.name, this.image}): _products = products,_subGroups = subGroups,super._();
  

@override final  String id;
 final  List<Product>? _products;
@override List<Product>? get products {
  final value = _products;
  if (value == null) return null;
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Group>? _subGroups;
@override List<Group>? get subGroups {
  final value = _subGroups;
  if (value == null) return null;
  if (_subGroups is EqualUnmodifiableListView) return _subGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String name;
@override final  String? image;

/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupCopyWith<_Group> get copyWith => __$GroupCopyWithImpl<_Group>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Group&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._subGroups, _subGroups)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_subGroups),name,image);

@override
String toString() {
  return 'Group(id: $id, products: $products, subGroups: $subGroups, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) _then) = __$GroupCopyWithImpl;
@override @useResult
$Res call({
 String id, List<Product>? products, List<Group>? subGroups, String name, String? image
});




}
/// @nodoc
class __$GroupCopyWithImpl<$Res>
    implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(this._self, this._then);

  final _Group _self;
  final $Res Function(_Group) _then;

/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? products = freezed,Object? subGroups = freezed,Object? name = null,Object? image = freezed,}) {
  return _then(_Group(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,products: freezed == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>?,subGroups: freezed == subGroups ? _self._subGroups : subGroups // ignore: cast_nullable_to_non_nullable
as List<Group>?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
