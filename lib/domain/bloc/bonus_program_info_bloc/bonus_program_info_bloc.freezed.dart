// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bonus_program_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BonusProgramInfoState {

 BonusProgramInfoStatus get status; List<BonusCardModel> get bonusCards;
/// Create a copy of BonusProgramInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusProgramInfoStateCopyWith<BonusProgramInfoState> get copyWith => _$BonusProgramInfoStateCopyWithImpl<BonusProgramInfoState>(this as BonusProgramInfoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusProgramInfoState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.bonusCards, bonusCards));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(bonusCards));

@override
String toString() {
  return 'BonusProgramInfoState(status: $status, bonusCards: $bonusCards)';
}


}

/// @nodoc
abstract mixin class $BonusProgramInfoStateCopyWith<$Res>  {
  factory $BonusProgramInfoStateCopyWith(BonusProgramInfoState value, $Res Function(BonusProgramInfoState) _then) = _$BonusProgramInfoStateCopyWithImpl;
@useResult
$Res call({
 BonusProgramInfoStatus status, List<BonusCardModel> bonusCards
});




}
/// @nodoc
class _$BonusProgramInfoStateCopyWithImpl<$Res>
    implements $BonusProgramInfoStateCopyWith<$Res> {
  _$BonusProgramInfoStateCopyWithImpl(this._self, this._then);

  final BonusProgramInfoState _self;
  final $Res Function(BonusProgramInfoState) _then;

/// Create a copy of BonusProgramInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? bonusCards = null,}) {
  return _then(BonusProgramInfoState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BonusProgramInfoStatus,bonusCards: null == bonusCards ? _self.bonusCards : bonusCards // ignore: cast_nullable_to_non_nullable
as List<BonusCardModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [BonusProgramInfoState].
extension BonusProgramInfoStatePatterns on BonusProgramInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BonusProgramInfoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BonusProgramInfoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BonusProgramInfoState value)  $default,){
final _that = this;
switch (_that) {
case _BonusProgramInfoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BonusProgramInfoState value)?  $default,){
final _that = this;
switch (_that) {
case _BonusProgramInfoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BonusProgramInfoStatus status,  List<BonusCardModel> bonusCards)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BonusProgramInfoState() when $default != null:
return $default(_that.status,_that.bonusCards);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BonusProgramInfoStatus status,  List<BonusCardModel> bonusCards)  $default,) {final _that = this;
switch (_that) {
case _BonusProgramInfoState():
return $default(_that.status,_that.bonusCards);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BonusProgramInfoStatus status,  List<BonusCardModel> bonusCards)?  $default,) {final _that = this;
switch (_that) {
case _BonusProgramInfoState() when $default != null:
return $default(_that.status,_that.bonusCards);case _:
  return null;

}
}

}

/// @nodoc


class _BonusProgramInfoState implements BonusProgramInfoState {
  const _BonusProgramInfoState({this.status = BonusProgramInfoStatus.init,  List<BonusCardModel> bonusCards = const []}): _bonusCards = bonusCards;
  

@override@JsonKey() final  BonusProgramInfoStatus status;
 final  List<BonusCardModel> _bonusCards;
@override@JsonKey() List<BonusCardModel> get bonusCards {
  if (_bonusCards is EqualUnmodifiableListView) return _bonusCards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bonusCards);
}


/// Create a copy of BonusProgramInfoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusProgramInfoStateCopyWith<_BonusProgramInfoState> get copyWith => __$BonusProgramInfoStateCopyWithImpl<_BonusProgramInfoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusProgramInfoState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._bonusCards, _bonusCards));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_bonusCards));

@override
String toString() {
  return 'BonusProgramInfoState(status: $status, bonusCards: $bonusCards)';
}


}

/// @nodoc
abstract mixin class _$BonusProgramInfoStateCopyWith<$Res> implements $BonusProgramInfoStateCopyWith<$Res> {
  factory _$BonusProgramInfoStateCopyWith(_BonusProgramInfoState value, $Res Function(_BonusProgramInfoState) _then) = __$BonusProgramInfoStateCopyWithImpl;
@override @useResult
$Res call({
 BonusProgramInfoStatus status, List<BonusCardModel> bonusCards
});




}
/// @nodoc
class __$BonusProgramInfoStateCopyWithImpl<$Res>
    implements _$BonusProgramInfoStateCopyWith<$Res> {
  __$BonusProgramInfoStateCopyWithImpl(this._self, this._then);

  final _BonusProgramInfoState _self;
  final $Res Function(_BonusProgramInfoState) _then;

/// Create a copy of BonusProgramInfoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? bonusCards = null,}) {
  return _then(_BonusProgramInfoState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BonusProgramInfoStatus,bonusCards: null == bonusCards ? _self._bonusCards : bonusCards // ignore: cast_nullable_to_non_nullable
as List<BonusCardModel>,
  ));
}


}

/// @nodoc
mixin _$BonusProgramInfoSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusProgramInfoSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BonusProgramInfoSr()';
}


}

/// @nodoc
class $BonusProgramInfoSrCopyWith<$Res>  {
$BonusProgramInfoSrCopyWith(BonusProgramInfoSr _, $Res Function(BonusProgramInfoSr) __);
}


