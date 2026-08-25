// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerAccountResponse implements DiagnosticableTreeMixin {

 List<BonusCardResponse> get cards; List<PromotionShortInfo> get promotions;
/// Create a copy of CustomerAccountResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerAccountResponseCopyWith<CustomerAccountResponse> get copyWith => _$CustomerAccountResponseCopyWithImpl<CustomerAccountResponse>(this as CustomerAccountResponse, _$identity);

  /// Serializes this CustomerAccountResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomerAccountResponse'))
    ..add(DiagnosticsProperty('cards', cards))..add(DiagnosticsProperty('promotions', promotions));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerAccountResponse&&const DeepCollectionEquality().equals(other.cards, cards)&&const DeepCollectionEquality().equals(other.promotions, promotions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cards),const DeepCollectionEquality().hash(promotions));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CustomerAccountResponse(cards: $cards, promotions: $promotions)';
}


}

/// @nodoc
abstract mixin class $CustomerAccountResponseCopyWith<$Res>  {
  factory $CustomerAccountResponseCopyWith(CustomerAccountResponse value, $Res Function(CustomerAccountResponse) _then) = _$CustomerAccountResponseCopyWithImpl;
@useResult
$Res call({
 List<BonusCardResponse> cards, List<PromotionShortInfo> promotions
});




}
/// @nodoc
class _$CustomerAccountResponseCopyWithImpl<$Res>
    implements $CustomerAccountResponseCopyWith<$Res> {
  _$CustomerAccountResponseCopyWithImpl(this._self, this._then);

  final CustomerAccountResponse _self;
  final $Res Function(CustomerAccountResponse) _then;

/// Create a copy of CustomerAccountResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cards = null,Object? promotions = null,}) {
  return _then(CustomerAccountResponse(
cards: null == cards ? _self.cards : cards // ignore: cast_nullable_to_non_nullable
as List<BonusCardResponse>,promotions: null == promotions ? _self.promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<PromotionShortInfo>,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerAccountResponse].
extension CustomerAccountResponsePatterns on CustomerAccountResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerAccountResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerAccountResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerAccountResponse value)  $default,){
final _that = this;
switch (_that) {
case _CustomerAccountResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerAccountResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerAccountResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BonusCardResponse> cards,  List<PromotionShortInfo> promotions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerAccountResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BonusCardResponse> cards,  List<PromotionShortInfo> promotions)  $default,) {final _that = this;
switch (_that) {
case _CustomerAccountResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BonusCardResponse> cards,  List<PromotionShortInfo> promotions)?  $default,) {final _that = this;
switch (_that) {
case _CustomerAccountResponse() when $default != null:
return $default(_that.cards,_that.promotions);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _CustomerAccountResponse with DiagnosticableTreeMixin implements CustomerAccountResponse {
  const _CustomerAccountResponse({ List<BonusCardResponse> cards = const [],  List<PromotionShortInfo> promotions = const []}): _cards = cards,_promotions = promotions;
  factory _CustomerAccountResponse.fromJson(Map<String, dynamic> json) => _$CustomerAccountResponseFromJson(json);

 final  List<BonusCardResponse> _cards;
@override@JsonKey() List<BonusCardResponse> get cards {
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


/// Create a copy of CustomerAccountResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerAccountResponseCopyWith<_CustomerAccountResponse> get copyWith => __$CustomerAccountResponseCopyWithImpl<_CustomerAccountResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerAccountResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomerAccountResponse'))
    ..add(DiagnosticsProperty('cards', cards))..add(DiagnosticsProperty('promotions', promotions));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerAccountResponse&&const DeepCollectionEquality().equals(other._cards, _cards)&&const DeepCollectionEquality().equals(other._promotions, _promotions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cards),const DeepCollectionEquality().hash(_promotions));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CustomerAccountResponse(cards: $cards, promotions: $promotions)';
}


}

/// @nodoc
abstract mixin class _$CustomerAccountResponseCopyWith<$Res> implements $CustomerAccountResponseCopyWith<$Res> {
  factory _$CustomerAccountResponseCopyWith(_CustomerAccountResponse value, $Res Function(_CustomerAccountResponse) _then) = __$CustomerAccountResponseCopyWithImpl;
@override @useResult
$Res call({
 List<BonusCardResponse> cards, List<PromotionShortInfo> promotions
});




}
/// @nodoc
class __$CustomerAccountResponseCopyWithImpl<$Res>
    implements _$CustomerAccountResponseCopyWith<$Res> {
  __$CustomerAccountResponseCopyWithImpl(this._self, this._then);

  final _CustomerAccountResponse _self;
  final $Res Function(_CustomerAccountResponse) _then;

/// Create a copy of CustomerAccountResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cards = null,Object? promotions = null,}) {
  return _then(_CustomerAccountResponse(
cards: null == cards ? _self._cards : cards // ignore: cast_nullable_to_non_nullable
as List<BonusCardResponse>,promotions: null == promotions ? _self._promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<PromotionShortInfo>,
  ));
}


}

// dart format on
