// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerApiRequest implements DiagnosticableTreeMixin {

 DateTime get date; double get summ; double get summWithoutDiscount; String get storeId; String? get token; List<PurchasePosition> get positions; double get bonusesSumm;
/// Create a copy of CustomerApiRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerApiRequestCopyWith<CustomerApiRequest> get copyWith => _$CustomerApiRequestCopyWithImpl<CustomerApiRequest>(this as CustomerApiRequest, _$identity);

  /// Serializes this CustomerApiRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomerApiRequest'))
    ..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('summ', summ))..add(DiagnosticsProperty('summWithoutDiscount', summWithoutDiscount))..add(DiagnosticsProperty('storeId', storeId))..add(DiagnosticsProperty('token', token))..add(DiagnosticsProperty('positions', positions))..add(DiagnosticsProperty('bonusesSumm', bonusesSumm));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerApiRequest&&(identical(other.date, date) || other.date == date)&&(identical(other.summ, summ) || other.summ == summ)&&(identical(other.summWithoutDiscount, summWithoutDiscount) || other.summWithoutDiscount == summWithoutDiscount)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other.positions, positions)&&(identical(other.bonusesSumm, bonusesSumm) || other.bonusesSumm == bonusesSumm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,summ,summWithoutDiscount,storeId,token,const DeepCollectionEquality().hash(positions),bonusesSumm);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CustomerApiRequest(date: $date, summ: $summ, summWithoutDiscount: $summWithoutDiscount, storeId: $storeId, token: $token, positions: $positions, bonusesSumm: $bonusesSumm)';
}


}

