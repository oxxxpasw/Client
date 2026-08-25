// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StoryState implements DiagnosticableTreeMixin {

 StoryStatus get status; StoryData? get story; Story? get current;
/// Create a copy of StoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoryStateCopyWith<StoryState> get copyWith => _$StoryStateCopyWithImpl<StoryState>(this as StoryState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StoryState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('story', story))..add(DiagnosticsProperty('current', current));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoryState&&(identical(other.status, status) || other.status == status)&&(identical(other.story, story) || other.story == story)&&(identical(other.current, current) || other.current == current));
}


@override
int get hashCode => Object.hash(runtimeType,status,story,current);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StoryState(status: $status, story: $story, current: $current)';
}


}

/// @nodoc
abstract mixin class $StoryStateCopyWith<$Res>  {
  factory $StoryStateCopyWith(StoryState value, $Res Function(StoryState) _then) = _$StoryStateCopyWithImpl;
@useResult
$Res call({
 StoryStatus status, StoryData? story, Story? current
});


$StoryDataCopyWith<$Res>? get story;$StoryCopyWith<$Res>? get current;

}
/// @nodoc
class _$StoryStateCopyWithImpl<$Res>
    implements $StoryStateCopyWith<$Res> {
  _$StoryStateCopyWithImpl(this._self, this._then);

  final StoryState _self;
  final $Res Function(StoryState) _then;

/// Create a copy of StoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? story = freezed,Object? current = freezed,}) {
  return _then(StoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StoryStatus,story: freezed == story ? _self.story : story // ignore: cast_nullable_to_non_nullable
as StoryData?,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as Story?,
  ));
}
/// Create a copy of StoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoryDataCopyWith<$Res>? get story {
    if (_self.story == null) {
    return null;
  }

  return $StoryDataCopyWith<$Res>(_self.story!, (value) {
    return _then(_self.copyWith(story: value));
  });
}/// Create a copy of StoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoryCopyWith<$Res>? get current {
    if (_self.current == null) {
    return null;
  }

  return $StoryCopyWith<$Res>(_self.current!, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoryState].
extension StoryStatePatterns on StoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoryState value)  $default,){
final _that = this;
switch (_that) {
case _StoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoryState value)?  $default,){
final _that = this;
switch (_that) {
case _StoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StoryStatus status,  StoryData? story,  Story? current)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoryState() when $default != null:
return $default(_that.status,_that.story,_that.current);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StoryStatus status,  StoryData? story,  Story? current)  $default,) {final _that = this;
switch (_that) {
case _StoryState():
return $default(_that.status,_that.story,_that.current);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StoryStatus status,  StoryData? story,  Story? current)?  $default,) {final _that = this;
switch (_that) {
case _StoryState() when $default != null:
return $default(_that.status,_that.story,_that.current);case _:
  return null;

}
}

}

/// @nodoc


class _StoryState with DiagnosticableTreeMixin implements StoryState {
  const _StoryState({this.status = StoryStatus.init, this.story, this.current});
  

@override@JsonKey() final  StoryStatus status;
@override final  StoryData? story;
@override final  Story? current;

/// Create a copy of StoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoryStateCopyWith<_StoryState> get copyWith => __$StoryStateCopyWithImpl<_StoryState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StoryState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('story', story))..add(DiagnosticsProperty('current', current));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoryState&&(identical(other.status, status) || other.status == status)&&(identical(other.story, story) || other.story == story)&&(identical(other.current, current) || other.current == current));
}


@override
int get hashCode => Object.hash(runtimeType,status,story,current);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StoryState(status: $status, story: $story, current: $current)';
}


}

