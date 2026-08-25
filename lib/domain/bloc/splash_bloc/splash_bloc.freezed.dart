// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SplashState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SplashState()';
}


}

/// @nodoc
class $SplashStateCopyWith<$Res>  {
$SplashStateCopyWith(SplashState _, $Res Function(SplashState) __);
}


/// Adds pattern-matching-related methods to [SplashState].
extension SplashStatePatterns on SplashState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SplashInitState value)?  init,TResult Function( SplashLoadingState value)?  loading,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SplashInitState() when init != null:
return init(_that);case SplashLoadingState() when loading != null:
return loading(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SplashInitState value)  init,required TResult Function( SplashLoadingState value)  loading,}){
final _that = this;
switch (_that) {
case SplashInitState():
return init(_that);case SplashLoadingState():
return loading(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SplashInitState value)?  init,TResult? Function( SplashLoadingState value)?  loading,}){
final _that = this;
switch (_that) {
case SplashInitState() when init != null:
return init(_that);case SplashLoadingState() when loading != null:
return loading(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  loading,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SplashInitState() when init != null:
return init();case SplashLoadingState() when loading != null:
return loading();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  loading,}) {final _that = this;
switch (_that) {
case SplashInitState():
return init();case SplashLoadingState():
return loading();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  loading,}) {final _that = this;
switch (_that) {
case SplashInitState() when init != null:
return init();case SplashLoadingState() when loading != null:
return loading();case _:
  return null;

}
}

}

/// @nodoc


class SplashInitState with DiagnosticableTreeMixin implements SplashState {
  const SplashInitState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SplashState.init'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashInitState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SplashState.init()';
}


}




/// @nodoc


class SplashLoadingState with DiagnosticableTreeMixin implements SplashState {
  const SplashLoadingState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SplashState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SplashState.loading()';
}


}




/// @nodoc
mixin _$SplashSr implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SplashSr'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SplashSr()';
}


}

/// @nodoc
class $SplashSrCopyWith<$Res>  {
$SplashSrCopyWith(SplashSr _, $Res Function(SplashSr) __);
}


/// Adds pattern-matching-related methods to [SplashSr].
extension SplashSrPatterns on SplashSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ReadySr value)?  ready,TResult Function( ErrorSr value)?  error,TResult Function( NeedUpdateSr value)?  needUpdate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ReadySr() when ready != null:
return ready(_that);case ErrorSr() when error != null:
return error(_that);case NeedUpdateSr() when needUpdate != null:
return needUpdate(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ReadySr value)  ready,required TResult Function( ErrorSr value)  error,required TResult Function( NeedUpdateSr value)  needUpdate,}){
final _that = this;
switch (_that) {
case ReadySr():
return ready(_that);case ErrorSr():
return error(_that);case NeedUpdateSr():
return needUpdate(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ReadySr value)?  ready,TResult? Function( ErrorSr value)?  error,TResult? Function( NeedUpdateSr value)?  needUpdate,}){
final _that = this;
switch (_that) {
case ReadySr() when ready != null:
return ready(_that);case ErrorSr() when error != null:
return error(_that);case NeedUpdateSr() when needUpdate != null:
return needUpdate(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? initialDeepLink)?  ready,TResult Function( String error)?  error,TResult Function()?  needUpdate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ReadySr() when ready != null:
return ready(_that.initialDeepLink);case ErrorSr() when error != null:
return error(_that.error);case NeedUpdateSr() when needUpdate != null:
return needUpdate();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? initialDeepLink)  ready,required TResult Function( String error)  error,required TResult Function()  needUpdate,}) {final _that = this;
switch (_that) {
case ReadySr():
return ready(_that.initialDeepLink);case ErrorSr():
return error(_that.error);case NeedUpdateSr():
return needUpdate();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? initialDeepLink)?  ready,TResult? Function( String error)?  error,TResult? Function()?  needUpdate,}) {final _that = this;
switch (_that) {
case ReadySr() when ready != null:
return ready(_that.initialDeepLink);case ErrorSr() when error != null:
return error(_that.error);case NeedUpdateSr() when needUpdate != null:
return needUpdate();case _:
  return null;

}
}

}

/// @nodoc


class ReadySr with DiagnosticableTreeMixin implements SplashSr {
  const ReadySr({this.initialDeepLink});
  

 final  String? initialDeepLink;

/// Create a copy of SplashSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReadySrCopyWith<ReadySr> get copyWith => _$ReadySrCopyWithImpl<ReadySr>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SplashSr.ready'))
    ..add(DiagnosticsProperty('initialDeepLink', initialDeepLink));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReadySr&&(identical(other.initialDeepLink, initialDeepLink) || other.initialDeepLink == initialDeepLink));
}


@override
int get hashCode => Object.hash(runtimeType,initialDeepLink);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SplashSr.ready(initialDeepLink: $initialDeepLink)';
}


}

/// @nodoc
abstract mixin class $ReadySrCopyWith<$Res> implements $SplashSrCopyWith<$Res> {
  factory $ReadySrCopyWith(ReadySr value, $Res Function(ReadySr) _then) = _$ReadySrCopyWithImpl;
@useResult
$Res call({
 String? initialDeepLink
});




}
/// @nodoc
class _$ReadySrCopyWithImpl<$Res>
    implements $ReadySrCopyWith<$Res> {
  _$ReadySrCopyWithImpl(this._self, this._then);

  final ReadySr _self;
  final $Res Function(ReadySr) _then;

/// Create a copy of SplashSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialDeepLink = freezed,}) {
  return _then(ReadySr(
initialDeepLink: freezed == initialDeepLink ? _self.initialDeepLink : initialDeepLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ErrorSr with DiagnosticableTreeMixin implements SplashSr {
  const ErrorSr(this.error);
  

 final  String error;

/// Create a copy of SplashSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorSrCopyWith<ErrorSr> get copyWith => _$ErrorSrCopyWithImpl<ErrorSr>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SplashSr.error'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SplashSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorSrCopyWith<$Res> implements $SplashSrCopyWith<$Res> {
  factory $ErrorSrCopyWith(ErrorSr value, $Res Function(ErrorSr) _then) = _$ErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorSrCopyWithImpl<$Res>
    implements $ErrorSrCopyWith<$Res> {
  _$ErrorSrCopyWithImpl(this._self, this._then);

  final ErrorSr _self;
  final $Res Function(ErrorSr) _then;

/// Create a copy of SplashSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NeedUpdateSr with DiagnosticableTreeMixin implements SplashSr {
  const NeedUpdateSr();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SplashSr.needUpdate'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NeedUpdateSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SplashSr.needUpdate()';
}


}




// dart format on
