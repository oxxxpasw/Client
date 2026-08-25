// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barcode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RawBarcode {

 String get rawValue; BarcodeFormat get format;
/// Create a copy of RawBarcode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RawBarcodeCopyWith<RawBarcode> get copyWith => _$RawBarcodeCopyWithImpl<RawBarcode>(this as RawBarcode, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RawBarcode&&(identical(other.rawValue, rawValue) || other.rawValue == rawValue)&&(identical(other.format, format) || other.format == format));
}


@override
int get hashCode => Object.hash(runtimeType,rawValue,format);

@override
String toString() {
  return 'RawBarcode(rawValue: $rawValue, format: $format)';
}


}

/// @nodoc
abstract mixin class $RawBarcodeCopyWith<$Res>  {
  factory $RawBarcodeCopyWith(RawBarcode value, $Res Function(RawBarcode) _then) = _$RawBarcodeCopyWithImpl;
@useResult
$Res call({
 String rawValue, BarcodeFormat format
});




}
/// @nodoc
class _$RawBarcodeCopyWithImpl<$Res>
    implements $RawBarcodeCopyWith<$Res> {
  _$RawBarcodeCopyWithImpl(this._self, this._then);

  final RawBarcode _self;
  final $Res Function(RawBarcode) _then;

/// Create a copy of RawBarcode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rawValue = null,Object? format = null,}) {
  return _then(RawBarcode(
rawValue: null == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as BarcodeFormat,
  ));
}

}


/// Adds pattern-matching-related methods to [RawBarcode].
extension RawBarcodePatterns on RawBarcode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RawBarcode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RawBarcode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RawBarcode value)  $default,){
final _that = this;
switch (_that) {
case _RawBarcode():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RawBarcode value)?  $default,){
final _that = this;
switch (_that) {
case _RawBarcode() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String rawValue,  BarcodeFormat format)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RawBarcode() when $default != null:
return $default(_that.rawValue,_that.format);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String rawValue,  BarcodeFormat format)  $default,) {final _that = this;
switch (_that) {
case _RawBarcode():
return $default(_that.rawValue,_that.format);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String rawValue,  BarcodeFormat format)?  $default,) {final _that = this;
switch (_that) {
case _RawBarcode() when $default != null:
return $default(_that.rawValue,_that.format);case _:
  return null;

}
}

}

/// @nodoc


class _RawBarcode implements RawBarcode {
  const _RawBarcode({required this.rawValue, this.format = BarcodeFormat.unknown});
  

@override final  String rawValue;
@override@JsonKey() final  BarcodeFormat format;

/// Create a copy of RawBarcode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RawBarcodeCopyWith<_RawBarcode> get copyWith => __$RawBarcodeCopyWithImpl<_RawBarcode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RawBarcode&&(identical(other.rawValue, rawValue) || other.rawValue == rawValue)&&(identical(other.format, format) || other.format == format));
}


@override
int get hashCode => Object.hash(runtimeType,rawValue,format);

@override
String toString() {
  return 'RawBarcode(rawValue: $rawValue, format: $format)';
}


}

/// @nodoc
abstract mixin class _$RawBarcodeCopyWith<$Res> implements $RawBarcodeCopyWith<$Res> {
  factory _$RawBarcodeCopyWith(_RawBarcode value, $Res Function(_RawBarcode) _then) = __$RawBarcodeCopyWithImpl;
@override @useResult
$Res call({
 String rawValue, BarcodeFormat format
});




}
/// @nodoc
class __$RawBarcodeCopyWithImpl<$Res>
    implements _$RawBarcodeCopyWith<$Res> {
  __$RawBarcodeCopyWithImpl(this._self, this._then);

  final _RawBarcode _self;
  final $Res Function(_RawBarcode) _then;

/// Create a copy of RawBarcode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rawValue = null,Object? format = null,}) {
  return _then(_RawBarcode(
rawValue: null == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as BarcodeFormat,
  ));
}


}

