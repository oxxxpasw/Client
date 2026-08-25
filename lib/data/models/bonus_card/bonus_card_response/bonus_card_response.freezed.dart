// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bonus_card_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BonusCardResponse implements DiagnosticableTreeMixin {

 int get cardNumber; CardType get cardType; CardStatus get cardStatus; double get purchasesSum; double get bonuses; double get holdedBonuses; String? get bonusProgramName; DateTime? get dateBonusBurn; List<BonusCardProperty>? get cardProperties; List<BonusProgramAccountResponse> get bonusProgramAccounts;
/// Create a copy of BonusCardResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusCardResponseCopyWith<BonusCardResponse> get copyWith => _$BonusCardResponseCopyWithImpl<BonusCardResponse>(this as BonusCardResponse, _$identity);

  /// Serializes this BonusCardResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusCardResponse'))
    ..add(DiagnosticsProperty('cardNumber', cardNumber))..add(DiagnosticsProperty('cardType', cardType))..add(DiagnosticsProperty('cardStatus', cardStatus))..add(DiagnosticsProperty('purchasesSum', purchasesSum))..add(DiagnosticsProperty('bonuses', bonuses))..add(DiagnosticsProperty('holdedBonuses', holdedBonuses))..add(DiagnosticsProperty('bonusProgramName', bonusProgramName))..add(DiagnosticsProperty('dateBonusBurn', dateBonusBurn))..add(DiagnosticsProperty('cardProperties', cardProperties))..add(DiagnosticsProperty('bonusProgramAccounts', bonusProgramAccounts));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusCardResponse&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType)&&(identical(other.cardStatus, cardStatus) || other.cardStatus == cardStatus)&&(identical(other.purchasesSum, purchasesSum) || other.purchasesSum == purchasesSum)&&(identical(other.bonuses, bonuses) || other.bonuses == bonuses)&&(identical(other.holdedBonuses, holdedBonuses) || other.holdedBonuses == holdedBonuses)&&(identical(other.bonusProgramName, bonusProgramName) || other.bonusProgramName == bonusProgramName)&&(identical(other.dateBonusBurn, dateBonusBurn) || other.dateBonusBurn == dateBonusBurn)&&const DeepCollectionEquality().equals(other.cardProperties, cardProperties)&&const DeepCollectionEquality().equals(other.bonusProgramAccounts, bonusProgramAccounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardNumber,cardType,cardStatus,purchasesSum,bonuses,holdedBonuses,bonusProgramName,dateBonusBurn,const DeepCollectionEquality().hash(cardProperties),const DeepCollectionEquality().hash(bonusProgramAccounts));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusCardResponse(cardNumber: $cardNumber, cardType: $cardType, cardStatus: $cardStatus, purchasesSum: $purchasesSum, bonuses: $bonuses, holdedBonuses: $holdedBonuses, bonusProgramName: $bonusProgramName, dateBonusBurn: $dateBonusBurn, cardProperties: $cardProperties, bonusProgramAccounts: $bonusProgramAccounts)';
}


}

