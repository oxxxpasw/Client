// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StoreDetailsState {

 StoreDetailsStateStatus get status; BonusDetailsByStore? get bonusDetails; Store? get store;
/// Create a copy of StoreDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreDetailsStateCopyWith<StoreDetailsState> get copyWith => _$StoreDetailsStateCopyWithImpl<StoreDetailsState>(this as StoreDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.bonusDetails, bonusDetails) || other.bonusDetails == bonusDetails)&&(identical(other.store, store) || other.store == store));
}


@override
int get hashCode => Object.hash(runtimeType,status,bonusDetails,store);

@override
String toString() {
  return 'StoreDetailsState(status: $status, bonusDetails: $bonusDetails, store: $store)';
}


}

/// @nodoc
abstract mixin class $StoreDetailsStateCopyWith<$Res>  {
  factory $StoreDetailsStateCopyWith(StoreDetailsState value, $Res Function(StoreDetailsState) _then) = _$StoreDetailsStateCopyWithImpl;
@useResult
$Res call({
 StoreDetailsStateStatus status, BonusDetailsByStore? bonusDetails, Store? store
});


$BonusDetailsByStoreCopyWith<$Res>? get bonusDetails;$StoreCopyWith<$Res>? get store;

}
/// @nodoc
class _$StoreDetailsStateCopyWithImpl<$Res>
    implements $StoreDetailsStateCopyWith<$Res> {
  _$StoreDetailsStateCopyWithImpl(this._self, this._then);

  final StoreDetailsState _self;
  final $Res Function(StoreDetailsState) _then;

/// Create a copy of StoreDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? bonusDetails = freezed,Object? store = freezed,}) {
  return _then(StoreDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StoreDetailsStateStatus,bonusDetails: freezed == bonusDetails ? _self.bonusDetails : bonusDetails // ignore: cast_nullable_to_non_nullable
as BonusDetailsByStore?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,
  ));
}
/// Create a copy of StoreDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BonusDetailsByStoreCopyWith<$Res>? get bonusDetails {
    if (_self.bonusDetails == null) {
    return null;
  }

  return $BonusDetailsByStoreCopyWith<$Res>(_self.bonusDetails!, (value) {
    return _then(_self.copyWith(bonusDetails: value));
  });
}/// Create a copy of StoreDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreDetailsState].
extension StoreDetailsStatePatterns on StoreDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _StoreDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _StoreDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StoreDetailsStateStatus status,  BonusDetailsByStore? bonusDetails,  Store? store)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreDetailsState() when $default != null:
return $default(_that.status,_that.bonusDetails,_that.store);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StoreDetailsStateStatus status,  BonusDetailsByStore? bonusDetails,  Store? store)  $default,) {final _that = this;
switch (_that) {
case _StoreDetailsState():
return $default(_that.status,_that.bonusDetails,_that.store);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StoreDetailsStateStatus status,  BonusDetailsByStore? bonusDetails,  Store? store)?  $default,) {final _that = this;
switch (_that) {
case _StoreDetailsState() when $default != null:
return $default(_that.status,_that.bonusDetails,_that.store);case _:
  return null;

}
}

}

/// @nodoc


class _StoreDetailsState implements StoreDetailsState {
  const _StoreDetailsState({this.status = StoreDetailsStateStatus.init, this.bonusDetails, this.store});
  

@override@JsonKey() final  StoreDetailsStateStatus status;
@override final  BonusDetailsByStore? bonusDetails;
@override final  Store? store;

/// Create a copy of StoreDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreDetailsStateCopyWith<_StoreDetailsState> get copyWith => __$StoreDetailsStateCopyWithImpl<_StoreDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.bonusDetails, bonusDetails) || other.bonusDetails == bonusDetails)&&(identical(other.store, store) || other.store == store));
}


@override
int get hashCode => Object.hash(runtimeType,status,bonusDetails,store);

@override
String toString() {
  return 'StoreDetailsState(status: $status, bonusDetails: $bonusDetails, store: $store)';
}


}

/// @nodoc
abstract mixin class _$StoreDetailsStateCopyWith<$Res> implements $StoreDetailsStateCopyWith<$Res> {
  factory _$StoreDetailsStateCopyWith(_StoreDetailsState value, $Res Function(_StoreDetailsState) _then) = __$StoreDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 StoreDetailsStateStatus status, BonusDetailsByStore? bonusDetails, Store? store
});


@override $BonusDetailsByStoreCopyWith<$Res>? get bonusDetails;@override $StoreCopyWith<$Res>? get store;

}
/// @nodoc
class __$StoreDetailsStateCopyWithImpl<$Res>
    implements _$StoreDetailsStateCopyWith<$Res> {
  __$StoreDetailsStateCopyWithImpl(this._self, this._then);

  final _StoreDetailsState _self;
  final $Res Function(_StoreDetailsState) _then;

/// Create a copy of StoreDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? bonusDetails = freezed,Object? store = freezed,}) {
  return _then(_StoreDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StoreDetailsStateStatus,bonusDetails: freezed == bonusDetails ? _self.bonusDetails : bonusDetails // ignore: cast_nullable_to_non_nullable
as BonusDetailsByStore?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,
  ));
}

/// Create a copy of StoreDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BonusDetailsByStoreCopyWith<$Res>? get bonusDetails {
    if (_self.bonusDetails == null) {
    return null;
  }

  return $BonusDetailsByStoreCopyWith<$Res>(_self.bonusDetails!, (value) {
    return _then(_self.copyWith(bonusDetails: value));
  });
}/// Create a copy of StoreDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}

// dart format on
