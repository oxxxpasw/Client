// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _PhoneConfirmPressed value)?  phoneConfirmPressed,TResult Function( _CodeConfirmPressed value)?  codeConfirmPressed,TResult Function( _ResendCodePressed value)?  resendCodePressed,TResult Function( _TimerTick value)?  timerTick,TResult Function( _WithoutAuthPressed value)?  withoutAuthPressed,TResult Function( _SkipAuth value)?  skipAuth,TResult Function( _OnUserAgreementPressed value)?  onUserAgreementPressed,TResult Function( _OnPrivacyPolicyPressed value)?  onPrivacyPolicyPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _PhoneConfirmPressed() when phoneConfirmPressed != null:
return phoneConfirmPressed(_that);case _CodeConfirmPressed() when codeConfirmPressed != null:
return codeConfirmPressed(_that);case _ResendCodePressed() when resendCodePressed != null:
return resendCodePressed(_that);case _TimerTick() when timerTick != null:
return timerTick(_that);case _WithoutAuthPressed() when withoutAuthPressed != null:
return withoutAuthPressed(_that);case _SkipAuth() when skipAuth != null:
return skipAuth(_that);case _OnUserAgreementPressed() when onUserAgreementPressed != null:
return onUserAgreementPressed(_that);case _OnPrivacyPolicyPressed() when onPrivacyPolicyPressed != null:
return onPrivacyPolicyPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _PhoneConfirmPressed value)  phoneConfirmPressed,required TResult Function( _CodeConfirmPressed value)  codeConfirmPressed,required TResult Function( _ResendCodePressed value)  resendCodePressed,required TResult Function( _TimerTick value)  timerTick,required TResult Function( _WithoutAuthPressed value)  withoutAuthPressed,required TResult Function( _SkipAuth value)  skipAuth,required TResult Function( _OnUserAgreementPressed value)  onUserAgreementPressed,required TResult Function( _OnPrivacyPolicyPressed value)  onPrivacyPolicyPressed,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _PhoneConfirmPressed():
return phoneConfirmPressed(_that);case _CodeConfirmPressed():
return codeConfirmPressed(_that);case _ResendCodePressed():
return resendCodePressed(_that);case _TimerTick():
return timerTick(_that);case _WithoutAuthPressed():
return withoutAuthPressed(_that);case _SkipAuth():
return skipAuth(_that);case _OnUserAgreementPressed():
return onUserAgreementPressed(_that);case _OnPrivacyPolicyPressed():
return onPrivacyPolicyPressed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _PhoneConfirmPressed value)?  phoneConfirmPressed,TResult? Function( _CodeConfirmPressed value)?  codeConfirmPressed,TResult? Function( _ResendCodePressed value)?  resendCodePressed,TResult? Function( _TimerTick value)?  timerTick,TResult? Function( _WithoutAuthPressed value)?  withoutAuthPressed,TResult? Function( _SkipAuth value)?  skipAuth,TResult? Function( _OnUserAgreementPressed value)?  onUserAgreementPressed,TResult? Function( _OnPrivacyPolicyPressed value)?  onPrivacyPolicyPressed,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _PhoneConfirmPressed() when phoneConfirmPressed != null:
return phoneConfirmPressed(_that);case _CodeConfirmPressed() when codeConfirmPressed != null:
return codeConfirmPressed(_that);case _ResendCodePressed() when resendCodePressed != null:
return resendCodePressed(_that);case _TimerTick() when timerTick != null:
return timerTick(_that);case _WithoutAuthPressed() when withoutAuthPressed != null:
return withoutAuthPressed(_that);case _SkipAuth() when skipAuth != null:
return skipAuth(_that);case _OnUserAgreementPressed() when onUserAgreementPressed != null:
return onUserAgreementPressed(_that);case _OnPrivacyPolicyPressed() when onPrivacyPolicyPressed != null:
return onPrivacyPolicyPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( Phone phone)?  phoneConfirmPressed,TResult Function( String code)?  codeConfirmPressed,TResult Function()?  resendCodePressed,TResult Function( Timer timer)?  timerTick,TResult Function()?  withoutAuthPressed,TResult Function()?  skipAuth,TResult Function()?  onUserAgreementPressed,TResult Function()?  onPrivacyPolicyPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _PhoneConfirmPressed() when phoneConfirmPressed != null:
return phoneConfirmPressed(_that.phone);case _CodeConfirmPressed() when codeConfirmPressed != null:
return codeConfirmPressed(_that.code);case _ResendCodePressed() when resendCodePressed != null:
return resendCodePressed();case _TimerTick() when timerTick != null:
return timerTick(_that.timer);case _WithoutAuthPressed() when withoutAuthPressed != null:
return withoutAuthPressed();case _SkipAuth() when skipAuth != null:
return skipAuth();case _OnUserAgreementPressed() when onUserAgreementPressed != null:
return onUserAgreementPressed();case _OnPrivacyPolicyPressed() when onPrivacyPolicyPressed != null:
return onPrivacyPolicyPressed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( Phone phone)  phoneConfirmPressed,required TResult Function( String code)  codeConfirmPressed,required TResult Function()  resendCodePressed,required TResult Function( Timer timer)  timerTick,required TResult Function()  withoutAuthPressed,required TResult Function()  skipAuth,required TResult Function()  onUserAgreementPressed,required TResult Function()  onPrivacyPolicyPressed,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _PhoneConfirmPressed():
return phoneConfirmPressed(_that.phone);case _CodeConfirmPressed():
return codeConfirmPressed(_that.code);case _ResendCodePressed():
return resendCodePressed();case _TimerTick():
return timerTick(_that.timer);case _WithoutAuthPressed():
return withoutAuthPressed();case _SkipAuth():
return skipAuth();case _OnUserAgreementPressed():
return onUserAgreementPressed();case _OnPrivacyPolicyPressed():
return onPrivacyPolicyPressed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( Phone phone)?  phoneConfirmPressed,TResult? Function( String code)?  codeConfirmPressed,TResult? Function()?  resendCodePressed,TResult? Function( Timer timer)?  timerTick,TResult? Function()?  withoutAuthPressed,TResult? Function()?  skipAuth,TResult? Function()?  onUserAgreementPressed,TResult? Function()?  onPrivacyPolicyPressed,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _PhoneConfirmPressed() when phoneConfirmPressed != null:
return phoneConfirmPressed(_that.phone);case _CodeConfirmPressed() when codeConfirmPressed != null:
return codeConfirmPressed(_that.code);case _ResendCodePressed() when resendCodePressed != null:
return resendCodePressed();case _TimerTick() when timerTick != null:
return timerTick(_that.timer);case _WithoutAuthPressed() when withoutAuthPressed != null:
return withoutAuthPressed();case _SkipAuth() when skipAuth != null:
return skipAuth();case _OnUserAgreementPressed() when onUserAgreementPressed != null:
return onUserAgreementPressed();case _OnPrivacyPolicyPressed() when onPrivacyPolicyPressed != null:
return onPrivacyPolicyPressed();case _:
  return null;

}
}

}

