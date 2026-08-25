// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StoryData {

 String get id; List<Story> get stories;
/// Create a copy of StoryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoryDataCopyWith<StoryData> get copyWith => _$StoryDataCopyWithImpl<StoryData>(this as StoryData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoryData&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.stories, stories));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(stories));

@override
String toString() {
  return 'StoryData(id: $id, stories: $stories)';
}


}

/// @nodoc
abstract mixin class $StoryDataCopyWith<$Res>  {
  factory $StoryDataCopyWith(StoryData value, $Res Function(StoryData) _then) = _$StoryDataCopyWithImpl;
@useResult
$Res call({
 String id, List<Story> stories
});




}
/// @nodoc
class _$StoryDataCopyWithImpl<$Res>
    implements $StoryDataCopyWith<$Res> {
  _$StoryDataCopyWithImpl(this._self, this._then);

  final StoryData _self;
  final $Res Function(StoryData) _then;

/// Create a copy of StoryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? stories = null,}) {
  return _then(StoryData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,stories: null == stories ? _self.stories : stories // ignore: cast_nullable_to_non_nullable
as List<Story>,
  ));
}

}


/// Adds pattern-matching-related methods to [StoryData].
extension StoryDataPatterns on StoryData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoryData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoryData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoryData value)  $default,){
final _that = this;
switch (_that) {
case _StoryData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoryData value)?  $default,){
final _that = this;
switch (_that) {
case _StoryData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<Story> stories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoryData() when $default != null:
return $default(_that.id,_that.stories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<Story> stories)  $default,) {final _that = this;
switch (_that) {
case _StoryData():
return $default(_that.id,_that.stories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<Story> stories)?  $default,) {final _that = this;
switch (_that) {
case _StoryData() when $default != null:
return $default(_that.id,_that.stories);case _:
  return null;

}
}

}

/// @nodoc


class _StoryData extends StoryData {
  const _StoryData({required this.id,  List<Story> stories = const []}): _stories = stories,super._();
  

@override final  String id;
 final  List<Story> _stories;
@override@JsonKey() List<Story> get stories {
  if (_stories is EqualUnmodifiableListView) return _stories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stories);
}


/// Create a copy of StoryData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoryDataCopyWith<_StoryData> get copyWith => __$StoryDataCopyWithImpl<_StoryData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoryData&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._stories, _stories));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_stories));

@override
String toString() {
  return 'StoryData(id: $id, stories: $stories)';
}


}

/// @nodoc
abstract mixin class _$StoryDataCopyWith<$Res> implements $StoryDataCopyWith<$Res> {
  factory _$StoryDataCopyWith(_StoryData value, $Res Function(_StoryData) _then) = __$StoryDataCopyWithImpl;
@override @useResult
$Res call({
 String id, List<Story> stories
});




}
/// @nodoc
class __$StoryDataCopyWithImpl<$Res>
    implements _$StoryDataCopyWith<$Res> {
  __$StoryDataCopyWithImpl(this._self, this._then);

  final _StoryData _self;
  final $Res Function(_StoryData) _then;

/// Create a copy of StoryData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? stories = null,}) {
  return _then(_StoryData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,stories: null == stories ? _self._stories : stories // ignore: cast_nullable_to_non_nullable
as List<Story>,
  ));
}


}

/// @nodoc
mixin _$Story {

 Uint8List get image; Element get html; String? get imageUrl;
/// Create a copy of Story
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoryCopyWith<Story> get copyWith => _$StoryCopyWithImpl<Story>(this as Story, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Story&&const DeepCollectionEquality().equals(other.image, image)&&(identical(other.html, html) || other.html == html)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(image),html,imageUrl);

@override
String toString() {
  return 'Story(image: $image, html: $html, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $StoryCopyWith<$Res>  {
  factory $StoryCopyWith(Story value, $Res Function(Story) _then) = _$StoryCopyWithImpl;
@useResult
$Res call({
 Uint8List image, Element html, String? imageUrl
});




}
/// @nodoc
class _$StoryCopyWithImpl<$Res>
    implements $StoryCopyWith<$Res> {
  _$StoryCopyWithImpl(this._self, this._then);

  final Story _self;
  final $Res Function(Story) _then;

/// Create a copy of Story
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = null,Object? html = null,Object? imageUrl = freezed,}) {
  return _then(Story(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as Element,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Story].
extension StoryPatterns on Story {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Story value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Story() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Story value)  $default,){
final _that = this;
switch (_that) {
case _Story():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Story value)?  $default,){
final _that = this;
switch (_that) {
case _Story() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Uint8List image,  Element html,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Story() when $default != null:
return $default(_that.image,_that.html,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Uint8List image,  Element html,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _Story():
return $default(_that.image,_that.html,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Uint8List image,  Element html,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _Story() when $default != null:
return $default(_that.image,_that.html,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _Story implements Story {
  const _Story({required this.image, required this.html, this.imageUrl});
  

@override final  Uint8List image;
@override final  Element html;
@override final  String? imageUrl;

/// Create a copy of Story
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoryCopyWith<_Story> get copyWith => __$StoryCopyWithImpl<_Story>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Story&&const DeepCollectionEquality().equals(other.image, image)&&(identical(other.html, html) || other.html == html)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(image),html,imageUrl);

@override
String toString() {
  return 'Story(image: $image, html: $html, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$StoryCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$StoryCopyWith(_Story value, $Res Function(_Story) _then) = __$StoryCopyWithImpl;
@override @useResult
$Res call({
 Uint8List image, Element html, String? imageUrl
});




}
/// @nodoc
class __$StoryCopyWithImpl<$Res>
    implements _$StoryCopyWith<$Res> {
  __$StoryCopyWithImpl(this._self, this._then);

  final _Story _self;
  final $Res Function(_Story) _then;

/// Create a copy of Story
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = null,Object? html = null,Object? imageUrl = freezed,}) {
  return _then(_Story(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as Element,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