/// @nodoc
mixin _$BarcodeData {

 RawBarcode get rawBarcode; Map<Type, BarcodeComponent> get components;
/// Create a copy of BarcodeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BarcodeDataCopyWith<BarcodeData> get copyWith => _$BarcodeDataCopyWithImpl<BarcodeData>(this as BarcodeData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BarcodeData&&(identical(other.rawBarcode, rawBarcode) || other.rawBarcode == rawBarcode)&&const DeepCollectionEquality().equals(other.components, components));
}


@override
int get hashCode => Object.hash(runtimeType,rawBarcode,const DeepCollectionEquality().hash(components));

@override
String toString() {
  return 'BarcodeData(rawBarcode: $rawBarcode, components: $components)';
}


}

/// @nodoc
abstract mixin class $BarcodeDataCopyWith<$Res>  {
  factory $BarcodeDataCopyWith(BarcodeData value, $Res Function(BarcodeData) _then) = _$BarcodeDataCopyWithImpl;
@useResult
$Res call({
 RawBarcode rawBarcode, Map<Type, BarcodeComponent> components
});


$RawBarcodeCopyWith<$Res> get rawBarcode;

}
/// @nodoc
class _$BarcodeDataCopyWithImpl<$Res>
    implements $BarcodeDataCopyWith<$Res> {
  _$BarcodeDataCopyWithImpl(this._self, this._then);

  final BarcodeData _self;
  final $Res Function(BarcodeData) _then;

/// Create a copy of BarcodeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rawBarcode = null,Object? components = null,}) {
  return _then(BarcodeData(
rawBarcode: null == rawBarcode ? _self.rawBarcode : rawBarcode // ignore: cast_nullable_to_non_nullable
as RawBarcode,components: null == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as Map<Type, BarcodeComponent>,
  ));
}
/// Create a copy of BarcodeData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RawBarcodeCopyWith<$Res> get rawBarcode {
  
  return $RawBarcodeCopyWith<$Res>(_self.rawBarcode, (value) {
    return _then(_self.copyWith(rawBarcode: value));
  });
}
}


/// Adds pattern-matching-related methods to [BarcodeData].
extension BarcodeDataPatterns on BarcodeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BarcodeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BarcodeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BarcodeData value)  $default,){
final _that = this;
switch (_that) {
case _BarcodeData():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BarcodeData value)?  $default,){
final _that = this;
switch (_that) {
case _BarcodeData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RawBarcode rawBarcode,  Map<Type, BarcodeComponent> components)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BarcodeData() when $default != null:
return $default(_that.rawBarcode,_that.components);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RawBarcode rawBarcode,  Map<Type, BarcodeComponent> components)  $default,) {final _that = this;
switch (_that) {
case _BarcodeData():
return $default(_that.rawBarcode,_that.components);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RawBarcode rawBarcode,  Map<Type, BarcodeComponent> components)?  $default,) {final _that = this;
switch (_that) {
case _BarcodeData() when $default != null:
return $default(_that.rawBarcode,_that.components);case _:
  return null;

}
}

}

/// @nodoc


class _BarcodeData extends BarcodeData {
  const _BarcodeData({required this.rawBarcode, required  Map<Type, BarcodeComponent> components}): _components = components,super._();
  

@override final  RawBarcode rawBarcode;
 final  Map<Type, BarcodeComponent> _components;
@override Map<Type, BarcodeComponent> get components {
  if (_components is EqualUnmodifiableMapView) return _components;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_components);
}


/// Create a copy of BarcodeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BarcodeDataCopyWith<_BarcodeData> get copyWith => __$BarcodeDataCopyWithImpl<_BarcodeData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BarcodeData&&(identical(other.rawBarcode, rawBarcode) || other.rawBarcode == rawBarcode)&&const DeepCollectionEquality().equals(other._components, _components));
}


@override
int get hashCode => Object.hash(runtimeType,rawBarcode,const DeepCollectionEquality().hash(_components));

@override
String toString() {
  return 'BarcodeData(rawBarcode: $rawBarcode, components: $components)';
}


}

