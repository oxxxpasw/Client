// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomerAccountModel implements DiagnosticableTreeMixin {

 List<BonusCardModel> get cards; List<PromotionShortInfo> get promotions;
/// Create a copy of CustomerAccountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerAccountModelCopyWith<CustomerAccountModel> get copyWith => _$CustomerAccountModelCopyWithImpl<CustomerAccountModel>(this as CustomerAccountModel, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomerAccountModel'))
    ..add(DiagnosticsProperty('cards', cards))..add(DiagnosticsProperty('promotions', promotions));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerAccountModel&&const DeepCollectionEquality().equals(other.cards, cards)&&const DeepCollectionEquality().equals(other.promotions, promotions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cards),const DeepCollectionEquality().hash(promotions));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CustomerAccountModel(cards: $cards, promotions: $promotions)';
}


}

/// @nodoc
abstract mixin class $CustomerAccountModelCopyWith<$Res>  {
  factory $CustomerAccountModelCopyWith(CustomerAccountModel value, $Res Function(CustomerAccountModel) _then) = _$CustomerAccountModelCopyWithImpl;
@useResult
$Res call({
 List<BonusCardModel> cards, List<PromotionShortInfo> promotions
});




}
/// @nodoc
class _$CustomerAccountModelCopyWithImpl<$Res>
    implements $CustomerAccountModelCopyWith<$Res> {
  _$CustomerAccountModelCopyWithImpl(this._self, this._then);

  final CustomerAccountModel _self;
  final $Res Function(CustomerAccountModel) _then;

/// Create a copy of CustomerAccountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cards = null,Object? promotions = null,}) {
  return _then(CustomerAccountModel(
cards: null == cards ? _self.cards : cards // ignore: cast_nullable_to_non_nullable
as List<BonusCardModel>,promotions: null == promotions ? _self.promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<PromotionShortInfo>,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerAccountModel].
extension CustomerAccountModelPatterns on CustomerAccountModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerAccountModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerAccountModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerAccountModel value)  $default,){
final _that = this;
switch (_that) {
case _CustomerAccountModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerAccountModel value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerAccountModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BonusCardModel> cards,  List<PromotionShortInfo> promotions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerAccountModel() when $default != null:
return $default(_that.cards,_that.promotions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BonusCardModel> cards,  List<PromotionShortInfo> promotions)  $default,) {final _that = this;
switch (_that) {
case _CustomerAccountModel():
return $default(_that.cards,_that.promotions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BonusCardModel> cards,  List<PromotionShortInfo> promotions)?  $default,) {final _that = this;
switch (_that) {
case _CustomerAccountModel() when $default != null:
return $default(_that.cards,_that.promotions);case _:
  return null;

}
}

}

/// @nodoc


class _CustomerAccountModel with DiagnosticableTreeMixin implements CustomerAccountModel {
  const _CustomerAccountModel({ List<BonusCardModel> cards = const [],  List<PromotionShortInfo> promotions = const []}): _cards = cards,_promotions = promotions;
  

 final  List<BonusCardModel> _cards;
@override@JsonKey() List<BonusCardModel> get cards {
  if (_cards is EqualUnmodifiableListView) return _cards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cards);
}

 final  List<PromotionShortInfo> _promotions;
@override@JsonKey() List<PromotionShortInfo> get promotions {
  if (_promotions is EqualUnmodifiableListView) return _promotions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_promotions);
}


/// Create a copy of CustomerAccountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerAccountModelCopyWith<_CustomerAccountModel> get copyWith => __$CustomerAccountModelCopyWithImpl<_CustomerAccountModel>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomerAccountModel'))
    ..add(DiagnosticsProperty('cards', cards))..add(DiagnosticsProperty('promotions', promotions));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerAccountModel&&const DeepCollectionEquality().equals(other._cards, _cards)&&const DeepCollectionEquality().equals(other._promotions, _promotions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cards),const DeepCollectionEquality().hash(_promotions));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CustomerAccountModel(cards: $cards, promotions: $promotions)';
}


}

/// @nodoc
abstract mixin class _$CustomerAccountModelCopyWith<$Res> implements $CustomerAccountModelCopyWith<$Res> {
  factory _$CustomerAccountModelCopyWith(_CustomerAccountModel value, $Res Function(_CustomerAccountModel) _then) = __$CustomerAccountModelCopyWithImpl;
@override @useResult
$Res call({
 List<BonusCardModel> cards, List<PromotionShortInfo> promotions
});




}
/// @nodoc
class __$CustomerAccountModelCopyWithImpl<$Res>
    implements _$CustomerAccountModelCopyWith<$Res> {
  __$CustomerAccountModelCopyWithImpl(this._self, this._then);

  final _CustomerAccountModel _self;
  final $Res Function(_CustomerAccountModel) _then;

/// Create a copy of CustomerAccountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cards = null,Object? promotions = null,}) {
  return _then(_CustomerAccountModel(
cards: null == cards ? _self._cards : cards // ignore: cast_nullable_to_non_nullable
as List<BonusCardModel>,promotions: null == promotions ? _self._promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<PromotionShortInfo>,
  ));
}


}

// dart format on
