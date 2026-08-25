// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerApiPurchase implements DiagnosticableTreeMixin {

 Purchase get purchase; String? get activeCashierShiftId; List<BonusProgramType> get bonusProgramTypesInfo;
/// Create a copy of CustomerApiPurchase
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerApiPurchaseCopyWith<CustomerApiPurchase> get copyWith => _$CustomerApiPurchaseCopyWithImpl<CustomerApiPurchase>(this as CustomerApiPurchase, _$identity);

  /// Serializes this CustomerApiPurchase to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomerApiPurchase'))
    ..add(DiagnosticsProperty('purchase', purchase))..add(DiagnosticsProperty('activeCashierShiftId', activeCashierShiftId))..add(DiagnosticsProperty('bonusProgramTypesInfo', bonusProgramTypesInfo));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerApiPurchase&&(identical(other.purchase, purchase) || other.purchase == purchase)&&(identical(other.activeCashierShiftId, activeCashierShiftId) || other.activeCashierShiftId == activeCashierShiftId)&&const DeepCollectionEquality().equals(other.bonusProgramTypesInfo, bonusProgramTypesInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,purchase,activeCashierShiftId,const DeepCollectionEquality().hash(bonusProgramTypesInfo));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CustomerApiPurchase(purchase: $purchase, activeCashierShiftId: $activeCashierShiftId, bonusProgramTypesInfo: $bonusProgramTypesInfo)';
}


}