/// @nodoc
abstract mixin class $CustomerApiRequestCopyWith<$Res>  {
  factory $CustomerApiRequestCopyWith(CustomerApiRequest value, $Res Function(CustomerApiRequest) _then) = _$CustomerApiRequestCopyWithImpl;
@useResult
$Res call({
 DateTime date, double summ, double summWithoutDiscount, String storeId, String? token, List<PurchasePosition> positions, double bonusesSumm
});




}
/// @nodoc
class _$CustomerApiRequestCopyWithImpl<$Res>
    implements $CustomerApiRequestCopyWith<$Res> {
  _$CustomerApiRequestCopyWithImpl(this._self, this._then);

  final CustomerApiRequest _self;
  final $Res Function(CustomerApiRequest) _then;

/// Create a copy of CustomerApiRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? summ = null,Object? summWithoutDiscount = null,Object? storeId = null,Object? token = freezed,Object? positions = null,Object? bonusesSumm = null,}) {
  return _then(CustomerApiRequest(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,summ: null == summ ? _self.summ : summ // ignore: cast_nullable_to_non_nullable
as double,summWithoutDiscount: null == summWithoutDiscount ? _self.summWithoutDiscount : summWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,positions: null == positions ? _self.positions : positions // ignore: cast_nullable_to_non_nullable
as List<PurchasePosition>,bonusesSumm: null == bonusesSumm ? _self.bonusesSumm : bonusesSumm // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerApiRequest].
extension CustomerApiRequestPatterns on CustomerApiRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerApiRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerApiRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerApiRequest value)  $default,){
final _that = this;
switch (_that) {
case _CustomerApiRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerApiRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerApiRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  double summ,  double summWithoutDiscount,  String storeId,  String? token,  List<PurchasePosition> positions,  double bonusesSumm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerApiRequest() when $default != null:
return $default(_that.date,_that.summ,_that.summWithoutDiscount,_that.storeId,_that.token,_that.positions,_that.bonusesSumm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  double summ,  double summWithoutDiscount,  String storeId,  String? token,  List<PurchasePosition> positions,  double bonusesSumm)  $default,) {final _that = this;
switch (_that) {
case _CustomerApiRequest():
return $default(_that.date,_that.summ,_that.summWithoutDiscount,_that.storeId,_that.token,_that.positions,_that.bonusesSumm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  double summ,  double summWithoutDiscount,  String storeId,  String? token,  List<PurchasePosition> positions,  double bonusesSumm)?  $default,) {final _that = this;
switch (_that) {
case _CustomerApiRequest() when $default != null:
return $default(_that.date,_that.summ,_that.summWithoutDiscount,_that.storeId,_that.token,_that.positions,_that.bonusesSumm);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _CustomerApiRequest extends CustomerApiRequest with DiagnosticableTreeMixin {
  const _CustomerApiRequest({required this.date, required this.summ, required this.summWithoutDiscount, required this.storeId, this.token, required  List<PurchasePosition> positions, this.bonusesSumm = 0.0}): _positions = positions,super._();
  factory _CustomerApiRequest.fromJson(Map<String, dynamic> json) => _$CustomerApiRequestFromJson(json);

@override final  DateTime date;
@override final  double summ;
@override final  double summWithoutDiscount;
@override final  String storeId;
@override final  String? token;
 final  List<PurchasePosition> _positions;
@override List<PurchasePosition> get positions {
  if (_positions is EqualUnmodifiableListView) return _positions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_positions);
}

@override@JsonKey() final  double bonusesSumm;

/// Create a copy of CustomerApiRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerApiRequestCopyWith<_CustomerApiRequest> get copyWith => __$CustomerApiRequestCopyWithImpl<_CustomerApiRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerApiRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomerApiRequest'))
    ..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('summ', summ))..add(DiagnosticsProperty('summWithoutDiscount', summWithoutDiscount))..add(DiagnosticsProperty('storeId', storeId))..add(DiagnosticsProperty('token', token))..add(DiagnosticsProperty('positions', positions))..add(DiagnosticsProperty('bonusesSumm', bonusesSumm));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerApiRequest&&(identical(other.date, date) || other.date == date)&&(identical(other.summ, summ) || other.summ == summ)&&(identical(other.summWithoutDiscount, summWithoutDiscount) || other.summWithoutDiscount == summWithoutDiscount)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other._positions, _positions)&&(identical(other.bonusesSumm, bonusesSumm) || other.bonusesSumm == bonusesSumm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,summ,summWithoutDiscount,storeId,token,const DeepCollectionEquality().hash(_positions),bonusesSumm);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CustomerApiRequest(date: $date, summ: $summ, summWithoutDiscount: $summWithoutDiscount, storeId: $storeId, token: $token, positions: $positions, bonusesSumm: $bonusesSumm)';
}


}

/// @nodoc
abstract mixin class _$CustomerApiRequestCopyWith<$Res> implements $CustomerApiRequestCopyWith<$Res> {
  factory _$CustomerApiRequestCopyWith(_CustomerApiRequest value, $Res Function(_CustomerApiRequest) _then) = __$CustomerApiRequestCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, double summ, double summWithoutDiscount, String storeId, String? token, List<PurchasePosition> positions, double bonusesSumm
});




}
/// @nodoc
class __$CustomerApiRequestCopyWithImpl<$Res>
    implements _$CustomerApiRequestCopyWith<$Res> {
  __$CustomerApiRequestCopyWithImpl(this._self, this._then);

  final _CustomerApiRequest _self;
  final $Res Function(_CustomerApiRequest) _then;

/// Create a copy of CustomerApiRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? summ = null,Object? summWithoutDiscount = null,Object? storeId = null,Object? token = freezed,Object? positions = null,Object? bonusesSumm = null,}) {
  return _then(_CustomerApiRequest(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,summ: null == summ ? _self.summ : summ // ignore: cast_nullable_to_non_nullable
as double,summWithoutDiscount: null == summWithoutDiscount ? _self.summWithoutDiscount : summWithoutDiscount // ignore: cast_nullable_to_non_nullable
as double,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,positions: null == positions ? _self._positions : positions // ignore: cast_nullable_to_non_nullable
as List<PurchasePosition>,bonusesSumm: null == bonusesSumm ? _self.bonusesSumm : bonusesSumm // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
