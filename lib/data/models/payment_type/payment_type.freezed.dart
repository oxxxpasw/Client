// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
PaymentType _$PaymentTypeFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'CASH':
          return CashPaymentType.fromJson(
            json
          );
                case 'CARD':
          return CardPaymentType.fromJson(
            json
          );
                case 'SBP':
          return SbpPaymentType.fromJson(
            json
          );
                case 'LINKED_CARD':
          return LinkedCardPaymentType.fromJson(
            json
          );
                case 'REGISTER_CARD':
          return RegisterCardPaymentType.fromJson(
            json
          );
                case 'APPLE_PAY':
          return ApplePayPaymentType.fromJson(
            json
          );
        
          default:
            return UnknownPaymentType.fromJson(
  json
);
        }
      
}

/// @nodoc
mixin _$PaymentType implements DiagnosticableTreeMixin {

 String get id; String get name; String? get imageName;
/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<PaymentType> get copyWith => _$PaymentTypeCopyWithImpl<PaymentType>(this as PaymentType, _$identity);

  /// Serializes this PaymentType to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentType'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('imageName', imageName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageName, imageName) || other.imageName == imageName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentType(id: $id, name: $name, imageName: $imageName)';
}


}

/// @nodoc
abstract mixin class $PaymentTypeCopyWith<$Res>  {
  factory $PaymentTypeCopyWith(PaymentType value, $Res Function(PaymentType) _then) = _$PaymentTypeCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? imageName
});




}
/// @nodoc
class _$PaymentTypeCopyWithImpl<$Res>
    implements $PaymentTypeCopyWith<$Res> {
  _$PaymentTypeCopyWithImpl(this._self, this._then);

  final PaymentType _self;
  final $Res Function(PaymentType) _then;

/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageName: freezed == imageName ? _self.imageName : imageName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentType].
extension PaymentTypePatterns on PaymentType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CashPaymentType value)?  cash,TResult Function( CardPaymentType value)?  card,TResult Function( SbpPaymentType value)?  sbp,TResult Function( LinkedCardPaymentType value)?  linkedCard,TResult Function( RegisterCardPaymentType value)?  registerCard,TResult Function( ApplePayPaymentType value)?  applePay,TResult Function( UnknownPaymentType value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CashPaymentType() when cash != null:
return cash(_that);case CardPaymentType() when card != null:
return card(_that);case SbpPaymentType() when sbp != null:
return sbp(_that);case LinkedCardPaymentType() when linkedCard != null:
return linkedCard(_that);case RegisterCardPaymentType() when registerCard != null:
return registerCard(_that);case ApplePayPaymentType() when applePay != null:
return applePay(_that);case UnknownPaymentType() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CashPaymentType value)  cash,required TResult Function( CardPaymentType value)  card,required TResult Function( SbpPaymentType value)  sbp,required TResult Function( LinkedCardPaymentType value)  linkedCard,required TResult Function( RegisterCardPaymentType value)  registerCard,required TResult Function( ApplePayPaymentType value)  applePay,required TResult Function( UnknownPaymentType value)  unknown,}){
final _that = this;
switch (_that) {
case CashPaymentType():
return cash(_that);case CardPaymentType():
return card(_that);case SbpPaymentType():
return sbp(_that);case LinkedCardPaymentType():
return linkedCard(_that);case RegisterCardPaymentType():
return registerCard(_that);case ApplePayPaymentType():
return applePay(_that);case UnknownPaymentType():
return unknown(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CashPaymentType value)?  cash,TResult? Function( CardPaymentType value)?  card,TResult? Function( SbpPaymentType value)?  sbp,TResult? Function( LinkedCardPaymentType value)?  linkedCard,TResult? Function( RegisterCardPaymentType value)?  registerCard,TResult? Function( ApplePayPaymentType value)?  applePay,TResult? Function( UnknownPaymentType value)?  unknown,}){
final _that = this;
switch (_that) {
case CashPaymentType() when cash != null:
return cash(_that);case CardPaymentType() when card != null:
return card(_that);case SbpPaymentType() when sbp != null:
return sbp(_that);case LinkedCardPaymentType() when linkedCard != null:
return linkedCard(_that);case RegisterCardPaymentType() when registerCard != null:
return registerCard(_that);case ApplePayPaymentType() when applePay != null:
return applePay(_that);case UnknownPaymentType() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String name,  String? imageName)?  cash,TResult Function( String id,  String name,  String? imageName)?  card,TResult Function( String id,  String name,  String? imageName)?  sbp,TResult Function( String id,  String name,  String? imageName,  LinkedCardData data)?  linkedCard,TResult Function( String id,  String name,  String? imageName)?  registerCard,TResult Function( String id,  String name,  String? imageName)?  applePay,TResult Function( String id,  String name,  String? imageName)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CashPaymentType() when cash != null:
return cash(_that.id,_that.name,_that.imageName);case CardPaymentType() when card != null:
return card(_that.id,_that.name,_that.imageName);case SbpPaymentType() when sbp != null:
return sbp(_that.id,_that.name,_that.imageName);case LinkedCardPaymentType() when linkedCard != null:
return linkedCard(_that.id,_that.name,_that.imageName,_that.data);case RegisterCardPaymentType() when registerCard != null:
return registerCard(_that.id,_that.name,_that.imageName);case ApplePayPaymentType() when applePay != null:
return applePay(_that.id,_that.name,_that.imageName);case UnknownPaymentType() when unknown != null:
return unknown(_that.id,_that.name,_that.imageName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String name,  String? imageName)  cash,required TResult Function( String id,  String name,  String? imageName)  card,required TResult Function( String id,  String name,  String? imageName)  sbp,required TResult Function( String id,  String name,  String? imageName,  LinkedCardData data)  linkedCard,required TResult Function( String id,  String name,  String? imageName)  registerCard,required TResult Function( String id,  String name,  String? imageName)  applePay,required TResult Function( String id,  String name,  String? imageName)  unknown,}) {final _that = this;
switch (_that) {
case CashPaymentType():
return cash(_that.id,_that.name,_that.imageName);case CardPaymentType():
return card(_that.id,_that.name,_that.imageName);case SbpPaymentType():
return sbp(_that.id,_that.name,_that.imageName);case LinkedCardPaymentType():
return linkedCard(_that.id,_that.name,_that.imageName,_that.data);case RegisterCardPaymentType():
return registerCard(_that.id,_that.name,_that.imageName);case ApplePayPaymentType():
return applePay(_that.id,_that.name,_that.imageName);case UnknownPaymentType():
return unknown(_that.id,_that.name,_that.imageName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String name,  String? imageName)?  cash,TResult? Function( String id,  String name,  String? imageName)?  card,TResult? Function( String id,  String name,  String? imageName)?  sbp,TResult? Function( String id,  String name,  String? imageName,  LinkedCardData data)?  linkedCard,TResult? Function( String id,  String name,  String? imageName)?  registerCard,TResult? Function( String id,  String name,  String? imageName)?  applePay,TResult? Function( String id,  String name,  String? imageName)?  unknown,}) {final _that = this;
switch (_that) {
case CashPaymentType() when cash != null:
return cash(_that.id,_that.name,_that.imageName);case CardPaymentType() when card != null:
return card(_that.id,_that.name,_that.imageName);case SbpPaymentType() when sbp != null:
return sbp(_that.id,_that.name,_that.imageName);case LinkedCardPaymentType() when linkedCard != null:
return linkedCard(_that.id,_that.name,_that.imageName,_that.data);case RegisterCardPaymentType() when registerCard != null:
return registerCard(_that.id,_that.name,_that.imageName);case ApplePayPaymentType() when applePay != null:
return applePay(_that.id,_that.name,_that.imageName);case UnknownPaymentType() when unknown != null:
return unknown(_that.id,_that.name,_that.imageName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class CashPaymentType extends PaymentType with DiagnosticableTreeMixin {
  const CashPaymentType({required this.id, this.name = '', this.imageName,  String? $type}): $type = $type ?? 'CASH',super._();
  factory CashPaymentType.fromJson(Map<String, dynamic> json) => _$CashPaymentTypeFromJson(json);

@override final  String id;
@override@JsonKey() final  String name;
@override final  String? imageName;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CashPaymentTypeCopyWith<CashPaymentType> get copyWith => _$CashPaymentTypeCopyWithImpl<CashPaymentType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CashPaymentTypeToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentType.cash'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('imageName', imageName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CashPaymentType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageName, imageName) || other.imageName == imageName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentType.cash(id: $id, name: $name, imageName: $imageName)';
}


}

/// @nodoc
abstract mixin class $CashPaymentTypeCopyWith<$Res> implements $PaymentTypeCopyWith<$Res> {
  factory $CashPaymentTypeCopyWith(CashPaymentType value, $Res Function(CashPaymentType) _then) = _$CashPaymentTypeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? imageName
});




}
/// @nodoc
class _$CashPaymentTypeCopyWithImpl<$Res>
    implements $CashPaymentTypeCopyWith<$Res> {
  _$CashPaymentTypeCopyWithImpl(this._self, this._then);

  final CashPaymentType _self;
  final $Res Function(CashPaymentType) _then;

/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageName = freezed,}) {
  return _then(CashPaymentType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageName: freezed == imageName ? _self.imageName : imageName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class CardPaymentType extends PaymentType with DiagnosticableTreeMixin {
  const CardPaymentType({required this.id, this.name = '', this.imageName,  String? $type}): $type = $type ?? 'CARD',super._();
  factory CardPaymentType.fromJson(Map<String, dynamic> json) => _$CardPaymentTypeFromJson(json);

@override final  String id;
@override@JsonKey() final  String name;
@override final  String? imageName;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardPaymentTypeCopyWith<CardPaymentType> get copyWith => _$CardPaymentTypeCopyWithImpl<CardPaymentType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CardPaymentTypeToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentType.card'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('imageName', imageName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardPaymentType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageName, imageName) || other.imageName == imageName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentType.card(id: $id, name: $name, imageName: $imageName)';
}


}

/// @nodoc
abstract mixin class $CardPaymentTypeCopyWith<$Res> implements $PaymentTypeCopyWith<$Res> {
  factory $CardPaymentTypeCopyWith(CardPaymentType value, $Res Function(CardPaymentType) _then) = _$CardPaymentTypeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? imageName
});




}
/// @nodoc
class _$CardPaymentTypeCopyWithImpl<$Res>
    implements $CardPaymentTypeCopyWith<$Res> {
  _$CardPaymentTypeCopyWithImpl(this._self, this._then);

  final CardPaymentType _self;
  final $Res Function(CardPaymentType) _then;

/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageName = freezed,}) {
  return _then(CardPaymentType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageName: freezed == imageName ? _self.imageName : imageName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SbpPaymentType extends PaymentType with DiagnosticableTreeMixin {
  const SbpPaymentType({required this.id, this.name = '', this.imageName,  String? $type}): $type = $type ?? 'SBP',super._();
  factory SbpPaymentType.fromJson(Map<String, dynamic> json) => _$SbpPaymentTypeFromJson(json);

@override final  String id;
@override@JsonKey() final  String name;
@override final  String? imageName;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SbpPaymentTypeCopyWith<SbpPaymentType> get copyWith => _$SbpPaymentTypeCopyWithImpl<SbpPaymentType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SbpPaymentTypeToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentType.sbp'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('imageName', imageName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SbpPaymentType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageName, imageName) || other.imageName == imageName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentType.sbp(id: $id, name: $name, imageName: $imageName)';
}


}

/// @nodoc
abstract mixin class $SbpPaymentTypeCopyWith<$Res> implements $PaymentTypeCopyWith<$Res> {
  factory $SbpPaymentTypeCopyWith(SbpPaymentType value, $Res Function(SbpPaymentType) _then) = _$SbpPaymentTypeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? imageName
});




}
/// @nodoc
class _$SbpPaymentTypeCopyWithImpl<$Res>
    implements $SbpPaymentTypeCopyWith<$Res> {
  _$SbpPaymentTypeCopyWithImpl(this._self, this._then);

  final SbpPaymentType _self;
  final $Res Function(SbpPaymentType) _then;

/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageName = freezed,}) {
  return _then(SbpPaymentType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageName: freezed == imageName ? _self.imageName : imageName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class LinkedCardPaymentType extends PaymentType with DiagnosticableTreeMixin {
  const LinkedCardPaymentType({required this.id, this.name = '', this.imageName, required this.data,  String? $type}): $type = $type ?? 'LINKED_CARD',super._();
  factory LinkedCardPaymentType.fromJson(Map<String, dynamic> json) => _$LinkedCardPaymentTypeFromJson(json);

@override final  String id;
@override@JsonKey() final  String name;
@override final  String? imageName;
 final  LinkedCardData data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkedCardPaymentTypeCopyWith<LinkedCardPaymentType> get copyWith => _$LinkedCardPaymentTypeCopyWithImpl<LinkedCardPaymentType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinkedCardPaymentTypeToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentType.linkedCard'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('imageName', imageName))..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkedCardPaymentType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageName, imageName) || other.imageName == imageName)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageName,data);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentType.linkedCard(id: $id, name: $name, imageName: $imageName, data: $data)';
}


}

/// @nodoc
abstract mixin class $LinkedCardPaymentTypeCopyWith<$Res> implements $PaymentTypeCopyWith<$Res> {
  factory $LinkedCardPaymentTypeCopyWith(LinkedCardPaymentType value, $Res Function(LinkedCardPaymentType) _then) = _$LinkedCardPaymentTypeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? imageName, LinkedCardData data
});