/// @nodoc
abstract mixin class $CustomerApiPurchaseCopyWith<$Res>  {
  factory $CustomerApiPurchaseCopyWith(CustomerApiPurchase value, $Res Function(CustomerApiPurchase) _then) = _$CustomerApiPurchaseCopyWithImpl;
@useResult
$Res call({
 Purchase purchase, String? activeCashierShiftId, List<BonusProgramType> bonusProgramTypesInfo
});


$PurchaseCopyWith<$Res> get purchase;

}
/// @nodoc
class _$CustomerApiPurchaseCopyWithImpl<$Res>
    implements $CustomerApiPurchaseCopyWith<$Res> {
  _$CustomerApiPurchaseCopyWithImpl(this._self, this._then);

  final CustomerApiPurchase _self;
  final $Res Function(CustomerApiPurchase) _then;

/// Create a copy of CustomerApiPurchase
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? purchase = null,Object? activeCashierShiftId = freezed,Object? bonusProgramTypesInfo = null,}) {
  return _then(CustomerApiPurchase(
purchase: null == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as Purchase,activeCashierShiftId: freezed == activeCashierShiftId ? _self.activeCashierShiftId : activeCashierShiftId // ignore: cast_nullable_to_non_nullable
as String?,bonusProgramTypesInfo: null == bonusProgramTypesInfo ? _self.bonusProgramTypesInfo : bonusProgramTypesInfo // ignore: cast_nullable_to_non_nullable
as List<BonusProgramType>,
  ));
}
/// Create a copy of CustomerApiPurchase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PurchaseCopyWith<$Res> get purchase {
  
  return $PurchaseCopyWith<$Res>(_self.purchase, (value) {
    return _then(_self.copyWith(purchase: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomerApiPurchase].
extension CustomerApiPurchasePatterns on CustomerApiPurchase {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerApiPurchase value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerApiPurchase() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerApiPurchase value)  $default,){
final _that = this;
switch (_that) {
case _CustomerApiPurchase():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerApiPurchase value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerApiPurchase() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Purchase purchase,  String? activeCashierShiftId,  List<BonusProgramType> bonusProgramTypesInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerApiPurchase() when $default != null:
return $default(_that.purchase,_that.activeCashierShiftId,_that.bonusProgramTypesInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Purchase purchase,  String? activeCashierShiftId,  List<BonusProgramType> bonusProgramTypesInfo)  $default,) {final _that = this;
switch (_that) {
case _CustomerApiPurchase():
return $default(_that.purchase,_that.activeCashierShiftId,_that.bonusProgramTypesInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Purchase purchase,  String? activeCashierShiftId,  List<BonusProgramType> bonusProgramTypesInfo)?  $default,) {final _that = this;
switch (_that) {
case _CustomerApiPurchase() when $default != null:
return $default(_that.purchase,_that.activeCashierShiftId,_that.bonusProgramTypesInfo);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _CustomerApiPurchase extends CustomerApiPurchase with DiagnosticableTreeMixin {
  const _CustomerApiPurchase({required this.purchase, this.activeCashierShiftId,  List<BonusProgramType> bonusProgramTypesInfo = const []}): _bonusProgramTypesInfo = bonusProgramTypesInfo,super._();
  factory _CustomerApiPurchase.fromJson(Map<String, dynamic> json) => _$CustomerApiPurchaseFromJson(json);

@override final  Purchase purchase;
@override final  String? activeCashierShiftId;
 final  List<BonusProgramType> _bonusProgramTypesInfo;
@override@JsonKey() List<BonusProgramType> get bonusProgramTypesInfo {
  if (_bonusProgramTypesInfo is EqualUnmodifiableListView) return _bonusProgramTypesInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bonusProgramTypesInfo);
}


/// Create a copy of CustomerApiPurchase
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerApiPurchaseCopyWith<_CustomerApiPurchase> get copyWith => __$CustomerApiPurchaseCopyWithImpl<_CustomerApiPurchase>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerApiPurchaseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomerApiPurchase'))
    ..add(DiagnosticsProperty('purchase', purchase))..add(DiagnosticsProperty('activeCashierShiftId', activeCashierShiftId))..add(DiagnosticsProperty('bonusProgramTypesInfo', bonusProgramTypesInfo));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerApiPurchase&&(identical(other.purchase, purchase) || other.purchase == purchase)&&(identical(other.activeCashierShiftId, activeCashierShiftId) || other.activeCashierShiftId == activeCashierShiftId)&&const DeepCollectionEquality().equals(other._bonusProgramTypesInfo, _bonusProgramTypesInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,purchase,activeCashierShiftId,const DeepCollectionEquality().hash(_bonusProgramTypesInfo));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CustomerApiPurchase(purchase: $purchase, activeCashierShiftId: $activeCashierShiftId, bonusProgramTypesInfo: $bonusProgramTypesInfo)';
}


}

/// @nodoc
abstract mixin class _$CustomerApiPurchaseCopyWith<$Res> implements $CustomerApiPurchaseCopyWith<$Res> {
  factory _$CustomerApiPurchaseCopyWith(_CustomerApiPurchase value, $Res Function(_CustomerApiPurchase) _then) = __$CustomerApiPurchaseCopyWithImpl;
@override @useResult
$Res call({
 Purchase purchase, String? activeCashierShiftId, List<BonusProgramType> bonusProgramTypesInfo
});


@override $PurchaseCopyWith<$Res> get purchase;

}
/// @nodoc
class __$CustomerApiPurchaseCopyWithImpl<$Res>
    implements _$CustomerApiPurchaseCopyWith<$Res> {
  __$CustomerApiPurchaseCopyWithImpl(this._self, this._then);

  final _CustomerApiPurchase _self;
  final $Res Function(_CustomerApiPurchase) _then;

/// Create a copy of CustomerApiPurchase
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? purchase = null,Object? activeCashierShiftId = freezed,Object? bonusProgramTypesInfo = null,}) {
  return _then(_CustomerApiPurchase(
purchase: null == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as Purchase,activeCashierShiftId: freezed == activeCashierShiftId ? _self.activeCashierShiftId : activeCashierShiftId // ignore: cast_nullable_to_non_nullable
as String?,bonusProgramTypesInfo: null == bonusProgramTypesInfo ? _self._bonusProgramTypesInfo : bonusProgramTypesInfo // ignore: cast_nullable_to_non_nullable
as List<BonusProgramType>,
  ));
}

/// Create a copy of CustomerApiPurchase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PurchaseCopyWith<$Res> get purchase {
  
  return $PurchaseCopyWith<$Res>(_self.purchase, (value) {
    return _then(_self.copyWith(purchase: value));
  });
}
}


/// @nodoc
mixin _$Purchase implements DiagnosticableTreeMixin {

 String? get id; DateTime get date; double get summ; double get summWithoutDiscount; String get storeId; List<PurchasePosition> get positions; double get bonusesSumm; double get bonusesCanSpent; double get totalBonuses; String? get checkNumber;@JsonKey(name: 'DiscountLog') List<DiscountLogItem> get discountLog; int? get cardNumber;
/// Create a copy of Purchase
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseCopyWith<Purchase> get copyWith => _$PurchaseCopyWithImpl<Purchase>(this as Purchase, _$identity);

  /// Serializes this Purchase to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Purchase'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('summ', summ))..add(DiagnosticsProperty('summWithoutDiscount', summWithoutDiscount))..add(DiagnosticsProperty('storeId', storeId))..add(DiagnosticsProperty('positions', positions))..add(DiagnosticsProperty('bonusesSumm', bonusesSumm))..add(DiagnosticsProperty('bonusesCanSpent', bonusesCanSpent))..add(DiagnosticsProperty('totalBonuses', totalBonuses))..add(DiagnosticsProperty('checkNumber', checkNumber))..add(DiagnosticsProperty('discountLog', discountLog))..add(DiagnosticsProperty('cardNumber', cardNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Purchase&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.summ, summ) || other.summ == summ)&&(identical(other.summWithoutDiscount, summWithoutDiscount) || other.summWithoutDiscount == summWithoutDiscount)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&const DeepCollectionEquality().equals(other.positions, positions)&&(identical(other.bonusesSumm, bonusesSumm) || other.bonusesSumm == bonusesSumm)&&(identical(other.bonusesCanSpent, bonusesCanSpent) || other.bonusesCanSpent == bonusesCanSpent)&&(identical(other.totalBonuses, totalBonuses) || other.totalBonuses == totalBonuses)&&(identical(other.checkNumber, checkNumber) || other.checkNumber == checkNumber)&&const DeepCollectionEquality().equals(other.discountLog, discountLog)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,summ,summWithoutDiscount,storeId,const DeepCollectionEquality().hash(positions),bonusesSumm,bonusesCanSpent,totalBonuses,checkNumber,const DeepCollectionEquality().hash(discountLog),cardNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Purchase(id: $id, date: $date, summ: $summ, summWithoutDiscount: $summWithoutDiscount, storeId: $storeId, positions: $positions, bonusesSumm: $bonusesSumm, bonusesCanSpent: $bonusesCanSpent, totalBonuses: $totalBonuses, checkNumber: $checkNumber, discountLog: $discountLog, cardNumber: $cardNumber)';
}


}

