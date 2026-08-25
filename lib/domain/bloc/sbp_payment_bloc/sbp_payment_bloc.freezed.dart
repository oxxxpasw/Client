// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sbp_payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SBPPaymentState {

 SBPPaymentStateStatus get status; bool get isRedirected; List<SbpBank>? get availableBanks;
/// Create a copy of SBPPaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SBPPaymentStateCopyWith<SBPPaymentState> get copyWith => _$SBPPaymentStateCopyWithImpl<SBPPaymentState>(this as SBPPaymentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SBPPaymentState&&(identical(other.status, status) || other.status == status)&&(identical(other.isRedirected, isRedirected) || other.isRedirected == isRedirected)&&const DeepCollectionEquality().equals(other.availableBanks, availableBanks));
}


@override
int get hashCode => Object.hash(runtimeType,status,isRedirected,const DeepCollectionEquality().hash(availableBanks));

@override
String toString() {
  return 'SBPPaymentState(status: $status, isRedirected: $isRedirected, availableBanks: $availableBanks)';
}


}

/// @nodoc
abstract mixin class $SBPPaymentStateCopyWith<$Res>  {
  factory $SBPPaymentStateCopyWith(SBPPaymentState value, $Res Function(SBPPaymentState) _then) = _$SBPPaymentStateCopyWithImpl;
@useResult
$Res call({
 SBPPaymentStateStatus status, bool isRedirected, List<SbpBank>? availableBanks
});




}
/// @nodoc
class _$SBPPaymentStateCopyWithImpl<$Res>
    implements $SBPPaymentStateCopyWith<$Res> {
  _$SBPPaymentStateCopyWithImpl(this._self, this._then);

  final SBPPaymentState _self;
  final $Res Function(SBPPaymentState) _then;

/// Create a copy of SBPPaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? isRedirected = null,Object? availableBanks = freezed,}) {
  return _then(SBPPaymentState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SBPPaymentStateStatus,isRedirected: null == isRedirected ? _self.isRedirected : isRedirected // ignore: cast_nullable_to_non_nullable
as bool,availableBanks: freezed == availableBanks ? _self.availableBanks : availableBanks // ignore: cast_nullable_to_non_nullable
as List<SbpBank>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SBPPaymentState].
extension SBPPaymentStatePatterns on SBPPaymentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SBPPaymentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SBPPaymentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SBPPaymentState value)  $default,){
final _that = this;
switch (_that) {
case _SBPPaymentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SBPPaymentState value)?  $default,){
final _that = this;
switch (_that) {
case _SBPPaymentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SBPPaymentStateStatus status,  bool isRedirected,  List<SbpBank>? availableBanks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SBPPaymentState() when $default != null:
return $default(_that.status,_that.isRedirected,_that.availableBanks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SBPPaymentStateStatus status,  bool isRedirected,  List<SbpBank>? availableBanks)  $default,) {final _that = this;
switch (_that) {
case _SBPPaymentState():
return $default(_that.status,_that.isRedirected,_that.availableBanks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SBPPaymentStateStatus status,  bool isRedirected,  List<SbpBank>? availableBanks)?  $default,) {final _that = this;
switch (_that) {
case _SBPPaymentState() when $default != null:
return $default(_that.status,_that.isRedirected,_that.availableBanks);case _:
  return null;

}
}

}

/// @nodoc


class _SBPPaymentState implements SBPPaymentState {
  const _SBPPaymentState({this.status = SBPPaymentStateStatus.init, this.isRedirected = false,  List<SbpBank>? availableBanks}): assert(status == SBPPaymentStateStatus.init || status == SBPPaymentStateStatus.loading || availableBanks != null),_availableBanks = availableBanks;
  

@override@JsonKey() final  SBPPaymentStateStatus status;
@override@JsonKey() final  bool isRedirected;
 final  List<SbpBank>? _availableBanks;
@override List<SbpBank>? get availableBanks {
  final value = _availableBanks;
  if (value == null) return null;
  if (_availableBanks is EqualUnmodifiableListView) return _availableBanks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SBPPaymentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SBPPaymentStateCopyWith<_SBPPaymentState> get copyWith => __$SBPPaymentStateCopyWithImpl<_SBPPaymentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SBPPaymentState&&(identical(other.status, status) || other.status == status)&&(identical(other.isRedirected, isRedirected) || other.isRedirected == isRedirected)&&const DeepCollectionEquality().equals(other._availableBanks, _availableBanks));
}


@override
int get hashCode => Object.hash(runtimeType,status,isRedirected,const DeepCollectionEquality().hash(_availableBanks));

@override
String toString() {
  return 'SBPPaymentState(status: $status, isRedirected: $isRedirected, availableBanks: $availableBanks)';
}


}