/// @nodoc
abstract mixin class _$StoryStateCopyWith<$Res> implements $StoryStateCopyWith<$Res> {
  factory _$StoryStateCopyWith(_StoryState value, $Res Function(_StoryState) _then) = __$StoryStateCopyWithImpl;
@override @useResult
$Res call({
 StoryStatus status, StoryData? story, Story? current
});


@override $StoryDataCopyWith<$Res>? get story;@override $StoryCopyWith<$Res>? get current;

}
/// @nodoc
class __$StoryStateCopyWithImpl<$Res>
    implements _$StoryStateCopyWith<$Res> {
  __$StoryStateCopyWithImpl(this._self, this._then);

  final _StoryState _self;
  final $Res Function(_StoryState) _then;

/// Create a copy of StoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? story = freezed,Object? current = freezed,}) {
  return _then(_StoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StoryStatus,story: freezed == story ? _self.story : story // ignore: cast_nullable_to_non_nullable
as StoryData?,current: freezed == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as Story?,
  ));
}

/// Create a copy of StoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoryDataCopyWith<$Res>? get story {
    if (_self.story == null) {
    return null;
  }

  return $StoryDataCopyWith<$Res>(_self.story!, (value) {
    return _then(_self.copyWith(story: value));
  });
}/// Create a copy of StoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoryCopyWith<$Res>? get current {
    if (_self.current == null) {
    return null;
  }

  return $StoryCopyWith<$Res>(_self.current!, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}

/// @nodoc
mixin _$StorySr implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StorySr'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorySr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StorySr()';
}


}

/// @nodoc
class $StorySrCopyWith<$Res>  {
$StorySrCopyWith(StorySr _, $Res Function(StorySr) __);
}


/// Adds pattern-matching-related methods to [StorySr].
extension StorySrPatterns on StorySr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ErrorSr value)?  error,TResult Function( _NextStorySr value)?  nextStory,TResult Function( _PreviousStorySr value)?  previousStory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _NextStorySr() when nextStory != null:
return nextStory(_that);case _PreviousStorySr() when previousStory != null:
return previousStory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ErrorSr value)  error,required TResult Function( _NextStorySr value)  nextStory,required TResult Function( _PreviousStorySr value)  previousStory,}){
final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that);case _NextStorySr():
return nextStory(_that);case _PreviousStorySr():
return previousStory(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ErrorSr value)?  error,TResult? Function( _NextStorySr value)?  nextStory,TResult? Function( _PreviousStorySr value)?  previousStory,}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _NextStorySr() when nextStory != null:
return nextStory(_that);case _PreviousStorySr() when previousStory != null:
return previousStory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function()?  nextStory,TResult Function()?  previousStory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _NextStorySr() when nextStory != null:
return nextStory();case _PreviousStorySr() when previousStory != null:
return previousStory();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function()  nextStory,required TResult Function()  previousStory,}) {final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that.error);case _NextStorySr():
return nextStory();case _PreviousStorySr():
return previousStory();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function()?  nextStory,TResult? Function()?  previousStory,}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _NextStorySr() when nextStory != null:
return nextStory();case _PreviousStorySr() when previousStory != null:
return previousStory();case _:
  return null;

}
}

}

/// @nodoc


class _ErrorSr with DiagnosticableTreeMixin implements StorySr {
  const _ErrorSr(this.error);
  

 final  String error;

/// Create a copy of StorySr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorSrCopyWith<_ErrorSr> get copyWith => __$ErrorSrCopyWithImpl<_ErrorSr>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StorySr.error'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StorySr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorSrCopyWith<$Res> implements $StorySrCopyWith<$Res> {
  factory _$ErrorSrCopyWith(_ErrorSr value, $Res Function(_ErrorSr) _then) = __$ErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorSrCopyWithImpl<$Res>
    implements _$ErrorSrCopyWith<$Res> {
  __$ErrorSrCopyWithImpl(this._self, this._then);

  final _ErrorSr _self;
  final $Res Function(_ErrorSr) _then;

/// Create a copy of StorySr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _NextStorySr with DiagnosticableTreeMixin implements StorySr {
  const _NextStorySr();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StorySr.nextStory'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextStorySr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StorySr.nextStory()';
}


}




/// @nodoc


class _PreviousStorySr with DiagnosticableTreeMixin implements StorySr {
  const _PreviousStorySr();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StorySr.previousStory'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreviousStorySr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StorySr.previousStory()';
}


}




// dart format on
