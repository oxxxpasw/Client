// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiResponse<Error,Result> implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApiResponse<$Error, $Result>'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponse<Error, Result>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApiResponse<$Error, $Result>()';
}


}

/// @nodoc
class $ApiResponseCopyWith<Error,Result,$Res>  {
$ApiResponseCopyWith(ApiResponse<Error, Result> _, $Res Function(ApiResponse<Error, Result>) __);
}


/// Adds pattern-matching-related methods to [ApiResponse].
extension ApiResponsePatterns<Error,Result> on ApiResponse<Error, Result> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ApiResponseError<Error, Result> value)?  error,TResult Function( _ApiResponseSuccess<Error, Result> value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiResponseError() when error != null:
return error(_that);case _ApiResponseSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ApiResponseError<Error, Result> value)  error,required TResult Function( _ApiResponseSuccess<Error, Result> value)  success,}){
final _that = this;
switch (_that) {
case _ApiResponseError():
return error(_that);case _ApiResponseSuccess():
return success(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ApiResponseError<Error, Result> value)?  error,TResult? Function( _ApiResponseSuccess<Error, Result> value)?  success,}){
final _that = this;
switch (_that) {
case _ApiResponseError() when error != null:
return error(_that);case _ApiResponseSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Error error)?  error,TResult Function( Result result)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiResponseError() when error != null:
return error(_that.error);case _ApiResponseSuccess() when success != null:
return success(_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Error error)  error,required TResult Function( Result result)  success,}) {final _that = this;
switch (_that) {
case _ApiResponseError():
return error(_that.error);case _ApiResponseSuccess():
return success(_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Error error)?  error,TResult? Function( Result result)?  success,}) {final _that = this;
switch (_that) {
case _ApiResponseError() when error != null:
return error(_that.error);case _ApiResponseSuccess() when success != null:
return success(_that.result);case _:
  return null;

}
}

}

/// @nodoc


class _ApiResponseError<Error,Result> extends ApiResponse<Error, Result> with DiagnosticableTreeMixin {
  const _ApiResponseError(this.error): super._();
  

 final  Error error;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiResponseErrorCopyWith<Error, Result, _ApiResponseError<Error, Result>> get copyWith => __$ApiResponseErrorCopyWithImpl<Error, Result, _ApiResponseError<Error, Result>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApiResponse<$Error, $Result>.error'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiResponseError<Error, Result>&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApiResponse<$Error, $Result>.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ApiResponseErrorCopyWith<Error,Result,$Res> implements $ApiResponseCopyWith<Error, Result, $Res> {
  factory _$ApiResponseErrorCopyWith(_ApiResponseError<Error, Result> value, $Res Function(_ApiResponseError<Error, Result>) _then) = __$ApiResponseErrorCopyWithImpl;
@useResult
$Res call({
 Error error
});




}
/// @nodoc
class __$ApiResponseErrorCopyWithImpl<Error,Result,$Res>
    implements _$ApiResponseErrorCopyWith<Error, Result, $Res> {
  __$ApiResponseErrorCopyWithImpl(this._self, this._then);

  final _ApiResponseError<Error, Result> _self;
  final $Res Function(_ApiResponseError<Error, Result>) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(_ApiResponseError<Error, Result>(
freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Error,
  ));
}


}

/// @nodoc


class _ApiResponseSuccess<Error,Result> extends ApiResponse<Error, Result> with DiagnosticableTreeMixin {
  const _ApiResponseSuccess(this.result): super._();
  

 final  Result result;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiResponseSuccessCopyWith<Error, Result, _ApiResponseSuccess<Error, Result>> get copyWith => __$ApiResponseSuccessCopyWithImpl<Error, Result, _ApiResponseSuccess<Error, Result>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApiResponse<$Error, $Result>.success'))
    ..add(DiagnosticsProperty('result', result));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiResponseSuccess<Error, Result>&&const DeepCollectionEquality().equals(other.result, result));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(result));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApiResponse<$Error, $Result>.success(result: $result)';
}


}

/// @nodoc
abstract mixin class _$ApiResponseSuccessCopyWith<Error,Result,$Res> implements $ApiResponseCopyWith<Error, Result, $Res> {
  factory _$ApiResponseSuccessCopyWith(_ApiResponseSuccess<Error, Result> value, $Res Function(_ApiResponseSuccess<Error, Result>) _then) = __$ApiResponseSuccessCopyWithImpl;
@useResult
$Res call({
 Result result
});




}
/// @nodoc
class __$ApiResponseSuccessCopyWithImpl<Error,Result,$Res>
    implements _$ApiResponseSuccessCopyWith<Error, Result, $Res> {
  __$ApiResponseSuccessCopyWithImpl(this._self, this._then);

  final _ApiResponseSuccess<Error, Result> _self;
  final $Res Function(_ApiResponseSuccess<Error, Result>) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? result = freezed,}) {
  return _then(_ApiResponseSuccess<Error, Result>(
freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as Result,
  ));
}


}

// dart format on
