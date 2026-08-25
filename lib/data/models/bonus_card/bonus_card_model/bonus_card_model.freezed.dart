// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bonus_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BonusCardModel implements DiagnosticableTreeMixin {

 double get bonuses; double get holdedBonuses; String? get bonusProgramName; String get cardNumber; CardType get cardType; String get name; String? get cashback; String? get nextRecount; String? get level; List<BonusProgramAccount> get bonusProgramAccounts;
/// Create a copy of BonusCardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusCardModelCopyWith<BonusCardModel> get copyWith => _$BonusCardModelCopyWithImpl<BonusCardModel>(this as BonusCardModel, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusCardModel'))
    ..add(DiagnosticsProperty('bonuses', bonuses))..add(DiagnosticsProperty('holdedBonuses', holdedBonuses))..add(DiagnosticsProperty('bonusProgramName', bonusProgramName))..add(DiagnosticsProperty('cardNumber', cardNumber))..add(DiagnosticsProperty('cardType', cardType))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('cashback', cashback))..add(DiagnosticsProperty('nextRecount', nextRecount))..add(DiagnosticsProperty('level', level))..add(DiagnosticsProperty('bonusProgramAccounts', bonusProgramAccounts));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusCardModel&&(identical(other.bonuses, bonuses) || other.bonuses == bonuses)&&(identical(other.holdedBonuses, holdedBonuses) || other.holdedBonuses == holdedBonuses)&&(identical(other.bonusProgramName, bonusProgramName) || other.bonusProgramName == bonusProgramName)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType)&&(identical(other.name, name) || other.name == name)&&(identical(other.cashback, cashback) || other.cashback == cashback)&&(identical(other.nextRecount, nextRecount) || other.nextRecount == nextRecount)&&(identical(other.level, level) || other.level == level)&&const DeepCollectionEquality().equals(other.bonusProgramAccounts, bonusProgramAccounts));
}


@override
int get hashCode => Object.hash(runtimeType,bonuses,holdedBonuses,bonusProgramName,cardNumber,cardType,name,cashback,nextRecount,level,const DeepCollectionEquality().hash(bonusProgramAccounts));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusCardModel(bonuses: $bonuses, holdedBonuses: $holdedBonuses, bonusProgramName: $bonusProgramName, cardNumber: $cardNumber, cardType: $cardType, name: $name, cashback: $cashback, nextRecount: $nextRecount, level: $level, bonusProgramAccounts: $bonusProgramAccounts)';
}


}

/// @nodoc
abstract mixin class $BonusCardModelCopyWith<$Res>  {
  factory $BonusCardModelCopyWith(BonusCardModel value, $Res Function(BonusCardModel) _then) = _$BonusCardModelCopyWithImpl;
@useResult
$Res call({
 double bonuses, double holdedBonuses, String? bonusProgramName, String cardNumber, CardType cardType, String name, String? cashback, String? nextRecount, String? level, List<BonusProgramAccount> bonusProgramAccounts
});




}
/// @nodoc
class _$BonusCardModelCopyWithImpl<$Res>
    implements $BonusCardModelCopyWith<$Res> {
  _$BonusCardModelCopyWithImpl(this._self, this._then);

  final BonusCardModel _self;
  final $Res Function(BonusCardModel) _then;

/// Create a copy of BonusCardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bonuses = null,Object? holdedBonuses = null,Object? bonusProgramName = freezed,Object? cardNumber = null,Object? cardType = null,Object? name = null,Object? cashback = freezed,Object? nextRecount = freezed,Object? level = freezed,Object? bonusProgramAccounts = null,}) {
  return _then(BonusCardModel(
bonuses: null == bonuses ? _self.bonuses : bonuses // ignore: cast_nullable_to_non_nullable
as double,holdedBonuses: null == holdedBonuses ? _self.holdedBonuses : holdedBonuses // ignore: cast_nullable_to_non_nullable
as double,bonusProgramName: freezed == bonusProgramName ? _self.bonusProgramName : bonusProgramName // ignore: cast_nullable_to_non_nullable
as String?,cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,cardType: null == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as CardType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cashback: freezed == cashback ? _self.cashback : cashback // ignore: cast_nullable_to_non_nullable
as String?,nextRecount: freezed == nextRecount ? _self.nextRecount : nextRecount // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,bonusProgramAccounts: null == bonusProgramAccounts ? _self.bonusProgramAccounts : bonusProgramAccounts // ignore: cast_nullable_to_non_nullable
as List<BonusProgramAccount>,
  ));
}

}


