// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sbp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SbpBankResponse implements DiagnosticableTreeMixin {

 String? get bankName; Uri? get logoURL; String? get schema;@JsonKey(name: 'package_name') String? get packageName;
/// Create a copy of SbpBankResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SbpBankResponseCopyWith<SbpBankResponse> get copyWith => _$SbpBankResponseCopyWithImpl<SbpBankResponse>(this as SbpBankResponse, _$identity);

  /// Serializes this SbpBankResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SbpBankResponse'))
    ..add(DiagnosticsProperty('bankName', bankName))..add(DiagnosticsProperty('logoURL', logoURL))..add(DiagnosticsProperty('schema', schema))..add(DiagnosticsProperty('packageName', packageName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SbpBankResponse&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.logoURL, logoURL) || other.logoURL == logoURL)&&(identical(other.schema, schema) || other.schema == schema)&&(identical(other.packageName, packageName) || other.packageName == packageName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankName,logoURL,schema,packageName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SbpBankResponse(bankName: $bankName, logoURL: $logoURL, schema: $schema, packageName: $packageName)';
}


}

/// @nodoc
abstract mixin class $SbpBankResponseCopyWith<$Res>  {
  factory $SbpBankResponseCopyWith(SbpBankResponse value, $Res Function(SbpBankResponse) _then) = _$SbpBankResponseCopyWithImpl;
@useResult
$Res call({
 String? bankName, Uri? logoURL, String? schema,@JsonKey(name: 'package_name') String? packageName
});




}
/// @nodoc
class _$SbpBankResponseCopyWithImpl<$Res>
    implements $SbpBankResponseCopyWith<$Res> {
  _$SbpBankResponseCopyWithImpl(this._self, this._then);

  final SbpBankResponse _self;
  final $Res Function(SbpBankResponse) _then;

/// Create a copy of SbpBankResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bankName = freezed,Object? logoURL = freezed,Object? schema = freezed,Object? packageName = freezed,}) {
  return _then(SbpBankResponse(
bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,logoURL: freezed == logoURL ? _self.logoURL : logoURL // ignore: cast_nullable_to_non_nullable
as Uri?,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as String?,packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SbpBankResponse].
extension SbpBankResponsePatterns on SbpBankResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SbpBankResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SbpBankResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SbpBankResponse value)  $default,){
final _that = this;
switch (_that) {
case _SbpBankResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SbpBankResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SbpBankResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? bankName,  Uri? logoURL,  String? schema, @JsonKey(name: 'package_name')  String? packageName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SbpBankResponse() when $default != null:
return $default(_that.bankName,_that.logoURL,_that.schema,_that.packageName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? bankName,  Uri? logoURL,  String? schema, @JsonKey(name: 'package_name')  String? packageName)  $default,) {final _that = this;
switch (_that) {
case _SbpBankResponse():
return $default(_that.bankName,_that.logoURL,_that.schema,_that.packageName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? bankName,  Uri? logoURL,  String? schema, @JsonKey(name: 'package_name')  String? packageName)?  $default,) {final _that = this;
switch (_that) {
case _SbpBankResponse() when $default != null:
return $default(_that.bankName,_that.logoURL,_that.schema,_that.packageName);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _SbpBankResponse with DiagnosticableTreeMixin implements SbpBankResponse {
  const _SbpBankResponse({this.bankName, this.logoURL, this.schema, @JsonKey(name: 'package_name') this.packageName});
  factory _SbpBankResponse.fromJson(Map<String, dynamic> json) => _$SbpBankResponseFromJson(json);

@override final  String? bankName;
@override final  Uri? logoURL;
@override final  String? schema;
@override@JsonKey(name: 'package_name') final  String? packageName;

/// Create a copy of SbpBankResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SbpBankResponseCopyWith<_SbpBankResponse> get copyWith => __$SbpBankResponseCopyWithImpl<_SbpBankResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SbpBankResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SbpBankResponse'))
    ..add(DiagnosticsProperty('bankName', bankName))..add(DiagnosticsProperty('logoURL', logoURL))..add(DiagnosticsProperty('schema', schema))..add(DiagnosticsProperty('packageName', packageName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SbpBankResponse&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.logoURL, logoURL) || other.logoURL == logoURL)&&(identical(other.schema, schema) || other.schema == schema)&&(identical(other.packageName, packageName) || other.packageName == packageName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankName,logoURL,schema,packageName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SbpBankResponse(bankName: $bankName, logoURL: $logoURL, schema: $schema, packageName: $packageName)';
}


}

/// @nodoc
abstract mixin class _$SbpBankResponseCopyWith<$Res> implements $SbpBankResponseCopyWith<$Res> {
  factory _$SbpBankResponseCopyWith(_SbpBankResponse value, $Res Function(_SbpBankResponse) _then) = __$SbpBankResponseCopyWithImpl;
@override @useResult
$Res call({
 String? bankName, Uri? logoURL, String? schema,@JsonKey(name: 'package_name') String? packageName
});




}
/// @nodoc
class __$SbpBankResponseCopyWithImpl<$Res>
    implements _$SbpBankResponseCopyWith<$Res> {
  __$SbpBankResponseCopyWithImpl(this._self, this._then);

  final _SbpBankResponse _self;
  final $Res Function(_SbpBankResponse) _then;

/// Create a copy of SbpBankResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bankName = freezed,Object? logoURL = freezed,Object? schema = freezed,Object? packageName = freezed,}) {
  return _then(_SbpBankResponse(
bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,logoURL: freezed == logoURL ? _self.logoURL : logoURL // ignore: cast_nullable_to_non_nullable
as Uri?,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as String?,packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SbpResponse implements DiagnosticableTreeMixin {

 String? get version; List<SbpBankResponse> get dictionary;
/// Create a copy of SbpResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SbpResponseCopyWith<SbpResponse> get copyWith => _$SbpResponseCopyWithImpl<SbpResponse>(this as SbpResponse, _$identity);

  /// Serializes this SbpResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SbpResponse'))
    ..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('dictionary', dictionary));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SbpResponse&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.dictionary, dictionary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,const DeepCollectionEquality().hash(dictionary));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SbpResponse(version: $version, dictionary: $dictionary)';
}


}

/// @nodoc
abstract mixin class $SbpResponseCopyWith<$Res>  {
  factory $SbpResponseCopyWith(SbpResponse value, $Res Function(SbpResponse) _then) = _$SbpResponseCopyWithImpl;
@useResult
$Res call({
 String? version, List<SbpBankResponse> dictionary
});




}
/// @nodoc
class _$SbpResponseCopyWithImpl<$Res>
    implements $SbpResponseCopyWith<$Res> {
  _$SbpResponseCopyWithImpl(this._self, this._then);

  final SbpResponse _self;
  final $Res Function(SbpResponse) _then;

/// Create a copy of SbpResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = freezed,Object? dictionary = null,}) {
  return _then(SbpResponse(
version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,dictionary: null == dictionary ? _self.dictionary : dictionary // ignore: cast_nullable_to_non_nullable
as List<SbpBankResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [SbpResponse].
extension SbpResponsePatterns on SbpResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SbpResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SbpResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SbpResponse value)  $default,){
final _that = this;
switch (_that) {
case _SbpResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SbpResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SbpResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? version,  List<SbpBankResponse> dictionary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SbpResponse() when $default != null:
return $default(_that.version,_that.dictionary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? version,  List<SbpBankResponse> dictionary)  $default,) {final _that = this;
switch (_that) {
case _SbpResponse():
return $default(_that.version,_that.dictionary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? version,  List<SbpBankResponse> dictionary)?  $default,) {final _that = this;
switch (_that) {
case _SbpResponse() when $default != null:
return $default(_that.version,_that.dictionary);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _SbpResponse with DiagnosticableTreeMixin implements SbpResponse {
  const _SbpResponse({this.version,  List<SbpBankResponse> dictionary = const []}): _dictionary = dictionary;
  factory _SbpResponse.fromJson(Map<String, dynamic> json) => _$SbpResponseFromJson(json);

@override final  String? version;
 final  List<SbpBankResponse> _dictionary;
@override@JsonKey() List<SbpBankResponse> get dictionary {
  if (_dictionary is EqualUnmodifiableListView) return _dictionary;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dictionary);
}


/// Create a copy of SbpResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SbpResponseCopyWith<_SbpResponse> get copyWith => __$SbpResponseCopyWithImpl<_SbpResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SbpResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SbpResponse'))
    ..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('dictionary', dictionary));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SbpResponse&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._dictionary, _dictionary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,const DeepCollectionEquality().hash(_dictionary));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SbpResponse(version: $version, dictionary: $dictionary)';
}


}

/// @nodoc
abstract mixin class _$SbpResponseCopyWith<$Res> implements $SbpResponseCopyWith<$Res> {
  factory _$SbpResponseCopyWith(_SbpResponse value, $Res Function(_SbpResponse) _then) = __$SbpResponseCopyWithImpl;
@override @useResult
$Res call({
 String? version, List<SbpBankResponse> dictionary
});




}
/// @nodoc
class __$SbpResponseCopyWithImpl<$Res>
    implements _$SbpResponseCopyWith<$Res> {
  __$SbpResponseCopyWithImpl(this._self, this._then);

  final _SbpResponse _self;
  final $Res Function(_SbpResponse) _then;

/// Create a copy of SbpResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = freezed,Object? dictionary = null,}) {
  return _then(_SbpResponse(
version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,dictionary: null == dictionary ? _self._dictionary : dictionary // ignore: cast_nullable_to_non_nullable
as List<SbpBankResponse>,
  ));
}


}

// dart format on
