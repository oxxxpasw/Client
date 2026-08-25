// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditProductState {

 EditProductStateStatus get status; Group? get group; Product? get product;
/// Create a copy of EditProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProductStateCopyWith<EditProductState> get copyWith => _$EditProductStateCopyWithImpl<EditProductState>(this as EditProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProductState&&(identical(other.status, status) || other.status == status)&&(identical(other.group, group) || other.group == group)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,status,group,product);

@override
String toString() {
  return 'EditProductState(status: $status, group: $group, product: $product)';
}


}

/// @nodoc
abstract mixin class $EditProductStateCopyWith<$Res>  {
  factory $EditProductStateCopyWith(EditProductState value, $Res Function(EditProductState) _then) = _$EditProductStateCopyWithImpl;
@useResult
$Res call({
 EditProductStateStatus status, Group? group, Product? product
});


$GroupCopyWith<$Res>? get group;$ProductCopyWith<$Res>? get product;

}
/// @nodoc
class _$EditProductStateCopyWithImpl<$Res>
    implements $EditProductStateCopyWith<$Res> {
  _$EditProductStateCopyWithImpl(this._self, this._then);

  final EditProductState _self;
  final $Res Function(EditProductState) _then;

/// Create a copy of EditProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? group = freezed,Object? product = freezed,}) {
  return _then(EditProductState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EditProductStateStatus,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as Group?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,
  ));
}
/// Create a copy of EditProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupCopyWith<$Res>? get group {
    if (_self.group == null) {
    return null;
  }

  return $GroupCopyWith<$Res>(_self.group!, (value) {
    return _then(_self.copyWith(group: value));
  });
}/// Create a copy of EditProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [EditProductState].
extension EditProductStatePatterns on EditProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditProductState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditProductState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditProductState value)  $default,){
final _that = this;
switch (_that) {
case _EditProductState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditProductState value)?  $default,){
final _that = this;
switch (_that) {
case _EditProductState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EditProductStateStatus status,  Group? group,  Product? product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditProductState() when $default != null:
return $default(_that.status,_that.group,_that.product);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EditProductStateStatus status,  Group? group,  Product? product)  $default,) {final _that = this;
switch (_that) {
case _EditProductState():
return $default(_that.status,_that.group,_that.product);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EditProductStateStatus status,  Group? group,  Product? product)?  $default,) {final _that = this;
switch (_that) {
case _EditProductState() when $default != null:
return $default(_that.status,_that.group,_that.product);case _:
  return null;

}
}

}

/// @nodoc


class _EditProductState implements EditProductState {
  const _EditProductState({this.status = EditProductStateStatus.loading, this.group, this.product});
  

@override@JsonKey() final  EditProductStateStatus status;
@override final  Group? group;
@override final  Product? product;

/// Create a copy of EditProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditProductStateCopyWith<_EditProductState> get copyWith => __$EditProductStateCopyWithImpl<_EditProductState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProductState&&(identical(other.status, status) || other.status == status)&&(identical(other.group, group) || other.group == group)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,status,group,product);

@override
String toString() {
  return 'EditProductState(status: $status, group: $group, product: $product)';
}


}

/// @nodoc
abstract mixin class _$EditProductStateCopyWith<$Res> implements $EditProductStateCopyWith<$Res> {
  factory _$EditProductStateCopyWith(_EditProductState value, $Res Function(_EditProductState) _then) = __$EditProductStateCopyWithImpl;
@override @useResult
$Res call({
 EditProductStateStatus status, Group? group, Product? product
});


@override $GroupCopyWith<$Res>? get group;@override $ProductCopyWith<$Res>? get product;

}
/// @nodoc
class __$EditProductStateCopyWithImpl<$Res>
    implements _$EditProductStateCopyWith<$Res> {
  __$EditProductStateCopyWithImpl(this._self, this._then);

  final _EditProductState _self;
  final $Res Function(_EditProductState) _then;

/// Create a copy of EditProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? group = freezed,Object? product = freezed,}) {
  return _then(_EditProductState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EditProductStateStatus,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as Group?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,
  ));
}

/// Create a copy of EditProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupCopyWith<$Res>? get group {
    if (_self.group == null) {
    return null;
  }

  return $GroupCopyWith<$Res>(_self.group!, (value) {
    return _then(_self.copyWith(group: value));
  });
}/// Create a copy of EditProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc
mixin _$EditProductSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProductSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProductSr()';
}


}

/// @nodoc
class $EditProductSrCopyWith<$Res>  {
$EditProductSrCopyWith(EditProductSr _, $Res Function(EditProductSr) __);
}


/// Adds pattern-matching-related methods to [EditProductSr].
extension EditProductSrPatterns on EditProductSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ErrorSr value)?  error,TResult Function( _AddedSr value)?  added,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _AddedSr() when added != null:
return added(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ErrorSr value)  error,required TResult Function( _AddedSr value)  added,}){
final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that);case _AddedSr():
return added(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ErrorSr value)?  error,TResult? Function( _AddedSr value)?  added,}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _AddedSr() when added != null:
return added(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function()?  added,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _AddedSr() when added != null:
return added();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function()  added,}) {final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that.error);case _AddedSr():
return added();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function()?  added,}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _AddedSr() when added != null:
return added();case _:
  return null;

}
}

}

/// @nodoc


class _ErrorSr implements EditProductSr {
  const _ErrorSr(this.error);
  

 final  String error;

/// Create a copy of EditProductSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorSrCopyWith<_ErrorSr> get copyWith => __$ErrorSrCopyWithImpl<_ErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'EditProductSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorSrCopyWith<$Res> implements $EditProductSrCopyWith<$Res> {
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

/// Create a copy of EditProductSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddedSr implements EditProductSr {
  const _AddedSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddedSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProductSr.added()';
}


}




// dart format on