/// @nodoc
abstract mixin class _$BarcodeDataCopyWith<$Res> implements $BarcodeDataCopyWith<$Res> {
  factory _$BarcodeDataCopyWith(_BarcodeData value, $Res Function(_BarcodeData) _then) = __$BarcodeDataCopyWithImpl;
@override @useResult
$Res call({
 RawBarcode rawBarcode, Map<Type, BarcodeComponent> components
});


@override $RawBarcodeCopyWith<$Res> get rawBarcode;

}
/// @nodoc
class __$BarcodeDataCopyWithImpl<$Res>
    implements _$BarcodeDataCopyWith<$Res> {
  __$BarcodeDataCopyWithImpl(this._self, this._then);

  final _BarcodeData _self;
  final $Res Function(_BarcodeData) _then;

/// Create a copy of BarcodeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rawBarcode = null,Object? components = null,}) {
  return _then(_BarcodeData(
rawBarcode: null == rawBarcode ? _self.rawBarcode : rawBarcode // ignore: cast_nullable_to_non_nullable
as RawBarcode,components: null == components ? _self._components : components // ignore: cast_nullable_to_non_nullable
as Map<Type, BarcodeComponent>,
  ));
}

/// Create a copy of BarcodeData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RawBarcodeCopyWith<$Res> get rawBarcode {
  
  return $RawBarcodeCopyWith<$Res>(_self.rawBarcode, (value) {
    return _then(_self.copyWith(rawBarcode: value));
  });
}
}

/// @nodoc
mixin _$BarcodeTemplate {

 BarcodeFormat get barcodeFormat; List<BarcodePart> get parts; String get prefix; String? get name;
/// Create a copy of BarcodeTemplate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BarcodeTemplateCopyWith<BarcodeTemplate> get copyWith => _$BarcodeTemplateCopyWithImpl<BarcodeTemplate>(this as BarcodeTemplate, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BarcodeTemplate&&(identical(other.barcodeFormat, barcodeFormat) || other.barcodeFormat == barcodeFormat)&&const DeepCollectionEquality().equals(other.parts, parts)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,barcodeFormat,const DeepCollectionEquality().hash(parts),prefix,name);

@override
String toString() {
  return 'BarcodeTemplate(barcodeFormat: $barcodeFormat, parts: $parts, prefix: $prefix, name: $name)';
}


}

