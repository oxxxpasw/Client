// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_payment_type_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChoosePaymentTypeState {

 ChoosePaymentTypeStatus get status; List<PaymentType>? get paymentTypes; PaymentType? get selectedPaymentType; bool get enabled;
/// Create a copy of ChoosePaymentTypeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChoosePaymentTypeStateCopyWith<ChoosePaymentTypeState> get copyWith => _$ChoosePaymentTypeStateCopyWithImpl<ChoosePaymentTypeState>(this as ChoosePaymentTypeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChoosePaymentTypeState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.paymentTypes, paymentTypes)&&(identical(other.selectedPaymentType, selectedPaymentType) || other.selectedPaymentType == selectedPaymentType)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(paymentTypes),selectedPaymentType,enabled);

@override
String toString() {
  return 'ChoosePaymentTypeState(status: $status, paymentTypes: $paymentTypes, selectedPaymentType: $selectedPaymentType, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class $ChoosePaymentTypeStateCopyWith<$Res>  {
  factory $ChoosePaymentTypeStateCopyWith(ChoosePaymentTypeState value, $Res Function(ChoosePaymentTypeState) _then) = _$ChoosePaymentTypeStateCopyWithImpl;
@useResult
$Res call({
 ChoosePaymentTypeStatus status, List<PaymentType>? paymentTypes, PaymentType? selectedPaymentType, bool enabled
});


$PaymentTypeCopyWith<$Res>? get selectedPaymentType;

}
/// @nodoc
class _$ChoosePaymentTypeStateCopyWithImpl<$Res>
    implements $ChoosePaymentTypeStateCopyWith<$Res> {
  _$ChoosePaymentTypeStateCopyWithImpl(this._self, this._then);

  final ChoosePaymentTypeState _self;
  final $Res Function(ChoosePaymentTypeState) _then;

/// Create a copy of ChoosePaymentTypeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? paymentTypes = freezed,Object? selectedPaymentType = freezed,Object? enabled = null,}) {
  return _then(ChoosePaymentTypeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChoosePaymentTypeStatus,paymentTypes: freezed == paymentTypes ? _self.paymentTypes : paymentTypes // ignore: cast_nullable_to_non_nullable
as List<PaymentType>?,selectedPaymentType: freezed == selectedPaymentType ? _self.selectedPaymentType : selectedPaymentType // ignore: cast_nullable_to_non_nullable
as PaymentType?,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ChoosePaymentTypeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res>? get selectedPaymentType {
    if (_self.selectedPaymentType == null) {
    return null;
  }

  return $PaymentTypeCopyWith<$Res>(_self.selectedPaymentType!, (value) {
    return _then(_self.copyWith(selectedPaymentType: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChoosePaymentTypeState].
extension ChoosePaymentTypeStatePatterns on ChoosePaymentTypeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChoosePaymentTypeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChoosePaymentTypeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChoosePaymentTypeState value)  $default,){
final _that = this;
switch (_that) {
case _ChoosePaymentTypeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChoosePaymentTypeState value)?  $default,){
final _that = this;
switch (_that) {
case _ChoosePaymentTypeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChoosePaymentTypeStatus status,  List<PaymentType>? paymentTypes,  PaymentType? selectedPaymentType,  bool enabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChoosePaymentTypeState() when $default != null:
return $default(_that.status,_that.paymentTypes,_that.selectedPaymentType,_that.enabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChoosePaymentTypeStatus status,  List<PaymentType>? paymentTypes,  PaymentType? selectedPaymentType,  bool enabled)  $default,) {final _that = this;
switch (_that) {
case _ChoosePaymentTypeState():
return $default(_that.status,_that.paymentTypes,_that.selectedPaymentType,_that.enabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChoosePaymentTypeStatus status,  List<PaymentType>? paymentTypes,  PaymentType? selectedPaymentType,  bool enabled)?  $default,) {final _that = this;
switch (_that) {
case _ChoosePaymentTypeState() when $default != null:
return $default(_that.status,_that.paymentTypes,_that.selectedPaymentType,_that.enabled);case _:
  return null;

}
}

}

/// @nodoc


class _ChoosePaymentTypeState implements ChoosePaymentTypeState {
  const _ChoosePaymentTypeState({this.status = ChoosePaymentTypeStatus.init,  List<PaymentType>? paymentTypes, this.selectedPaymentType, this.enabled = true}): assert(status != ChoosePaymentTypeStatus.ready || paymentTypes != null),_paymentTypes = paymentTypes;
  

@override@JsonKey() final  ChoosePaymentTypeStatus status;
 final  List<PaymentType>? _paymentTypes;
@override List<PaymentType>? get paymentTypes {
  final value = _paymentTypes;
  if (value == null) return null;
  if (_paymentTypes is EqualUnmodifiableListView) return _paymentTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  PaymentType? selectedPaymentType;
@override@JsonKey() final  bool enabled;

/// Create a copy of ChoosePaymentTypeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChoosePaymentTypeStateCopyWith<_ChoosePaymentTypeState> get copyWith => __$ChoosePaymentTypeStateCopyWithImpl<_ChoosePaymentTypeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChoosePaymentTypeState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._paymentTypes, _paymentTypes)&&(identical(other.selectedPaymentType, selectedPaymentType) || other.selectedPaymentType == selectedPaymentType)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_paymentTypes),selectedPaymentType,enabled);

@override
String toString() {
  return 'ChoosePaymentTypeState(status: $status, paymentTypes: $paymentTypes, selectedPaymentType: $selectedPaymentType, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$ChoosePaymentTypeStateCopyWith<$Res> implements $ChoosePaymentTypeStateCopyWith<$Res> {
  factory _$ChoosePaymentTypeStateCopyWith(_ChoosePaymentTypeState value, $Res Function(_ChoosePaymentTypeState) _then) = __$ChoosePaymentTypeStateCopyWithImpl;
@override @useResult
$Res call({
 ChoosePaymentTypeStatus status, List<PaymentType>? paymentTypes, PaymentType? selectedPaymentType, bool enabled
});


@override $PaymentTypeCopyWith<$Res>? get selectedPaymentType;

}
/// @nodoc
class __$ChoosePaymentTypeStateCopyWithImpl<$Res>
    implements _$ChoosePaymentTypeStateCopyWith<$Res> {
  __$ChoosePaymentTypeStateCopyWithImpl(this._self, this._then);

  final _ChoosePaymentTypeState _self;
  final $Res Function(_ChoosePaymentTypeState) _then;

/// Create a copy of ChoosePaymentTypeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? paymentTypes = freezed,Object? selectedPaymentType = freezed,Object? enabled = null,}) {
  return _then(_ChoosePaymentTypeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChoosePaymentTypeStatus,paymentTypes: freezed == paymentTypes ? _self._paymentTypes : paymentTypes // ignore: cast_nullable_to_non_nullable
as List<PaymentType>?,selectedPaymentType: freezed == selectedPaymentType ? _self.selectedPaymentType : selectedPaymentType // ignore: cast_nullable_to_non_nullable
as PaymentType?,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ChoosePaymentTypeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res>? get selectedPaymentType {
    if (_self.selectedPaymentType == null) {
    return null;
  }

  return $PaymentTypeCopyWith<$Res>(_self.selectedPaymentType!, (value) {
    return _then(_self.copyWith(selectedPaymentType: value));
  });
}
}

/// @nodoc
mixin _$ChoosePaymentTypeSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChoosePaymentTypeSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChoosePaymentTypeSr()';
}


}

/// @nodoc
class $ChoosePaymentTypeSrCopyWith<$Res>  {
$ChoosePaymentTypeSrCopyWith(ChoosePaymentTypeSr _, $Res Function(ChoosePaymentTypeSr) __);
}


/// Adds pattern-matching-related methods to [ChoosePaymentTypeSr].
extension ChoosePaymentTypeSrPatterns on ChoosePaymentTypeSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChoosePaymentTypeErrorSr value)?  error,TResult Function( ChoosePaymentTypeSelectSr value)?  select,TResult Function( ChoosePaymentTypeChangedSr value)?  changed,TResult Function( ChoosePaymentTypeOpenRegisterCardSr value)?  openRegisterCard,TResult Function( ChoosePaymentTypeCardDeactivatedSr value)?  cardDeactivated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChoosePaymentTypeErrorSr() when error != null:
return error(_that);case ChoosePaymentTypeSelectSr() when select != null:
return select(_that);case ChoosePaymentTypeChangedSr() when changed != null:
return changed(_that);case ChoosePaymentTypeOpenRegisterCardSr() when openRegisterCard != null:
return openRegisterCard(_that);case ChoosePaymentTypeCardDeactivatedSr() when cardDeactivated != null:
return cardDeactivated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChoosePaymentTypeErrorSr value)  error,required TResult Function( ChoosePaymentTypeSelectSr value)  select,required TResult Function( ChoosePaymentTypeChangedSr value)  changed,required TResult Function( ChoosePaymentTypeOpenRegisterCardSr value)  openRegisterCard,required TResult Function( ChoosePaymentTypeCardDeactivatedSr value)  cardDeactivated,}){
final _that = this;
switch (_that) {
case ChoosePaymentTypeErrorSr():
return error(_that);case ChoosePaymentTypeSelectSr():
return select(_that);case ChoosePaymentTypeChangedSr():
return changed(_that);case ChoosePaymentTypeOpenRegisterCardSr():
return openRegisterCard(_that);case ChoosePaymentTypeCardDeactivatedSr():
return cardDeactivated(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChoosePaymentTypeErrorSr value)?  error,TResult? Function( ChoosePaymentTypeSelectSr value)?  select,TResult? Function( ChoosePaymentTypeChangedSr value)?  changed,TResult? Function( ChoosePaymentTypeOpenRegisterCardSr value)?  openRegisterCard,TResult? Function( ChoosePaymentTypeCardDeactivatedSr value)?  cardDeactivated,}){
final _that = this;
switch (_that) {
case ChoosePaymentTypeErrorSr() when error != null:
return error(_that);case ChoosePaymentTypeSelectSr() when select != null:
return select(_that);case ChoosePaymentTypeChangedSr() when changed != null:
return changed(_that);case ChoosePaymentTypeOpenRegisterCardSr() when openRegisterCard != null:
return openRegisterCard(_that);case ChoosePaymentTypeCardDeactivatedSr() when cardDeactivated != null:
return cardDeactivated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function( PaymentType? type)?  select,TResult Function( PaymentType? type)?  changed,TResult Function( Uri url)?  openRegisterCard,TResult Function()?  cardDeactivated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChoosePaymentTypeErrorSr() when error != null:
return error(_that.error);case ChoosePaymentTypeSelectSr() when select != null:
return select(_that.type);case ChoosePaymentTypeChangedSr() when changed != null:
return changed(_that.type);case ChoosePaymentTypeOpenRegisterCardSr() when openRegisterCard != null:
return openRegisterCard(_that.url);case ChoosePaymentTypeCardDeactivatedSr() when cardDeactivated != null:
return cardDeactivated();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function( PaymentType? type)  select,required TResult Function( PaymentType? type)  changed,required TResult Function( Uri url)  openRegisterCard,required TResult Function()  cardDeactivated,}) {final _that = this;
switch (_that) {
case ChoosePaymentTypeErrorSr():
return error(_that.error);case ChoosePaymentTypeSelectSr():
return select(_that.type);case ChoosePaymentTypeChangedSr():
return changed(_that.type);case ChoosePaymentTypeOpenRegisterCardSr():
return openRegisterCard(_that.url);case ChoosePaymentTypeCardDeactivatedSr():
return cardDeactivated();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function( PaymentType? type)?  select,TResult? Function( PaymentType? type)?  changed,TResult? Function( Uri url)?  openRegisterCard,TResult? Function()?  cardDeactivated,}) {final _that = this;
switch (_that) {
case ChoosePaymentTypeErrorSr() when error != null:
return error(_that.error);case ChoosePaymentTypeSelectSr() when select != null:
return select(_that.type);case ChoosePaymentTypeChangedSr() when changed != null:
return changed(_that.type);case ChoosePaymentTypeOpenRegisterCardSr() when openRegisterCard != null:
return openRegisterCard(_that.url);case ChoosePaymentTypeCardDeactivatedSr() when cardDeactivated != null:
return cardDeactivated();case _:
  return null;

}
}

}

/// @nodoc


class ChoosePaymentTypeErrorSr implements ChoosePaymentTypeSr {
  const ChoosePaymentTypeErrorSr(this.error);
  

 final  String error;

/// Create a copy of ChoosePaymentTypeSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChoosePaymentTypeErrorSrCopyWith<ChoosePaymentTypeErrorSr> get copyWith => _$ChoosePaymentTypeErrorSrCopyWithImpl<ChoosePaymentTypeErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChoosePaymentTypeErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ChoosePaymentTypeSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ChoosePaymentTypeErrorSrCopyWith<$Res> implements $ChoosePaymentTypeSrCopyWith<$Res> {
  factory $ChoosePaymentTypeErrorSrCopyWith(ChoosePaymentTypeErrorSr value, $Res Function(ChoosePaymentTypeErrorSr) _then) = _$ChoosePaymentTypeErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ChoosePaymentTypeErrorSrCopyWithImpl<$Res>
    implements $ChoosePaymentTypeErrorSrCopyWith<$Res> {
  _$ChoosePaymentTypeErrorSrCopyWithImpl(this._self, this._then);

  final ChoosePaymentTypeErrorSr _self;
  final $Res Function(ChoosePaymentTypeErrorSr) _then;

/// Create a copy of ChoosePaymentTypeSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ChoosePaymentTypeErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChoosePaymentTypeSelectSr implements ChoosePaymentTypeSr {
  const ChoosePaymentTypeSelectSr(this.type);
  

 final  PaymentType? type;

/// Create a copy of ChoosePaymentTypeSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChoosePaymentTypeSelectSrCopyWith<ChoosePaymentTypeSelectSr> get copyWith => _$ChoosePaymentTypeSelectSrCopyWithImpl<ChoosePaymentTypeSelectSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChoosePaymentTypeSelectSr&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'ChoosePaymentTypeSr.select(type: $type)';
}


}

/// @nodoc
abstract mixin class $ChoosePaymentTypeSelectSrCopyWith<$Res> implements $ChoosePaymentTypeSrCopyWith<$Res> {
  factory $ChoosePaymentTypeSelectSrCopyWith(ChoosePaymentTypeSelectSr value, $Res Function(ChoosePaymentTypeSelectSr) _then) = _$ChoosePaymentTypeSelectSrCopyWithImpl;
@useResult
$Res call({
 PaymentType? type
});


$PaymentTypeCopyWith<$Res>? get type;

}
/// @nodoc
class _$ChoosePaymentTypeSelectSrCopyWithImpl<$Res>
    implements $ChoosePaymentTypeSelectSrCopyWith<$Res> {
  _$ChoosePaymentTypeSelectSrCopyWithImpl(this._self, this._then);

  final ChoosePaymentTypeSelectSr _self;
  final $Res Function(ChoosePaymentTypeSelectSr) _then;

/// Create a copy of ChoosePaymentTypeSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = freezed,}) {
  return _then(ChoosePaymentTypeSelectSr(
freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PaymentType?,
  ));
}

/// Create a copy of ChoosePaymentTypeSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res>? get type {
    if (_self.type == null) {
    return null;
  }

  return $PaymentTypeCopyWith<$Res>(_self.type!, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

/// @nodoc


class ChoosePaymentTypeChangedSr implements ChoosePaymentTypeSr {
  const ChoosePaymentTypeChangedSr(this.type);
  

 final  PaymentType? type;

/// Create a copy of ChoosePaymentTypeSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChoosePaymentTypeChangedSrCopyWith<ChoosePaymentTypeChangedSr> get copyWith => _$ChoosePaymentTypeChangedSrCopyWithImpl<ChoosePaymentTypeChangedSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChoosePaymentTypeChangedSr&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'ChoosePaymentTypeSr.changed(type: $type)';
}


}

/// @nodoc
abstract mixin class $ChoosePaymentTypeChangedSrCopyWith<$Res> implements $ChoosePaymentTypeSrCopyWith<$Res> {
  factory $ChoosePaymentTypeChangedSrCopyWith(ChoosePaymentTypeChangedSr value, $Res Function(ChoosePaymentTypeChangedSr) _then) = _$ChoosePaymentTypeChangedSrCopyWithImpl;
@useResult
$Res call({
 PaymentType? type
});


$PaymentTypeCopyWith<$Res>? get type;

}
/// @nodoc
class _$ChoosePaymentTypeChangedSrCopyWithImpl<$Res>
    implements $ChoosePaymentTypeChangedSrCopyWith<$Res> {
  _$ChoosePaymentTypeChangedSrCopyWithImpl(this._self, this._then);

  final ChoosePaymentTypeChangedSr _self;
  final $Res Function(ChoosePaymentTypeChangedSr) _then;

/// Create a copy of ChoosePaymentTypeSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = freezed,}) {
  return _then(ChoosePaymentTypeChangedSr(
freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PaymentType?,
  ));
}

/// Create a copy of ChoosePaymentTypeSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res>? get type {
    if (_self.type == null) {
    return null;
  }

  return $PaymentTypeCopyWith<$Res>(_self.type!, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

/// @nodoc


class ChoosePaymentTypeOpenRegisterCardSr implements ChoosePaymentTypeSr {
  const ChoosePaymentTypeOpenRegisterCardSr(this.url);
  

 final  Uri url;

/// Create a copy of ChoosePaymentTypeSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChoosePaymentTypeOpenRegisterCardSrCopyWith<ChoosePaymentTypeOpenRegisterCardSr> get copyWith => _$ChoosePaymentTypeOpenRegisterCardSrCopyWithImpl<ChoosePaymentTypeOpenRegisterCardSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChoosePaymentTypeOpenRegisterCardSr&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'ChoosePaymentTypeSr.openRegisterCard(url: $url)';
}


}

/// @nodoc
abstract mixin class $ChoosePaymentTypeOpenRegisterCardSrCopyWith<$Res> implements $ChoosePaymentTypeSrCopyWith<$Res> {
  factory $ChoosePaymentTypeOpenRegisterCardSrCopyWith(ChoosePaymentTypeOpenRegisterCardSr value, $Res Function(ChoosePaymentTypeOpenRegisterCardSr) _then) = _$ChoosePaymentTypeOpenRegisterCardSrCopyWithImpl;
@useResult
$Res call({
 Uri url
});




}
/// @nodoc
class _$ChoosePaymentTypeOpenRegisterCardSrCopyWithImpl<$Res>
    implements $ChoosePaymentTypeOpenRegisterCardSrCopyWith<$Res> {
  _$ChoosePaymentTypeOpenRegisterCardSrCopyWithImpl(this._self, this._then);

  final ChoosePaymentTypeOpenRegisterCardSr _self;
  final $Res Function(ChoosePaymentTypeOpenRegisterCardSr) _then;

/// Create a copy of ChoosePaymentTypeSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(ChoosePaymentTypeOpenRegisterCardSr(
null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}


}