/// @nodoc
abstract mixin class $BonusCardResponseCopyWith<$Res>  {
  factory $BonusCardResponseCopyWith(BonusCardResponse value, $Res Function(BonusCardResponse) _then) = _$BonusCardResponseCopyWithImpl;
@useResult
$Res call({
 int cardNumber, CardType cardType, CardStatus cardStatus, double purchasesSum, double bonuses, double holdedBonuses, String? bonusProgramName, DateTime? dateBonusBurn, List<BonusCardProperty>? cardProperties, List<BonusProgramAccountResponse> bonusProgramAccounts
});




}
/// @nodoc
class _$BonusCardResponseCopyWithImpl<$Res>
    implements $BonusCardResponseCopyWith<$Res> {
  _$BonusCardResponseCopyWithImpl(this._self, this._then);

  final BonusCardResponse _self;
  final $Res Function(BonusCardResponse) _then;

/// Create a copy of BonusCardResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardNumber = null,Object? cardType = null,Object? cardStatus = null,Object? purchasesSum = null,Object? bonuses = null,Object? holdedBonuses = null,Object? bonusProgramName = freezed,Object? dateBonusBurn = freezed,Object? cardProperties = freezed,Object? bonusProgramAccounts = null,}) {
  return _then(BonusCardResponse(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as int,cardType: null == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as CardType,cardStatus: null == cardStatus ? _self.cardStatus : cardStatus // ignore: cast_nullable_to_non_nullable
as CardStatus,purchasesSum: null == purchasesSum ? _self.purchasesSum : purchasesSum // ignore: cast_nullable_to_non_nullable
as double,bonuses: null == bonuses ? _self.bonuses : bonuses // ignore: cast_nullable_to_non_nullable
as double,holdedBonuses: null == holdedBonuses ? _self.holdedBonuses : holdedBonuses // ignore: cast_nullable_to_non_nullable
as double,bonusProgramName: freezed == bonusProgramName ? _self.bonusProgramName : bonusProgramName // ignore: cast_nullable_to_non_nullable
as String?,dateBonusBurn: freezed == dateBonusBurn ? _self.dateBonusBurn : dateBonusBurn // ignore: cast_nullable_to_non_nullable
as DateTime?,cardProperties: freezed == cardProperties ? _self.cardProperties : cardProperties // ignore: cast_nullable_to_non_nullable
as List<BonusCardProperty>?,bonusProgramAccounts: null == bonusProgramAccounts ? _self.bonusProgramAccounts : bonusProgramAccounts // ignore: cast_nullable_to_non_nullable
as List<BonusProgramAccountResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [BonusCardResponse].
extension BonusCardResponsePatterns on BonusCardResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BonusCardResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BonusCardResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BonusCardResponse value)  $default,){
final _that = this;
switch (_that) {
case _BonusCardResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BonusCardResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BonusCardResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int cardNumber,  CardType cardType,  CardStatus cardStatus,  double purchasesSum,  double bonuses,  double holdedBonuses,  String? bonusProgramName,  DateTime? dateBonusBurn,  List<BonusCardProperty>? cardProperties,  List<BonusProgramAccountResponse> bonusProgramAccounts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BonusCardResponse() when $default != null:
return $default(_that.cardNumber,_that.cardType,_that.cardStatus,_that.purchasesSum,_that.bonuses,_that.holdedBonuses,_that.bonusProgramName,_that.dateBonusBurn,_that.cardProperties,_that.bonusProgramAccounts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int cardNumber,  CardType cardType,  CardStatus cardStatus,  double purchasesSum,  double bonuses,  double holdedBonuses,  String? bonusProgramName,  DateTime? dateBonusBurn,  List<BonusCardProperty>? cardProperties,  List<BonusProgramAccountResponse> bonusProgramAccounts)  $default,) {final _that = this;
switch (_that) {
case _BonusCardResponse():
return $default(_that.cardNumber,_that.cardType,_that.cardStatus,_that.purchasesSum,_that.bonuses,_that.holdedBonuses,_that.bonusProgramName,_that.dateBonusBurn,_that.cardProperties,_that.bonusProgramAccounts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int cardNumber,  CardType cardType,  CardStatus cardStatus,  double purchasesSum,  double bonuses,  double holdedBonuses,  String? bonusProgramName,  DateTime? dateBonusBurn,  List<BonusCardProperty>? cardProperties,  List<BonusProgramAccountResponse> bonusProgramAccounts)?  $default,) {final _that = this;
switch (_that) {
case _BonusCardResponse() when $default != null:
return $default(_that.cardNumber,_that.cardType,_that.cardStatus,_that.purchasesSum,_that.bonuses,_that.holdedBonuses,_that.bonusProgramName,_that.dateBonusBurn,_that.cardProperties,_that.bonusProgramAccounts);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _BonusCardResponse with DiagnosticableTreeMixin implements BonusCardResponse {
  const _BonusCardResponse({required this.cardNumber, required this.cardType, required this.cardStatus, this.purchasesSum = 0.0, this.bonuses = 0.0, this.holdedBonuses = 0.0, this.bonusProgramName, this.dateBonusBurn,  List<BonusCardProperty>? cardProperties,  List<BonusProgramAccountResponse> bonusProgramAccounts = const []}): _cardProperties = cardProperties,_bonusProgramAccounts = bonusProgramAccounts;
  factory _BonusCardResponse.fromJson(Map<String, dynamic> json) => _$BonusCardResponseFromJson(json);

@override final  int cardNumber;
@override final  CardType cardType;
@override final  CardStatus cardStatus;
@override@JsonKey() final  double purchasesSum;
@override@JsonKey() final  double bonuses;
@override@JsonKey() final  double holdedBonuses;
@override final  String? bonusProgramName;
@override final  DateTime? dateBonusBurn;
 final  List<BonusCardProperty>? _cardProperties;
@override List<BonusCardProperty>? get cardProperties {
  final value = _cardProperties;
  if (value == null) return null;
  if (_cardProperties is EqualUnmodifiableListView) return _cardProperties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BonusProgramAccountResponse> _bonusProgramAccounts;
@override@JsonKey() List<BonusProgramAccountResponse> get bonusProgramAccounts {
  if (_bonusProgramAccounts is EqualUnmodifiableListView) return _bonusProgramAccounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bonusProgramAccounts);
}


/// Create a copy of BonusCardResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusCardResponseCopyWith<_BonusCardResponse> get copyWith => __$BonusCardResponseCopyWithImpl<_BonusCardResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BonusCardResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusCardResponse'))
    ..add(DiagnosticsProperty('cardNumber', cardNumber))..add(DiagnosticsProperty('cardType', cardType))..add(DiagnosticsProperty('cardStatus', cardStatus))..add(DiagnosticsProperty('purchasesSum', purchasesSum))..add(DiagnosticsProperty('bonuses', bonuses))..add(DiagnosticsProperty('holdedBonuses', holdedBonuses))..add(DiagnosticsProperty('bonusProgramName', bonusProgramName))..add(DiagnosticsProperty('dateBonusBurn', dateBonusBurn))..add(DiagnosticsProperty('cardProperties', cardProperties))..add(DiagnosticsProperty('bonusProgramAccounts', bonusProgramAccounts));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusCardResponse&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType)&&(identical(other.cardStatus, cardStatus) || other.cardStatus == cardStatus)&&(identical(other.purchasesSum, purchasesSum) || other.purchasesSum == purchasesSum)&&(identical(other.bonuses, bonuses) || other.bonuses == bonuses)&&(identical(other.holdedBonuses, holdedBonuses) || other.holdedBonuses == holdedBonuses)&&(identical(other.bonusProgramName, bonusProgramName) || other.bonusProgramName == bonusProgramName)&&(identical(other.dateBonusBurn, dateBonusBurn) || other.dateBonusBurn == dateBonusBurn)&&const DeepCollectionEquality().equals(other._cardProperties, _cardProperties)&&const DeepCollectionEquality().equals(other._bonusProgramAccounts, _bonusProgramAccounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardNumber,cardType,cardStatus,purchasesSum,bonuses,holdedBonuses,bonusProgramName,dateBonusBurn,const DeepCollectionEquality().hash(_cardProperties),const DeepCollectionEquality().hash(_bonusProgramAccounts));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusCardResponse(cardNumber: $cardNumber, cardType: $cardType, cardStatus: $cardStatus, purchasesSum: $purchasesSum, bonuses: $bonuses, holdedBonuses: $holdedBonuses, bonusProgramName: $bonusProgramName, dateBonusBurn: $dateBonusBurn, cardProperties: $cardProperties, bonusProgramAccounts: $bonusProgramAccounts)';
}


}

/// @nodoc
abstract mixin class _$BonusCardResponseCopyWith<$Res> implements $BonusCardResponseCopyWith<$Res> {
  factory _$BonusCardResponseCopyWith(_BonusCardResponse value, $Res Function(_BonusCardResponse) _then) = __$BonusCardResponseCopyWithImpl;
@override @useResult
$Res call({
 int cardNumber, CardType cardType, CardStatus cardStatus, double purchasesSum, double bonuses, double holdedBonuses, String? bonusProgramName, DateTime? dateBonusBurn, List<BonusCardProperty>? cardProperties, List<BonusProgramAccountResponse> bonusProgramAccounts
});




}
/// @nodoc
class __$BonusCardResponseCopyWithImpl<$Res>
    implements _$BonusCardResponseCopyWith<$Res> {
  __$BonusCardResponseCopyWithImpl(this._self, this._then);

  final _BonusCardResponse _self;
  final $Res Function(_BonusCardResponse) _then;

/// Create a copy of BonusCardResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardNumber = null,Object? cardType = null,Object? cardStatus = null,Object? purchasesSum = null,Object? bonuses = null,Object? holdedBonuses = null,Object? bonusProgramName = freezed,Object? dateBonusBurn = freezed,Object? cardProperties = freezed,Object? bonusProgramAccounts = null,}) {
  return _then(_BonusCardResponse(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as int,cardType: null == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as CardType,cardStatus: null == cardStatus ? _self.cardStatus : cardStatus // ignore: cast_nullable_to_non_nullable
as CardStatus,purchasesSum: null == purchasesSum ? _self.purchasesSum : purchasesSum // ignore: cast_nullable_to_non_nullable
as double,bonuses: null == bonuses ? _self.bonuses : bonuses // ignore: cast_nullable_to_non_nullable
as double,holdedBonuses: null == holdedBonuses ? _self.holdedBonuses : holdedBonuses // ignore: cast_nullable_to_non_nullable
as double,bonusProgramName: freezed == bonusProgramName ? _self.bonusProgramName : bonusProgramName // ignore: cast_nullable_to_non_nullable
as String?,dateBonusBurn: freezed == dateBonusBurn ? _self.dateBonusBurn : dateBonusBurn // ignore: cast_nullable_to_non_nullable
as DateTime?,cardProperties: freezed == cardProperties ? _self._cardProperties : cardProperties // ignore: cast_nullable_to_non_nullable
as List<BonusCardProperty>?,bonusProgramAccounts: null == bonusProgramAccounts ? _self._bonusProgramAccounts : bonusProgramAccounts // ignore: cast_nullable_to_non_nullable
as List<BonusProgramAccountResponse>,
  ));
}


}


/// @nodoc
mixin _$BonusProgramAccountResponse implements DiagnosticableTreeMixin {

 int? get cardNumber; String? get name; String? get bonusProgramId; String? get comment; bool get bonusProgramActive; double get bonuses; double get holdedBonuses;
/// Create a copy of BonusProgramAccountResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusProgramAccountResponseCopyWith<BonusProgramAccountResponse> get copyWith => _$BonusProgramAccountResponseCopyWithImpl<BonusProgramAccountResponse>(this as BonusProgramAccountResponse, _$identity);

  /// Serializes this BonusProgramAccountResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusProgramAccountResponse'))
    ..add(DiagnosticsProperty('cardNumber', cardNumber))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('bonusProgramId', bonusProgramId))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('bonusProgramActive', bonusProgramActive))..add(DiagnosticsProperty('bonuses', bonuses))..add(DiagnosticsProperty('holdedBonuses', holdedBonuses));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusProgramAccountResponse&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.name, name) || other.name == name)&&(identical(other.bonusProgramId, bonusProgramId) || other.bonusProgramId == bonusProgramId)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.bonusProgramActive, bonusProgramActive) || other.bonusProgramActive == bonusProgramActive)&&(identical(other.bonuses, bonuses) || other.bonuses == bonuses)&&(identical(other.holdedBonuses, holdedBonuses) || other.holdedBonuses == holdedBonuses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardNumber,name,bonusProgramId,comment,bonusProgramActive,bonuses,holdedBonuses);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusProgramAccountResponse(cardNumber: $cardNumber, name: $name, bonusProgramId: $bonusProgramId, comment: $comment, bonusProgramActive: $bonusProgramActive, bonuses: $bonuses, holdedBonuses: $holdedBonuses)';
}


}