/// @nodoc


class _Started with DiagnosticableTreeMixin implements AuthEvent {
  const _Started();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent.started'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent.started()';
}


}




/// @nodoc


class _PhoneConfirmPressed with DiagnosticableTreeMixin implements AuthEvent {
  const _PhoneConfirmPressed(this.phone);
  

 final  Phone phone;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhoneConfirmPressedCopyWith<_PhoneConfirmPressed> get copyWith => __$PhoneConfirmPressedCopyWithImpl<_PhoneConfirmPressed>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent.phoneConfirmPressed'))
    ..add(DiagnosticsProperty('phone', phone));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhoneConfirmPressed&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent.phoneConfirmPressed(phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$PhoneConfirmPressedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$PhoneConfirmPressedCopyWith(_PhoneConfirmPressed value, $Res Function(_PhoneConfirmPressed) _then) = __$PhoneConfirmPressedCopyWithImpl;
@useResult
$Res call({
 Phone phone
});


$PhoneCopyWith<$Res> get phone;

}
/// @nodoc
class __$PhoneConfirmPressedCopyWithImpl<$Res>
    implements _$PhoneConfirmPressedCopyWith<$Res> {
  __$PhoneConfirmPressedCopyWithImpl(this._self, this._then);

  final _PhoneConfirmPressed _self;
  final $Res Function(_PhoneConfirmPressed) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(_PhoneConfirmPressed(
null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as Phone,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneCopyWith<$Res> get phone {
  
  return $PhoneCopyWith<$Res>(_self.phone, (value) {
    return _then(_self.copyWith(phone: value));
  });
}
}

/// @nodoc


class _CodeConfirmPressed with DiagnosticableTreeMixin implements AuthEvent {
  const _CodeConfirmPressed(this.code);
  

 final  String code;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodeConfirmPressedCopyWith<_CodeConfirmPressed> get copyWith => __$CodeConfirmPressedCopyWithImpl<_CodeConfirmPressed>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent.codeConfirmPressed'))
    ..add(DiagnosticsProperty('code', code));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodeConfirmPressed&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,code);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent.codeConfirmPressed(code: $code)';
}


}

/// @nodoc
abstract mixin class _$CodeConfirmPressedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$CodeConfirmPressedCopyWith(_CodeConfirmPressed value, $Res Function(_CodeConfirmPressed) _then) = __$CodeConfirmPressedCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class __$CodeConfirmPressedCopyWithImpl<$Res>
    implements _$CodeConfirmPressedCopyWith<$Res> {
  __$CodeConfirmPressedCopyWithImpl(this._self, this._then);

  final _CodeConfirmPressed _self;
  final $Res Function(_CodeConfirmPressed) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(_CodeConfirmPressed(
null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ResendCodePressed with DiagnosticableTreeMixin implements AuthEvent {
  const _ResendCodePressed();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent.resendCodePressed'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendCodePressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent.resendCodePressed()';
}


}




/// @nodoc


class _TimerTick with DiagnosticableTreeMixin implements AuthEvent {
  const _TimerTick(this.timer);
  

 final  Timer timer;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimerTickCopyWith<_TimerTick> get copyWith => __$TimerTickCopyWithImpl<_TimerTick>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent.timerTick'))
    ..add(DiagnosticsProperty('timer', timer));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimerTick&&(identical(other.timer, timer) || other.timer == timer));
}


@override
int get hashCode => Object.hash(runtimeType,timer);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent.timerTick(timer: $timer)';
}


}