/// @nodoc
abstract mixin class $PurchaseCopyWith<$Res>  {
  factory $PurchaseCopyWith(Purchase value, $Res Function(Purchase) _then) = _$PurchaseCopyWithImpl;
@useResult
$Res call({
 String? id, DateTime date, double summ, double summWithoutDiscount, String storeId, List<PurchasePosition> positions, double bonusesSumm, double bonusesCanSpent, double totalBonuses, String? checkNumber,@JsonKey(name: 'DiscountLog') List<DiscountLogItem> discountLog, int? cardNumber
});




}
/// @nodoc
class _$PurchaseCopyWithImpl<$Res>
    implements $PurchaseCopyWith<$Res> {
  _$PurchaseCopyWithImpl(this._self, this._then);

  final Purchase _self;
  final $Res Function(Purchase) _then;

/// Create a copy of Purchase
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? date = null,Object? summ = null,Object? summWithoutDiscount = null,Object? storeId = null,Object? positions = null,Object? bonusesSumm = null,Object? bonusesCanSpent = null,Object? totalBonuses = null,Object? checkNumber = freezed,Object? discountLog = null,Object? cardNumber = freezed,}) {
  return _then(Purchase(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,summ: null == summ ? _self.summ : summ // ignore: cast_nullable_to_non_nullable
as double,summWithoutDiscount: null == summWithoutDiscount ? _self.summWithoutDiscount : summWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,positions: null == positions ? _self.positions : positions // ignore: cast_nullable_to_non_nullable
as List<PurchasePosition>,bonusesSumm: null == bonusesSumm ? _self.bonusesSumm : bonusesSumm // ignore: cast_nullable_to_non_nullable
as double,bonusesCanSpent: null == bonusesCanSpent ? _self.bonusesCanSpent : bonusesCanSpent // ignore: cast_nullable_to_non_nullable
as double,totalBonuses: null == totalBonuses ? _self.totalBonuses : totalBonuses // ignore: cast_nullable_to_non_nullable
as double,checkNumber: freezed == checkNumber ? _self.checkNumber : checkNumber // ignore: cast_nullable_to_non_nullable
as String?,discountLog: null == discountLog ? _self.discountLog : discountLog // ignore: cast_nullable_to_non_nullable
as List<DiscountLogItem>,cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Purchase].
extension PurchasePatterns on Purchase {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Purchase value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Purchase() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Purchase value)  $default,){
final _that = this;
switch (_that) {
case _Purchase():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Purchase value)?  $default,){
final _that = this;
switch (_that) {
case _Purchase() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime date,  double summ,  double summWithoutDiscount,  String storeId,  List<PurchasePosition> positions,  double bonusesSumm,  double bonusesCanSpent,  double totalBonuses,  String? checkNumber, @JsonKey(name: 'DiscountLog')  List<DiscountLogItem> discountLog,  int? cardNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Purchase() when $default != null:
return $default(_that.id,_that.date,_that.summ,_that.summWithoutDiscount,_that.storeId,_that.positions,_that.bonusesSumm,_that.bonusesCanSpent,_that.totalBonuses,_that.checkNumber,_that.discountLog,_that.cardNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime date,  double summ,  double summWithoutDiscount,  String storeId,  List<PurchasePosition> positions,  double bonusesSumm,  double bonusesCanSpent,  double totalBonuses,  String? checkNumber, @JsonKey(name: 'DiscountLog')  List<DiscountLogItem> discountLog,  int? cardNumber)  $default,) {final _that = this;
switch (_that) {
case _Purchase():
return $default(_that.id,_that.date,_that.summ,_that.summWithoutDiscount,_that.storeId,_that.positions,_that.bonusesSumm,_that.bonusesCanSpent,_that.totalBonuses,_that.checkNumber,_that.discountLog,_that.cardNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime date,  double summ,  double summWithoutDiscount,  String storeId,  List<PurchasePosition> positions,  double bonusesSumm,  double bonusesCanSpent,  double totalBonuses,  String? checkNumber, @JsonKey(name: 'DiscountLog')  List<DiscountLogItem> discountLog,  int? cardNumber)?  $default,) {final _that = this;
switch (_that) {
case _Purchase() when $default != null:
return $default(_that.id,_that.date,_that.summ,_that.summWithoutDiscount,_that.storeId,_that.positions,_that.bonusesSumm,_that.bonusesCanSpent,_that.totalBonuses,_that.checkNumber,_that.discountLog,_that.cardNumber);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _Purchase with DiagnosticableTreeMixin implements Purchase {
  const _Purchase({this.id, required this.date, required this.summ, required this.summWithoutDiscount, required this.storeId, required  List<PurchasePosition> positions, this.bonusesSumm = 0.0, this.bonusesCanSpent = 0.0, this.totalBonuses = 0.0, this.checkNumber, @JsonKey(name: 'DiscountLog')  List<DiscountLogItem> discountLog = const [], this.cardNumber}): _positions = positions,_discountLog = discountLog;
  factory _Purchase.fromJson(Map<String, dynamic> json) => _$PurchaseFromJson(json);

@override final  String? id;
@override final  DateTime date;
@override final  double summ;
@override final  double summWithoutDiscount;
@override final  String storeId;
 final  List<PurchasePosition> _positions;
@override List<PurchasePosition> get positions {
  if (_positions is EqualUnmodifiableListView) return _positions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_positions);
}

@override@JsonKey() final  double bonusesSumm;
@override@JsonKey() final  double bonusesCanSpent;
@override@JsonKey() final  double totalBonuses;
@override final  String? checkNumber;
 final  List<DiscountLogItem> _discountLog;
@override@JsonKey(name: 'DiscountLog') List<DiscountLogItem> get discountLog {
  if (_discountLog is EqualUnmodifiableListView) return _discountLog;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_discountLog);
}

@override final  int? cardNumber;

/// Create a copy of Purchase
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseCopyWith<_Purchase> get copyWith => __$PurchaseCopyWithImpl<_Purchase>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Purchase'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('summ', summ))..add(DiagnosticsProperty('summWithoutDiscount', summWithoutDiscount))..add(DiagnosticsProperty('storeId', storeId))..add(DiagnosticsProperty('positions', positions))..add(DiagnosticsProperty('bonusesSumm', bonusesSumm))..add(DiagnosticsProperty('bonusesCanSpent', bonusesCanSpent))..add(DiagnosticsProperty('totalBonuses', totalBonuses))..add(DiagnosticsProperty('checkNumber', checkNumber))..add(DiagnosticsProperty('discountLog', discountLog))..add(DiagnosticsProperty('cardNumber', cardNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Purchase&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.summ, summ) || other.summ == summ)&&(identical(other.summWithoutDiscount, summWithoutDiscount) || other.summWithoutDiscount == summWithoutDiscount)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&const DeepCollectionEquality().equals(other._positions, _positions)&&(identical(other.bonusesSumm, bonusesSumm) || other.bonusesSumm == bonusesSumm)&&(identical(other.bonusesCanSpent, bonusesCanSpent) || other.bonusesCanSpent == bonusesCanSpent)&&(identical(other.totalBonuses, totalBonuses) || other.totalBonuses == totalBonuses)&&(identical(other.checkNumber, checkNumber) || other.checkNumber == checkNumber)&&const DeepCollectionEquality().equals(other._discountLog, _discountLog)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,summ,summWithoutDiscount,storeId,const DeepCollectionEquality().hash(_positions),bonusesSumm,bonusesCanSpent,totalBonuses,checkNumber,const DeepCollectionEquality().hash(_discountLog),cardNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Purchase(id: $id, date: $date, summ: $summ, summWithoutDiscount: $summWithoutDiscount, storeId: $storeId, positions: $positions, bonusesSumm: $bonusesSumm, bonusesCanSpent: $bonusesCanSpent, totalBonuses: $totalBonuses, checkNumber: $checkNumber, discountLog: $discountLog, cardNumber: $cardNumber)';
}


}

/// @nodoc
abstract mixin class _$PurchaseCopyWith<$Res> implements $PurchaseCopyWith<$Res> {
  factory _$PurchaseCopyWith(_Purchase value, $Res Function(_Purchase) _then) = __$PurchaseCopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime date, double summ, double summWithoutDiscount, String storeId, List<PurchasePosition> positions, double bonusesSumm, double bonusesCanSpent, double totalBonuses, String? checkNumber,@JsonKey(name: 'DiscountLog') List<DiscountLogItem> discountLog, int? cardNumber
});




}
/// @nodoc
class __$PurchaseCopyWithImpl<$Res>
    implements _$PurchaseCopyWith<$Res> {
  __$PurchaseCopyWithImpl(this._self, this._then);

  final _Purchase _self;
  final $Res Function(_Purchase) _then;

/// Create a copy of Purchase
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? date = null,Object? summ = null,Object? summWithoutDiscount = null,Object? storeId = null,Object? positions = null,Object? bonusesSumm = null,Object? bonusesCanSpent = null,Object? totalBonuses = null,Object? checkNumber = freezed,Object? discountLog = null,Object? cardNumber = freezed,}) {
  return _then(_Purchase(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,summ: null == summ ? _self.summ : summ // ignore: cast_nullable_to_non_nullable
as double,summWithoutDiscount: null == summWithoutDiscount ? _self.summWithoutDiscount : summWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,positions: null == positions ? _self._positions : positions // ignore: cast_nullable_to_non_nullable
as List<PurchasePosition>,bonusesSumm: null == bonusesSumm ? _self.bonusesSumm : bonusesSumm // ignore: cast_nullable_to_non_nullable
as double,bonusesCanSpent: null == bonusesCanSpent ? _self.bonusesCanSpent : bonusesCanSpent // ignore: cast_nullable_to_non_nullable
as double,totalBonuses: null == totalBonuses ? _self.totalBonuses : totalBonuses // ignore: cast_nullable_to_non_nullable
as double,checkNumber: freezed == checkNumber ? _self.checkNumber : checkNumber // ignore: cast_nullable_to_non_nullable
as String?,discountLog: null == discountLog ? _self._discountLog : discountLog // ignore: cast_nullable_to_non_nullable
as List<DiscountLogItem>,cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PurchasePosition implements DiagnosticableTreeMixin {

 int get lineNumber; String get productCode; double get quantity; double get price; double get summ; double get summWithoutDiscount; String? get groupCode; String? get barCode; double get bonusesSumm;
/// Create a copy of PurchasePosition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchasePositionCopyWith<PurchasePosition> get copyWith => _$PurchasePositionCopyWithImpl<PurchasePosition>(this as PurchasePosition, _$identity);

  /// Serializes this PurchasePosition to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PurchasePosition'))
    ..add(DiagnosticsProperty('lineNumber', lineNumber))..add(DiagnosticsProperty('productCode', productCode))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('summ', summ))..add(DiagnosticsProperty('summWithoutDiscount', summWithoutDiscount))..add(DiagnosticsProperty('groupCode', groupCode))..add(DiagnosticsProperty('barCode', barCode))..add(DiagnosticsProperty('bonusesSumm', bonusesSumm));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchasePosition&&(identical(other.lineNumber, lineNumber) || other.lineNumber == lineNumber)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.summ, summ) || other.summ == summ)&&(identical(other.summWithoutDiscount, summWithoutDiscount) || other.summWithoutDiscount == summWithoutDiscount)&&(identical(other.groupCode, groupCode) || other.groupCode == groupCode)&&(identical(other.barCode, barCode) || other.barCode == barCode)&&(identical(other.bonusesSumm, bonusesSumm) || other.bonusesSumm == bonusesSumm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lineNumber,productCode,quantity,price,summ,summWithoutDiscount,groupCode,barCode,bonusesSumm);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PurchasePosition(lineNumber: $lineNumber, productCode: $productCode, quantity: $quantity, price: $price, summ: $summ, summWithoutDiscount: $summWithoutDiscount, groupCode: $groupCode, barCode: $barCode, bonusesSumm: $bonusesSumm)';
}


}

