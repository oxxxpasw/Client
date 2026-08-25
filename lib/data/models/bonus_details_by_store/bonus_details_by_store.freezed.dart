// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bonus_details_by_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BonusDetailsByStore implements DiagnosticableTreeMixin {

 int get cardNumber; String get bonusProgramId;@JsonKey(defaultValue: false) bool get bonusProgramActive; double get bonuses; String? get name;
/// Create a copy of BonusDetailsByStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusDetailsByStoreCopyWith<BonusDetailsByStore> get copyWith => _$BonusDetailsByStoreCopyWithImpl<BonusDetailsByStore>(this as BonusDetailsByStore, _$identity);

  /// Serializes this BonusDetailsByStore to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusDetailsByStore'))
    ..add(DiagnosticsProperty('cardNumber', cardNumber))..add(DiagnosticsProperty('bonusProgramId', bonusProgramId))..add(DiagnosticsProperty('bonusProgramActive', bonusProgramActive))..add(DiagnosticsProperty('bonuses', bonuses))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusDetailsByStore&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.bonusProgramId, bonusProgramId) || other.bonusProgramId == bonusProgramId)&&(identical(other.bonusProgramActive, bonusProgramActive) || other.bonusProgramActive == bonusProgramActive)&&(identical(other.bonuses, bonuses) || other.bonuses == bonuses)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardNumber,bonusProgramId,bonusProgramActive,bonuses,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusDetailsByStore(cardNumber: $cardNumber, bonusProgramId: $bonusProgramId, bonusProgramActive: $bonusProgramActive, bonuses: $bonuses, name: $name)';
}


}

