// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_problem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderProblem implements DiagnosticableTreeMixin {

 ProblemType get problemType; OrderProblemData get problemData;
/// Create a copy of OrderProblem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderProblemCopyWith<OrderProblem> get copyWith => _$OrderProblemCopyWithImpl<OrderProblem>(this as OrderProblem, _$identity);

  /// Serializes this OrderProblem to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderProblem'))
    ..add(DiagnosticsProperty('problemType', problemType))..add(DiagnosticsProperty('problemData', problemData));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderProblem&&(identical(other.problemType, problemType) || other.problemType == problemType)&&(identical(other.problemData, problemData) || other.problemData == problemData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,problemType,problemData);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderProblem(problemType: $problemType, problemData: $problemData)';
}


}

/// @nodoc
abstract mixin class $OrderProblemCopyWith<$Res>  {
  factory $OrderProblemCopyWith(OrderProblem value, $Res Function(OrderProblem) _then) = _$OrderProblemCopyWithImpl;
@useResult
$Res call({
 ProblemType problemType, OrderProblemData problemData
});


$OrderProblemDataCopyWith<$Res> get problemData;

}
/// @nodoc
class _$OrderProblemCopyWithImpl<$Res>
    implements $OrderProblemCopyWith<$Res> {
  _$OrderProblemCopyWithImpl(this._self, this._then);

  final OrderProblem _self;
  final $Res Function(OrderProblem) _then;

/// Create a copy of OrderProblem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? problemType = null,Object? problemData = null,}) {
  return _then(OrderProblem(
problemType: null == problemType ? _self.problemType : problemType // ignore: cast_nullable_to_non_nullable
as ProblemType,problemData: null == problemData ? _self.problemData : problemData // ignore: cast_nullable_to_non_nullable
as OrderProblemData,
  ));
}
/// Create a copy of OrderProblem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderProblemDataCopyWith<$Res> get problemData {
  
  return $OrderProblemDataCopyWith<$Res>(_self.problemData, (value) {
    return _then(_self.copyWith(problemData: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderProblem].
extension OrderProblemPatterns on OrderProblem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderProblem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderProblem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderProblem value)  $default,){
final _that = this;
switch (_that) {
case _OrderProblem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderProblem value)?  $default,){
final _that = this;
switch (_that) {
case _OrderProblem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProblemType problemType,  OrderProblemData problemData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderProblem() when $default != null:
return $default(_that.problemType,_that.problemData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProblemType problemType,  OrderProblemData problemData)  $default,) {final _that = this;
switch (_that) {
case _OrderProblem():
return $default(_that.problemType,_that.problemData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProblemType problemType,  OrderProblemData problemData)?  $default,) {final _that = this;
switch (_that) {
case _OrderProblem() when $default != null:
return $default(_that.problemType,_that.problemData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderProblem with DiagnosticableTreeMixin implements OrderProblem {
  const _OrderProblem({required this.problemType, required this.problemData});
  factory _OrderProblem.fromJson(Map<String, dynamic> json) => _$OrderProblemFromJson(json);

@override final  ProblemType problemType;
@override final  OrderProblemData problemData;

/// Create a copy of OrderProblem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderProblemCopyWith<_OrderProblem> get copyWith => __$OrderProblemCopyWithImpl<_OrderProblem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderProblemToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderProblem'))
    ..add(DiagnosticsProperty('problemType', problemType))..add(DiagnosticsProperty('problemData', problemData));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderProblem&&(identical(other.problemType, problemType) || other.problemType == problemType)&&(identical(other.problemData, problemData) || other.problemData == problemData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,problemType,problemData);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderProblem(problemType: $problemType, problemData: $problemData)';
}


}

/// @nodoc
abstract mixin class _$OrderProblemCopyWith<$Res> implements $OrderProblemCopyWith<$Res> {
  factory _$OrderProblemCopyWith(_OrderProblem value, $Res Function(_OrderProblem) _then) = __$OrderProblemCopyWithImpl;
@override @useResult
$Res call({
 ProblemType problemType, OrderProblemData problemData
});


@override $OrderProblemDataCopyWith<$Res> get problemData;

}
/// @nodoc
class __$OrderProblemCopyWithImpl<$Res>
    implements _$OrderProblemCopyWith<$Res> {
  __$OrderProblemCopyWithImpl(this._self, this._then);

  final _OrderProblem _self;
  final $Res Function(_OrderProblem) _then;

/// Create a copy of OrderProblem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? problemType = null,Object? problemData = null,}) {
  return _then(_OrderProblem(
problemType: null == problemType ? _self.problemType : problemType // ignore: cast_nullable_to_non_nullable
as ProblemType,problemData: null == problemData ? _self.problemData : problemData // ignore: cast_nullable_to_non_nullable
as OrderProblemData,
  ));
}

/// Create a copy of OrderProblem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderProblemDataCopyWith<$Res> get problemData {
  
  return $OrderProblemDataCopyWith<$Res>(_self.problemData, (value) {
    return _then(_self.copyWith(problemData: value));
  });
}
}


/// @nodoc
mixin _$OrderProblemData implements DiagnosticableTreeMixin {

@JsonKey(readValue: parseNum) int get requestedQuantity;@JsonKey(readValue: parseNum) int get stockQuantity;
/// Create a copy of OrderProblemData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderProblemDataCopyWith<OrderProblemData> get copyWith => _$OrderProblemDataCopyWithImpl<OrderProblemData>(this as OrderProblemData, _$identity);

  /// Serializes this OrderProblemData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderProblemData'))
    ..add(DiagnosticsProperty('requestedQuantity', requestedQuantity))..add(DiagnosticsProperty('stockQuantity', stockQuantity));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderProblemData&&(identical(other.requestedQuantity, requestedQuantity) || other.requestedQuantity == requestedQuantity)&&(identical(other.stockQuantity, stockQuantity) || other.stockQuantity == stockQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestedQuantity,stockQuantity);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderProblemData(requestedQuantity: $requestedQuantity, stockQuantity: $stockQuantity)';
}


}

/// @nodoc
abstract mixin class $OrderProblemDataCopyWith<$Res>  {
  factory $OrderProblemDataCopyWith(OrderProblemData value, $Res Function(OrderProblemData) _then) = _$OrderProblemDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: parseNum) int requestedQuantity,@JsonKey(readValue: parseNum) int stockQuantity
});




}
/// @nodoc
class _$OrderProblemDataCopyWithImpl<$Res>
    implements $OrderProblemDataCopyWith<$Res> {
  _$OrderProblemDataCopyWithImpl(this._self, this._then);

  final OrderProblemData _self;
  final $Res Function(OrderProblemData) _then;

/// Create a copy of OrderProblemData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestedQuantity = null,Object? stockQuantity = null,}) {
  return _then(OrderProblemData(
requestedQuantity: null == requestedQuantity ? _self.requestedQuantity : requestedQuantity // ignore: cast_nullable_to_non_nullable
as int,stockQuantity: null == stockQuantity ? _self.stockQuantity : stockQuantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderProblemData].
extension OrderProblemDataPatterns on OrderProblemData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderProblemData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderProblemData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderProblemData value)  $default,){
final _that = this;
switch (_that) {
case _OrderProblemData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderProblemData value)?  $default,){
final _that = this;
switch (_that) {
case _OrderProblemData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: parseNum)  int requestedQuantity, @JsonKey(readValue: parseNum)  int stockQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderProblemData() when $default != null:
return $default(_that.requestedQuantity,_that.stockQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: parseNum)  int requestedQuantity, @JsonKey(readValue: parseNum)  int stockQuantity)  $default,) {final _that = this;
switch (_that) {
case _OrderProblemData():
return $default(_that.requestedQuantity,_that.stockQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: parseNum)  int requestedQuantity, @JsonKey(readValue: parseNum)  int stockQuantity)?  $default,) {final _that = this;
switch (_that) {
case _OrderProblemData() when $default != null:
return $default(_that.requestedQuantity,_that.stockQuantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderProblemData with DiagnosticableTreeMixin implements OrderProblemData {
  const _OrderProblemData({@JsonKey(readValue: parseNum) required this.requestedQuantity, @JsonKey(readValue: parseNum) required this.stockQuantity});
  factory _OrderProblemData.fromJson(Map<String, dynamic> json) => _$OrderProblemDataFromJson(json);

@override@JsonKey(readValue: parseNum) final  int requestedQuantity;
@override@JsonKey(readValue: parseNum) final  int stockQuantity;

/// Create a copy of OrderProblemData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderProblemDataCopyWith<_OrderProblemData> get copyWith => __$OrderProblemDataCopyWithImpl<_OrderProblemData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderProblemDataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderProblemData'))
    ..add(DiagnosticsProperty('requestedQuantity', requestedQuantity))..add(DiagnosticsProperty('stockQuantity', stockQuantity));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderProblemData&&(identical(other.requestedQuantity, requestedQuantity) || other.requestedQuantity == requestedQuantity)&&(identical(other.stockQuantity, stockQuantity) || other.stockQuantity == stockQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestedQuantity,stockQuantity);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderProblemData(requestedQuantity: $requestedQuantity, stockQuantity: $stockQuantity)';
}


}

/// @nodoc
abstract mixin class _$OrderProblemDataCopyWith<$Res> implements $OrderProblemDataCopyWith<$Res> {
  factory _$OrderProblemDataCopyWith(_OrderProblemData value, $Res Function(_OrderProblemData) _then) = __$OrderProblemDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: parseNum) int requestedQuantity,@JsonKey(readValue: parseNum) int stockQuantity
});




}
/// @nodoc
class __$OrderProblemDataCopyWithImpl<$Res>
    implements _$OrderProblemDataCopyWith<$Res> {
  __$OrderProblemDataCopyWithImpl(this._self, this._then);

  final _OrderProblemData _self;
  final $Res Function(_OrderProblemData) _then;

/// Create a copy of OrderProblemData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestedQuantity = null,Object? stockQuantity = null,}) {
  return _then(_OrderProblemData(
requestedQuantity: null == requestedQuantity ? _self.requestedQuantity : requestedQuantity // ignore: cast_nullable_to_non_nullable
as int,stockQuantity: null == stockQuantity ? _self.stockQuantity : stockQuantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
