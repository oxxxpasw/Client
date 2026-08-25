// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barcode_template_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BarcodeTemplatesResponse implements DiagnosticableTreeMixin {

 List<BarcodeTemplateResponse> get templates;
/// Create a copy of BarcodeTemplatesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BarcodeTemplatesResponseCopyWith<BarcodeTemplatesResponse> get copyWith => _$BarcodeTemplatesResponseCopyWithImpl<BarcodeTemplatesResponse>(this as BarcodeTemplatesResponse, _$identity);

  /// Serializes this BarcodeTemplatesResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BarcodeTemplatesResponse'))
    ..add(DiagnosticsProperty('templates', templates));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BarcodeTemplatesResponse&&const DeepCollectionEquality().equals(other.templates, templates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(templates));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BarcodeTemplatesResponse(templates: $templates)';
}


}

/// @nodoc
abstract mixin class $BarcodeTemplatesResponseCopyWith<$Res>  {
  factory $BarcodeTemplatesResponseCopyWith(BarcodeTemplatesResponse value, $Res Function(BarcodeTemplatesResponse) _then) = _$BarcodeTemplatesResponseCopyWithImpl;
@useResult
$Res call({
 List<BarcodeTemplateResponse> templates
});




}
/// @nodoc
class _$BarcodeTemplatesResponseCopyWithImpl<$Res>
    implements $BarcodeTemplatesResponseCopyWith<$Res> {
  _$BarcodeTemplatesResponseCopyWithImpl(this._self, this._then);

  final BarcodeTemplatesResponse _self;
  final $Res Function(BarcodeTemplatesResponse) _then;

/// Create a copy of BarcodeTemplatesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? templates = null,}) {
  return _then(BarcodeTemplatesResponse(
templates: null == templates ? _self.templates : templates // ignore: cast_nullable_to_non_nullable
as List<BarcodeTemplateResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [BarcodeTemplatesResponse].
extension BarcodeTemplatesResponsePatterns on BarcodeTemplatesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BarcodeTemplatesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BarcodeTemplatesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BarcodeTemplatesResponse value)  $default,){
final _that = this;
switch (_that) {
case _BarcodeTemplatesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BarcodeTemplatesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BarcodeTemplatesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BarcodeTemplateResponse> templates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BarcodeTemplatesResponse() when $default != null:
return $default(_that.templates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BarcodeTemplateResponse> templates)  $default,) {final _that = this;
switch (_that) {
case _BarcodeTemplatesResponse():
return $default(_that.templates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BarcodeTemplateResponse> templates)?  $default,) {final _that = this;
switch (_that) {
case _BarcodeTemplatesResponse() when $default != null:
return $default(_that.templates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BarcodeTemplatesResponse with DiagnosticableTreeMixin implements BarcodeTemplatesResponse {
  const _BarcodeTemplatesResponse({required  List<BarcodeTemplateResponse> templates}): _templates = templates;
  factory _BarcodeTemplatesResponse.fromJson(Map<String, dynamic> json) => _$BarcodeTemplatesResponseFromJson(json);

 final  List<BarcodeTemplateResponse> _templates;
@override List<BarcodeTemplateResponse> get templates {
  if (_templates is EqualUnmodifiableListView) return _templates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_templates);
}


/// Create a copy of BarcodeTemplatesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BarcodeTemplatesResponseCopyWith<_BarcodeTemplatesResponse> get copyWith => __$BarcodeTemplatesResponseCopyWithImpl<_BarcodeTemplatesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BarcodeTemplatesResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BarcodeTemplatesResponse'))
    ..add(DiagnosticsProperty('templates', templates));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BarcodeTemplatesResponse&&const DeepCollectionEquality().equals(other._templates, _templates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_templates));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BarcodeTemplatesResponse(templates: $templates)';
}


}

/// @nodoc
abstract mixin class _$BarcodeTemplatesResponseCopyWith<$Res> implements $BarcodeTemplatesResponseCopyWith<$Res> {
  factory _$BarcodeTemplatesResponseCopyWith(_BarcodeTemplatesResponse value, $Res Function(_BarcodeTemplatesResponse) _then) = __$BarcodeTemplatesResponseCopyWithImpl;
@override @useResult
$Res call({
 List<BarcodeTemplateResponse> templates
});




}
/// @nodoc
class __$BarcodeTemplatesResponseCopyWithImpl<$Res>
    implements _$BarcodeTemplatesResponseCopyWith<$Res> {
  __$BarcodeTemplatesResponseCopyWithImpl(this._self, this._then);

  final _BarcodeTemplatesResponse _self;
  final $Res Function(_BarcodeTemplatesResponse) _then;

/// Create a copy of BarcodeTemplatesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? templates = null,}) {
  return _then(_BarcodeTemplatesResponse(
templates: null == templates ? _self._templates : templates // ignore: cast_nullable_to_non_nullable
as List<BarcodeTemplateResponse>,
  ));
}


}


/// @nodoc
mixin _$BarcodeTemplateResponse implements DiagnosticableTreeMixin {

@JsonKey(unknownEnumValue: BarcodeFormatResponse.unknown, defaultValue: BarcodeFormatResponse.unknown) BarcodeFormatResponse get barcodeFormat; List<BarcodePartResponse> get parts; String? get name; String? get prefix;
/// Create a copy of BarcodeTemplateResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BarcodeTemplateResponseCopyWith<BarcodeTemplateResponse> get copyWith => _$BarcodeTemplateResponseCopyWithImpl<BarcodeTemplateResponse>(this as BarcodeTemplateResponse, _$identity);

  /// Serializes this BarcodeTemplateResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BarcodeTemplateResponse'))
    ..add(DiagnosticsProperty('barcodeFormat', barcodeFormat))..add(DiagnosticsProperty('parts', parts))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('prefix', prefix));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BarcodeTemplateResponse&&(identical(other.barcodeFormat, barcodeFormat) || other.barcodeFormat == barcodeFormat)&&const DeepCollectionEquality().equals(other.parts, parts)&&(identical(other.name, name) || other.name == name)&&(identical(other.prefix, prefix) || other.prefix == prefix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,barcodeFormat,const DeepCollectionEquality().hash(parts),name,prefix);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BarcodeTemplateResponse(barcodeFormat: $barcodeFormat, parts: $parts, name: $name, prefix: $prefix)';
}


}

