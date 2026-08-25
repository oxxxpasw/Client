// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dio_error_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommonResponseError<Custom> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonResponseError<Custom>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommonResponseError<$Custom>()';
}


}

/// @nodoc
class $CommonResponseErrorCopyWith<Custom,$Res>  {
$CommonResponseErrorCopyWith(CommonResponseError<Custom> _, $Res Function(CommonResponseError<Custom>) __);
}


/// Adds pattern-matching-related methods to [CommonResponseError].
extension CommonResponseErrorPatterns<Custom> on CommonResponseError<Custom> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _NoNetwork<Custom> value)?  noNetwork,TResult Function( _UnAuthorized<Custom> value)?  unAuthorized,TResult Function( _Unconfirmed<Custom> value)?  unconfirmed,TResult Function( _TooManyRequests<Custom> value)?  tooManyRequests,TResult Function( _CustomError<Custom> value)?  customError,TResult Function( _UndefinedError<Custom> value)?  undefinedError,TResult Function( _StoreNotSelected<Custom> value)?  storeNotSelected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoNetwork() when noNetwork != null:
return noNetwork(_that);case _UnAuthorized() when unAuthorized != null:
return unAuthorized(_that);case _Unconfirmed() when unconfirmed != null:
return unconfirmed(_that);case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that);case _CustomError() when customError != null:
return customError(_that);case _UndefinedError() when undefinedError != null:
return undefinedError(_that);case _StoreNotSelected() when storeNotSelected != null:
return storeNotSelected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _NoNetwork<Custom> value)  noNetwork,required TResult Function( _UnAuthorized<Custom> value)  unAuthorized,required TResult Function( _Unconfirmed<Custom> value)  unconfirmed,required TResult Function( _TooManyRequests<Custom> value)  tooManyRequests,required TResult Function( _CustomError<Custom> value)  customError,required TResult Function( _UndefinedError<Custom> value)  undefinedError,required TResult Function( _StoreNotSelected<Custom> value)  storeNotSelected,}){
final _that = this;
switch (_that) {
case _NoNetwork():
return noNetwork(_that);case _UnAuthorized():
return unAuthorized(_that);case _Unconfirmed():
return unconfirmed(_that);case _TooManyRequests():
return tooManyRequests(_that);case _CustomError():
return customError(_that);case _UndefinedError():
return undefinedError(_that);case _StoreNotSelected():
return storeNotSelected(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _NoNetwork<Custom> value)?  noNetwork,TResult? Function( _UnAuthorized<Custom> value)?  unAuthorized,TResult? Function( _Unconfirmed<Custom> value)?  unconfirmed,TResult? Function( _TooManyRequests<Custom> value)?  tooManyRequests,TResult? Function( _CustomError<Custom> value)?  customError,TResult? Function( _UndefinedError<Custom> value)?  undefinedError,TResult? Function( _StoreNotSelected<Custom> value)?  storeNotSelected,}){
final _that = this;
switch (_that) {
case _NoNetwork() when noNetwork != null:
return noNetwork(_that);case _UnAuthorized() when unAuthorized != null:
return unAuthorized(_that);case _Unconfirmed() when unconfirmed != null:
return unconfirmed(_that);case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that);case _CustomError() when customError != null:
return customError(_that);case _UndefinedError() when undefinedError != null:
return undefinedError(_that);case _StoreNotSelected() when storeNotSelected != null:
return storeNotSelected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  noNetwork,TResult Function()?  unAuthorized,TResult Function()?  unconfirmed,TResult Function()?  tooManyRequests,TResult Function( Custom customError)?  customError,TResult Function( Object? errorObject)?  undefinedError,TResult Function()?  storeNotSelected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoNetwork() when noNetwork != null:
return noNetwork();case _UnAuthorized() when unAuthorized != null:
return unAuthorized();case _Unconfirmed() when unconfirmed != null:
return unconfirmed();case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests();case _CustomError() when customError != null:
return customError(_that.customError);case _UndefinedError() when undefinedError != null:
return undefinedError(_that.errorObject);case _StoreNotSelected() when storeNotSelected != null:
return storeNotSelected();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  noNetwork,required TResult Function()  unAuthorized,required TResult Function()  unconfirmed,required TResult Function()  tooManyRequests,required TResult Function( Custom customError)  customError,required TResult Function( Object? errorObject)  undefinedError,required TResult Function()  storeNotSelected,}) {final _that = this;
switch (_that) {
case _NoNetwork():
return noNetwork();case _UnAuthorized():
return unAuthorized();case _Unconfirmed():
return unconfirmed();case _TooManyRequests():
return tooManyRequests();case _CustomError():
return customError(_that.customError);case _UndefinedError():
return undefinedError(_that.errorObject);case _StoreNotSelected():
return storeNotSelected();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  noNetwork,TResult? Function()?  unAuthorized,TResult? Function()?  unconfirmed,TResult? Function()?  tooManyRequests,TResult? Function( Custom customError)?  customError,TResult? Function( Object? errorObject)?  undefinedError,TResult? Function()?  storeNotSelected,}) {final _that = this;
switch (_that) {
case _NoNetwork() when noNetwork != null:
return noNetwork();case _UnAuthorized() when unAuthorized != null:
return unAuthorized();case _Unconfirmed() when unconfirmed != null:
return unconfirmed();case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests();case _CustomError() when customError != null:
return customError(_that.customError);case _UndefinedError() when undefinedError != null:
return undefinedError(_that.errorObject);case _StoreNotSelected() when storeNotSelected != null:
return storeNotSelected();case _:
  return null;

}
}

}

