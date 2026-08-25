// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'productEntityModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductEntityModel implements DiagnosticableTreeMixin {

 String get id; int get amount; int get uniqueId; List<ModifierEntityModel> get modifiers;
/// Create a copy of ProductEntityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductEntityModelCopyWith<ProductEntityModel> get copyWith => _$ProductEntityModelCopyWithImpl<ProductEntityModel>(this as ProductEntityModel, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductEntityModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('uniqueId', uniqueId))..add(DiagnosticsProperty('modifiers', modifiers));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEntityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.uniqueId, uniqueId) || other.uniqueId == uniqueId)&&const DeepCollectionEquality().equals(other.modifiers, modifiers));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,uniqueId,const DeepCollectionEquality().hash(modifiers));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductEntityModel(id: $id, amount: $amount, uniqueId: $uniqueId, modifiers: $modifiers)';
}


}

/// @nodoc
abstract mixin class $ProductEntityModelCopyWith<$Res>  {
  factory $ProductEntityModelCopyWith(ProductEntityModel value, $Res Function(ProductEntityModel) _then) = _$ProductEntityModelCopyWithImpl;
@useResult
$Res call({
 String id, int amount, int uniqueId, List<ModifierEntityModel> modifiers
});




}
/// @nodoc
class _$ProductEntityModelCopyWithImpl<$Res>
    implements $ProductEntityModelCopyWith<$Res> {
  _$ProductEntityModelCopyWithImpl(this._self, this._then);

  final ProductEntityModel _self;
  final $Res Function(ProductEntityModel) _then;

/// Create a copy of ProductEntityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? uniqueId = null,Object? modifiers = null,}) {
  return _then(ProductEntityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,uniqueId: null == uniqueId ? _self.uniqueId : uniqueId // ignore: cast_nullable_to_non_nullable
as int,modifiers: null == modifiers ? _self.modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<ModifierEntityModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductEntityModel].
extension ProductEntityModelPatterns on ProductEntityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductEntityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductEntityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductEntityModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductEntityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductEntityModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductEntityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int amount,  int uniqueId,  List<ModifierEntityModel> modifiers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductEntityModel() when $default != null:
return $default(_that.id,_that.amount,_that.uniqueId,_that.modifiers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int amount,  int uniqueId,  List<ModifierEntityModel> modifiers)  $default,) {final _that = this;
switch (_that) {
case _ProductEntityModel():
return $default(_that.id,_that.amount,_that.uniqueId,_that.modifiers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int amount,  int uniqueId,  List<ModifierEntityModel> modifiers)?  $default,) {final _that = this;
switch (_that) {
case _ProductEntityModel() when $default != null:
return $default(_that.id,_that.amount,_that.uniqueId,_that.modifiers);case _:
  return null;

}
}

}

/// @nodoc


class _ProductEntityModel with DiagnosticableTreeMixin implements ProductEntityModel {
  const _ProductEntityModel({required this.id, required this.amount, required this.uniqueId, required  List<ModifierEntityModel> modifiers}): _modifiers = modifiers;
  

@override final  String id;
@override final  int amount;
@override final  int uniqueId;
 final  List<ModifierEntityModel> _modifiers;
@override List<ModifierEntityModel> get modifiers {
  if (_modifiers is EqualUnmodifiableListView) return _modifiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modifiers);
}


/// Create a copy of ProductEntityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductEntityModelCopyWith<_ProductEntityModel> get copyWith => __$ProductEntityModelCopyWithImpl<_ProductEntityModel>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductEntityModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('uniqueId', uniqueId))..add(DiagnosticsProperty('modifiers', modifiers));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductEntityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.uniqueId, uniqueId) || other.uniqueId == uniqueId)&&const DeepCollectionEquality().equals(other._modifiers, _modifiers));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,uniqueId,const DeepCollectionEquality().hash(_modifiers));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductEntityModel(id: $id, amount: $amount, uniqueId: $uniqueId, modifiers: $modifiers)';
}


}

/// @nodoc
abstract mixin class _$ProductEntityModelCopyWith<$Res> implements $ProductEntityModelCopyWith<$Res> {
  factory _$ProductEntityModelCopyWith(_ProductEntityModel value, $Res Function(_ProductEntityModel) _then) = __$ProductEntityModelCopyWithImpl;
@override @useResult
$Res call({
 String id, int amount, int uniqueId, List<ModifierEntityModel> modifiers
});




}
/// @nodoc
class __$ProductEntityModelCopyWithImpl<$Res>
    implements _$ProductEntityModelCopyWith<$Res> {
  __$ProductEntityModelCopyWithImpl(this._self, this._then);

  final _ProductEntityModel _self;
  final $Res Function(_ProductEntityModel) _then;

/// Create a copy of ProductEntityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? uniqueId = null,Object? modifiers = null,}) {
  return _then(_ProductEntityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,uniqueId: null == uniqueId ? _self.uniqueId : uniqueId // ignore: cast_nullable_to_non_nullable
as int,modifiers: null == modifiers ? _self._modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<ModifierEntityModel>,
  ));
}


}