/// @nodoc
abstract mixin class $BarcodeTemplateCopyWith<$Res>  {
  factory $BarcodeTemplateCopyWith(BarcodeTemplate value, $Res Function(BarcodeTemplate) _then) = _$BarcodeTemplateCopyWithImpl;
@useResult
$Res call({
 BarcodeFormat barcodeFormat, List<BarcodePart> parts, String prefix, String? name
});




}
/// @nodoc
class _$BarcodeTemplateCopyWithImpl<$Res>
    implements $BarcodeTemplateCopyWith<$Res> {
  _$BarcodeTemplateCopyWithImpl(this._self, this._then);

  final BarcodeTemplate _self;
  final $Res Function(BarcodeTemplate) _then;

/// Create a copy of BarcodeTemplate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? barcodeFormat = null,Object? parts = null,Object? prefix = null,Object? name = freezed,}) {
  return _then(BarcodeTemplate(
barcodeFormat: null == barcodeFormat ? _self.barcodeFormat : barcodeFormat // ignore: cast_nullable_to_non_nullable
as BarcodeFormat,parts: null == parts ? _self.parts : parts // ignore: cast_nullable_to_non_nullable
as List<BarcodePart>,prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BarcodeTemplate].
extension BarcodeTemplatePatterns on BarcodeTemplate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BarcodeTemplate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BarcodeTemplate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BarcodeTemplate value)  $default,){
final _that = this;
switch (_that) {
case _BarcodeTemplate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BarcodeTemplate value)?  $default,){
final _that = this;
switch (_that) {
case _BarcodeTemplate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BarcodeFormat barcodeFormat,  List<BarcodePart> parts,  String prefix,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BarcodeTemplate() when $default != null:
return $default(_that.barcodeFormat,_that.parts,_that.prefix,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BarcodeFormat barcodeFormat,  List<BarcodePart> parts,  String prefix,  String? name)  $default,) {final _that = this;
switch (_that) {
case _BarcodeTemplate():
return $default(_that.barcodeFormat,_that.parts,_that.prefix,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BarcodeFormat barcodeFormat,  List<BarcodePart> parts,  String prefix,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _BarcodeTemplate() when $default != null:
return $default(_that.barcodeFormat,_that.parts,_that.prefix,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _BarcodeTemplate extends BarcodeTemplate {
  const _BarcodeTemplate({required this.barcodeFormat, required  List<BarcodePart> parts, required this.prefix, this.name}): _parts = parts,super._();
  

@override final  BarcodeFormat barcodeFormat;
 final  List<BarcodePart> _parts;
@override List<BarcodePart> get parts {
  if (_parts is EqualUnmodifiableListView) return _parts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parts);
}

@override final  String prefix;
@override final  String? name;

/// Create a copy of BarcodeTemplate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BarcodeTemplateCopyWith<_BarcodeTemplate> get copyWith => __$BarcodeTemplateCopyWithImpl<_BarcodeTemplate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BarcodeTemplate&&(identical(other.barcodeFormat, barcodeFormat) || other.barcodeFormat == barcodeFormat)&&const DeepCollectionEquality().equals(other._parts, _parts)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,barcodeFormat,const DeepCollectionEquality().hash(_parts),prefix,name);

@override
String toString() {
  return 'BarcodeTemplate(barcodeFormat: $barcodeFormat, parts: $parts, prefix: $prefix, name: $name)';
}


}

/// @nodoc
abstract mixin class _$BarcodeTemplateCopyWith<$Res> implements $BarcodeTemplateCopyWith<$Res> {
  factory _$BarcodeTemplateCopyWith(_BarcodeTemplate value, $Res Function(_BarcodeTemplate) _then) = __$BarcodeTemplateCopyWithImpl;
@override @useResult
$Res call({
 BarcodeFormat barcodeFormat, List<BarcodePart> parts, String prefix, String? name
});




}
/// @nodoc
class __$BarcodeTemplateCopyWithImpl<$Res>
    implements _$BarcodeTemplateCopyWith<$Res> {
  __$BarcodeTemplateCopyWithImpl(this._self, this._then);

  final _BarcodeTemplate _self;
  final $Res Function(_BarcodeTemplate) _then;

/// Create a copy of BarcodeTemplate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? barcodeFormat = null,Object? parts = null,Object? prefix = null,Object? name = freezed,}) {
  return _then(_BarcodeTemplate(
barcodeFormat: null == barcodeFormat ? _self.barcodeFormat : barcodeFormat // ignore: cast_nullable_to_non_nullable
as BarcodeFormat,parts: null == parts ? _self._parts : parts // ignore: cast_nullable_to_non_nullable
as List<BarcodePart>,prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$BarcodePart {

 int get startPosition; int get endPosition; int get length; BarcodeComponentType get componentType; String? get prefix;
/// Create a copy of BarcodePart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BarcodePartCopyWith<BarcodePart> get copyWith => _$BarcodePartCopyWithImpl<BarcodePart>(this as BarcodePart, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BarcodePart&&(identical(other.startPosition, startPosition) || other.startPosition == startPosition)&&(identical(other.endPosition, endPosition) || other.endPosition == endPosition)&&(identical(other.length, length) || other.length == length)&&(identical(other.componentType, componentType) || other.componentType == componentType)&&(identical(other.prefix, prefix) || other.prefix == prefix));
}


@override
int get hashCode => Object.hash(runtimeType,startPosition,endPosition,length,componentType,prefix);

@override
String toString() {
  return 'BarcodePart(startPosition: $startPosition, endPosition: $endPosition, length: $length, componentType: $componentType, prefix: $prefix)';
}


}

/// @nodoc
abstract mixin class $BarcodePartCopyWith<$Res>  {
  factory $BarcodePartCopyWith(BarcodePart value, $Res Function(BarcodePart) _then) = _$BarcodePartCopyWithImpl;
@useResult
$Res call({
 int startPosition, int endPosition, int length, BarcodeComponentType componentType, String? prefix
});




}
/// @nodoc
class _$BarcodePartCopyWithImpl<$Res>
    implements $BarcodePartCopyWith<$Res> {
  _$BarcodePartCopyWithImpl(this._self, this._then);

  final BarcodePart _self;
  final $Res Function(BarcodePart) _then;

/// Create a copy of BarcodePart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startPosition = null,Object? endPosition = null,Object? length = null,Object? componentType = null,Object? prefix = freezed,}) {
  return _then(BarcodePart(
startPosition: null == startPosition ? _self.startPosition : startPosition // ignore: cast_nullable_to_non_nullable
as int,endPosition: null == endPosition ? _self.endPosition : endPosition // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,componentType: null == componentType ? _self.componentType : componentType // ignore: cast_nullable_to_non_nullable
as BarcodeComponentType,prefix: freezed == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BarcodePart].
extension BarcodePartPatterns on BarcodePart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BarcodePart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BarcodePart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BarcodePart value)  $default,){
final _that = this;
switch (_that) {
case _BarcodePart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BarcodePart value)?  $default,){
final _that = this;
switch (_that) {
case _BarcodePart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int startPosition,  int endPosition,  int length,  BarcodeComponentType componentType,  String? prefix)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BarcodePart() when $default != null:
return $default(_that.startPosition,_that.endPosition,_that.length,_that.componentType,_that.prefix);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int startPosition,  int endPosition,  int length,  BarcodeComponentType componentType,  String? prefix)  $default,) {final _that = this;
switch (_that) {
case _BarcodePart():
return $default(_that.startPosition,_that.endPosition,_that.length,_that.componentType,_that.prefix);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int startPosition,  int endPosition,  int length,  BarcodeComponentType componentType,  String? prefix)?  $default,) {final _that = this;
switch (_that) {
case _BarcodePart() when $default != null:
return $default(_that.startPosition,_that.endPosition,_that.length,_that.componentType,_that.prefix);case _:
  return null;

}
}

}

/// @nodoc


class _BarcodePart extends BarcodePart {
  const _BarcodePart({required this.startPosition, required this.endPosition, required this.length, required this.componentType, this.prefix}): super._();
  

@override final  int startPosition;
@override final  int endPosition;
@override final  int length;
@override final  BarcodeComponentType componentType;
@override final  String? prefix;

/// Create a copy of BarcodePart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BarcodePartCopyWith<_BarcodePart> get copyWith => __$BarcodePartCopyWithImpl<_BarcodePart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BarcodePart&&(identical(other.startPosition, startPosition) || other.startPosition == startPosition)&&(identical(other.endPosition, endPosition) || other.endPosition == endPosition)&&(identical(other.length, length) || other.length == length)&&(identical(other.componentType, componentType) || other.componentType == componentType)&&(identical(other.prefix, prefix) || other.prefix == prefix));
}


@override
int get hashCode => Object.hash(runtimeType,startPosition,endPosition,length,componentType,prefix);

@override
String toString() {
  return 'BarcodePart(startPosition: $startPosition, endPosition: $endPosition, length: $length, componentType: $componentType, prefix: $prefix)';
}


}

/// @nodoc
abstract mixin class _$BarcodePartCopyWith<$Res> implements $BarcodePartCopyWith<$Res> {
  factory _$BarcodePartCopyWith(_BarcodePart value, $Res Function(_BarcodePart) _then) = __$BarcodePartCopyWithImpl;
@override @useResult
$Res call({
 int startPosition, int endPosition, int length, BarcodeComponentType componentType, String? prefix
});




}
/// @nodoc
class __$BarcodePartCopyWithImpl<$Res>
    implements _$BarcodePartCopyWith<$Res> {
  __$BarcodePartCopyWithImpl(this._self, this._then);

  final _BarcodePart _self;
  final $Res Function(_BarcodePart) _then;

/// Create a copy of BarcodePart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startPosition = null,Object? endPosition = null,Object? length = null,Object? componentType = null,Object? prefix = freezed,}) {
  return _then(_BarcodePart(
startPosition: null == startPosition ? _self.startPosition : startPosition // ignore: cast_nullable_to_non_nullable
as int,endPosition: null == endPosition ? _self.endPosition : endPosition // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,componentType: null == componentType ? _self.componentType : componentType // ignore: cast_nullable_to_non_nullable
as BarcodeComponentType,prefix: freezed == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