/// @nodoc


class _NoNetwork<Custom> extends CommonResponseError<Custom> {
  const _NoNetwork(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoNetwork<Custom>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommonResponseError<$Custom>.noNetwork()';
}


}




/// @nodoc


class _UnAuthorized<Custom> extends CommonResponseError<Custom> {
  const _UnAuthorized(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnAuthorized<Custom>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommonResponseError<$Custom>.unAuthorized()';
}


}




/// @nodoc


class _Unconfirmed<Custom> extends CommonResponseError<Custom> {
  const _Unconfirmed(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unconfirmed<Custom>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommonResponseError<$Custom>.unconfirmed()';
}


}




/// @nodoc


class _TooManyRequests<Custom> extends CommonResponseError<Custom> {
  const _TooManyRequests(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TooManyRequests<Custom>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommonResponseError<$Custom>.tooManyRequests()';
}


}




/// @nodoc


class _CustomError<Custom> extends CommonResponseError<Custom> {
  const _CustomError(this.customError): super._();
  

 final  Custom customError;

/// Create a copy of CommonResponseError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomErrorCopyWith<Custom, _CustomError<Custom>> get copyWith => __$CustomErrorCopyWithImpl<Custom, _CustomError<Custom>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomError<Custom>&&const DeepCollectionEquality().equals(other.customError, customError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(customError));

@override
String toString() {
  return 'CommonResponseError<$Custom>.customError(customError: $customError)';
}


}

/// @nodoc
abstract mixin class _$CustomErrorCopyWith<Custom,$Res> implements $CommonResponseErrorCopyWith<Custom, $Res> {
  factory _$CustomErrorCopyWith(_CustomError<Custom> value, $Res Function(_CustomError<Custom>) _then) = __$CustomErrorCopyWithImpl;
@useResult
$Res call({
 Custom customError
});




}
/// @nodoc
class __$CustomErrorCopyWithImpl<Custom,$Res>
    implements _$CustomErrorCopyWith<Custom, $Res> {
  __$CustomErrorCopyWithImpl(this._self, this._then);

  final _CustomError<Custom> _self;
  final $Res Function(_CustomError<Custom>) _then;

/// Create a copy of CommonResponseError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? customError = freezed,}) {
  return _then(_CustomError<Custom>(
freezed == customError ? _self.customError : customError // ignore: cast_nullable_to_non_nullable
as Custom,
  ));
}


}

/// @nodoc


class _UndefinedError<Custom> extends CommonResponseError<Custom> {
  const _UndefinedError(this.errorObject): super._();
  

 final  Object? errorObject;

/// Create a copy of CommonResponseError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UndefinedErrorCopyWith<Custom, _UndefinedError<Custom>> get copyWith => __$UndefinedErrorCopyWithImpl<Custom, _UndefinedError<Custom>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UndefinedError<Custom>&&const DeepCollectionEquality().equals(other.errorObject, errorObject));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(errorObject));

@override
String toString() {
  return 'CommonResponseError<$Custom>.undefinedError(errorObject: $errorObject)';
}


}

