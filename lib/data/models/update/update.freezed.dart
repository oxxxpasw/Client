// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Updates implements DiagnosticableTreeMixin {

 Update get immediateUpdate; Update get optionalUpdate; AppsStoreLinks? get storeLinks;
/// Create a copy of Updates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatesCopyWith<Updates> get copyWith => _$UpdatesCopyWithImpl<Updates>(this as Updates, _$identity);

  /// Serializes this Updates to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Updates'))
    ..add(DiagnosticsProperty('immediateUpdate', immediateUpdate))..add(DiagnosticsProperty('optionalUpdate', optionalUpdate))..add(DiagnosticsProperty('storeLinks', storeLinks));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Updates&&(identical(other.immediateUpdate, immediateUpdate) || other.immediateUpdate == immediateUpdate)&&(identical(other.optionalUpdate, optionalUpdate) || other.optionalUpdate == optionalUpdate)&&(identical(other.storeLinks, storeLinks) || other.storeLinks == storeLinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,immediateUpdate,optionalUpdate,storeLinks);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Updates(immediateUpdate: $immediateUpdate, optionalUpdate: $optionalUpdate, storeLinks: $storeLinks)';
}


}

/// @nodoc
abstract mixin class $UpdatesCopyWith<$Res>  {
  factory $UpdatesCopyWith(Updates value, $Res Function(Updates) _then) = _$UpdatesCopyWithImpl;
@useResult
$Res call({
 Update immediateUpdate, Update optionalUpdate, AppsStoreLinks? storeLinks
});


$UpdateCopyWith<$Res> get immediateUpdate;$UpdateCopyWith<$Res> get optionalUpdate;$AppsStoreLinksCopyWith<$Res>? get storeLinks;

}
/// @nodoc
class _$UpdatesCopyWithImpl<$Res>
    implements $UpdatesCopyWith<$Res> {
  _$UpdatesCopyWithImpl(this._self, this._then);

  final Updates _self;
  final $Res Function(Updates) _then;

/// Create a copy of Updates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? immediateUpdate = null,Object? optionalUpdate = null,Object? storeLinks = freezed,}) {
  return _then(Updates(
immediateUpdate: null == immediateUpdate ? _self.immediateUpdate : immediateUpdate // ignore: cast_nullable_to_non_nullable
as Update,optionalUpdate: null == optionalUpdate ? _self.optionalUpdate : optionalUpdate // ignore: cast_nullable_to_non_nullable
as Update,storeLinks: freezed == storeLinks ? _self.storeLinks : storeLinks // ignore: cast_nullable_to_non_nullable
as AppsStoreLinks?,
  ));
}
/// Create a copy of Updates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateCopyWith<$Res> get immediateUpdate {
  
  return $UpdateCopyWith<$Res>(_self.immediateUpdate, (value) {
    return _then(_self.copyWith(immediateUpdate: value));
  });
}/// Create a copy of Updates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateCopyWith<$Res> get optionalUpdate {
  
  return $UpdateCopyWith<$Res>(_self.optionalUpdate, (value) {
    return _then(_self.copyWith(optionalUpdate: value));
  });
}/// Create a copy of Updates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppsStoreLinksCopyWith<$Res>? get storeLinks {
    if (_self.storeLinks == null) {
    return null;
  }

  return $AppsStoreLinksCopyWith<$Res>(_self.storeLinks!, (value) {
    return _then(_self.copyWith(storeLinks: value));
  });
}
}