/// Adds pattern-matching-related methods to [BonusCardModel].
extension BonusCardModelPatterns on BonusCardModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BonusCardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BonusCardModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BonusCardModel value)  $default,){
final _that = this;
switch (_that) {
case _BonusCardModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BonusCardModel value)?  $default,){
final _that = this;
switch (_that) {
case _BonusCardModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double bonuses,  double holdedBonuses,  String? bonusProgramName,  String cardNumber,  CardType cardType,  String name,  String? cashback,  String? nextRecount,  String? level,  List<BonusProgramAccount> bonusProgramAccounts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BonusCardModel() when $default != null:
return $default(_that.bonuses,_that.holdedBonuses,_that.bonusProgramName,_that.cardNumber,_that.cardType,_that.name,_that.cashback,_that.nextRecount,_that.level,_that.bonusProgramAccounts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double bonuses,  double holdedBonuses,  String? bonusProgramName,  String cardNumber,  CardType cardType,  String name,  String? cashback,  String? nextRecount,  String? level,  List<BonusProgramAccount> bonusProgramAccounts)  $default,) {final _that = this;
switch (_that) {
case _BonusCardModel():
return $default(_that.bonuses,_that.holdedBonuses,_that.bonusProgramName,_that.cardNumber,_that.cardType,_that.name,_that.cashback,_that.nextRecount,_that.level,_that.bonusProgramAccounts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double bonuses,  double holdedBonuses,  String? bonusProgramName,  String cardNumber,  CardType cardType,  String name,  String? cashback,  String? nextRecount,  String? level,  List<BonusProgramAccount> bonusProgramAccounts)?  $default,) {final _that = this;
switch (_that) {
case _BonusCardModel() when $default != null:
return $default(_that.bonuses,_that.holdedBonuses,_that.bonusProgramName,_that.cardNumber,_that.cardType,_that.name,_that.cashback,_that.nextRecount,_that.level,_that.bonusProgramAccounts);case _:
  return null;

}
}

}

/// @nodoc


class _BonusCardModel extends BonusCardModel with DiagnosticableTreeMixin {
  const _BonusCardModel({required this.bonuses, required this.holdedBonuses, this.bonusProgramName, required this.cardNumber, required this.cardType, required this.name, this.cashback, this.nextRecount, this.level,  List<BonusProgramAccount> bonusProgramAccounts = const []}): _bonusProgramAccounts = bonusProgramAccounts,super._();
  

@override final  double bonuses;
@override final  double holdedBonuses;
@override final  String? bonusProgramName;
@override final  String cardNumber;
@override final  CardType cardType;
@override final  String name;
@override final  String? cashback;
@override final  String? nextRecount;
@override final  String? level;
 final  List<BonusProgramAccount> _bonusProgramAccounts;
@override@JsonKey() List<BonusProgramAccount> get bonusProgramAccounts {
  if (_bonusProgramAccounts is EqualUnmodifiableListView) return _bonusProgramAccounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bonusProgramAccounts);
}


/// Create a copy of BonusCardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusCardModelCopyWith<_BonusCardModel> get copyWith => __$BonusCardModelCopyWithImpl<_BonusCardModel>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusCardModel'))
    ..add(DiagnosticsProperty('bonuses', bonuses))..add(DiagnosticsProperty('holdedBonuses', holdedBonuses))..add(DiagnosticsProperty('bonusProgramName', bonusProgramName))..add(DiagnosticsProperty('cardNumber', cardNumber))..add(DiagnosticsProperty('cardType', cardType))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('cashback', cashback))..add(DiagnosticsProperty('nextRecount', nextRecount))..add(DiagnosticsProperty('level', level))..add(DiagnosticsProperty('bonusProgramAccounts', bonusProgramAccounts));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusCardModel&&(identical(other.bonuses, bonuses) || other.bonuses == bonuses)&&(identical(other.holdedBonuses, holdedBonuses) || other.holdedBonuses == holdedBonuses)&&(identical(other.bonusProgramName, bonusProgramName) || other.bonusProgramName == bonusProgramName)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType)&&(identical(other.name, name) || other.name == name)&&(identical(other.cashback, cashback) || other.cashback == cashback)&&(identical(other.nextRecount, nextRecount) || other.nextRecount == nextRecount)&&(identical(other.level, level) || other.level == level)&&const DeepCollectionEquality().equals(other._bonusProgramAccounts, _bonusProgramAccounts));
}


@override
int get hashCode => Object.hash(runtimeType,bonuses,holdedBonuses,bonusProgramName,cardNumber,cardType,name,cashback,nextRecount,level,const DeepCollectionEquality().hash(_bonusProgramAccounts));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusCardModel(bonuses: $bonuses, holdedBonuses: $holdedBonuses, bonusProgramName: $bonusProgramName, cardNumber: $cardNumber, cardType: $cardType, name: $name, cashback: $cashback, nextRecount: $nextRecount, level: $level, bonusProgramAccounts: $bonusProgramAccounts)';
}


}