/// @nodoc
abstract mixin class _$UndefinedErrorCopyWith<Custom,$Res> implements $CommonResponseErrorCopyWith<Custom, $Res> {
  factory _$UndefinedErrorCopyWith(_UndefinedError<Custom> value, $Res Function(_UndefinedError<Custom>) _then) = __$UndefinedErrorCopyWithImpl;
@useResult
$Res call({
 Object? errorObject
});




}
/// @nodoc
class __$UndefinedErrorCopyWithImpl<Custom,$Res>
    implements _$UndefinedErrorCopyWith<Custom, $Res> {
  __$UndefinedErrorCopyWithImpl(this._self, this._then);

  final _UndefinedError<Custom> _self;
  final $Res Function(_UndefinedError<Custom>) _then;

/// Create a copy of CommonResponseError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorObject = freezed,}) {
  return _then(_UndefinedError<Custom>(
freezed == errorObject ? _self.errorObject : errorObject ,
  ));
}


}

/// @nodoc


class _StoreNotSelected<Custom> extends CommonResponseError<Custom> {
  const _StoreNotSelected(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreNotSelected<Custom>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommonResponseError<$Custom>.storeNotSelected()';
}


}





/// @nodoc
mixin _$DefaultApiError {

 String get msg; String get code;
/// Create a copy of DefaultApiError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DefaultApiErrorCopyWith<DefaultApiError> get copyWith => _$DefaultApiErrorCopyWithImpl<DefaultApiError>(this as DefaultApiError, _$identity);

  /// Serializes this DefaultApiError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefaultApiError&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,msg,code);

@override
String toString() {
  return 'DefaultApiError(msg: $msg, code: $code)';
}


}

/// @nodoc
abstract mixin class $DefaultApiErrorCopyWith<$Res>  {
  factory $DefaultApiErrorCopyWith(DefaultApiError value, $Res Function(DefaultApiError) _then) = _$DefaultApiErrorCopyWithImpl;
@useResult
$Res call({
 String msg, String code
});




}
/// @nodoc
class _$DefaultApiErrorCopyWithImpl<$Res>
    implements $DefaultApiErrorCopyWith<$Res> {
  _$DefaultApiErrorCopyWithImpl(this._self, this._then);

  final DefaultApiError _self;
  final $Res Function(DefaultApiError) _then;

/// Create a copy of DefaultApiError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? msg = null,Object? code = null,}) {
  return _then(DefaultApiError(
msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DefaultApiError].
extension DefaultApiErrorPatterns on DefaultApiError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DefaultApiError value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DefaultApiError() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DefaultApiError value)  $default,){
final _that = this;
switch (_that) {
case _DefaultApiError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DefaultApiError value)?  $default,){
final _that = this;
switch (_that) {
case _DefaultApiError() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String msg,  String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DefaultApiError() when $default != null:
return $default(_that.msg,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String msg,  String code)  $default,) {final _that = this;
switch (_that) {
case _DefaultApiError():
return $default(_that.msg,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String msg,  String code)?  $default,) {final _that = this;
switch (_that) {
case _DefaultApiError() when $default != null:
return $default(_that.msg,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DefaultApiError implements DefaultApiError {
  const _DefaultApiError({required this.msg, required this.code});
  factory _DefaultApiError.fromJson(Map<String, dynamic> json) => _$DefaultApiErrorFromJson(json);

@override final  String msg;
@override final  String code;

/// Create a copy of DefaultApiError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DefaultApiErrorCopyWith<_DefaultApiError> get copyWith => __$DefaultApiErrorCopyWithImpl<_DefaultApiError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DefaultApiErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DefaultApiError&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,msg,code);

@override
String toString() {
  return 'DefaultApiError(msg: $msg, code: $code)';
}


}

/// @nodoc
abstract mixin class _$DefaultApiErrorCopyWith<$Res> implements $DefaultApiErrorCopyWith<$Res> {
  factory _$DefaultApiErrorCopyWith(_DefaultApiError value, $Res Function(_DefaultApiError) _then) = __$DefaultApiErrorCopyWithImpl;
@override @useResult
$Res call({
 String msg, String code
});




}
/// @nodoc
class __$DefaultApiErrorCopyWithImpl<$Res>
    implements _$DefaultApiErrorCopyWith<$Res> {
  __$DefaultApiErrorCopyWithImpl(this._self, this._then);

  final _DefaultApiError _self;
  final $Res Function(_DefaultApiError) _then;

/// Create a copy of DefaultApiError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = null,Object? code = null,}) {
  return _then(_DefaultApiError(
msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