/// @nodoc
abstract mixin class $BarcodeTemplateResponseCopyWith<$Res>  {
  factory $BarcodeTemplateResponseCopyWith(BarcodeTemplateResponse value, $Res Function(BarcodeTemplateResponse) _then) = _$BarcodeTemplateResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: BarcodeFormatResponse.unknown, defaultValue: BarcodeFormatResponse.unknown) BarcodeFormatResponse barcodeFormat, List<BarcodePartResponse> parts, String? name, String? prefix
});




}
/// @nodoc
class _$BarcodeTemplateResponseCopyWithImpl<$Res>
    implements $BarcodeTemplateResponseCopyWith<$Res> {
  _$BarcodeTemplateResponseCopyWithImpl(this._self, this._then);

  final BarcodeTemplateResponse _self;
  final $Res Function(BarcodeTemplateResponse) _then;

/// Create a copy of BarcodeTemplateResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? barcodeFormat = null,Object? parts = null,Object? name = freezed,Object? prefix = freezed,}) {
  return _then(BarcodeTemplateResponse(
barcodeFormat: null == barcodeFormat ? _self.barcodeFormat : barcodeFormat // ignore: cast_nullable_to_non_nullable
as BarcodeFormatResponse,parts: null == parts ? _self.parts : parts // ignore: cast_nullable_to_non_nullable
as List<BarcodePartResponse>,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,prefix: freezed == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BarcodeTemplateResponse].
extension BarcodeTemplateResponsePatterns on BarcodeTemplateResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BarcodeTemplateResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BarcodeTemplateResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BarcodeTemplateResponse value)  $default,){
final _that = this;
switch (_that) {
case _BarcodeTemplateResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BarcodeTemplateResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BarcodeTemplateResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: BarcodeFormatResponse.unknown, defaultValue: BarcodeFormatResponse.unknown)  BarcodeFormatResponse barcodeFormat,  List<BarcodePartResponse> parts,  String? name,  String? prefix)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BarcodeTemplateResponse() when $default != null:
return $default(_that.barcodeFormat,_that.parts,_that.name,_that.prefix);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: BarcodeFormatResponse.unknown, defaultValue: BarcodeFormatResponse.unknown)  BarcodeFormatResponse barcodeFormat,  List<BarcodePartResponse> parts,  String? name,  String? prefix)  $default,) {final _that = this;
switch (_that) {
case _BarcodeTemplateResponse():
return $default(_that.barcodeFormat,_that.parts,_that.name,_that.prefix);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(unknownEnumValue: BarcodeFormatResponse.unknown, defaultValue: BarcodeFormatResponse.unknown)  BarcodeFormatResponse barcodeFormat,  List<BarcodePartResponse> parts,  String? name,  String? prefix)?  $default,) {final _that = this;
switch (_that) {
case _BarcodeTemplateResponse() when $default != null:
return $default(_that.barcodeFormat,_that.parts,_that.name,_that.prefix);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _BarcodeTemplateResponse with DiagnosticableTreeMixin implements BarcodeTemplateResponse {
  const _BarcodeTemplateResponse({@JsonKey(unknownEnumValue: BarcodeFormatResponse.unknown, defaultValue: BarcodeFormatResponse.unknown) required this.barcodeFormat, required  List<BarcodePartResponse> parts, this.name, this.prefix}): _parts = parts;
  factory _BarcodeTemplateResponse.fromJson(Map<String, dynamic> json) => _$BarcodeTemplateResponseFromJson(json);

@override@JsonKey(unknownEnumValue: BarcodeFormatResponse.unknown, defaultValue: BarcodeFormatResponse.unknown) final  BarcodeFormatResponse barcodeFormat;
 final  List<BarcodePartResponse> _parts;
@override List<BarcodePartResponse> get parts {
  if (_parts is EqualUnmodifiableListView) return _parts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parts);
}

@override final  String? name;
@override final  String? prefix;

/// Create a copy of BarcodeTemplateResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BarcodeTemplateResponseCopyWith<_BarcodeTemplateResponse> get copyWith => __$BarcodeTemplateResponseCopyWithImpl<_BarcodeTemplateResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BarcodeTemplateResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BarcodeTemplateResponse'))
    ..add(DiagnosticsProperty('barcodeFormat', barcodeFormat))..add(DiagnosticsProperty('parts', parts))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('prefix', prefix));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BarcodeTemplateResponse&&(identical(other.barcodeFormat, barcodeFormat) || other.barcodeFormat == barcodeFormat)&&const DeepCollectionEquality().equals(other._parts, _parts)&&(identical(other.name, name) || other.name == name)&&(identical(other.prefix, prefix) || other.prefix == prefix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,barcodeFormat,const DeepCollectionEquality().hash(_parts),name,prefix);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BarcodeTemplateResponse(barcodeFormat: $barcodeFormat, parts: $parts, name: $name, prefix: $prefix)';
}


}