/// @nodoc
abstract mixin class $BonusProgramAccountResponseCopyWith<$Res>  {
  factory $BonusProgramAccountResponseCopyWith(BonusProgramAccountResponse value, $Res Function(BonusProgramAccountResponse) _then) = _$BonusProgramAccountResponseCopyWithImpl;
@useResult
$Res call({
 int? cardNumber, String? name, String? bonusProgramId, String? comment, bool bonusProgramActive, double bonuses, double holdedBonuses
});




}
/// @nodoc
class _$BonusProgramAccountResponseCopyWithImpl<$Res>
    implements $BonusProgramAccountResponseCopyWith<$Res> {
  _$BonusProgramAccountResponseCopyWithImpl(this._self, this._then);

  final BonusProgramAccountResponse _self;
  final $Res Function(BonusProgramAccountResponse) _then;

/// Create a copy of BonusProgramAccountResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardNumber = freezed,Object? name = freezed,Object? bonusProgramId = freezed,Object? comment = freezed,Object? bonusProgramActive = null,Object? bonuses = null,Object? holdedBonuses = null,}) {
  return _then(BonusProgramAccountResponse(
cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,bonusProgramId: freezed == bonusProgramId ? _self.bonusProgramId : bonusProgramId // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,bonusProgramActive: null == bonusProgramActive ? _self.bonusProgramActive : bonusProgramActive // ignore: cast_nullable_to_non_nullable
as bool,bonuses: null == bonuses ? _self.bonuses : bonuses // ignore: cast_nullable_to_non_nullable
as double,holdedBonuses: null == holdedBonuses ? _self.holdedBonuses : holdedBonuses // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [BonusProgramAccountResponse].
extension BonusProgramAccountResponsePatterns on BonusProgramAccountResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BonusProgramAccountResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BonusProgramAccountResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BonusProgramAccountResponse value)  $default,){
final _that = this;
switch (_that) {
case _BonusProgramAccountResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BonusProgramAccountResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BonusProgramAccountResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? cardNumber,  String? name,  String? bonusProgramId,  String? comment,  bool bonusProgramActive,  double bonuses,  double holdedBonuses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BonusProgramAccountResponse() when $default != null:
return $default(_that.cardNumber,_that.name,_that.bonusProgramId,_that.comment,_that.bonusProgramActive,_that.bonuses,_that.holdedBonuses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? cardNumber,  String? name,  String? bonusProgramId,  String? comment,  bool bonusProgramActive,  double bonuses,  double holdedBonuses)  $default,) {final _that = this;
switch (_that) {
case _BonusProgramAccountResponse():
return $default(_that.cardNumber,_that.name,_that.bonusProgramId,_that.comment,_that.bonusProgramActive,_that.bonuses,_that.holdedBonuses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? cardNumber,  String? name,  String? bonusProgramId,  String? comment,  bool bonusProgramActive,  double bonuses,  double holdedBonuses)?  $default,) {final _that = this;
switch (_that) {
case _BonusProgramAccountResponse() when $default != null:
return $default(_that.cardNumber,_that.name,_that.bonusProgramId,_that.comment,_that.bonusProgramActive,_that.bonuses,_that.holdedBonuses);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _BonusProgramAccountResponse with DiagnosticableTreeMixin implements BonusProgramAccountResponse {
  const _BonusProgramAccountResponse({this.cardNumber, this.name, this.bonusProgramId, this.comment, this.bonusProgramActive = false, this.bonuses = 0.0, this.holdedBonuses = 0.0});
  factory _BonusProgramAccountResponse.fromJson(Map<String, dynamic> json) => _$BonusProgramAccountResponseFromJson(json);

@override final  int? cardNumber;
@override final  String? name;
@override final  String? bonusProgramId;
@override final  String? comment;
@override@JsonKey() final  bool bonusProgramActive;
@override@JsonKey() final  double bonuses;
@override@JsonKey() final  double holdedBonuses;

/// Create a copy of BonusProgramAccountResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusProgramAccountResponseCopyWith<_BonusProgramAccountResponse> get copyWith => __$BonusProgramAccountResponseCopyWithImpl<_BonusProgramAccountResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BonusProgramAccountResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusProgramAccountResponse'))
    ..add(DiagnosticsProperty('cardNumber', cardNumber))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('bonusProgramId', bonusProgramId))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('bonusProgramActive', bonusProgramActive))..add(DiagnosticsProperty('bonuses', bonuses))..add(DiagnosticsProperty('holdedBonuses', holdedBonuses));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusProgramAccountResponse&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.name, name) || other.name == name)&&(identical(other.bonusProgramId, bonusProgramId) || other.bonusProgramId == bonusProgramId)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.bonusProgramActive, bonusProgramActive) || other.bonusProgramActive == bonusProgramActive)&&(identical(other.bonuses, bonuses) || other.bonuses == bonuses)&&(identical(other.holdedBonuses, holdedBonuses) || other.holdedBonuses == holdedBonuses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardNumber,name,bonusProgramId,comment,bonusProgramActive,bonuses,holdedBonuses);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusProgramAccountResponse(cardNumber: $cardNumber, name: $name, bonusProgramId: $bonusProgramId, comment: $comment, bonusProgramActive: $bonusProgramActive, bonuses: $bonuses, holdedBonuses: $holdedBonuses)';
}


}