/// @nodoc


class ChoosePaymentTypeCardDeactivatedSr implements ChoosePaymentTypeSr {
  const ChoosePaymentTypeCardDeactivatedSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChoosePaymentTypeCardDeactivatedSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChoosePaymentTypeSr.cardDeactivated()';
}


}




/// @nodoc
mixin _$ChoosePaymentTypeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChoosePaymentTypeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChoosePaymentTypeEvent()';
}


}

/// @nodoc
class $ChoosePaymentTypeEventCopyWith<$Res>  {
$ChoosePaymentTypeEventCopyWith(ChoosePaymentTypeEvent _, $Res Function(ChoosePaymentTypeEvent) __);
}


/// Adds pattern-matching-related methods to [ChoosePaymentTypeEvent].
extension ChoosePaymentTypeEventPatterns on ChoosePaymentTypeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _PaymentTypePressed value)?  paymentTypePressed,TResult Function( _SubmitPressed value)?  submitPressed,TResult Function( _SetStatus value)?  setStatus,TResult Function( _DeactivateCardPressed value)?  deactivateCardPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _PaymentTypePressed() when paymentTypePressed != null:
return paymentTypePressed(_that);case _SubmitPressed() when submitPressed != null:
return submitPressed(_that);case _SetStatus() when setStatus != null:
return setStatus(_that);case _DeactivateCardPressed() when deactivateCardPressed != null:
return deactivateCardPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _PaymentTypePressed value)  paymentTypePressed,required TResult Function( _SubmitPressed value)  submitPressed,required TResult Function( _SetStatus value)  setStatus,required TResult Function( _DeactivateCardPressed value)  deactivateCardPressed,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _PaymentTypePressed():
return paymentTypePressed(_that);case _SubmitPressed():
return submitPressed(_that);case _SetStatus():
return setStatus(_that);case _DeactivateCardPressed():
return deactivateCardPressed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _PaymentTypePressed value)?  paymentTypePressed,TResult? Function( _SubmitPressed value)?  submitPressed,TResult? Function( _SetStatus value)?  setStatus,TResult? Function( _DeactivateCardPressed value)?  deactivateCardPressed,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _PaymentTypePressed() when paymentTypePressed != null:
return paymentTypePressed(_that);case _SubmitPressed() when submitPressed != null:
return submitPressed(_that);case _SetStatus() when setStatus != null:
return setStatus(_that);case _DeactivateCardPressed() when deactivateCardPressed != null:
return deactivateCardPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( PaymentType type)?  paymentTypePressed,TResult Function()?  submitPressed,TResult Function( bool enabled)?  setStatus,TResult Function( LinkedCardPaymentType type)?  deactivateCardPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _PaymentTypePressed() when paymentTypePressed != null:
return paymentTypePressed(_that.type);case _SubmitPressed() when submitPressed != null:
return submitPressed();case _SetStatus() when setStatus != null:
return setStatus(_that.enabled);case _DeactivateCardPressed() when deactivateCardPressed != null:
return deactivateCardPressed(_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( PaymentType type)  paymentTypePressed,required TResult Function()  submitPressed,required TResult Function( bool enabled)  setStatus,required TResult Function( LinkedCardPaymentType type)  deactivateCardPressed,}) {final _that = this;
switch (_that) {
case _Init():
return init();case _PaymentTypePressed():
return paymentTypePressed(_that.type);case _SubmitPressed():
return submitPressed();case _SetStatus():
return setStatus(_that.enabled);case _DeactivateCardPressed():
return deactivateCardPressed(_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( PaymentType type)?  paymentTypePressed,TResult? Function()?  submitPressed,TResult? Function( bool enabled)?  setStatus,TResult? Function( LinkedCardPaymentType type)?  deactivateCardPressed,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _PaymentTypePressed() when paymentTypePressed != null:
return paymentTypePressed(_that.type);case _SubmitPressed() when submitPressed != null:
return submitPressed();case _SetStatus() when setStatus != null:
return setStatus(_that.enabled);case _DeactivateCardPressed() when deactivateCardPressed != null:
return deactivateCardPressed(_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _Init implements ChoosePaymentTypeEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChoosePaymentTypeEvent.init()';
}


}




/// @nodoc


class _PaymentTypePressed implements ChoosePaymentTypeEvent {
  const _PaymentTypePressed(this.type);
  

 final  PaymentType type;

/// Create a copy of ChoosePaymentTypeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentTypePressedCopyWith<_PaymentTypePressed> get copyWith => __$PaymentTypePressedCopyWithImpl<_PaymentTypePressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentTypePressed&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'ChoosePaymentTypeEvent.paymentTypePressed(type: $type)';
}


}

/// @nodoc
abstract mixin class _$PaymentTypePressedCopyWith<$Res> implements $ChoosePaymentTypeEventCopyWith<$Res> {
  factory _$PaymentTypePressedCopyWith(_PaymentTypePressed value, $Res Function(_PaymentTypePressed) _then) = __$PaymentTypePressedCopyWithImpl;
@useResult
$Res call({
 PaymentType type
});


$PaymentTypeCopyWith<$Res> get type;

}
/// @nodoc
class __$PaymentTypePressedCopyWithImpl<$Res>
    implements _$PaymentTypePressedCopyWith<$Res> {
  __$PaymentTypePressedCopyWithImpl(this._self, this._then);

  final _PaymentTypePressed _self;
  final $Res Function(_PaymentTypePressed) _then;

/// Create a copy of ChoosePaymentTypeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_PaymentTypePressed(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PaymentType,
  ));
}