/// @nodoc
mixin _$ModifierEntityModel implements DiagnosticableTreeMixin {

 String get id; int get uniqueId; List<OptionEntityModel> get options;
/// Create a copy of ModifierEntityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModifierEntityModelCopyWith<ModifierEntityModel> get copyWith => _$ModifierEntityModelCopyWithImpl<ModifierEntityModel>(this as ModifierEntityModel, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ModifierEntityModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('uniqueId', uniqueId))..add(DiagnosticsProperty('options', options));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModifierEntityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.uniqueId, uniqueId) || other.uniqueId == uniqueId)&&const DeepCollectionEquality().equals(other.options, options));
}


@override
int get hashCode => Object.hash(runtimeType,id,uniqueId,const DeepCollectionEquality().hash(options));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ModifierEntityModel(id: $id, uniqueId: $uniqueId, options: $options)';
}


}

/// @nodoc
abstract mixin class $ModifierEntityModelCopyWith<$Res>  {
  factory $ModifierEntityModelCopyWith(ModifierEntityModel value, $Res Function(ModifierEntityModel) _then) = _$ModifierEntityModelCopyWithImpl;
@useResult
$Res call({
 String id, int uniqueId, List<OptionEntityModel> options
});




}
/// @nodoc
class _$ModifierEntityModelCopyWithImpl<$Res>
    implements $ModifierEntityModelCopyWith<$Res> {
  _$ModifierEntityModelCopyWithImpl(this._self, this._then);

  final ModifierEntityModel _self;
  final $Res Function(ModifierEntityModel) _then;

/// Create a copy of ModifierEntityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? uniqueId = null,Object? options = null,}) {
  return _then(ModifierEntityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,uniqueId: null == uniqueId ? _self.uniqueId : uniqueId // ignore: cast_nullable_to_non_nullable
as int,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<OptionEntityModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ModifierEntityModel].
extension ModifierEntityModelPatterns on ModifierEntityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModifierEntityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModifierEntityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModifierEntityModel value)  $default,){
final _that = this;
switch (_that) {
case _ModifierEntityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModifierEntityModel value)?  $default,){
final _that = this;
switch (_that) {
case _ModifierEntityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int uniqueId,  List<OptionEntityModel> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModifierEntityModel() when $default != null:
return $default(_that.id,_that.uniqueId,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int uniqueId,  List<OptionEntityModel> options)  $default,) {final _that = this;
switch (_that) {
case _ModifierEntityModel():
return $default(_that.id,_that.uniqueId,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int uniqueId,  List<OptionEntityModel> options)?  $default,) {final _that = this;
switch (_that) {
case _ModifierEntityModel() when $default != null:
return $default(_that.id,_that.uniqueId,_that.options);case _:
  return null;

}
}

}

/// @nodoc


class _ModifierEntityModel with DiagnosticableTreeMixin implements ModifierEntityModel {
  const _ModifierEntityModel({required this.id, required this.uniqueId, required  List<OptionEntityModel> options}): _options = options;
  

@override final  String id;
@override final  int uniqueId;
 final  List<OptionEntityModel> _options;
@override List<OptionEntityModel> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of ModifierEntityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModifierEntityModelCopyWith<_ModifierEntityModel> get copyWith => __$ModifierEntityModelCopyWithImpl<_ModifierEntityModel>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ModifierEntityModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('uniqueId', uniqueId))..add(DiagnosticsProperty('options', options));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModifierEntityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.uniqueId, uniqueId) || other.uniqueId == uniqueId)&&const DeepCollectionEquality().equals(other._options, _options));
}


@override
int get hashCode => Object.hash(runtimeType,id,uniqueId,const DeepCollectionEquality().hash(_options));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ModifierEntityModel(id: $id, uniqueId: $uniqueId, options: $options)';
}


}