/// @nodoc
abstract mixin class _$BonusProgramAccountResponseCopyWith<$Res> implements $BonusProgramAccountResponseCopyWith<$Res> {
  factory _$BonusProgramAccountResponseCopyWith(_BonusProgramAccountResponse value, $Res Function(_BonusProgramAccountResponse) _then) = __$BonusProgramAccountResponseCopyWithImpl;
@override @useResult
$Res call({
 int? cardNumber, String? name, String? bonusProgramId, String? comment, bool bonusProgramActive, double bonuses, double holdedBonuses
});




}
/// @nodoc
class __$BonusProgramAccountResponseCopyWithImpl<$Res>
    implements _$BonusProgramAccountResponseCopyWith<$Res> {
  __$BonusProgramAccountResponseCopyWithImpl(this._self, this._then);

  final _BonusProgramAccountResponse _self;
  final $Res Function(_BonusProgramAccountResponse) _then;

/// Create a copy of BonusProgramAccountResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardNumber = freezed,Object? name = freezed,Object? bonusProgramId = freezed,Object? comment = freezed,Object? bonusProgramActive = null,Object? bonuses = null,Object? holdedBonuses = null,}) {
  return _then(_BonusProgramAccountResponse(
cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,bonusProgramId: freezed == bonusProgramId ? _self.bonusProgramId : bonusProgramId // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,bonusProgramActive: null == bonusProgramActive ? _self.bonusProgramActive : bonusProgramActive // ignore: cast_nullable_to_non_nullable
as bool,bonuses: null == bonuses ? _self.bonuses : bonuses // ignore: cast_nullable_to_non_nullable
as double,holdedBonuses: null == holdedBonuses ? _self.holdedBonuses : holdedBonuses // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$BonusCardProperties implements DiagnosticableTreeMixin {

 double get purchasesSumPrevious; double? get purchasesSumNext; String get cashback;
/// Create a copy of BonusCardProperties
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusCardPropertiesCopyWith<BonusCardProperties> get copyWith => _$BonusCardPropertiesCopyWithImpl<BonusCardProperties>(this as BonusCardProperties, _$identity);

  /// Serializes this BonusCardProperties to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusCardProperties'))
    ..add(DiagnosticsProperty('purchasesSumPrevious', purchasesSumPrevious))..add(DiagnosticsProperty('purchasesSumNext', purchasesSumNext))..add(DiagnosticsProperty('cashback', cashback));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusCardProperties&&(identical(other.purchasesSumPrevious, purchasesSumPrevious) || other.purchasesSumPrevious == purchasesSumPrevious)&&(identical(other.purchasesSumNext, purchasesSumNext) || other.purchasesSumNext == purchasesSumNext)&&(identical(other.cashback, cashback) || other.cashback == cashback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,purchasesSumPrevious,purchasesSumNext,cashback);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusCardProperties(purchasesSumPrevious: $purchasesSumPrevious, purchasesSumNext: $purchasesSumNext, cashback: $cashback)';
}


}

/// @nodoc
abstract mixin class $BonusCardPropertiesCopyWith<$Res>  {
  factory $BonusCardPropertiesCopyWith(BonusCardProperties value, $Res Function(BonusCardProperties) _then) = _$BonusCardPropertiesCopyWithImpl;
@useResult
$Res call({
 double purchasesSumPrevious, double? purchasesSumNext, String cashback
});




}
/// @nodoc
class _$BonusCardPropertiesCopyWithImpl<$Res>
    implements $BonusCardPropertiesCopyWith<$Res> {
  _$BonusCardPropertiesCopyWithImpl(this._self, this._then);

  final BonusCardProperties _self;
  final $Res Function(BonusCardProperties) _then;

/// Create a copy of BonusCardProperties
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? purchasesSumPrevious = null,Object? purchasesSumNext = freezed,Object? cashback = null,}) {
  return _then(BonusCardProperties(
purchasesSumPrevious: null == purchasesSumPrevious ? _self.purchasesSumPrevious : purchasesSumPrevious // ignore: cast_nullable_to_non_nullable
as double,purchasesSumNext: freezed == purchasesSumNext ? _self.purchasesSumNext : purchasesSumNext // ignore: cast_nullable_to_non_nullable
as double?,cashback: null == cashback ? _self.cashback : cashback // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BonusCardProperties].
extension BonusCardPropertiesPatterns on BonusCardProperties {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BonusCardProperties value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BonusCardProperties() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BonusCardProperties value)  $default,){
final _that = this;
switch (_that) {
case _BonusCardProperties():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BonusCardProperties value)?  $default,){
final _that = this;
switch (_that) {
case _BonusCardProperties() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double purchasesSumPrevious,  double? purchasesSumNext,  String cashback)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BonusCardProperties() when $default != null:
return $default(_that.purchasesSumPrevious,_that.purchasesSumNext,_that.cashback);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double purchasesSumPrevious,  double? purchasesSumNext,  String cashback)  $default,) {final _that = this;
switch (_that) {
case _BonusCardProperties():
return $default(_that.purchasesSumPrevious,_that.purchasesSumNext,_that.cashback);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double purchasesSumPrevious,  double? purchasesSumNext,  String cashback)?  $default,) {final _that = this;
switch (_that) {
case _BonusCardProperties() when $default != null:
return $default(_that.purchasesSumPrevious,_that.purchasesSumNext,_that.cashback);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _BonusCardProperties with DiagnosticableTreeMixin implements BonusCardProperties {
  const _BonusCardProperties({required this.purchasesSumPrevious, required this.purchasesSumNext, required this.cashback});
  factory _BonusCardProperties.fromJson(Map<String, dynamic> json) => _$BonusCardPropertiesFromJson(json);

@override final  double purchasesSumPrevious;
@override final  double? purchasesSumNext;
@override final  String cashback;

/// Create a copy of BonusCardProperties
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusCardPropertiesCopyWith<_BonusCardProperties> get copyWith => __$BonusCardPropertiesCopyWithImpl<_BonusCardProperties>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BonusCardPropertiesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusCardProperties'))
    ..add(DiagnosticsProperty('purchasesSumPrevious', purchasesSumPrevious))..add(DiagnosticsProperty('purchasesSumNext', purchasesSumNext))..add(DiagnosticsProperty('cashback', cashback));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusCardProperties&&(identical(other.purchasesSumPrevious, purchasesSumPrevious) || other.purchasesSumPrevious == purchasesSumPrevious)&&(identical(other.purchasesSumNext, purchasesSumNext) || other.purchasesSumNext == purchasesSumNext)&&(identical(other.cashback, cashback) || other.cashback == cashback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,purchasesSumPrevious,purchasesSumNext,cashback);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusCardProperties(purchasesSumPrevious: $purchasesSumPrevious, purchasesSumNext: $purchasesSumNext, cashback: $cashback)';
}


}

/// @nodoc
abstract mixin class _$BonusCardPropertiesCopyWith<$Res> implements $BonusCardPropertiesCopyWith<$Res> {
  factory _$BonusCardPropertiesCopyWith(_BonusCardProperties value, $Res Function(_BonusCardProperties) _then) = __$BonusCardPropertiesCopyWithImpl;
@override @useResult
$Res call({
 double purchasesSumPrevious, double? purchasesSumNext, String cashback
});




}
/// @nodoc
class __$BonusCardPropertiesCopyWithImpl<$Res>
    implements _$BonusCardPropertiesCopyWith<$Res> {
  __$BonusCardPropertiesCopyWithImpl(this._self, this._then);

  final _BonusCardProperties _self;
  final $Res Function(_BonusCardProperties) _then;

/// Create a copy of BonusCardProperties
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? purchasesSumPrevious = null,Object? purchasesSumNext = freezed,Object? cashback = null,}) {
  return _then(_BonusCardProperties(
purchasesSumPrevious: null == purchasesSumPrevious ? _self.purchasesSumPrevious : purchasesSumPrevious // ignore: cast_nullable_to_non_nullable
as double,purchasesSumNext: freezed == purchasesSumNext ? _self.purchasesSumNext : purchasesSumNext // ignore: cast_nullable_to_non_nullable
as double?,cashback: null == cashback ? _self.cashback : cashback // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$BonusCardProperty implements DiagnosticableTreeMixin {

 String get id;@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) BonusCardPropertyApiName? get apiName; String get localName; dynamic get value;
/// Create a copy of BonusCardProperty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusCardPropertyCopyWith<BonusCardProperty> get copyWith => _$BonusCardPropertyCopyWithImpl<BonusCardProperty>(this as BonusCardProperty, _$identity);

  /// Serializes this BonusCardProperty to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusCardProperty'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('apiName', apiName))..add(DiagnosticsProperty('localName', localName))..add(DiagnosticsProperty('value', value));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusCardProperty&&(identical(other.id, id) || other.id == id)&&(identical(other.apiName, apiName) || other.apiName == apiName)&&(identical(other.localName, localName) || other.localName == localName)&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,apiName,localName,const DeepCollectionEquality().hash(value));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusCardProperty(id: $id, apiName: $apiName, localName: $localName, value: $value)';
}


}

/// @nodoc
abstract mixin class $BonusCardPropertyCopyWith<$Res>  {
  factory $BonusCardPropertyCopyWith(BonusCardProperty value, $Res Function(BonusCardProperty) _then) = _$BonusCardPropertyCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) BonusCardPropertyApiName? apiName, String localName, dynamic value
});




}
/// @nodoc
class _$BonusCardPropertyCopyWithImpl<$Res>
    implements $BonusCardPropertyCopyWith<$Res> {
  _$BonusCardPropertyCopyWithImpl(this._self, this._then);

  final BonusCardProperty _self;
  final $Res Function(BonusCardProperty) _then;

/// Create a copy of BonusCardProperty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? apiName = freezed,Object? localName = null,Object? value = freezed,}) {
  return _then(BonusCardProperty(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,apiName: freezed == apiName ? _self.apiName : apiName // ignore: cast_nullable_to_non_nullable
as BonusCardPropertyApiName?,localName: null == localName ? _self.localName : localName // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [BonusCardProperty].
extension BonusCardPropertyPatterns on BonusCardProperty {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BonusCardProperty value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BonusCardProperty() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BonusCardProperty value)  $default,){
final _that = this;
switch (_that) {
case _BonusCardProperty():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BonusCardProperty value)?  $default,){
final _that = this;
switch (_that) {
case _BonusCardProperty() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  BonusCardPropertyApiName? apiName,  String localName,  dynamic value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BonusCardProperty() when $default != null:
return $default(_that.id,_that.apiName,_that.localName,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  BonusCardPropertyApiName? apiName,  String localName,  dynamic value)  $default,) {final _that = this;
switch (_that) {
case _BonusCardProperty():
return $default(_that.id,_that.apiName,_that.localName,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  BonusCardPropertyApiName? apiName,  String localName,  dynamic value)?  $default,) {final _that = this;
switch (_that) {
case _BonusCardProperty() when $default != null:
return $default(_that.id,_that.apiName,_that.localName,_that.value);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _BonusCardProperty with DiagnosticableTreeMixin implements BonusCardProperty {
  const _BonusCardProperty({required this.id, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) this.apiName, required this.localName, required this.value});
  factory _BonusCardProperty.fromJson(Map<String, dynamic> json) => _$BonusCardPropertyFromJson(json);

@override final  String id;
@override@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) final  BonusCardPropertyApiName? apiName;
@override final  String localName;
@override final  dynamic value;

/// Create a copy of BonusCardProperty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusCardPropertyCopyWith<_BonusCardProperty> get copyWith => __$BonusCardPropertyCopyWithImpl<_BonusCardProperty>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BonusCardPropertyToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusCardProperty'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('apiName', apiName))..add(DiagnosticsProperty('localName', localName))..add(DiagnosticsProperty('value', value));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusCardProperty&&(identical(other.id, id) || other.id == id)&&(identical(other.apiName, apiName) || other.apiName == apiName)&&(identical(other.localName, localName) || other.localName == localName)&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,apiName,localName,const DeepCollectionEquality().hash(value));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusCardProperty(id: $id, apiName: $apiName, localName: $localName, value: $value)';
}


}

/// @nodoc
abstract mixin class _$BonusCardPropertyCopyWith<$Res> implements $BonusCardPropertyCopyWith<$Res> {
  factory _$BonusCardPropertyCopyWith(_BonusCardProperty value, $Res Function(_BonusCardProperty) _then) = __$BonusCardPropertyCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) BonusCardPropertyApiName? apiName, String localName, dynamic value
});




}
/// @nodoc
class __$BonusCardPropertyCopyWithImpl<$Res>
    implements _$BonusCardPropertyCopyWith<$Res> {
  __$BonusCardPropertyCopyWithImpl(this._self, this._then);

  final _BonusCardProperty _self;
  final $Res Function(_BonusCardProperty) _then;

/// Create a copy of BonusCardProperty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? apiName = freezed,Object? localName = null,Object? value = freezed,}) {
  return _then(_BonusCardProperty(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,apiName: freezed == apiName ? _self.apiName : apiName // ignore: cast_nullable_to_non_nullable
as BonusCardPropertyApiName?,localName: null == localName ? _self.localName : localName // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