/// @nodoc
abstract mixin class _$BarcodeTemplateResponseCopyWith<$Res> implements $BarcodeTemplateResponseCopyWith<$Res> {
  factory _$BarcodeTemplateResponseCopyWith(_BarcodeTemplateResponse value, $Res Function(_BarcodeTemplateResponse) _then) = __$BarcodeTemplateResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: BarcodeFormatResponse.unknown, defaultValue: BarcodeFormatResponse.unknown) BarcodeFormatResponse barcodeFormat, List<BarcodePartResponse> parts, String? name, String? prefix
});




}
/// @nodoc
class __$BarcodeTemplateResponseCopyWithImpl<$Res>
    implements _$BarcodeTemplateResponseCopyWith<$Res> {
  __$BarcodeTemplateResponseCopyWithImpl(this._self, this._then);

  final _BarcodeTemplateResponse _self;
  final $Res Function(_BarcodeTemplateResponse) _then;

/// Create a copy of BarcodeTemplateResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? barcodeFormat = null,Object? parts = null,Object? name = freezed,Object? prefix = freezed,}) {
  return _then(_BarcodeTemplateResponse(
barcodeFormat: null == barcodeFormat ? _self.barcodeFormat : barcodeFormat // ignore: cast_nullable_to_non_nullable
as BarcodeFormatResponse,parts: null == parts ? _self._parts : parts // ignore: cast_nullable_to_non_nullable
as List<BarcodePartResponse>,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,prefix: freezed == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BarcodePartResponse implements DiagnosticableTreeMixin {

 int get startPosition; int get endPosition; int get length;@JsonKey(unknownEnumValue: BarcodePartTypeResponse.unknown, defaultValue: BarcodePartTypeResponse.unknown) BarcodePartTypeResponse get type; String? get applicationIdentifiers;
/// Create a copy of BarcodePartResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BarcodePartResponseCopyWith<BarcodePartResponse> get copyWith => _$BarcodePartResponseCopyWithImpl<BarcodePartResponse>(this as BarcodePartResponse, _$identity);

  /// Serializes this BarcodePartResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BarcodePartResponse'))
    ..add(DiagnosticsProperty('startPosition', startPosition))..add(DiagnosticsProperty('endPosition', endPosition))..add(DiagnosticsProperty('length', length))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('applicationIdentifiers', applicationIdentifiers));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BarcodePartResponse&&(identical(other.startPosition, startPosition) || other.startPosition == startPosition)&&(identical(other.endPosition, endPosition) || other.endPosition == endPosition)&&(identical(other.length, length) || other.length == length)&&(identical(other.type, type) || other.type == type)&&(identical(other.applicationIdentifiers, applicationIdentifiers) || other.applicationIdentifiers == applicationIdentifiers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startPosition,endPosition,length,type,applicationIdentifiers);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BarcodePartResponse(startPosition: $startPosition, endPosition: $endPosition, length: $length, type: $type, applicationIdentifiers: $applicationIdentifiers)';
}


}

/// @nodoc
abstract mixin class $BarcodePartResponseCopyWith<$Res>  {
  factory $BarcodePartResponseCopyWith(BarcodePartResponse value, $Res Function(BarcodePartResponse) _then) = _$BarcodePartResponseCopyWithImpl;
@useResult
$Res call({
 int startPosition, int endPosition, int length,@JsonKey(unknownEnumValue: BarcodePartTypeResponse.unknown, defaultValue: BarcodePartTypeResponse.unknown) BarcodePartTypeResponse type, String? applicationIdentifiers
});




}
/// @nodoc
class _$BarcodePartResponseCopyWithImpl<$Res>
    implements $BarcodePartResponseCopyWith<$Res> {
  _$BarcodePartResponseCopyWithImpl(this._self, this._then);

  final BarcodePartResponse _self;
  final $Res Function(BarcodePartResponse) _then;

/// Create a copy of BarcodePartResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startPosition = null,Object? endPosition = null,Object? length = null,Object? type = null,Object? applicationIdentifiers = freezed,}) {
  return _then(BarcodePartResponse(
startPosition: null == startPosition ? _self.startPosition : startPosition // ignore: cast_nullable_to_non_nullable
as int,endPosition: null == endPosition ? _self.endPosition : endPosition // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as BarcodePartTypeResponse,applicationIdentifiers: freezed == applicationIdentifiers ? _self.applicationIdentifiers : applicationIdentifiers // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BarcodePartResponse].
extension BarcodePartResponsePatterns on BarcodePartResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BarcodePartResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BarcodePartResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BarcodePartResponse value)  $default,){
final _that = this;
switch (_that) {
case _BarcodePartResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BarcodePartResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BarcodePartResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int startPosition,  int endPosition,  int length, @JsonKey(unknownEnumValue: BarcodePartTypeResponse.unknown, defaultValue: BarcodePartTypeResponse.unknown)  BarcodePartTypeResponse type,  String? applicationIdentifiers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BarcodePartResponse() when $default != null:
return $default(_that.startPosition,_that.endPosition,_that.length,_that.type,_that.applicationIdentifiers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int startPosition,  int endPosition,  int length, @JsonKey(unknownEnumValue: BarcodePartTypeResponse.unknown, defaultValue: BarcodePartTypeResponse.unknown)  BarcodePartTypeResponse type,  String? applicationIdentifiers)  $default,) {final _that = this;
switch (_that) {
case _BarcodePartResponse():
return $default(_that.startPosition,_that.endPosition,_that.length,_that.type,_that.applicationIdentifiers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int startPosition,  int endPosition,  int length, @JsonKey(unknownEnumValue: BarcodePartTypeResponse.unknown, defaultValue: BarcodePartTypeResponse.unknown)  BarcodePartTypeResponse type,  String? applicationIdentifiers)?  $default,) {final _that = this;
switch (_that) {
case _BarcodePartResponse() when $default != null:
return $default(_that.startPosition,_that.endPosition,_that.length,_that.type,_that.applicationIdentifiers);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _BarcodePartResponse with DiagnosticableTreeMixin implements BarcodePartResponse {
  const _BarcodePartResponse({required this.startPosition, required this.endPosition, required this.length, @JsonKey(unknownEnumValue: BarcodePartTypeResponse.unknown, defaultValue: BarcodePartTypeResponse.unknown) required this.type, this.applicationIdentifiers});
  factory _BarcodePartResponse.fromJson(Map<String, dynamic> json) => _$BarcodePartResponseFromJson(json);

@override final  int startPosition;
@override final  int endPosition;
@override final  int length;
@override@JsonKey(unknownEnumValue: BarcodePartTypeResponse.unknown, defaultValue: BarcodePartTypeResponse.unknown) final  BarcodePartTypeResponse type;
@override final  String? applicationIdentifiers;

/// Create a copy of BarcodePartResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BarcodePartResponseCopyWith<_BarcodePartResponse> get copyWith => __$BarcodePartResponseCopyWithImpl<_BarcodePartResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BarcodePartResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BarcodePartResponse'))
    ..add(DiagnosticsProperty('startPosition', startPosition))..add(DiagnosticsProperty('endPosition', endPosition))..add(DiagnosticsProperty('length', length))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('applicationIdentifiers', applicationIdentifiers));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BarcodePartResponse&&(identical(other.startPosition, startPosition) || other.startPosition == startPosition)&&(identical(other.endPosition, endPosition) || other.endPosition == endPosition)&&(identical(other.length, length) || other.length == length)&&(identical(other.type, type) || other.type == type)&&(identical(other.applicationIdentifiers, applicationIdentifiers) || other.applicationIdentifiers == applicationIdentifiers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startPosition,endPosition,length,type,applicationIdentifiers);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BarcodePartResponse(startPosition: $startPosition, endPosition: $endPosition, length: $length, type: $type, applicationIdentifiers: $applicationIdentifiers)';
}


}

/// @nodoc
abstract mixin class _$BarcodePartResponseCopyWith<$Res> implements $BarcodePartResponseCopyWith<$Res> {
  factory _$BarcodePartResponseCopyWith(_BarcodePartResponse value, $Res Function(_BarcodePartResponse) _then) = __$BarcodePartResponseCopyWithImpl;
@override @useResult
$Res call({
 int startPosition, int endPosition, int length,@JsonKey(unknownEnumValue: BarcodePartTypeResponse.unknown, defaultValue: BarcodePartTypeResponse.unknown) BarcodePartTypeResponse type, String? applicationIdentifiers
});




}
/// @nodoc
class __$BarcodePartResponseCopyWithImpl<$Res>
    implements _$BarcodePartResponseCopyWith<$Res> {
  __$BarcodePartResponseCopyWithImpl(this._self, this._then);

  final _BarcodePartResponse _self;
  final $Res Function(_BarcodePartResponse) _then;

/// Create a copy of BarcodePartResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startPosition = null,Object? endPosition = null,Object? length = null,Object? type = null,Object? applicationIdentifiers = freezed,}) {
  return _then(_BarcodePartResponse(
startPosition: null == startPosition ? _self.startPosition : startPosition // ignore: cast_nullable_to_non_nullable
as int,endPosition: null == endPosition ? _self.endPosition : endPosition // ignore: cast_nullable_to_non_nullable
as int,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as BarcodePartTypeResponse,applicationIdentifiers: freezed == applicationIdentifiers ? _self.applicationIdentifiers : applicationIdentifiers // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