/// Adds pattern-matching-related methods to [Updates].
extension UpdatesPatterns on Updates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Updates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Updates() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Updates value)  $default,){
final _that = this;
switch (_that) {
case _Updates():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Updates value)?  $default,){
final _that = this;
switch (_that) {
case _Updates() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Update immediateUpdate,  Update optionalUpdate,  AppsStoreLinks? storeLinks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Updates() when $default != null:
return $default(_that.immediateUpdate,_that.optionalUpdate,_that.storeLinks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Update immediateUpdate,  Update optionalUpdate,  AppsStoreLinks? storeLinks)  $default,) {final _that = this;
switch (_that) {
case _Updates():
return $default(_that.immediateUpdate,_that.optionalUpdate,_that.storeLinks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Update immediateUpdate,  Update optionalUpdate,  AppsStoreLinks? storeLinks)?  $default,) {final _that = this;
switch (_that) {
case _Updates() when $default != null:
return $default(_that.immediateUpdate,_that.optionalUpdate,_that.storeLinks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Updates extends Updates with DiagnosticableTreeMixin {
  const _Updates({required this.immediateUpdate, required this.optionalUpdate, this.storeLinks}): super._();
  factory _Updates.fromJson(Map<String, dynamic> json) => _$UpdatesFromJson(json);

@override final  Update immediateUpdate;
@override final  Update optionalUpdate;
@override final  AppsStoreLinks? storeLinks;

/// Create a copy of Updates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatesCopyWith<_Updates> get copyWith => __$UpdatesCopyWithImpl<_Updates>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdatesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Updates'))
    ..add(DiagnosticsProperty('immediateUpdate', immediateUpdate))..add(DiagnosticsProperty('optionalUpdate', optionalUpdate))..add(DiagnosticsProperty('storeLinks', storeLinks));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Updates&&(identical(other.immediateUpdate, immediateUpdate) || other.immediateUpdate == immediateUpdate)&&(identical(other.optionalUpdate, optionalUpdate) || other.optionalUpdate == optionalUpdate)&&(identical(other.storeLinks, storeLinks) || other.storeLinks == storeLinks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,immediateUpdate,optionalUpdate,storeLinks);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Updates(immediateUpdate: $immediateUpdate, optionalUpdate: $optionalUpdate, storeLinks: $storeLinks)';
}


}

/// @nodoc
abstract mixin class _$UpdatesCopyWith<$Res> implements $UpdatesCopyWith<$Res> {
  factory _$UpdatesCopyWith(_Updates value, $Res Function(_Updates) _then) = __$UpdatesCopyWithImpl;
@override @useResult
$Res call({
 Update immediateUpdate, Update optionalUpdate, AppsStoreLinks? storeLinks
});


@override $UpdateCopyWith<$Res> get immediateUpdate;@override $UpdateCopyWith<$Res> get optionalUpdate;@override $AppsStoreLinksCopyWith<$Res>? get storeLinks;

}
/// @nodoc
class __$UpdatesCopyWithImpl<$Res>
    implements _$UpdatesCopyWith<$Res> {
  __$UpdatesCopyWithImpl(this._self, this._then);

  final _Updates _self;
  final $Res Function(_Updates) _then;

/// Create a copy of Updates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? immediateUpdate = null,Object? optionalUpdate = null,Object? storeLinks = freezed,}) {
  return _then(_Updates(
immediateUpdate: null == immediateUpdate ? _self.immediateUpdate : immediateUpdate // ignore: cast_nullable_to_non_nullable
as Update,optionalUpdate: null == optionalUpdate ? _self.optionalUpdate : optionalUpdate // ignore: cast_nullable_to_non_nullable
as Update,storeLinks: freezed == storeLinks ? _self.storeLinks : storeLinks // ignore: cast_nullable_to_non_nullable
as AppsStoreLinks?,
  ));
}

/// Create a copy of Updates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateCopyWith<$Res> get immediateUpdate {
  
  return $UpdateCopyWith<$Res>(_self.immediateUpdate, (value) {
    return _then(_self.copyWith(immediateUpdate: value));
  });
}/// Create a copy of Updates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateCopyWith<$Res> get optionalUpdate {
  
  return $UpdateCopyWith<$Res>(_self.optionalUpdate, (value) {
    return _then(_self.copyWith(optionalUpdate: value));
  });
}/// Create a copy of Updates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppsStoreLinksCopyWith<$Res>? get storeLinks {
    if (_self.storeLinks == null) {
    return null;
  }

  return $AppsStoreLinksCopyWith<$Res>(_self.storeLinks!, (value) {
    return _then(_self.copyWith(storeLinks: value));
  });
}
}


/// @nodoc
mixin _$AppsStoreLinks implements DiagnosticableTreeMixin {

 String? get googlePlayUrl; String? get itunesUrl; String? get androidMarketUrl;
/// Create a copy of AppsStoreLinks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppsStoreLinksCopyWith<AppsStoreLinks> get copyWith => _$AppsStoreLinksCopyWithImpl<AppsStoreLinks>(this as AppsStoreLinks, _$identity);

  /// Serializes this AppsStoreLinks to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppsStoreLinks'))
    ..add(DiagnosticsProperty('googlePlayUrl', googlePlayUrl))..add(DiagnosticsProperty('itunesUrl', itunesUrl))..add(DiagnosticsProperty('androidMarketUrl', androidMarketUrl));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppsStoreLinks&&(identical(other.googlePlayUrl, googlePlayUrl) || other.googlePlayUrl == googlePlayUrl)&&(identical(other.itunesUrl, itunesUrl) || other.itunesUrl == itunesUrl)&&(identical(other.androidMarketUrl, androidMarketUrl) || other.androidMarketUrl == androidMarketUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,googlePlayUrl,itunesUrl,androidMarketUrl);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppsStoreLinks(googlePlayUrl: $googlePlayUrl, itunesUrl: $itunesUrl, androidMarketUrl: $androidMarketUrl)';
}


}

