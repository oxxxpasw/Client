// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bonus_account_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BonusAccountInfoState {

 BonusAccountInfoStateStatus get status; List<AccountTransaction>? get transactions;
/// Create a copy of BonusAccountInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusAccountInfoStateCopyWith<BonusAccountInfoState> get copyWith => _$BonusAccountInfoStateCopyWithImpl<BonusAccountInfoState>(this as BonusAccountInfoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusAccountInfoState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.transactions, transactions));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(transactions));

@override
String toString() {
  return 'BonusAccountInfoState(status: $status, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $BonusAccountInfoStateCopyWith<$Res>  {
  factory $BonusAccountInfoStateCopyWith(BonusAccountInfoState value, $Res Function(BonusAccountInfoState) _then) = _$BonusAccountInfoStateCopyWithImpl;
@useResult
$Res call({
 BonusAccountInfoStateStatus status, List<AccountTransaction>? transactions
});




}
/// @nodoc
class _$BonusAccountInfoStateCopyWithImpl<$Res>
    implements $BonusAccountInfoStateCopyWith<$Res> {
  _$BonusAccountInfoStateCopyWithImpl(this._self, this._then);

  final BonusAccountInfoState _self;
  final $Res Function(BonusAccountInfoState) _then;

/// Create a copy of BonusAccountInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? transactions = freezed,}) {
  return _then(BonusAccountInfoState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BonusAccountInfoStateStatus,transactions: freezed == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<AccountTransaction>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BonusAccountInfoState].
extension BonusAccountInfoStatePatterns on BonusAccountInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BonusAccountInfoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BonusAccountInfoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BonusAccountInfoState value)  $default,){
final _that = this;
switch (_that) {
case _BonusAccountInfoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BonusAccountInfoState value)?  $default,){
final _that = this;
switch (_that) {
case _BonusAccountInfoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BonusAccountInfoStateStatus status,  List<AccountTransaction>? transactions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BonusAccountInfoState() when $default != null:
return $default(_that.status,_that.transactions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BonusAccountInfoStateStatus status,  List<AccountTransaction>? transactions)  $default,) {final _that = this;
switch (_that) {
case _BonusAccountInfoState():
return $default(_that.status,_that.transactions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BonusAccountInfoStateStatus status,  List<AccountTransaction>? transactions)?  $default,) {final _that = this;
switch (_that) {
case _BonusAccountInfoState() when $default != null:
return $default(_that.status,_that.transactions);case _:
  return null;

}
}

}

/// @nodoc


class _BonusAccountInfoState implements BonusAccountInfoState {
  const _BonusAccountInfoState({this.status = BonusAccountInfoStateStatus.init,  List<AccountTransaction>? transactions}): _transactions = transactions;
  

@override@JsonKey() final  BonusAccountInfoStateStatus status;
 final  List<AccountTransaction>? _transactions;
@override List<AccountTransaction>? get transactions {
  final value = _transactions;
  if (value == null) return null;
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BonusAccountInfoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusAccountInfoStateCopyWith<_BonusAccountInfoState> get copyWith => __$BonusAccountInfoStateCopyWithImpl<_BonusAccountInfoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusAccountInfoState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'BonusAccountInfoState(status: $status, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$BonusAccountInfoStateCopyWith<$Res> implements $BonusAccountInfoStateCopyWith<$Res> {
  factory _$BonusAccountInfoStateCopyWith(_BonusAccountInfoState value, $Res Function(_BonusAccountInfoState) _then) = __$BonusAccountInfoStateCopyWithImpl;
@override @useResult
$Res call({
 BonusAccountInfoStateStatus status, List<AccountTransaction>? transactions
});




}
/// @nodoc
class __$BonusAccountInfoStateCopyWithImpl<$Res>
    implements _$BonusAccountInfoStateCopyWith<$Res> {
  __$BonusAccountInfoStateCopyWithImpl(this._self, this._then);

  final _BonusAccountInfoState _self;
  final $Res Function(_BonusAccountInfoState) _then;

/// Create a copy of BonusAccountInfoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? transactions = freezed,}) {
  return _then(_BonusAccountInfoState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BonusAccountInfoStateStatus,transactions: freezed == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<AccountTransaction>?,
  ));
}


}

/// @nodoc
mixin _$BonusAccountInfoSr {

 String get message;
/// Create a copy of BonusAccountInfoSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusAccountInfoSrCopyWith<BonusAccountInfoSr> get copyWith => _$BonusAccountInfoSrCopyWithImpl<BonusAccountInfoSr>(this as BonusAccountInfoSr, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusAccountInfoSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BonusAccountInfoSr(message: $message)';
}


}

/// @nodoc
abstract mixin class $BonusAccountInfoSrCopyWith<$Res>  {
  factory $BonusAccountInfoSrCopyWith(BonusAccountInfoSr value, $Res Function(BonusAccountInfoSr) _then) = _$BonusAccountInfoSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$BonusAccountInfoSrCopyWithImpl<$Res>
    implements $BonusAccountInfoSrCopyWith<$Res> {
  _$BonusAccountInfoSrCopyWithImpl(this._self, this._then);

  final BonusAccountInfoSr _self;
  final $Res Function(BonusAccountInfoSr) _then;

/// Create a copy of BonusAccountInfoSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(BonusAccountInfoSr.error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BonusAccountInfoSr].
extension BonusAccountInfoSrPatterns on BonusAccountInfoSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BonusAccountInfoErrorSr value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BonusAccountInfoErrorSr() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BonusAccountInfoErrorSr value)  error,}){
final _that = this;
switch (_that) {
case BonusAccountInfoErrorSr():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BonusAccountInfoErrorSr value)?  error,}){
final _that = this;
switch (_that) {
case BonusAccountInfoErrorSr() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BonusAccountInfoErrorSr() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case BonusAccountInfoErrorSr():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case BonusAccountInfoErrorSr() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class BonusAccountInfoErrorSr implements BonusAccountInfoSr {
  const BonusAccountInfoErrorSr(this.message);
  

@override final  String message;

/// Create a copy of BonusAccountInfoSr
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusAccountInfoErrorSrCopyWith<BonusAccountInfoErrorSr> get copyWith => _$BonusAccountInfoErrorSrCopyWithImpl<BonusAccountInfoErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusAccountInfoErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BonusAccountInfoSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $BonusAccountInfoErrorSrCopyWith<$Res> implements $BonusAccountInfoSrCopyWith<$Res> {
  factory $BonusAccountInfoErrorSrCopyWith(BonusAccountInfoErrorSr value, $Res Function(BonusAccountInfoErrorSr) _then) = _$BonusAccountInfoErrorSrCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$BonusAccountInfoErrorSrCopyWithImpl<$Res>
    implements $BonusAccountInfoErrorSrCopyWith<$Res> {
  _$BonusAccountInfoErrorSrCopyWithImpl(this._self, this._then);

  final BonusAccountInfoErrorSr _self;
  final $Res Function(BonusAccountInfoErrorSr) _then;

/// Create a copy of BonusAccountInfoSr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(BonusAccountInfoErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