/// @nodoc
abstract mixin class _$TimerTickCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$TimerTickCopyWith(_TimerTick value, $Res Function(_TimerTick) _then) = __$TimerTickCopyWithImpl;
@useResult
$Res call({
 Timer timer
});




}
/// @nodoc
class __$TimerTickCopyWithImpl<$Res>
    implements _$TimerTickCopyWith<$Res> {
  __$TimerTickCopyWithImpl(this._self, this._then);

  final _TimerTick _self;
  final $Res Function(_TimerTick) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? timer = null,}) {
  return _then(_TimerTick(
null == timer ? _self.timer : timer // ignore: cast_nullable_to_non_nullable
as Timer,
  ));
}


}

/// @nodoc


class _WithoutAuthPressed with DiagnosticableTreeMixin implements AuthEvent {
  const _WithoutAuthPressed();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent.withoutAuthPressed'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WithoutAuthPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent.withoutAuthPressed()';
}


}




/// @nodoc


class _SkipAuth with DiagnosticableTreeMixin implements AuthEvent {
  const _SkipAuth();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent.skipAuth'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkipAuth);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent.skipAuth()';
}


}




/// @nodoc


class _OnUserAgreementPressed with DiagnosticableTreeMixin implements AuthEvent {
  const _OnUserAgreementPressed();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent.onUserAgreementPressed'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnUserAgreementPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent.onUserAgreementPressed()';
}


}




/// @nodoc


class _OnPrivacyPolicyPressed with DiagnosticableTreeMixin implements AuthEvent {
  const _OnPrivacyPolicyPressed();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthEvent.onPrivacyPolicyPressed'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnPrivacyPolicyPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthEvent.onPrivacyPolicyPressed()';
}


}




/// @nodoc
mixin _$AuthState implements DiagnosticableTreeMixin {

 Phone? get phone; bool get codeValid; Stream<int>? get retryTime; AuthStatus get status;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthState'))
    ..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('codeValid', codeValid))..add(DiagnosticsProperty('retryTime', retryTime))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.codeValid, codeValid) || other.codeValid == codeValid)&&(identical(other.retryTime, retryTime) || other.retryTime == retryTime)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,phone,codeValid,retryTime,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthState(phone: $phone, codeValid: $codeValid, retryTime: $retryTime, status: $status)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 Phone? phone, bool codeValid, Stream<int>? retryTime, AuthStatus status
});