/// @nodoc
abstract mixin class $PurchasePositionCopyWith<$Res>  {
  factory $PurchasePositionCopyWith(PurchasePosition value, $Res Function(PurchasePosition) _then) = _$PurchasePositionCopyWithImpl;
@useResult
$Res call({
 int lineNumber, String productCode, double quantity, double price, double summ, double summWithoutDiscount, String? groupCode, String? barCode, double bonusesSumm
});




}
/// @nodoc
class _$PurchasePositionCopyWithImpl<$Res>
    implements $PurchasePositionCopyWith<$Res> {
  _$PurchasePositionCopyWithImpl(this._self, this._then);

  final PurchasePosition _self;
  final $Res Function(PurchasePosition) _then;

/// Create a copy of PurchasePosition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lineNumber = null,Object? productCode = null,Object? quantity = null,Object? price = null,Object? summ = null,Object? summWithoutDiscount = null,Object? groupCode = freezed,Object? barCode = freezed,Object? bonusesSumm = null,}) {
  return _then(PurchasePosition(
lineNumber: null == lineNumber ? _self.lineNumber : lineNumber // ignore: cast_nullable_to_non_nullable
as int,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,summ: null == summ ? _self.summ : summ // ignore: cast_nullable_to_non_nullable
as double,summWithoutDiscount: null == summWithoutDiscount ? _self.summWithoutDiscount : summWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double,groupCode: freezed == groupCode ? _self.groupCode : groupCode // ignore: cast_nullable_to_non_nullable
as String?,barCode: freezed == barCode ? _self.barCode : barCode // ignore: cast_nullable_to_non_nullable
as String?,bonusesSumm: null == bonusesSumm ? _self.bonusesSumm : bonusesSumm // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchasePosition].
extension PurchasePositionPatterns on PurchasePosition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchasePosition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchasePosition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchasePosition value)  $default,){
final _that = this;
switch (_that) {
case _PurchasePosition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchasePosition value)?  $default,){
final _that = this;
switch (_that) {
case _PurchasePosition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int lineNumber,  String productCode,  double quantity,  double price,  double summ,  double summWithoutDiscount,  String? groupCode,  String? barCode,  double bonusesSumm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchasePosition() when $default != null:
return $default(_that.lineNumber,_that.productCode,_that.quantity,_that.price,_that.summ,_that.summWithoutDiscount,_that.groupCode,_that.barCode,_that.bonusesSumm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int lineNumber,  String productCode,  double quantity,  double price,  double summ,  double summWithoutDiscount,  String? groupCode,  String? barCode,  double bonusesSumm)  $default,) {final _that = this;
switch (_that) {
case _PurchasePosition():
return $default(_that.lineNumber,_that.productCode,_that.quantity,_that.price,_that.summ,_that.summWithoutDiscount,_that.groupCode,_that.barCode,_that.bonusesSumm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int lineNumber,  String productCode,  double quantity,  double price,  double summ,  double summWithoutDiscount,  String? groupCode,  String? barCode,  double bonusesSumm)?  $default,) {final _that = this;
switch (_that) {
case _PurchasePosition() when $default != null:
return $default(_that.lineNumber,_that.productCode,_that.quantity,_that.price,_that.summ,_that.summWithoutDiscount,_that.groupCode,_that.barCode,_that.bonusesSumm);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _PurchasePosition with DiagnosticableTreeMixin implements PurchasePosition {
  const _PurchasePosition({this.lineNumber = 0, required this.productCode, required this.quantity, required this.price, required this.summ, required this.summWithoutDiscount, this.groupCode, this.barCode, this.bonusesSumm = 0.0});
  factory _PurchasePosition.fromJson(Map<String, dynamic> json) => _$PurchasePositionFromJson(json);

@override@JsonKey() final  int lineNumber;
@override final  String productCode;
@override final  double quantity;
@override final  double price;
@override final  double summ;
@override final  double summWithoutDiscount;
@override final  String? groupCode;
@override final  String? barCode;
@override@JsonKey() final  double bonusesSumm;

/// Create a copy of PurchasePosition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchasePositionCopyWith<_PurchasePosition> get copyWith => __$PurchasePositionCopyWithImpl<_PurchasePosition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchasePositionToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PurchasePosition'))
    ..add(DiagnosticsProperty('lineNumber', lineNumber))..add(DiagnosticsProperty('productCode', productCode))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('summ', summ))..add(DiagnosticsProperty('summWithoutDiscount', summWithoutDiscount))..add(DiagnosticsProperty('groupCode', groupCode))..add(DiagnosticsProperty('barCode', barCode))..add(DiagnosticsProperty('bonusesSumm', bonusesSumm));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchasePosition&&(identical(other.lineNumber, lineNumber) || other.lineNumber == lineNumber)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.summ, summ) || other.summ == summ)&&(identical(other.summWithoutDiscount, summWithoutDiscount) || other.summWithoutDiscount == summWithoutDiscount)&&(identical(other.groupCode, groupCode) || other.groupCode == groupCode)&&(identical(other.barCode, barCode) || other.barCode == barCode)&&(identical(other.bonusesSumm, bonusesSumm) || other.bonusesSumm == bonusesSumm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lineNumber,productCode,quantity,price,summ,summWithoutDiscount,groupCode,barCode,bonusesSumm);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PurchasePosition(lineNumber: $lineNumber, productCode: $productCode, quantity: $quantity, price: $price, summ: $summ, summWithoutDiscount: $summWithoutDiscount, groupCode: $groupCode, barCode: $barCode, bonusesSumm: $bonusesSumm)';
}


}

/// @nodoc
abstract mixin class _$PurchasePositionCopyWith<$Res> implements $PurchasePositionCopyWith<$Res> {
  factory _$PurchasePositionCopyWith(_PurchasePosition value, $Res Function(_PurchasePosition) _then) = __$PurchasePositionCopyWithImpl;
@override @useResult
$Res call({
 int lineNumber, String productCode, double quantity, double price, double summ, double summWithoutDiscount, String? groupCode, String? barCode, double bonusesSumm
});




}
/// @nodoc
class __$PurchasePositionCopyWithImpl<$Res>
    implements _$PurchasePositionCopyWith<$Res> {
  __$PurchasePositionCopyWithImpl(this._self, this._then);

  final _PurchasePosition _self;
  final $Res Function(_PurchasePosition) _then;

/// Create a copy of PurchasePosition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lineNumber = null,Object? productCode = null,Object? quantity = null,Object? price = null,Object? summ = null,Object? summWithoutDiscount = null,Object? groupCode = freezed,Object? barCode = freezed,Object? bonusesSumm = null,}) {
  return _then(_PurchasePosition(
lineNumber: null == lineNumber ? _self.lineNumber : lineNumber // ignore: cast_nullable_to_non_nullable
as int,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,summ: null == summ ? _self.summ : summ // ignore: cast_nullable_to_non_nullable
as double,summWithoutDiscount: null == summWithoutDiscount ? _self.summWithoutDiscount : summWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double,groupCode: freezed == groupCode ? _self.groupCode : groupCode // ignore: cast_nullable_to_non_nullable
as String?,barCode: freezed == barCode ? _self.barCode : barCode // ignore: cast_nullable_to_non_nullable
as String?,bonusesSumm: null == bonusesSumm ? _self.bonusesSumm : bonusesSumm // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$BonusProgramType implements DiagnosticableTreeMixin {

 String? get bonusProgramTypeName; double? get bonusesCurrentActiveBalance; double? get bonusesCanSpent;
/// Create a copy of BonusProgramType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusProgramTypeCopyWith<BonusProgramType> get copyWith => _$BonusProgramTypeCopyWithImpl<BonusProgramType>(this as BonusProgramType, _$identity);

  /// Serializes this BonusProgramType to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusProgramType'))
    ..add(DiagnosticsProperty('bonusProgramTypeName', bonusProgramTypeName))..add(DiagnosticsProperty('bonusesCurrentActiveBalance', bonusesCurrentActiveBalance))..add(DiagnosticsProperty('bonusesCanSpent', bonusesCanSpent));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusProgramType&&(identical(other.bonusProgramTypeName, bonusProgramTypeName) || other.bonusProgramTypeName == bonusProgramTypeName)&&(identical(other.bonusesCurrentActiveBalance, bonusesCurrentActiveBalance) || other.bonusesCurrentActiveBalance == bonusesCurrentActiveBalance)&&(identical(other.bonusesCanSpent, bonusesCanSpent) || other.bonusesCanSpent == bonusesCanSpent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bonusProgramTypeName,bonusesCurrentActiveBalance,bonusesCanSpent);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusProgramType(bonusProgramTypeName: $bonusProgramTypeName, bonusesCurrentActiveBalance: $bonusesCurrentActiveBalance, bonusesCanSpent: $bonusesCanSpent)';
}


}

/// @nodoc
abstract mixin class $BonusProgramTypeCopyWith<$Res>  {
  factory $BonusProgramTypeCopyWith(BonusProgramType value, $Res Function(BonusProgramType) _then) = _$BonusProgramTypeCopyWithImpl;
@useResult
$Res call({
 String? bonusProgramTypeName, double? bonusesCurrentActiveBalance, double? bonusesCanSpent
});




}
/// @nodoc
class _$BonusProgramTypeCopyWithImpl<$Res>
    implements $BonusProgramTypeCopyWith<$Res> {
  _$BonusProgramTypeCopyWithImpl(this._self, this._then);

  final BonusProgramType _self;
  final $Res Function(BonusProgramType) _then;

/// Create a copy of BonusProgramType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bonusProgramTypeName = freezed,Object? bonusesCurrentActiveBalance = freezed,Object? bonusesCanSpent = freezed,}) {
  return _then(BonusProgramType(
bonusProgramTypeName: freezed == bonusProgramTypeName ? _self.bonusProgramTypeName : bonusProgramTypeName // ignore: cast_nullable_to_non_nullable
as String?,bonusesCurrentActiveBalance: freezed == bonusesCurrentActiveBalance ? _self.bonusesCurrentActiveBalance : bonusesCurrentActiveBalance // ignore: cast_nullable_to_non_nullable
as double?,bonusesCanSpent: freezed == bonusesCanSpent ? _self.bonusesCanSpent : bonusesCanSpent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [BonusProgramType].
extension BonusProgramTypePatterns on BonusProgramType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BonusProgramType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BonusProgramType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BonusProgramType value)  $default,){
final _that = this;
switch (_that) {
case _BonusProgramType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BonusProgramType value)?  $default,){
final _that = this;
switch (_that) {
case _BonusProgramType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? bonusProgramTypeName,  double? bonusesCurrentActiveBalance,  double? bonusesCanSpent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BonusProgramType() when $default != null:
return $default(_that.bonusProgramTypeName,_that.bonusesCurrentActiveBalance,_that.bonusesCanSpent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? bonusProgramTypeName,  double? bonusesCurrentActiveBalance,  double? bonusesCanSpent)  $default,) {final _that = this;
switch (_that) {
case _BonusProgramType():
return $default(_that.bonusProgramTypeName,_that.bonusesCurrentActiveBalance,_that.bonusesCanSpent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? bonusProgramTypeName,  double? bonusesCurrentActiveBalance,  double? bonusesCanSpent)?  $default,) {final _that = this;
switch (_that) {
case _BonusProgramType() when $default != null:
return $default(_that.bonusProgramTypeName,_that.bonusesCurrentActiveBalance,_that.bonusesCanSpent);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _BonusProgramType with DiagnosticableTreeMixin implements BonusProgramType {
  const _BonusProgramType({this.bonusProgramTypeName, this.bonusesCurrentActiveBalance, this.bonusesCanSpent});
  factory _BonusProgramType.fromJson(Map<String, dynamic> json) => _$BonusProgramTypeFromJson(json);

@override final  String? bonusProgramTypeName;
@override final  double? bonusesCurrentActiveBalance;
@override final  double? bonusesCanSpent;

/// Create a copy of BonusProgramType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusProgramTypeCopyWith<_BonusProgramType> get copyWith => __$BonusProgramTypeCopyWithImpl<_BonusProgramType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BonusProgramTypeToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusProgramType'))
    ..add(DiagnosticsProperty('bonusProgramTypeName', bonusProgramTypeName))..add(DiagnosticsProperty('bonusesCurrentActiveBalance', bonusesCurrentActiveBalance))..add(DiagnosticsProperty('bonusesCanSpent', bonusesCanSpent));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusProgramType&&(identical(other.bonusProgramTypeName, bonusProgramTypeName) || other.bonusProgramTypeName == bonusProgramTypeName)&&(identical(other.bonusesCurrentActiveBalance, bonusesCurrentActiveBalance) || other.bonusesCurrentActiveBalance == bonusesCurrentActiveBalance)&&(identical(other.bonusesCanSpent, bonusesCanSpent) || other.bonusesCanSpent == bonusesCanSpent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bonusProgramTypeName,bonusesCurrentActiveBalance,bonusesCanSpent);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusProgramType(bonusProgramTypeName: $bonusProgramTypeName, bonusesCurrentActiveBalance: $bonusesCurrentActiveBalance, bonusesCanSpent: $bonusesCanSpent)';
}


}

/// @nodoc
abstract mixin class _$BonusProgramTypeCopyWith<$Res> implements $BonusProgramTypeCopyWith<$Res> {
  factory _$BonusProgramTypeCopyWith(_BonusProgramType value, $Res Function(_BonusProgramType) _then) = __$BonusProgramTypeCopyWithImpl;
@override @useResult
$Res call({
 String? bonusProgramTypeName, double? bonusesCurrentActiveBalance, double? bonusesCanSpent
});




}
/// @nodoc
class __$BonusProgramTypeCopyWithImpl<$Res>
    implements _$BonusProgramTypeCopyWith<$Res> {
  __$BonusProgramTypeCopyWithImpl(this._self, this._then);

  final _BonusProgramType _self;
  final $Res Function(_BonusProgramType) _then;

/// Create a copy of BonusProgramType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bonusProgramTypeName = freezed,Object? bonusesCurrentActiveBalance = freezed,Object? bonusesCanSpent = freezed,}) {
  return _then(_BonusProgramType(
bonusProgramTypeName: freezed == bonusProgramTypeName ? _self.bonusProgramTypeName : bonusProgramTypeName // ignore: cast_nullable_to_non_nullable
as String?,bonusesCurrentActiveBalance: freezed == bonusesCurrentActiveBalance ? _self.bonusesCurrentActiveBalance : bonusesCurrentActiveBalance // ignore: cast_nullable_to_non_nullable
as double?,bonusesCanSpent: freezed == bonusesCanSpent ? _self.bonusesCanSpent : bonusesCanSpent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$DiscountLogItem implements DiagnosticableTreeMixin {

@JsonKey(unknownEnumValue: DiscountLogType.unknown) DiscountLogType? get type; double? get discountValue; PurchasePosition? get line;
/// Create a copy of DiscountLogItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiscountLogItemCopyWith<DiscountLogItem> get copyWith => _$DiscountLogItemCopyWithImpl<DiscountLogItem>(this as DiscountLogItem, _$identity);

  /// Serializes this DiscountLogItem to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DiscountLogItem'))
    ..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('discountValue', discountValue))..add(DiagnosticsProperty('line', line));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiscountLogItem&&(identical(other.type, type) || other.type == type)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.line, line) || other.line == line));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,discountValue,line);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DiscountLogItem(type: $type, discountValue: $discountValue, line: $line)';
}


}

/// @nodoc
abstract mixin class $DiscountLogItemCopyWith<$Res>  {
  factory $DiscountLogItemCopyWith(DiscountLogItem value, $Res Function(DiscountLogItem) _then) = _$DiscountLogItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: DiscountLogType.unknown) DiscountLogType? type, double? discountValue, PurchasePosition? line
});


$PurchasePositionCopyWith<$Res>? get line;

}
/// @nodoc
class _$DiscountLogItemCopyWithImpl<$Res>
    implements $DiscountLogItemCopyWith<$Res> {
  _$DiscountLogItemCopyWithImpl(this._self, this._then);

  final DiscountLogItem _self;
  final $Res Function(DiscountLogItem) _then;

/// Create a copy of DiscountLogItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? discountValue = freezed,Object? line = freezed,}) {
  return _then(DiscountLogItem(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DiscountLogType?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as double?,line: freezed == line ? _self.line : line // ignore: cast_nullable_to_non_nullable
as PurchasePosition?,
  ));
}
/// Create a copy of DiscountLogItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PurchasePositionCopyWith<$Res>? get line {
    if (_self.line == null) {
    return null;
  }

  return $PurchasePositionCopyWith<$Res>(_self.line!, (value) {
    return _then(_self.copyWith(line: value));
  });
}
}