/// Adds pattern-matching-related methods to [BonusProgramInfoSr].
extension BonusProgramInfoSrPatterns on BonusProgramInfoSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BonusProgramInfoErrorSr value)?  error,TResult Function( BonusProgramInfoShowAccountDetailsSr value)?  showAccountDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BonusProgramInfoErrorSr() when error != null:
return error(_that);case BonusProgramInfoShowAccountDetailsSr() when showAccountDetails != null:
return showAccountDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BonusProgramInfoErrorSr value)  error,required TResult Function( BonusProgramInfoShowAccountDetailsSr value)  showAccountDetails,}){
final _that = this;
switch (_that) {
case BonusProgramInfoErrorSr():
return error(_that);case BonusProgramInfoShowAccountDetailsSr():
return showAccountDetails(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BonusProgramInfoErrorSr value)?  error,TResult? Function( BonusProgramInfoShowAccountDetailsSr value)?  showAccountDetails,}){
final _that = this;
switch (_that) {
case BonusProgramInfoErrorSr() when error != null:
return error(_that);case BonusProgramInfoShowAccountDetailsSr() when showAccountDetails != null:
return showAccountDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function( BonusProgramAccount account)?  showAccountDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BonusProgramInfoErrorSr() when error != null:
return error(_that.error);case BonusProgramInfoShowAccountDetailsSr() when showAccountDetails != null:
return showAccountDetails(_that.account);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function( BonusProgramAccount account)  showAccountDetails,}) {final _that = this;
switch (_that) {
case BonusProgramInfoErrorSr():
return error(_that.error);case BonusProgramInfoShowAccountDetailsSr():
return showAccountDetails(_that.account);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function( BonusProgramAccount account)?  showAccountDetails,}) {final _that = this;
switch (_that) {
case BonusProgramInfoErrorSr() when error != null:
return error(_that.error);case BonusProgramInfoShowAccountDetailsSr() when showAccountDetails != null:
return showAccountDetails(_that.account);case _:
  return null;

}
}

}

/// @nodoc


class BonusProgramInfoErrorSr implements BonusProgramInfoSr {
  const BonusProgramInfoErrorSr(this.error);
  

 final  String error;

/// Create a copy of BonusProgramInfoSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusProgramInfoErrorSrCopyWith<BonusProgramInfoErrorSr> get copyWith => _$BonusProgramInfoErrorSrCopyWithImpl<BonusProgramInfoErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusProgramInfoErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'BonusProgramInfoSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $BonusProgramInfoErrorSrCopyWith<$Res> implements $BonusProgramInfoSrCopyWith<$Res> {
  factory $BonusProgramInfoErrorSrCopyWith(BonusProgramInfoErrorSr value, $Res Function(BonusProgramInfoErrorSr) _then) = _$BonusProgramInfoErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$BonusProgramInfoErrorSrCopyWithImpl<$Res>
    implements $BonusProgramInfoErrorSrCopyWith<$Res> {
  _$BonusProgramInfoErrorSrCopyWithImpl(this._self, this._then);

  final BonusProgramInfoErrorSr _self;
  final $Res Function(BonusProgramInfoErrorSr) _then;

/// Create a copy of BonusProgramInfoSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(BonusProgramInfoErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BonusProgramInfoShowAccountDetailsSr implements BonusProgramInfoSr {
  const BonusProgramInfoShowAccountDetailsSr(this.account);
  

 final  BonusProgramAccount account;

/// Create a copy of BonusProgramInfoSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusProgramInfoShowAccountDetailsSrCopyWith<BonusProgramInfoShowAccountDetailsSr> get copyWith => _$BonusProgramInfoShowAccountDetailsSrCopyWithImpl<BonusProgramInfoShowAccountDetailsSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusProgramInfoShowAccountDetailsSr&&(identical(other.account, account) || other.account == account));
}


@override
int get hashCode => Object.hash(runtimeType,account);

@override
String toString() {
  return 'BonusProgramInfoSr.showAccountDetails(account: $account)';
}


}

/// @nodoc
abstract mixin class $BonusProgramInfoShowAccountDetailsSrCopyWith<$Res> implements $BonusProgramInfoSrCopyWith<$Res> {
  factory $BonusProgramInfoShowAccountDetailsSrCopyWith(BonusProgramInfoShowAccountDetailsSr value, $Res Function(BonusProgramInfoShowAccountDetailsSr) _then) = _$BonusProgramInfoShowAccountDetailsSrCopyWithImpl;
@useResult
$Res call({
 BonusProgramAccount account
});


$BonusProgramAccountCopyWith<$Res> get account;

}
/// @nodoc
class _$BonusProgramInfoShowAccountDetailsSrCopyWithImpl<$Res>
    implements $BonusProgramInfoShowAccountDetailsSrCopyWith<$Res> {
  _$BonusProgramInfoShowAccountDetailsSrCopyWithImpl(this._self, this._then);

  final BonusProgramInfoShowAccountDetailsSr _self;
  final $Res Function(BonusProgramInfoShowAccountDetailsSr) _then;

/// Create a copy of BonusProgramInfoSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? account = null,}) {
  return _then(BonusProgramInfoShowAccountDetailsSr(
null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as BonusProgramAccount,
  ));
}

/// Create a copy of BonusProgramInfoSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BonusProgramAccountCopyWith<$Res> get account {
  
  return $BonusProgramAccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}

// dart format on
