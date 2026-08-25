// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'good.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Good implements DiagnosticableTreeMixin {

@JsonKey(name: 'ID') String get id;@JsonKey(name: 'Price') double get price;@JsonKey(name: 'OldPrice') double? get oldPrice;@JsonKey(name: 'IsOnePlusOne', readValue: covertIsOnePlusOne) bool get isOnePlusOne;
/// Create a copy of Good
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoodCopyWith<Good> get copyWith => _$GoodCopyWithImpl<Good>(this as Good, _$identity);

  /// Serializes this Good to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Good'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('oldPrice', oldPrice))..add(DiagnosticsProperty('isOnePlusOne', isOnePlusOne));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Good&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.isOnePlusOne, isOnePlusOne) || other.isOnePlusOne == isOnePlusOne));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,price,oldPrice,isOnePlusOne);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Good(id: $id, price: $price, oldPrice: $oldPrice, isOnePlusOne: $isOnePlusOne)';
}


}

/// @nodoc
abstract mixin class $GoodCopyWith<$Res>  {
  factory $GoodCopyWith(Good value, $Res Function(Good) _then) = _$GoodCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ID') String id,@JsonKey(name: 'Price') double price,@JsonKey(name: 'OldPrice') double? oldPrice,@JsonKey(name: 'IsOnePlusOne', readValue: covertIsOnePlusOne) bool isOnePlusOne
});




}
/// @nodoc
class _$GoodCopyWithImpl<$Res>
    implements $GoodCopyWith<$Res> {
  _$GoodCopyWithImpl(this._self, this._then);

  final Good _self;
  final $Res Function(Good) _then;

/// Create a copy of Good
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? price = null,Object? oldPrice = freezed,Object? isOnePlusOne = null,}) {
  return _then(Good(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as double?,isOnePlusOne: null == isOnePlusOne ? _self.isOnePlusOne : isOnePlusOne // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Good].
extension GoodPatterns on Good {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Good value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Good() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Good value)  $default,){
final _that = this;
switch (_that) {
case _Good():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Good value)?  $default,){
final _that = this;
switch (_that) {
case _Good() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  String id, @JsonKey(name: 'Price')  double price, @JsonKey(name: 'OldPrice')  double? oldPrice, @JsonKey(name: 'IsOnePlusOne', readValue: covertIsOnePlusOne)  bool isOnePlusOne)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Good() when $default != null:
return $default(_that.id,_that.price,_that.oldPrice,_that.isOnePlusOne);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  String id, @JsonKey(name: 'Price')  double price, @JsonKey(name: 'OldPrice')  double? oldPrice, @JsonKey(name: 'IsOnePlusOne', readValue: covertIsOnePlusOne)  bool isOnePlusOne)  $default,) {final _that = this;
switch (_that) {
case _Good():
return $default(_that.id,_that.price,_that.oldPrice,_that.isOnePlusOne);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ID')  String id, @JsonKey(name: 'Price')  double price, @JsonKey(name: 'OldPrice')  double? oldPrice, @JsonKey(name: 'IsOnePlusOne', readValue: covertIsOnePlusOne)  bool isOnePlusOne)?  $default,) {final _that = this;
switch (_that) {
case _Good() when $default != null:
return $default(_that.id,_that.price,_that.oldPrice,_that.isOnePlusOne);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Good with DiagnosticableTreeMixin implements Good {
  const _Good({@JsonKey(name: 'ID') required this.id, @JsonKey(name: 'Price') required this.price, @JsonKey(name: 'OldPrice') this.oldPrice, @JsonKey(name: 'IsOnePlusOne', readValue: covertIsOnePlusOne) this.isOnePlusOne = false});
  factory _Good.fromJson(Map<String, dynamic> json) => _$GoodFromJson(json);

@override@JsonKey(name: 'ID') final  String id;
@override@JsonKey(name: 'Price') final  double price;
@override@JsonKey(name: 'OldPrice') final  double? oldPrice;
@override@JsonKey(name: 'IsOnePlusOne', readValue: covertIsOnePlusOne) final  bool isOnePlusOne;

/// Create a copy of Good
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoodCopyWith<_Good> get copyWith => __$GoodCopyWithImpl<_Good>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoodToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Good'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('oldPrice', oldPrice))..add(DiagnosticsProperty('isOnePlusOne', isOnePlusOne));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Good&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.oldPrice, oldPrice) || other.oldPrice == oldPrice)&&(identical(other.isOnePlusOne, isOnePlusOne) || other.isOnePlusOne == isOnePlusOne));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,price,oldPrice,isOnePlusOne);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Good(id: $id, price: $price, oldPrice: $oldPrice, isOnePlusOne: $isOnePlusOne)';
}


}

/// @nodoc
abstract mixin class _$GoodCopyWith<$Res> implements $GoodCopyWith<$Res> {
  factory _$GoodCopyWith(_Good value, $Res Function(_Good) _then) = __$GoodCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ID') String id,@JsonKey(name: 'Price') double price,@JsonKey(name: 'OldPrice') double? oldPrice,@JsonKey(name: 'IsOnePlusOne', readValue: covertIsOnePlusOne) bool isOnePlusOne
});




}
/// @nodoc
class __$GoodCopyWithImpl<$Res>
    implements _$GoodCopyWith<$Res> {
  __$GoodCopyWithImpl(this._self, this._then);

  final _Good _self;
  final $Res Function(_Good) _then;

/// Create a copy of Good
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? price = null,Object? oldPrice = freezed,Object? isOnePlusOne = null,}) {
  return _then(_Good(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,oldPrice: freezed == oldPrice ? _self.oldPrice : oldPrice // ignore: cast_nullable_to_non_nullable
as double?,isOnePlusOne: null == isOnePlusOne ? _self.isOnePlusOne : isOnePlusOne // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