$PhoneCopyWith<$Res>? get phone;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = freezed,Object? codeValid = null,Object? retryTime = freezed,Object? status = null,}) {
  return _then(AuthState(
phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as Phone?,codeValid: null == codeValid ? _self.codeValid : codeValid // ignore: cast_nullable_to_non_nullable
as bool,retryTime: freezed == retryTime ? _self.retryTime : retryTime // ignore: cast_nullable_to_non_nullable
as Stream<int>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthStatus,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneCopyWith<$Res>? get phone {
    if (_self.phone == null) {
    return null;
  }

  return $PhoneCopyWith<$Res>(_self.phone!, (value) {
    return _then(_self.copyWith(phone: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Phone? phone,  bool codeValid,  Stream<int>? retryTime,  AuthStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.phone,_that.codeValid,_that.retryTime,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Phone? phone,  bool codeValid,  Stream<int>? retryTime,  AuthStatus status)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.phone,_that.codeValid,_that.retryTime,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Phone? phone,  bool codeValid,  Stream<int>? retryTime,  AuthStatus status)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.phone,_that.codeValid,_that.retryTime,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState with DiagnosticableTreeMixin implements AuthState {
  const _AuthState({this.phone, this.codeValid = true, this.retryTime, this.status = AuthStatus.init});
  

@override final  Phone? phone;
@override@JsonKey() final  bool codeValid;
@override final  Stream<int>? retryTime;
@override@JsonKey() final  AuthStatus status;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthState'))
    ..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('codeValid', codeValid))..add(DiagnosticsProperty('retryTime', retryTime))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.codeValid, codeValid) || other.codeValid == codeValid)&&(identical(other.retryTime, retryTime) || other.retryTime == retryTime)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,phone,codeValid,retryTime,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthState(phone: $phone, codeValid: $codeValid, retryTime: $retryTime, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 Phone? phone, bool codeValid, Stream<int>? retryTime, AuthStatus status
});


@override $PhoneCopyWith<$Res>? get phone;

}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = freezed,Object? codeValid = null,Object? retryTime = freezed,Object? status = null,}) {
  return _then(_AuthState(
phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as Phone?,codeValid: null == codeValid ? _self.codeValid : codeValid // ignore: cast_nullable_to_non_nullable
as bool,retryTime: freezed == retryTime ? _self.retryTime : retryTime // ignore: cast_nullable_to_non_nullable
as Stream<int>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthStatus,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneCopyWith<$Res>? get phone {
    if (_self.phone == null) {
    return null;
  }

  return $PhoneCopyWith<$Res>(_self.phone!, (value) {
    return _then(_self.copyWith(phone: value));
  });
}
}

/// @nodoc
mixin _$AuthSr implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthSr'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthSr()';
}


}

/// @nodoc
class $AuthSrCopyWith<$Res>  {
$AuthSrCopyWith(AuthSr _, $Res Function(AuthSr) __);
}