/// Adds pattern-matching-related methods to [DiscountLogItem].
extension DiscountLogItemPatterns on DiscountLogItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiscountLogItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiscountLogItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiscountLogItem value)  $default,){
final _that = this;
switch (_that) {
case _DiscountLogItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiscountLogItem value)?  $default,){
final _that = this;
switch (_that) {
case _DiscountLogItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: DiscountLogType.unknown)  DiscountLogType? type,  double? discountValue,  PurchasePosition? line)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiscountLogItem() when $default != null:
return $default(_that.type,_that.discountValue,_that.line);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: DiscountLogType.unknown)  DiscountLogType? type,  double? discountValue,  PurchasePosition? line)  $default,) {final _that = this;
switch (_that) {
case _DiscountLogItem():
return $default(_that.type,_that.discountValue,_that.line);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(unknownEnumValue: DiscountLogType.unknown)  DiscountLogType? type,  double? discountValue,  PurchasePosition? line)?  $default,) {final _that = this;
switch (_that) {
case _DiscountLogItem() when $default != null:
return $default(_that.type,_that.discountValue,_that.line);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _DiscountLogItem with DiagnosticableTreeMixin implements DiscountLogItem {
  const _DiscountLogItem({@JsonKey(unknownEnumValue: DiscountLogType.unknown) this.type, this.discountValue, this.line});
  factory _DiscountLogItem.fromJson(Map<String, dynamic> json) => _$DiscountLogItemFromJson(json);

@override@JsonKey(unknownEnumValue: DiscountLogType.unknown) final  DiscountLogType? type;
@override final  double? discountValue;
@override final  PurchasePosition? line;

/// Create a copy of DiscountLogItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiscountLogItemCopyWith<_DiscountLogItem> get copyWith => __$DiscountLogItemCopyWithImpl<_DiscountLogItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiscountLogItemToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DiscountLogItem'))
    ..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('discountValue', discountValue))..add(DiagnosticsProperty('line', line));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiscountLogItem&&(identical(other.type, type) || other.type == type)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.line, line) || other.line == line));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,discountValue,line);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DiscountLogItem(type: $type, discountValue: $discountValue, line: $line)';
}


}