/// @nodoc
abstract mixin class _$SBPPaymentStateCopyWith<$Res> implements $SBPPaymentStateCopyWith<$Res> {
  factory _$SBPPaymentStateCopyWith(_SBPPaymentState value, $Res Function(_SBPPaymentState) _then) = __$SBPPaymentStateCopyWithImpl;
@override @useResult
$Res call({
 SBPPaymentStateStatus status, bool isRedirected, List<SbpBank>? availableBanks
});




}
/// @nodoc
class __$SBPPaymentStateCopyWithImpl<$Res>
    implements _$SBPPaymentStateCopyWith<$Res> {
  __$SBPPaymentStateCopyWithImpl(this._self, this._then);

  final _SBPPaymentState _self;
  final $Res Function(_SBPPaymentState) _then;

/// Create a copy of SBPPaymentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? isRedirected = null,Object? availableBanks = freezed,}) {
  return _then(_SBPPaymentState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SBPPaymentStateStatus,isRedirected: null == isRedirected ? _self.isRedirected : isRedirected // ignore: cast_nullable_to_non_nullable
as bool,availableBanks: freezed == availableBanks ? _self._availableBanks : availableBanks // ignore: cast_nullable_to_non_nullable
as List<SbpBank>?,
  ));
}


}

/// @nodoc
mixin _$SBPPaymentSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SBPPaymentSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SBPPaymentSr()';
}


}

/// @nodoc
class $SBPPaymentSrCopyWith<$Res>  {
$SBPPaymentSrCopyWith(SBPPaymentSr _, $Res Function(SBPPaymentSr) __);
}