/// @nodoc
abstract mixin class _$ModifierEntityModelCopyWith<$Res> implements $ModifierEntityModelCopyWith<$Res> {
  factory _$ModifierEntityModelCopyWith(_ModifierEntityModel value, $Res Function(_ModifierEntityModel) _then) = __$ModifierEntityModelCopyWithImpl;
@override @useResult
$Res call({
 String id, int uniqueId, List<OptionEntityModel> options
});




}
/// @nodoc
class __$ModifierEntityModelCopyWithImpl<$Res>
    implements _$ModifierEntityModelCopyWith<$Res> {
  __$ModifierEntityModelCopyWithImpl(this._self, this._then);

  final _ModifierEntityModel _self;
  final $Res Function(_ModifierEntityModel) _then;

/// Create a copy of ModifierEntityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? uniqueId = null,Object? options = null,}) {
  return _then(_ModifierEntityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,uniqueId: null == uniqueId ? _self.uniqueId : uniqueId // ignore: cast_nullable_to_non_nullable
as int,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<OptionEntityModel>,
  ));
}


}

/// @nodoc
mixin _$OptionEntityModel implements DiagnosticableTreeMixin {

 String get id; int get amount; int get uniqueId;
/// Create a copy of OptionEntityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionEntityModelCopyWith<OptionEntityModel> get copyWith => _$OptionEntityModelCopyWithImpl<OptionEntityModel>(this as OptionEntityModel, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OptionEntityModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('uniqueId', uniqueId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionEntityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.uniqueId, uniqueId) || other.uniqueId == uniqueId));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,uniqueId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OptionEntityModel(id: $id, amount: $amount, uniqueId: $uniqueId)';
}


}

/// @nodoc
abstract mixin class $OptionEntityModelCopyWith<$Res>  {
  factory $OptionEntityModelCopyWith(OptionEntityModel value, $Res Function(OptionEntityModel) _then) = _$OptionEntityModelCopyWithImpl;
@useResult
$Res call({
 String id, int amount, int uniqueId
});




}
/// @nodoc
class _$OptionEntityModelCopyWithImpl<$Res>
    implements $OptionEntityModelCopyWith<$Res> {
  _$OptionEntityModelCopyWithImpl(this._self, this._then);

  final OptionEntityModel _self;
  final $Res Function(OptionEntityModel) _then;

/// Create a copy of OptionEntityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? uniqueId = null,}) {
  return _then(OptionEntityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,uniqueId: null == uniqueId ? _self.uniqueId : uniqueId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OptionEntityModel].
extension OptionEntityModelPatterns on OptionEntityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OptionEntityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionEntityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OptionEntityModel value)  $default,){
final _that = this;
switch (_that) {
case _OptionEntityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OptionEntityModel value)?  $default,){
final _that = this;
switch (_that) {
case _OptionEntityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int amount,  int uniqueId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionEntityModel() when $default != null:
return $default(_that.id,_that.amount,_that.uniqueId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int amount,  int uniqueId)  $default,) {final _that = this;
switch (_that) {
case _OptionEntityModel():
return $default(_that.id,_that.amount,_that.uniqueId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int amount,  int uniqueId)?  $default,) {final _that = this;
switch (_that) {
case _OptionEntityModel() when $default != null:
return $default(_that.id,_that.amount,_that.uniqueId);case _:
  return null;

}
}

}

/// @nodoc


class _OptionEntityModel with DiagnosticableTreeMixin implements OptionEntityModel {
  const _OptionEntityModel({required this.id, required this.amount, required this.uniqueId});
  

@override final  String id;
@override final  int amount;
@override final  int uniqueId;

/// Create a copy of OptionEntityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionEntityModelCopyWith<_OptionEntityModel> get copyWith => __$OptionEntityModelCopyWithImpl<_OptionEntityModel>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OptionEntityModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('uniqueId', uniqueId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionEntityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.uniqueId, uniqueId) || other.uniqueId == uniqueId));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,uniqueId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OptionEntityModel(id: $id, amount: $amount, uniqueId: $uniqueId)';
}


}

/// @nodoc
abstract mixin class _$OptionEntityModelCopyWith<$Res> implements $OptionEntityModelCopyWith<$Res> {
  factory _$OptionEntityModelCopyWith(_OptionEntityModel value, $Res Function(_OptionEntityModel) _then) = __$OptionEntityModelCopyWithImpl;
@override @useResult
$Res call({
 String id, int amount, int uniqueId
});




}
/// @nodoc
class __$OptionEntityModelCopyWithImpl<$Res>
    implements _$OptionEntityModelCopyWith<$Res> {
  __$OptionEntityModelCopyWithImpl(this._self, this._then);

  final _OptionEntityModel _self;
  final $Res Function(_OptionEntityModel) _then;

/// Create a copy of OptionEntityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? uniqueId = null,}) {
  return _then(_OptionEntityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,uniqueId: null == uniqueId ? _self.uniqueId : uniqueId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