/// @nodoc
abstract mixin class $AppsStoreLinksCopyWith<$Res>  {
  factory $AppsStoreLinksCopyWith(AppsStoreLinks value, $Res Function(AppsStoreLinks) _then) = _$AppsStoreLinksCopyWithImpl;
@useResult
$Res call({
 String? googlePlayUrl, String? itunesUrl, String? androidMarketUrl
});




}
/// @nodoc
class _$AppsStoreLinksCopyWithImpl<$Res>
    implements $AppsStoreLinksCopyWith<$Res> {
  _$AppsStoreLinksCopyWithImpl(this._self, this._then);

  final AppsStoreLinks _self;
  final $Res Function(AppsStoreLinks) _then;

/// Create a copy of AppsStoreLinks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? googlePlayUrl = freezed,Object? itunesUrl = freezed,Object? androidMarketUrl = freezed,}) {
  return _then(AppsStoreLinks(
googlePlayUrl: freezed == googlePlayUrl ? _self.googlePlayUrl : googlePlayUrl // ignore: cast_nullable_to_non_nullable
as String?,itunesUrl: freezed == itunesUrl ? _self.itunesUrl : itunesUrl // ignore: cast_nullable_to_non_nullable
as String?,androidMarketUrl: freezed == androidMarketUrl ? _self.androidMarketUrl : androidMarketUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppsStoreLinks].
extension AppsStoreLinksPatterns on AppsStoreLinks {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppsStoreLinks value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppsStoreLinks() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppsStoreLinks value)  $default,){
final _that = this;
switch (_that) {
case _AppsStoreLinks():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppsStoreLinks value)?  $default,){
final _that = this;
switch (_that) {
case _AppsStoreLinks() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? googlePlayUrl,  String? itunesUrl,  String? androidMarketUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppsStoreLinks() when $default != null:
return $default(_that.googlePlayUrl,_that.itunesUrl,_that.androidMarketUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? googlePlayUrl,  String? itunesUrl,  String? androidMarketUrl)  $default,) {final _that = this;
switch (_that) {
case _AppsStoreLinks():
return $default(_that.googlePlayUrl,_that.itunesUrl,_that.androidMarketUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? googlePlayUrl,  String? itunesUrl,  String? androidMarketUrl)?  $default,) {final _that = this;
switch (_that) {
case _AppsStoreLinks() when $default != null:
return $default(_that.googlePlayUrl,_that.itunesUrl,_that.androidMarketUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppsStoreLinks with DiagnosticableTreeMixin implements AppsStoreLinks {
  const _AppsStoreLinks({this.googlePlayUrl, this.itunesUrl, this.androidMarketUrl});
  factory _AppsStoreLinks.fromJson(Map<String, dynamic> json) => _$AppsStoreLinksFromJson(json);

@override final  String? googlePlayUrl;
@override final  String? itunesUrl;
@override final  String? androidMarketUrl;

/// Create a copy of AppsStoreLinks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppsStoreLinksCopyWith<_AppsStoreLinks> get copyWith => __$AppsStoreLinksCopyWithImpl<_AppsStoreLinks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppsStoreLinksToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppsStoreLinks'))
    ..add(DiagnosticsProperty('googlePlayUrl', googlePlayUrl))..add(DiagnosticsProperty('itunesUrl', itunesUrl))..add(DiagnosticsProperty('androidMarketUrl', androidMarketUrl));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppsStoreLinks&&(identical(other.googlePlayUrl, googlePlayUrl) || other.googlePlayUrl == googlePlayUrl)&&(identical(other.itunesUrl, itunesUrl) || other.itunesUrl == itunesUrl)&&(identical(other.androidMarketUrl, androidMarketUrl) || other.androidMarketUrl == androidMarketUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,googlePlayUrl,itunesUrl,androidMarketUrl);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppsStoreLinks(googlePlayUrl: $googlePlayUrl, itunesUrl: $itunesUrl, androidMarketUrl: $androidMarketUrl)';
}


}

/// @nodoc
abstract mixin class _$AppsStoreLinksCopyWith<$Res> implements $AppsStoreLinksCopyWith<$Res> {
  factory _$AppsStoreLinksCopyWith(_AppsStoreLinks value, $Res Function(_AppsStoreLinks) _then) = __$AppsStoreLinksCopyWithImpl;
@override @useResult
$Res call({
 String? googlePlayUrl, String? itunesUrl, String? androidMarketUrl
});




}
/// @nodoc
class __$AppsStoreLinksCopyWithImpl<$Res>
    implements _$AppsStoreLinksCopyWith<$Res> {
  __$AppsStoreLinksCopyWithImpl(this._self, this._then);

  final _AppsStoreLinks _self;
  final $Res Function(_AppsStoreLinks) _then;

/// Create a copy of AppsStoreLinks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? googlePlayUrl = freezed,Object? itunesUrl = freezed,Object? androidMarketUrl = freezed,}) {
  return _then(_AppsStoreLinks(
googlePlayUrl: freezed == googlePlayUrl ? _self.googlePlayUrl : googlePlayUrl // ignore: cast_nullable_to_non_nullable
as String?,itunesUrl: freezed == itunesUrl ? _self.itunesUrl : itunesUrl // ignore: cast_nullable_to_non_nullable
as String?,androidMarketUrl: freezed == androidMarketUrl ? _self.androidMarketUrl : androidMarketUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Update implements DiagnosticableTreeMixin {

@VersionConverter() Version get version; bool get enabled;
/// Create a copy of Update
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCopyWith<Update> get copyWith => _$UpdateCopyWithImpl<Update>(this as Update, _$identity);

  /// Serializes this Update to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Update'))
    ..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('enabled', enabled));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Update&&(identical(other.version, version) || other.version == version)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,enabled);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Update(version: $version, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class $UpdateCopyWith<$Res>  {
  factory $UpdateCopyWith(Update value, $Res Function(Update) _then) = _$UpdateCopyWithImpl;
@useResult
$Res call({
@VersionConverter() Version version, bool enabled
});


$VersionCopyWith<$Res> get version;

}
/// @nodoc
class _$UpdateCopyWithImpl<$Res>
    implements $UpdateCopyWith<$Res> {
  _$UpdateCopyWithImpl(this._self, this._then);

  final Update _self;
  final $Res Function(Update) _then;

/// Create a copy of Update
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? enabled = null,}) {
  return _then(Update(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Update
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VersionCopyWith<$Res> get version {
  
  return $VersionCopyWith<$Res>(_self.version, (value) {
    return _then(_self.copyWith(version: value));
  });
}
}


/// Adds pattern-matching-related methods to [Update].
extension UpdatePatterns on Update {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Update value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Update() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Update value)  $default,){
final _that = this;
switch (_that) {
case _Update():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Update value)?  $default,){
final _that = this;
switch (_that) {
case _Update() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@VersionConverter()  Version version,  bool enabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Update() when $default != null:
return $default(_that.version,_that.enabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@VersionConverter()  Version version,  bool enabled)  $default,) {final _that = this;
switch (_that) {
case _Update():
return $default(_that.version,_that.enabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@VersionConverter()  Version version,  bool enabled)?  $default,) {final _that = this;
switch (_that) {
case _Update() when $default != null:
return $default(_that.version,_that.enabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Update extends Update with DiagnosticableTreeMixin {
  const _Update({@VersionConverter() required this.version, required this.enabled}): super._();
  factory _Update.fromJson(Map<String, dynamic> json) => _$UpdateFromJson(json);

@override@VersionConverter() final  Version version;
@override final  bool enabled;

/// Create a copy of Update
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCopyWith<_Update> get copyWith => __$UpdateCopyWithImpl<_Update>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Update'))
    ..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('enabled', enabled));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Update&&(identical(other.version, version) || other.version == version)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,enabled);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Update(version: $version, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$UpdateCopyWith<$Res> implements $UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) _then) = __$UpdateCopyWithImpl;
@override @useResult
$Res call({
@VersionConverter() Version version, bool enabled
});


@override $VersionCopyWith<$Res> get version;

}
/// @nodoc
class __$UpdateCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(this._self, this._then);

  final _Update _self;
  final $Res Function(_Update) _then;

/// Create a copy of Update
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? enabled = null,}) {
  return _then(_Update(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Update
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VersionCopyWith<$Res> get version {
  
  return $VersionCopyWith<$Res>(_self.version, (value) {
    return _then(_self.copyWith(version: value));
  });
}
}


/// @nodoc
mixin _$Version implements DiagnosticableTreeMixin {

 int get major; int get minor; int get revision; int? get buildNumber;
/// Create a copy of Version
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VersionCopyWith<Version> get copyWith => _$VersionCopyWithImpl<Version>(this as Version, _$identity);

  /// Serializes this Version to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Version'))
    ..add(DiagnosticsProperty('major', major))..add(DiagnosticsProperty('minor', minor))..add(DiagnosticsProperty('revision', revision))..add(DiagnosticsProperty('buildNumber', buildNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Version&&(identical(other.major, major) || other.major == major)&&(identical(other.minor, minor) || other.minor == minor)&&(identical(other.revision, revision) || other.revision == revision)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,major,minor,revision,buildNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Version(major: $major, minor: $minor, revision: $revision, buildNumber: $buildNumber)';
}


}

/// @nodoc
abstract mixin class $VersionCopyWith<$Res>  {
  factory $VersionCopyWith(Version value, $Res Function(Version) _then) = _$VersionCopyWithImpl;
@useResult
$Res call({
 int major, int minor, int revision, int? buildNumber
});




}
/// @nodoc
class _$VersionCopyWithImpl<$Res>
    implements $VersionCopyWith<$Res> {
  _$VersionCopyWithImpl(this._self, this._then);

  final Version _self;
  final $Res Function(Version) _then;

/// Create a copy of Version
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? major = null,Object? minor = null,Object? revision = null,Object? buildNumber = freezed,}) {
  return _then(Version(
major: null == major ? _self.major : major // ignore: cast_nullable_to_non_nullable
as int,minor: null == minor ? _self.minor : minor // ignore: cast_nullable_to_non_nullable
as int,revision: null == revision ? _self.revision : revision // ignore: cast_nullable_to_non_nullable
as int,buildNumber: freezed == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Version].
extension VersionPatterns on Version {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Version value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Version() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Version value)  $default,){
final _that = this;
switch (_that) {
case _Version():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Version value)?  $default,){
final _that = this;
switch (_that) {
case _Version() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int major,  int minor,  int revision,  int? buildNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Version() when $default != null:
return $default(_that.major,_that.minor,_that.revision,_that.buildNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int major,  int minor,  int revision,  int? buildNumber)  $default,) {final _that = this;
switch (_that) {
case _Version():
return $default(_that.major,_that.minor,_that.revision,_that.buildNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int major,  int minor,  int revision,  int? buildNumber)?  $default,) {final _that = this;
switch (_that) {
case _Version() when $default != null:
return $default(_that.major,_that.minor,_that.revision,_that.buildNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Version extends Version with DiagnosticableTreeMixin {
  const _Version({required this.major, required this.minor, required this.revision, this.buildNumber}): super._();
  factory _Version.fromJson(Map<String, dynamic> json) => _$VersionFromJson(json);

@override final  int major;
@override final  int minor;
@override final  int revision;
@override final  int? buildNumber;

/// Create a copy of Version
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VersionCopyWith<_Version> get copyWith => __$VersionCopyWithImpl<_Version>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VersionToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Version'))
    ..add(DiagnosticsProperty('major', major))..add(DiagnosticsProperty('minor', minor))..add(DiagnosticsProperty('revision', revision))..add(DiagnosticsProperty('buildNumber', buildNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Version&&(identical(other.major, major) || other.major == major)&&(identical(other.minor, minor) || other.minor == minor)&&(identical(other.revision, revision) || other.revision == revision)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,major,minor,revision,buildNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Version(major: $major, minor: $minor, revision: $revision, buildNumber: $buildNumber)';
}


}

/// @nodoc
abstract mixin class _$VersionCopyWith<$Res> implements $VersionCopyWith<$Res> {
  factory _$VersionCopyWith(_Version value, $Res Function(_Version) _then) = __$VersionCopyWithImpl;
@override @useResult
$Res call({
 int major, int minor, int revision, int? buildNumber
});




}
/// @nodoc
class __$VersionCopyWithImpl<$Res>
    implements _$VersionCopyWith<$Res> {
  __$VersionCopyWithImpl(this._self, this._then);

  final _Version _self;
  final $Res Function(_Version) _then;

/// Create a copy of Version
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? major = null,Object? minor = null,Object? revision = null,Object? buildNumber = freezed,}) {
  return _then(_Version(
major: null == major ? _self.major : major // ignore: cast_nullable_to_non_nullable
as int,minor: null == minor ? _self.minor : minor // ignore: cast_nullable_to_non_nullable
as int,revision: null == revision ? _self.revision : revision // ignore: cast_nullable_to_non_nullable
as int,buildNumber: freezed == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