/// @nodoc
abstract mixin class _$BonusCardModelCopyWith<$Res> implements $BonusCardModelCopyWith<$Res> {
  factory _$BonusCardModelCopyWith(_BonusCardModel value, $Res Function(_BonusCardModel) _then) = __$BonusCardModelCopyWithImpl;
@override @useResult
$Res call({
 double bonuses, double holdedBonuses, String? bonusProgramName, String cardNumber, CardType cardType, String name, String? cashback, String? nextRecount, String? level, List<BonusProgramAccount> bonusProgramAccounts
});




}
/// @nodoc
class __$BonusCardModelCopyWithImpl<$Res>
    implements _$BonusCardModelCopyWith<$Res> {
  __$BonusCardModelCopyWithImpl(this._self, this._then);

  final _BonusCardModel _self;
  final $Res Function(_BonusCardModel) _then;

/// Create a copy of BonusCardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bonuses = null,Object? holdedBonuses = null,Object? bonusProgramName = freezed,Object? cardNumber = null,Object? cardType = null,Object? name = null,Object? cashback = freezed,Object? nextRecount = freezed,Object? level = freezed,Object? bonusProgramAccounts = null,}) {
  return _then(_BonusCardModel(
bonuses: null == bonuses ? _self.bonuses : bonuses // ignore: cast_nullable_to_non_nullable
as double,holdedBonuses: null == holdedBonuses ? _self.holdedBonuses : holdedBonuses // ignore: cast_nullable_to_non_nullable
as double,bonusProgramName: freezed == bonusProgramName ? _self.bonusProgramName : bonusProgramName // ignore: cast_nullable_to_non_nullable
as String?,cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,cardType: null == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as CardType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cashback: freezed == cashback ? _self.cashback : cashback // ignore: cast_nullable_to_non_nullable
as String?,nextRecount: freezed == nextRecount ? _self.nextRecount : nextRecount // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,bonusProgramAccounts: null == bonusProgramAccounts ? _self._bonusProgramAccounts : bonusProgramAccounts // ignore: cast_nullable_to_non_nullable
as List<BonusProgramAccount>,
  ));
}


}

/// @nodoc
mixin _$BonusProgramAccount implements DiagnosticableTreeMixin {

 String? get name; String? get bonusProgramId; String? get logoUrl; String? get address; String? get comment; double get bonuses; double get holdedBonuses;
/// Create a copy of BonusProgramAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusProgramAccountCopyWith<BonusProgramAccount> get copyWith => _$BonusProgramAccountCopyWithImpl<BonusProgramAccount>(this as BonusProgramAccount, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusProgramAccount'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('bonusProgramId', bonusProgramId))..add(DiagnosticsProperty('logoUrl', logoUrl))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('bonuses', bonuses))..add(DiagnosticsProperty('holdedBonuses', holdedBonuses));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusProgramAccount&&(identical(other.name, name) || other.name == name)&&(identical(other.bonusProgramId, bonusProgramId) || other.bonusProgramId == bonusProgramId)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.address, address) || other.address == address)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.bonuses, bonuses) || other.bonuses == bonuses)&&(identical(other.holdedBonuses, holdedBonuses) || other.holdedBonuses == holdedBonuses));
}


@override
int get hashCode => Object.hash(runtimeType,name,bonusProgramId,logoUrl,address,comment,bonuses,holdedBonuses);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusProgramAccount(name: $name, bonusProgramId: $bonusProgramId, logoUrl: $logoUrl, address: $address, comment: $comment, bonuses: $bonuses, holdedBonuses: $holdedBonuses)';
}


}