$LinkedCardDataCopyWith<$Res> get data;

}
/// @nodoc
class _$LinkedCardPaymentTypeCopyWithImpl<$Res>
    implements $LinkedCardPaymentTypeCopyWith<$Res> {
  _$LinkedCardPaymentTypeCopyWithImpl(this._self, this._then);

  final LinkedCardPaymentType _self;
  final $Res Function(LinkedCardPaymentType) _then;

/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageName = freezed,Object? data = null,}) {
  return _then(LinkedCardPaymentType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageName: freezed == imageName ? _self.imageName : imageName // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LinkedCardData,
  ));
}

/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinkedCardDataCopyWith<$Res> get data {
  
  return $LinkedCardDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class RegisterCardPaymentType extends PaymentType with DiagnosticableTreeMixin {
  const RegisterCardPaymentType({required this.id, this.name = '', this.imageName,  String? $type}): $type = $type ?? 'REGISTER_CARD',super._();
  factory RegisterCardPaymentType.fromJson(Map<String, dynamic> json) => _$RegisterCardPaymentTypeFromJson(json);

@override final  String id;
@override@JsonKey() final  String name;
@override final  String? imageName;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterCardPaymentTypeCopyWith<RegisterCardPaymentType> get copyWith => _$RegisterCardPaymentTypeCopyWithImpl<RegisterCardPaymentType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterCardPaymentTypeToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentType.registerCard'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('imageName', imageName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterCardPaymentType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageName, imageName) || other.imageName == imageName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentType.registerCard(id: $id, name: $name, imageName: $imageName)';
}


}

