// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ordered_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderedOption implements DiagnosticableTreeMixin {

 String get name; String get id; double get price;
/// Create a copy of OrderedOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderedOptionCopyWith<OrderedOption> get copyWith => _$OrderedOptionCopyWithImpl<OrderedOption>(this as OrderedOption, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderedOption'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('price', price));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderedOption&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,name,id,price);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderedOption(name: $name, id: $id, price: $price)';
}


}

/// @nodoc
abstract mixin class $OrderedOptionCopyWith<$Res>  {
  factory $OrderedOptionCopyWith(OrderedOption value, $Res Function(OrderedOption) _then) = _$OrderedOptionCopyWithImpl;
@useResult
$Res call({
 String name, String id, double price
});




}
/// @nodoc
class _$OrderedOptionCopyWithImpl<$Res>
    implements $OrderedOptionCopyWith<$Res> {
  _$OrderedOptionCopyWithImpl(this._self, this._then);

  final OrderedOption _self;
  final $Res Function(OrderedOption) _then;

/// Create a copy of OrderedOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = null,Object? price = null,}) {
  return _then(OrderedOption(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderedOption].
extension OrderedOptionPatterns on OrderedOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderedOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderedOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderedOption value)  $default,){
final _that = this;
switch (_that) {
case _OrderedOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderedOption value)?  $default,){
final _that = this;
switch (_that) {
case _OrderedOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String id,  double price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderedOption() when $default != null:
return $default(_that.name,_that.id,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String id,  double price)  $default,) {final _that = this;
switch (_that) {
case _OrderedOption():
return $default(_that.name,_that.id,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String id,  double price)?  $default,) {final _that = this;
switch (_that) {
case _OrderedOption() when $default != null:
return $default(_that.name,_that.id,_that.price);case _:
  return null;

}
}

}

/// @nodoc


class _OrderedOption with DiagnosticableTreeMixin implements OrderedOption {
  const _OrderedOption({required this.name, required this.id, required this.price});
  

@override final  String name;
@override final  String id;
@override final  double price;

/// Create a copy of OrderedOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderedOptionCopyWith<_OrderedOption> get copyWith => __$OrderedOptionCopyWithImpl<_OrderedOption>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderedOption'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('price', price));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderedOption&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,name,id,price);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderedOption(name: $name, id: $id, price: $price)';
}


}

/// @nodoc
abstract mixin class _$OrderedOptionCopyWith<$Res> implements $OrderedOptionCopyWith<$Res> {
  factory _$OrderedOptionCopyWith(_OrderedOption value, $Res Function(_OrderedOption) _then) = __$OrderedOptionCopyWithImpl;
@override @useResult
$Res call({
 String name, String id, double price
});




}
/// @nodoc
class __$OrderedOptionCopyWithImpl<$Res>
    implements _$OrderedOptionCopyWith<$Res> {
  __$OrderedOptionCopyWithImpl(this._self, this._then);

  final _OrderedOption _self;
  final $Res Function(_OrderedOption) _then;

/// Create a copy of OrderedOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? id = null,Object? price = null,}) {
  return _then(_OrderedOption(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