/// Adds pattern-matching-related methods to [SBPPaymentSr].
extension SBPPaymentSrPatterns on SBPPaymentSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ErrorSr value)?  error,TResult Function( _SuccessSBPPaymentSr value)?  successPayment,TResult Function( _FailedSBPPaymentSr value)?  failedPayment,TResult Function( _BankOpenedSr value)?  bankOpened,TResult Function( _BankAppNotInstalled value)?  bankAppNotInstalled,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _SuccessSBPPaymentSr() when successPayment != null:
return successPayment(_that);case _FailedSBPPaymentSr() when failedPayment != null:
return failedPayment(_that);case _BankOpenedSr() when bankOpened != null:
return bankOpened(_that);case _BankAppNotInstalled() when bankAppNotInstalled != null:
return bankAppNotInstalled(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ErrorSr value)  error,required TResult Function( _SuccessSBPPaymentSr value)  successPayment,required TResult Function( _FailedSBPPaymentSr value)  failedPayment,required TResult Function( _BankOpenedSr value)  bankOpened,required TResult Function( _BankAppNotInstalled value)  bankAppNotInstalled,}){
final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that);case _SuccessSBPPaymentSr():
return successPayment(_that);case _FailedSBPPaymentSr():
return failedPayment(_that);case _BankOpenedSr():
return bankOpened(_that);case _BankAppNotInstalled():
return bankAppNotInstalled(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ErrorSr value)?  error,TResult? Function( _SuccessSBPPaymentSr value)?  successPayment,TResult? Function( _FailedSBPPaymentSr value)?  failedPayment,TResult? Function( _BankOpenedSr value)?  bankOpened,TResult? Function( _BankAppNotInstalled value)?  bankAppNotInstalled,}){
final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that);case _SuccessSBPPaymentSr() when successPayment != null:
return successPayment(_that);case _FailedSBPPaymentSr() when failedPayment != null:
return failedPayment(_that);case _BankOpenedSr() when bankOpened != null:
return bankOpened(_that);case _BankAppNotInstalled() when bankAppNotInstalled != null:
return bankAppNotInstalled(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function()?  successPayment,TResult Function()?  failedPayment,TResult Function()?  bankOpened,TResult Function()?  bankAppNotInstalled,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _SuccessSBPPaymentSr() when successPayment != null:
return successPayment();case _FailedSBPPaymentSr() when failedPayment != null:
return failedPayment();case _BankOpenedSr() when bankOpened != null:
return bankOpened();case _BankAppNotInstalled() when bankAppNotInstalled != null:
return bankAppNotInstalled();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function()  successPayment,required TResult Function()  failedPayment,required TResult Function()  bankOpened,required TResult Function()  bankAppNotInstalled,}) {final _that = this;
switch (_that) {
case _ErrorSr():
return error(_that.error);case _SuccessSBPPaymentSr():
return successPayment();case _FailedSBPPaymentSr():
return failedPayment();case _BankOpenedSr():
return bankOpened();case _BankAppNotInstalled():
return bankAppNotInstalled();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function()?  successPayment,TResult? Function()?  failedPayment,TResult? Function()?  bankOpened,TResult? Function()?  bankAppNotInstalled,}) {final _that = this;
switch (_that) {
case _ErrorSr() when error != null:
return error(_that.error);case _SuccessSBPPaymentSr() when successPayment != null:
return successPayment();case _FailedSBPPaymentSr() when failedPayment != null:
return failedPayment();case _BankOpenedSr() when bankOpened != null:
return bankOpened();case _BankAppNotInstalled() when bankAppNotInstalled != null:
return bankAppNotInstalled();case _:
  return null;

}
}

}

/// @nodoc


class _ErrorSr implements SBPPaymentSr {
  const _ErrorSr(this.error);
  

 final  String error;

/// Create a copy of SBPPaymentSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorSrCopyWith<_ErrorSr> get copyWith => __$ErrorSrCopyWithImpl<_ErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SBPPaymentSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorSrCopyWith<$Res> implements $SBPPaymentSrCopyWith<$Res> {
  factory _$ErrorSrCopyWith(_ErrorSr value, $Res Function(_ErrorSr) _then) = __$ErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorSrCopyWithImpl<$Res>
    implements _$ErrorSrCopyWith<$Res> {
  __$ErrorSrCopyWithImpl(this._self, this._then);

  final _ErrorSr _self;
  final $Res Function(_ErrorSr) _then;

/// Create a copy of SBPPaymentSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SuccessSBPPaymentSr implements SBPPaymentSr {
  const _SuccessSBPPaymentSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessSBPPaymentSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SBPPaymentSr.successPayment()';
}


}




/// @nodoc


class _FailedSBPPaymentSr implements SBPPaymentSr {
  const _FailedSBPPaymentSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FailedSBPPaymentSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SBPPaymentSr.failedPayment()';
}


}




/// @nodoc


class _BankOpenedSr implements SBPPaymentSr {
  const _BankOpenedSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankOpenedSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SBPPaymentSr.bankOpened()';
}


}




/// @nodoc


class _BankAppNotInstalled implements SBPPaymentSr {
  const _BankAppNotInstalled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankAppNotInstalled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SBPPaymentSr.bankAppNotInstalled()';
}


}




// dart format on