/// @nodoc
abstract mixin class $RegisterCardPaymentTypeCopyWith<$Res> implements $PaymentTypeCopyWith<$Res> {
  factory $RegisterCardPaymentTypeCopyWith(RegisterCardPaymentType value, $Res Function(RegisterCardPaymentType) _then) = _$RegisterCardPaymentTypeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? imageName
});




}
/// @nodoc
class _$RegisterCardPaymentTypeCopyWithImpl<$Res>
    implements $RegisterCardPaymentTypeCopyWith<$Res> {
  _$RegisterCardPaymentTypeCopyWithImpl(this._self, this._then);

  final RegisterCardPaymentType _self;
  final $Res Function(RegisterCardPaymentType) _then;

/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageName = freezed,}) {
  return _then(RegisterCardPaymentType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageName: freezed == imageName ? _self.imageName : imageName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ApplePayPaymentType extends PaymentType with DiagnosticableTreeMixin {
  const ApplePayPaymentType({required this.id, this.name = '', this.imageName,  String? $type}): $type = $type ?? 'APPLE_PAY',super._();
  factory ApplePayPaymentType.fromJson(Map<String, dynamic> json) => _$ApplePayPaymentTypeFromJson(json);

@override final  String id;
@override@JsonKey() final  String name;
@override final  String? imageName;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplePayPaymentTypeCopyWith<ApplePayPaymentType> get copyWith => _$ApplePayPaymentTypeCopyWithImpl<ApplePayPaymentType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApplePayPaymentTypeToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentType.applePay'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('imageName', imageName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplePayPaymentType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageName, imageName) || other.imageName == imageName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentType.applePay(id: $id, name: $name, imageName: $imageName)';
}


}

/// @nodoc
abstract mixin class $ApplePayPaymentTypeCopyWith<$Res> implements $PaymentTypeCopyWith<$Res> {
  factory $ApplePayPaymentTypeCopyWith(ApplePayPaymentType value, $Res Function(ApplePayPaymentType) _then) = _$ApplePayPaymentTypeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? imageName
});




}
/// @nodoc
class _$ApplePayPaymentTypeCopyWithImpl<$Res>
    implements $ApplePayPaymentTypeCopyWith<$Res> {
  _$ApplePayPaymentTypeCopyWithImpl(this._self, this._then);

  final ApplePayPaymentType _self;
  final $Res Function(ApplePayPaymentType) _then;

/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageName = freezed,}) {
  return _then(ApplePayPaymentType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageName: freezed == imageName ? _self.imageName : imageName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class UnknownPaymentType extends PaymentType with DiagnosticableTreeMixin {
  const UnknownPaymentType({required this.id, this.name = '', this.imageName,  String? $type}): $type = $type ?? 'UNKNOWN',super._();
  factory UnknownPaymentType.fromJson(Map<String, dynamic> json) => _$UnknownPaymentTypeFromJson(json);

@override final  String id;
@override@JsonKey() final  String name;
@override final  String? imageName;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownPaymentTypeCopyWith<UnknownPaymentType> get copyWith => _$UnknownPaymentTypeCopyWithImpl<UnknownPaymentType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnknownPaymentTypeToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentType.unknown'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('imageName', imageName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownPaymentType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageName, imageName) || other.imageName == imageName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentType.unknown(id: $id, name: $name, imageName: $imageName)';
}


}

/// @nodoc
abstract mixin class $UnknownPaymentTypeCopyWith<$Res> implements $PaymentTypeCopyWith<$Res> {
  factory $UnknownPaymentTypeCopyWith(UnknownPaymentType value, $Res Function(UnknownPaymentType) _then) = _$UnknownPaymentTypeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? imageName
});




}
/// @nodoc
class _$UnknownPaymentTypeCopyWithImpl<$Res>
    implements $UnknownPaymentTypeCopyWith<$Res> {
  _$UnknownPaymentTypeCopyWithImpl(this._self, this._then);

  final UnknownPaymentType _self;
  final $Res Function(UnknownPaymentType) _then;

/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageName = freezed,}) {
  return _then(UnknownPaymentType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageName: freezed == imageName ? _self.imageName : imageName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LinkedCardData implements DiagnosticableTreeMixin {

 String get cardId; String get cardNumber;@JsonKey(unknownEnumValue: LinkedCardType.unknown) LinkedCardType get cardType;
/// Create a copy of LinkedCardData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkedCardDataCopyWith<LinkedCardData> get copyWith => _$LinkedCardDataCopyWithImpl<LinkedCardData>(this as LinkedCardData, _$identity);

  /// Serializes this LinkedCardData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LinkedCardData'))
    ..add(DiagnosticsProperty('cardId', cardId))..add(DiagnosticsProperty('cardNumber', cardNumber))..add(DiagnosticsProperty('cardType', cardType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkedCardData&&(identical(other.cardId, cardId) || other.cardId == cardId)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardId,cardNumber,cardType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LinkedCardData(cardId: $cardId, cardNumber: $cardNumber, cardType: $cardType)';
}


}

/// @nodoc
abstract mixin class $LinkedCardDataCopyWith<$Res>  {
  factory $LinkedCardDataCopyWith(LinkedCardData value, $Res Function(LinkedCardData) _then) = _$LinkedCardDataCopyWithImpl;
@useResult
$Res call({
 String cardId, String cardNumber,@JsonKey(unknownEnumValue: LinkedCardType.unknown) LinkedCardType cardType
});




}
/// @nodoc
class _$LinkedCardDataCopyWithImpl<$Res>
    implements $LinkedCardDataCopyWith<$Res> {
  _$LinkedCardDataCopyWithImpl(this._self, this._then);

  final LinkedCardData _self;
  final $Res Function(LinkedCardData) _then;

/// Create a copy of LinkedCardData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardId = null,Object? cardNumber = null,Object? cardType = null,}) {
  return _then(LinkedCardData(
cardId: null == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as String,cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,cardType: null == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as LinkedCardType,
  ));
}

}


/// Adds pattern-matching-related methods to [LinkedCardData].
extension LinkedCardDataPatterns on LinkedCardData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LinkedCardData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LinkedCardData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LinkedCardData value)  $default,){
final _that = this;
switch (_that) {
case _LinkedCardData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LinkedCardData value)?  $default,){
final _that = this;
switch (_that) {
case _LinkedCardData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cardId,  String cardNumber, @JsonKey(unknownEnumValue: LinkedCardType.unknown)  LinkedCardType cardType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LinkedCardData() when $default != null:
return $default(_that.cardId,_that.cardNumber,_that.cardType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cardId,  String cardNumber, @JsonKey(unknownEnumValue: LinkedCardType.unknown)  LinkedCardType cardType)  $default,) {final _that = this;
switch (_that) {
case _LinkedCardData():
return $default(_that.cardId,_that.cardNumber,_that.cardType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cardId,  String cardNumber, @JsonKey(unknownEnumValue: LinkedCardType.unknown)  LinkedCardType cardType)?  $default,) {final _that = this;
switch (_that) {
case _LinkedCardData() when $default != null:
return $default(_that.cardId,_that.cardNumber,_that.cardType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LinkedCardData with DiagnosticableTreeMixin implements LinkedCardData {
  const _LinkedCardData({required this.cardId, required this.cardNumber, @JsonKey(unknownEnumValue: LinkedCardType.unknown) this.cardType = LinkedCardType.unknown});
  factory _LinkedCardData.fromJson(Map<String, dynamic> json) => _$LinkedCardDataFromJson(json);

@override final  String cardId;
@override final  String cardNumber;
@override@JsonKey(unknownEnumValue: LinkedCardType.unknown) final  LinkedCardType cardType;

/// Create a copy of LinkedCardData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinkedCardDataCopyWith<_LinkedCardData> get copyWith => __$LinkedCardDataCopyWithImpl<_LinkedCardData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinkedCardDataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LinkedCardData'))
    ..add(DiagnosticsProperty('cardId', cardId))..add(DiagnosticsProperty('cardNumber', cardNumber))..add(DiagnosticsProperty('cardType', cardType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LinkedCardData&&(identical(other.cardId, cardId) || other.cardId == cardId)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardId,cardNumber,cardType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LinkedCardData(cardId: $cardId, cardNumber: $cardNumber, cardType: $cardType)';
}


}

/// @nodoc
abstract mixin class _$LinkedCardDataCopyWith<$Res> implements $LinkedCardDataCopyWith<$Res> {
  factory _$LinkedCardDataCopyWith(_LinkedCardData value, $Res Function(_LinkedCardData) _then) = __$LinkedCardDataCopyWithImpl;
@override @useResult
$Res call({
 String cardId, String cardNumber,@JsonKey(unknownEnumValue: LinkedCardType.unknown) LinkedCardType cardType
});




}
/// @nodoc
class __$LinkedCardDataCopyWithImpl<$Res>
    implements _$LinkedCardDataCopyWith<$Res> {
  __$LinkedCardDataCopyWithImpl(this._self, this._then);

  final _LinkedCardData _self;
  final $Res Function(_LinkedCardData) _then;

/// Create a copy of LinkedCardData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardId = null,Object? cardNumber = null,Object? cardType = null,}) {
  return _then(_LinkedCardData(
cardId: null == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as String,cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,cardType: null == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as LinkedCardType,
  ));
}


}

// dart format on