/// Adds pattern-matching-related methods to [AuthSr].
extension AuthSrPatterns on AuthSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthentionLoadingSr value)?  loading,TResult Function( AuthentionReadySr value)?  ready,TResult Function( CodeSentSr value)?  codeSent,TResult Function( AuthenticatedSr value)?  authenticated,TResult Function( AuthentionErrorSr value)?  error,TResult Function( _WithoutAuthSr value)?  withoutAuth,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthentionLoadingSr() when loading != null:
return loading(_that);case AuthentionReadySr() when ready != null:
return ready(_that);case CodeSentSr() when codeSent != null:
return codeSent(_that);case AuthenticatedSr() when authenticated != null:
return authenticated(_that);case AuthentionErrorSr() when error != null:
return error(_that);case _WithoutAuthSr() when withoutAuth != null:
return withoutAuth(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthentionLoadingSr value)  loading,required TResult Function( AuthentionReadySr value)  ready,required TResult Function( CodeSentSr value)  codeSent,required TResult Function( AuthenticatedSr value)  authenticated,required TResult Function( AuthentionErrorSr value)  error,required TResult Function( _WithoutAuthSr value)  withoutAuth,}){
final _that = this;
switch (_that) {
case AuthentionLoadingSr():
return loading(_that);case AuthentionReadySr():
return ready(_that);case CodeSentSr():
return codeSent(_that);case AuthenticatedSr():
return authenticated(_that);case AuthentionErrorSr():
return error(_that);case _WithoutAuthSr():
return withoutAuth(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthentionLoadingSr value)?  loading,TResult? Function( AuthentionReadySr value)?  ready,TResult? Function( CodeSentSr value)?  codeSent,TResult? Function( AuthenticatedSr value)?  authenticated,TResult? Function( AuthentionErrorSr value)?  error,TResult? Function( _WithoutAuthSr value)?  withoutAuth,}){
final _that = this;
switch (_that) {
case AuthentionLoadingSr() when loading != null:
return loading(_that);case AuthentionReadySr() when ready != null:
return ready(_that);case CodeSentSr() when codeSent != null:
return codeSent(_that);case AuthenticatedSr() when authenticated != null:
return authenticated(_that);case AuthentionErrorSr() when error != null:
return error(_that);case _WithoutAuthSr() when withoutAuth != null:
return withoutAuth(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  ready,TResult Function()?  codeSent,TResult Function()?  authenticated,TResult Function( String error)?  error,TResult Function()?  withoutAuth,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthentionLoadingSr() when loading != null:
return loading();case AuthentionReadySr() when ready != null:
return ready();case CodeSentSr() when codeSent != null:
return codeSent();case AuthenticatedSr() when authenticated != null:
return authenticated();case AuthentionErrorSr() when error != null:
return error(_that.error);case _WithoutAuthSr() when withoutAuth != null:
return withoutAuth();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  ready,required TResult Function()  codeSent,required TResult Function()  authenticated,required TResult Function( String error)  error,required TResult Function()  withoutAuth,}) {final _that = this;
switch (_that) {
case AuthentionLoadingSr():
return loading();case AuthentionReadySr():
return ready();case CodeSentSr():
return codeSent();case AuthenticatedSr():
return authenticated();case AuthentionErrorSr():
return error(_that.error);case _WithoutAuthSr():
return withoutAuth();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  ready,TResult? Function()?  codeSent,TResult? Function()?  authenticated,TResult? Function( String error)?  error,TResult? Function()?  withoutAuth,}) {final _that = this;
switch (_that) {
case AuthentionLoadingSr() when loading != null:
return loading();case AuthentionReadySr() when ready != null:
return ready();case CodeSentSr() when codeSent != null:
return codeSent();case AuthenticatedSr() when authenticated != null:
return authenticated();case AuthentionErrorSr() when error != null:
return error(_that.error);case _WithoutAuthSr() when withoutAuth != null:
return withoutAuth();case _:
  return null;

}
}

}

/// @nodoc


class AuthentionLoadingSr with DiagnosticableTreeMixin implements AuthSr {
  const AuthentionLoadingSr();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthSr.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthentionLoadingSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthSr.loading()';
}


}




/// @nodoc


class AuthentionReadySr with DiagnosticableTreeMixin implements AuthSr {
  const AuthentionReadySr();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthSr.ready'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthentionReadySr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthSr.ready()';
}


}




/// @nodoc


class CodeSentSr with DiagnosticableTreeMixin implements AuthSr {
  const CodeSentSr();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthSr.codeSent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodeSentSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthSr.codeSent()';
}


}




/// @nodoc


class AuthenticatedSr with DiagnosticableTreeMixin implements AuthSr {
  const AuthenticatedSr();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthSr.authenticated'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticatedSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthSr.authenticated()';
}


}




/// @nodoc


class AuthentionErrorSr with DiagnosticableTreeMixin implements AuthSr {
  const AuthentionErrorSr(this.error);
  

 final  String error;

/// Create a copy of AuthSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthentionErrorSrCopyWith<AuthentionErrorSr> get copyWith => _$AuthentionErrorSrCopyWithImpl<AuthentionErrorSr>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthSr.error'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthentionErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $AuthentionErrorSrCopyWith<$Res> implements $AuthSrCopyWith<$Res> {
  factory $AuthentionErrorSrCopyWith(AuthentionErrorSr value, $Res Function(AuthentionErrorSr) _then) = _$AuthentionErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$AuthentionErrorSrCopyWithImpl<$Res>
    implements $AuthentionErrorSrCopyWith<$Res> {
  _$AuthentionErrorSrCopyWithImpl(this._self, this._then);

  final AuthentionErrorSr _self;
  final $Res Function(AuthentionErrorSr) _then;

/// Create a copy of AuthSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(AuthentionErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _WithoutAuthSr with DiagnosticableTreeMixin implements AuthSr {
  const _WithoutAuthSr();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthSr.withoutAuth'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WithoutAuthSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthSr.withoutAuth()';
}


}




// dart format on