/// @nodoc
abstract mixin class _$DiscountLogItemCopyWith<$Res> implements $DiscountLogItemCopyWith<$Res> {
  factory _$DiscountLogItemCopyWith(_DiscountLogItem value, $Res Function(_DiscountLogItem) _then) = __$DiscountLogItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: DiscountLogType.unknown) DiscountLogType? type, double? discountValue, PurchasePosition? line
});


@override $PurchasePositionCopyWith<$Res>? get line;

}
/// @nodoc
class __$DiscountLogItemCopyWithImpl<$Res>
    implements _$DiscountLogItemCopyWith<$Res> {
  __$DiscountLogItemCopyWithImpl(this._self, this._then);

  final _DiscountLogItem _self;
  final $Res Function(_DiscountLogItem) _then;

/// Create a copy of DiscountLogItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? discountValue = freezed,Object? line = freezed,}) {
  return _then(_DiscountLogItem(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DiscountLogType?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as double?,line: freezed == line ? _self.line : line // ignore: cast_nullable_to_non_nullable
as PurchasePosition?,
  ));
}

/// Create a copy of DiscountLogItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PurchasePositionCopyWith<$Res>? get line {
    if (_self.line == null) {
    return null;
  }

  return $PurchasePositionCopyWith<$Res>(_self.line!, (value) {
    return _then(_self.copyWith(line: value));
  });
}
}

// dart format on