/// @nodoc
abstract mixin class $BonusDetailsByStoreCopyWith<$Res>  {
  factory $BonusDetailsByStoreCopyWith(BonusDetailsByStore value, $Res Function(BonusDetailsByStore) _then) = _$BonusDetailsByStoreCopyWithImpl;
@useResult
$Res call({
 int cardNumber, String bonusProgramId,@JsonKey(defaultValue: false) bool bonusProgramActive, double bonuses, String? name
});




}
/// @nodoc
class _$BonusDetailsByStoreCopyWithImpl<$Res>
    implements $BonusDetailsByStoreCopyWith<$Res> {
  _$BonusDetailsByStoreCopyWithImpl(this._self, this._then);

  final BonusDetailsByStore _self;
  final $Res Function(BonusDetailsByStore) _then;

/// Create a copy of BonusDetailsByStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardNumber = null,Object? bonusProgramId = null,Object? bonusProgramActive = null,Object? bonuses = null,Object? name = freezed,}) {
  return _then(BonusDetailsByStore(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as int,bonusProgramId: null == bonusProgramId ? _self.bonusProgramId : bonusProgramId // ignore: cast_nullable_to_non_nullable
as String,bonusProgramActive: null == bonusProgramActive ? _self.bonusProgramActive : bonusProgramActive // ignore: cast_nullable_to_non_nullable
as bool,bonuses: null == bonuses ? _self.bonuses : bonuses // ignore: cast_nullable_to_non_nullable
as double,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BonusDetailsByStore].
extension BonusDetailsByStorePatterns on BonusDetailsByStore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BonusDetailsByStore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BonusDetailsByStore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BonusDetailsByStore value)  $default,){
final _that = this;
switch (_that) {
case _BonusDetailsByStore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BonusDetailsByStore value)?  $default,){
final _that = this;
switch (_that) {
case _BonusDetailsByStore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int cardNumber,  String bonusProgramId, @JsonKey(defaultValue: false)  bool bonusProgramActive,  double bonuses,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BonusDetailsByStore() when $default != null:
return $default(_that.cardNumber,_that.bonusProgramId,_that.bonusProgramActive,_that.bonuses,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int cardNumber,  String bonusProgramId, @JsonKey(defaultValue: false)  bool bonusProgramActive,  double bonuses,  String? name)  $default,) {final _that = this;
switch (_that) {
case _BonusDetailsByStore():
return $default(_that.cardNumber,_that.bonusProgramId,_that.bonusProgramActive,_that.bonuses,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int cardNumber,  String bonusProgramId, @JsonKey(defaultValue: false)  bool bonusProgramActive,  double bonuses,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _BonusDetailsByStore() when $default != null:
return $default(_that.cardNumber,_that.bonusProgramId,_that.bonusProgramActive,_that.bonuses,_that.name);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _BonusDetailsByStore with DiagnosticableTreeMixin implements BonusDetailsByStore {
  const _BonusDetailsByStore({required this.cardNumber, required this.bonusProgramId, @JsonKey(defaultValue: false) required this.bonusProgramActive, required this.bonuses, this.name});
  factory _BonusDetailsByStore.fromJson(Map<String, dynamic> json) => _$BonusDetailsByStoreFromJson(json);

@override final  int cardNumber;
@override final  String bonusProgramId;
@override@JsonKey(defaultValue: false) final  bool bonusProgramActive;
@override final  double bonuses;
@override final  String? name;

/// Create a copy of BonusDetailsByStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusDetailsByStoreCopyWith<_BonusDetailsByStore> get copyWith => __$BonusDetailsByStoreCopyWithImpl<_BonusDetailsByStore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BonusDetailsByStoreToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BonusDetailsByStore'))
    ..add(DiagnosticsProperty('cardNumber', cardNumber))..add(DiagnosticsProperty('bonusProgramId', bonusProgramId))..add(DiagnosticsProperty('bonusProgramActive', bonusProgramActive))..add(DiagnosticsProperty('bonuses', bonuses))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusDetailsByStore&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.bonusProgramId, bonusProgramId) || other.bonusProgramId == bonusProgramId)&&(identical(other.bonusProgramActive, bonusProgramActive) || other.bonusProgramActive == bonusProgramActive)&&(identical(other.bonuses, bonuses) || other.bonuses == bonuses)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardNumber,bonusProgramId,bonusProgramActive,bonuses,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BonusDetailsByStore(cardNumber: $cardNumber, bonusProgramId: $bonusProgramId, bonusProgramActive: $bonusProgramActive, bonuses: $bonuses, name: $name)';
}


}

/// @nodoc
abstract mixin class _$BonusDetailsByStoreCopyWith<$Res> implements $BonusDetailsByStoreCopyWith<$Res> {
  factory _$BonusDetailsByStoreCopyWith(_BonusDetailsByStore value, $Res Function(_BonusDetailsByStore) _then) = __$BonusDetailsByStoreCopyWithImpl;
@override @useResult
$Res call({
 int cardNumber, String bonusProgramId,@JsonKey(defaultValue: false) bool bonusProgramActive, double bonuses, String? name
});




}
/// @nodoc
class __$BonusDetailsByStoreCopyWithImpl<$Res>
    implements _$BonusDetailsByStoreCopyWith<$Res> {
  __$BonusDetailsByStoreCopyWithImpl(this._self, this._then);

  final _BonusDetailsByStore _self;
  final $Res Function(_BonusDetailsByStore) _then;

/// Create a copy of BonusDetailsByStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardNumber = null,Object? bonusProgramId = null,Object? bonusProgramActive = null,Object? bonuses = null,Object? name = freezed,}) {
  return _then(_BonusDetailsByStore(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as int,bonusProgramId: null == bonusProgramId ? _self.bonusProgramId : bonusProgramId // ignore: cast_nullable_to_non_nullable
as String,bonusProgramActive: null == bonusProgramActive ? _self.bonusProgramActive : bonusProgramActive // ignore: cast_nullable_to_non_nullable
as bool,bonuses: null == bonuses ? _self.bonuses : bonuses // ignore: cast_nullable_to_non_nullable
as double,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