/// Create a copy of ChoosePaymentTypeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<$Res> get type {
  
  return $PaymentTypeCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

/// @nodoc


class _SubmitPressed implements ChoosePaymentTypeEvent {
  const _SubmitPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChoosePaymentTypeEvent.submitPressed()';
}


}




/// @nodoc


class _SetStatus implements ChoosePaymentTypeEvent {
  const _SetStatus(this.enabled);
  

 final  bool enabled;

/// Create a copy of ChoosePaymentTypeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetStatusCopyWith<_SetStatus> get copyWith => __$SetStatusCopyWithImpl<_SetStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetStatus&&(identical(other.enabled, enabled) || other.enabled == enabled));
}


@override
int get hashCode => Object.hash(runtimeType,enabled);

@override
String toString() {
  return 'ChoosePaymentTypeEvent.setStatus(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$SetStatusCopyWith<$Res> implements $ChoosePaymentTypeEventCopyWith<$Res> {
  factory _$SetStatusCopyWith(_SetStatus value, $Res Function(_SetStatus) _then) = __$SetStatusCopyWithImpl;
@useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class __$SetStatusCopyWithImpl<$Res>
    implements _$SetStatusCopyWith<$Res> {
  __$SetStatusCopyWithImpl(this._self, this._then);

  final _SetStatus _self;
  final $Res Function(_SetStatus) _then;

/// Create a copy of ChoosePaymentTypeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? enabled = null,}) {
  return _then(_SetStatus(
null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _DeactivateCardPressed implements ChoosePaymentTypeEvent {
  const _DeactivateCardPressed(this.type);
  

 final  LinkedCardPaymentType type;

/// Create a copy of ChoosePaymentTypeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeactivateCardPressedCopyWith<_DeactivateCardPressed> get copyWith => __$DeactivateCardPressedCopyWithImpl<_DeactivateCardPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeactivateCardPressed&&const DeepCollectionEquality().equals(other.type, type));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(type));

@override
String toString() {
  return 'ChoosePaymentTypeEvent.deactivateCardPressed(type: $type)';
}


}

/// @nodoc
abstract mixin class _$DeactivateCardPressedCopyWith<$Res> implements $ChoosePaymentTypeEventCopyWith<$Res> {
  factory _$DeactivateCardPressedCopyWith(_DeactivateCardPressed value, $Res Function(_DeactivateCardPressed) _then) = __$DeactivateCardPressedCopyWithImpl;
@useResult
$Res call({
 LinkedCardPaymentType type
});




}
/// @nodoc
class __$DeactivateCardPressedCopyWithImpl<$Res>
    implements _$DeactivateCardPressedCopyWith<$Res> {
  __$DeactivateCardPressedCopyWithImpl(this._self, this._then);

  final _DeactivateCardPressed _self;
  final $Res Function(_DeactivateCardPressed) _then;

/// Create a copy of ChoosePaymentTypeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = freezed,}) {
  return _then(_DeactivateCardPressed(
freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LinkedCardPaymentType,
  ));
}


}

// dart format on
