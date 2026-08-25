// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ordered_modifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderedModifier implements DiagnosticableTreeMixin {

 String get name; List<OrderedOption> get options;
/// Create a copy of OrderedModifier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderedModifierCopyWith<OrderedModifier> get copyWith => _$OrderedModifierCopyWithImpl<OrderedModifier>(this as OrderedModifier, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderedModifier'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('options', options));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderedModifier&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.options, options));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(options));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderedModifier(name: $name, options: $options)';
}


}

/// @nodoc
abstract mixin class $OrderedModifierCopyWith<$Res>  {
  factory $OrderedModifierCopyWith(OrderedModifier value, $Res Function(OrderedModifier) _then) = _$OrderedModifierCopyWithImpl;
@useResult
$Res call({
 String name, List<OrderedOption> options
});




}
/// @nodoc
class _$OrderedModifierCopyWithImpl<$Res>
    implements $OrderedModifierCopyWith<$Res> {
  _$OrderedModifierCopyWithImpl(this._self, this._then);

  final OrderedModifier _self;
  final $Res Function(OrderedModifier) _then;

/// Create a copy of OrderedModifier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? options = null,}) {
  return _then(OrderedModifier(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<OrderedOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderedModifier].
extension OrderedModifierPatterns on OrderedModifier {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderedModifier value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderedModifier() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderedModifier value)  $default,){
final _that = this;
switch (_that) {
case _OrderedModifier():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderedModifier value)?  $default,){
final _that = this;
switch (_that) {
case _OrderedModifier() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<OrderedOption> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderedModifier() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<OrderedOption> options)  $default,) {final _that = this;
switch (_that) {
case _OrderedModifier():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<OrderedOption> options)?  $default,) {final _that = this;
switch (_that) {
case _OrderedModifier() when $default != null:
return $default(_that.name,_that.options);case _:
  return null;

}
}

}

/// @nodoc


class _OrderedModifier with DiagnosticableTreeMixin implements OrderedModifier {
  const _OrderedModifier({required this.name, required  List<OrderedOption> options}): _options = options;
  

@override final  String name;
 final  List<OrderedOption> _options;
@override List<OrderedOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of OrderedModifier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderedModifierCopyWith<_OrderedModifier> get copyWith => __$OrderedModifierCopyWithImpl<_OrderedModifier>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderedModifier'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('options', options));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderedModifier&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._options, _options));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_options));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderedModifier(name: $name, options: $options)';
}


}

/// @nodoc
abstract mixin class _$OrderedModifierCopyWith<$Res> implements $OrderedModifierCopyWith<$Res> {
  factory _$OrderedModifierCopyWith(_OrderedModifier value, $Res Function(_OrderedModifier) _then) = __$OrderedModifierCopyWithImpl;
@override @useResult
$Res call({
 String name, List<OrderedOption> options
});




}
/// @nodoc
class __$OrderedModifierCopyWithImpl<$Res>
    implements _$OrderedModifierCopyWith<$Res> {
  __$OrderedModifierCopyWithImpl(this._self, this._then);

  final _OrderedModifier _self;
  final $Res Function(_OrderedModifier) _then;

/// Create a copy of OrderedModifier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? options = null,}) {
  return _then(_OrderedModifier(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<OrderedOption>,
  ));
}


}

// dart format on