/// @nodoc
abstract mixin class $BonusProgramAccountCopyWith<$Res>  {
  factory $BonusProgramAccountCopyWith(BonusProgramAccount value, $Res Function(BonusProgramAccount) _then) = _$BonusProgramAccountCopyWithImpl;
@useResult
$Res call({
 String? name, String? bonusProgramId, String? logoUrl, String? address, String? comment, double bonuses, double holdedBonuses
});




}
/// @nodoc
class _$BonusProgramAccountCopyWithImpl<$Res>
    implements $BonusProgramAccountCopyWith<$Res> {
  _$BonusProgramAccountCopyWithImpl(this._self, this._then);

  final BonusProgramAccount _self;
  final $Res Function(BonusProgramAccount) _then;

/// Create a copy of BonusProgramAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? bonusProgramId = freezed,Object? logoUrl = freezed,Object? address = freezed,Object? comment = freezed,Object? bonuses = null,Object? holdedBonuses = null,}) {
  return _then(BonusProgramAccount(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,bonusProgramId: freezed == bonusProgramId ? _self.bonusProgramId : bonusProgramId // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,bonuses: null == bonuses ? _self.bonuses : bonuses // ignore: cast_nullable_to_non_nullable
as double,holdedBonuses: null == holdedBonuses ? _self.holdedBonuses : holdedBonuses // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [BonusProgramAccount].
extension BonusProgramAccountPatterns on BonusProgramAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BonusProgramAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BonusProgramAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BonusProgramAccount value)  $default,){
final _that = this;
switch (_that) {
case _BonusProgramAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BonusProgramAccount value)?  $default,){
final _that = this;
switch (_that) {
case _BonusProgramAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? bonusProgramId,  String? logoUrl,  String? address,  String? comment,  double bonuses,  double holdedBonuses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BonusProgramAccount() when $default != null:
return $default(_that.name,_that.bonusProgramId,_that.logoUrl,_that.address,_that.comment,_that.bonuses,_that.holdedBonuses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? bonusProgramId,  String? logoUrl,  String? address,  String? comment,  double bonuses,  double holdedBonuses)  $default,) {final _that = this;
switch (_that) {
case _BonusProgramAccount():
return $default(_that.name,_that.bonusProgramId,_that.logoUrl,_that.address,_that.comment,_that.bonuses,_that.holdedBonuses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? bonusProgramId,  String? logoUrl,  String? address,  String? comment,  double bonuses,  double holdedBonuses)?  $default,) {final _that = this;
switch (_that) {
case _BonusProgramAccount() when $default != null:
return $default(_that.name,_that.bonusProgramId,_that.logoUrl,_that.address,_that.comment,_that.bonuses,_that.holdedBonuses);case _:
  return null;

}
}

}

/// @nodoc


class _BonusProgramAccount with DiagnosticableTreeMixin implements BonusProgramAccount {
  const _BonusProgramAccount({this.name, this.bonusProgramId, this.logoUrl, this.address, this.comment, required this.bonuses, required this.holdedBonuses});
  

@override final  String? name;
@override final  String? bonusProgramId;
@override final  String? logoUrl;
@override final  String? address;
@override final  String? comment;
@override final  double bonuses;
@override final  double holdedBonuses;

/// Create a copy of BonusProgramAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusProgramAccountCopyWith<_BonusProgramAccount> get copyWith => __$BonusProgramAccountCopyWithImpl<_BonusProgramAccount>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusProgramAccount'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('bonusProgramId', bonusProgramId))..add(DiagnosticsProperty('logoUrl', logoUrl))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('bonuses', bonuses))..add(DiagnosticsProperty('holdedBonuses', holdedBonuses));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusProgramAccount&&(identical(other.name, name) || other.name == name)&&(identical(other.bonusProgramId, bonusProgramId) || other.bonusProgramId == bonusProgramId)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.address, address) || other.address == address)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.bonuses, bonuses) || other.bonuses == bonuses)&&(identical(other.holdedBonuses, holdedBonuses) || other.holdedBonuses == holdedBonuses));
}


@override
int get hashCode => Object.hash(runtimeType,name,bonusProgramId,logoUrl,address,comment,bonuses,holdedBonuses);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusProgramAccount(name: $name, bonusProgramId: $bonusProgramId, logoUrl: $logoUrl, address: $address, comment: $comment, bonuses: $bonuses, holdedBonuses: $holdedBonuses)';
}


}

/// @nodoc
abstract mixin class _$BonusProgramAccountCopyWith<$Res> implements $BonusProgramAccountCopyWith<$Res> {
  factory _$BonusProgramAccountCopyWith(_BonusProgramAccount value, $Res Function(_BonusProgramAccount) _then) = __$BonusProgramAccountCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? bonusProgramId, String? logoUrl, String? address, String? comment, double bonuses, double holdedBonuses
});




}
/// @nodoc
class __$BonusProgramAccountCopyWithImpl<$Res>
    implements _$BonusProgramAccountCopyWith<$Res> {
  __$BonusProgramAccountCopyWithImpl(this._self, this._then);

  final _BonusProgramAccount _self;
  final $Res Function(_BonusProgramAccount) _then;

/// Create a copy of BonusProgramAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? bonusProgramId = freezed,Object? logoUrl = freezed,Object? address = freezed,Object? comment = freezed,Object? bonuses = null,Object? holdedBonuses = null,}) {
  return _then(_BonusProgramAccount(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,bonusProgramId: freezed == bonusProgramId ? _self.bonusProgramId : bonusProgramId // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,bonuses: null == bonuses ? _self.bonuses : bonuses // ignore: cast_nullable_to_non_nullable
as double,holdedBonuses: null == holdedBonuses ? _self.holdedBonuses : holdedBonuses // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
