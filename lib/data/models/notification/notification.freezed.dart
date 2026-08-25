// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
NotificationData _$NotificationDataFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'OrderStatusChanged':
          return OrderStatusChanged.fromJson(
            json
          );
                case 'BonusesChanged':
          return BonusesChanged.fromJson(
            json
          );
        
          default:
            return OpenScreen.fromJson(
  json
);
        }
      
}

/// @nodoc
mixin _$NotificationData implements DiagnosticableTreeMixin {

 String? get screen;
/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<NotificationData> get copyWith => _$NotificationDataCopyWithImpl<NotificationData>(this as NotificationData, _$identity);

  /// Serializes this NotificationData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationData'))
    ..add(DiagnosticsProperty('screen', screen));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationData&&(identical(other.screen, screen) || other.screen == screen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,screen);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationData(screen: $screen)';
}


}

/// @nodoc
abstract mixin class $NotificationDataCopyWith<$Res>  {
  factory $NotificationDataCopyWith(NotificationData value, $Res Function(NotificationData) _then) = _$NotificationDataCopyWithImpl;
@useResult
$Res call({
 String? screen
});




}
/// @nodoc
class _$NotificationDataCopyWithImpl<$Res>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._self, this._then);

  final NotificationData _self;
  final $Res Function(NotificationData) _then;

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? screen = freezed,}) {
  return _then(_self.copyWith(
screen: freezed == screen ? _self.screen : screen // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationData].
extension NotificationDataPatterns on NotificationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OrderStatusChanged value)?  orderStatusChanged,TResult Function( OpenScreen value)?  openScreen,TResult Function( BonusesChanged value)?  bonusesChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OrderStatusChanged() when orderStatusChanged != null:
return orderStatusChanged(_that);case OpenScreen() when openScreen != null:
return openScreen(_that);case BonusesChanged() when bonusesChanged != null:
return bonusesChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OrderStatusChanged value)  orderStatusChanged,required TResult Function( OpenScreen value)  openScreen,required TResult Function( BonusesChanged value)  bonusesChanged,}){
final _that = this;
switch (_that) {
case OrderStatusChanged():
return orderStatusChanged(_that);case OpenScreen():
return openScreen(_that);case BonusesChanged():
return bonusesChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OrderStatusChanged value)?  orderStatusChanged,TResult? Function( OpenScreen value)?  openScreen,TResult? Function( BonusesChanged value)?  bonusesChanged,}){
final _that = this;
switch (_that) {
case OrderStatusChanged() when orderStatusChanged != null:
return orderStatusChanged(_that);case OpenScreen() when openScreen != null:
return openScreen(_that);case BonusesChanged() when bonusesChanged != null:
return bonusesChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String status,  String? screen)?  orderStatusChanged,TResult Function( String? screen,  dynamic data)?  openScreen,TResult Function( String? screen)?  bonusesChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OrderStatusChanged() when orderStatusChanged != null:
return orderStatusChanged(_that.id,_that.status,_that.screen);case OpenScreen() when openScreen != null:
return openScreen(_that.screen,_that.data);case BonusesChanged() when bonusesChanged != null:
return bonusesChanged(_that.screen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String status,  String? screen)  orderStatusChanged,required TResult Function( String? screen,  dynamic data)  openScreen,required TResult Function( String? screen)  bonusesChanged,}) {final _that = this;
switch (_that) {
case OrderStatusChanged():
return orderStatusChanged(_that.id,_that.status,_that.screen);case OpenScreen():
return openScreen(_that.screen,_that.data);case BonusesChanged():
return bonusesChanged(_that.screen);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String status,  String? screen)?  orderStatusChanged,TResult? Function( String? screen,  dynamic data)?  openScreen,TResult? Function( String? screen)?  bonusesChanged,}) {final _that = this;
switch (_that) {
case OrderStatusChanged() when orderStatusChanged != null:
return orderStatusChanged(_that.id,_that.status,_that.screen);case OpenScreen() when openScreen != null:
return openScreen(_that.screen,_that.data);case BonusesChanged() when bonusesChanged != null:
return bonusesChanged(_that.screen);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class OrderStatusChanged with DiagnosticableTreeMixin implements NotificationData {
  const OrderStatusChanged({required this.id, required this.status, this.screen,  String? $type}): $type = $type ?? 'OrderStatusChanged';
  factory OrderStatusChanged.fromJson(Map<String, dynamic> json) => _$OrderStatusChangedFromJson(json);

 final  String id;
 final  String status;
@override final  String? screen;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStatusChangedCopyWith<OrderStatusChanged> get copyWith => _$OrderStatusChangedCopyWithImpl<OrderStatusChanged>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderStatusChangedToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationData.orderStatusChanged'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('screen', screen));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderStatusChanged&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.screen, screen) || other.screen == screen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,screen);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationData.orderStatusChanged(id: $id, status: $status, screen: $screen)';
}


}

/// @nodoc
abstract mixin class $OrderStatusChangedCopyWith<$Res> implements $NotificationDataCopyWith<$Res> {
  factory $OrderStatusChangedCopyWith(OrderStatusChanged value, $Res Function(OrderStatusChanged) _then) = _$OrderStatusChangedCopyWithImpl;
@override @useResult
$Res call({
 String id, String status, String? screen
});




}
/// @nodoc
class _$OrderStatusChangedCopyWithImpl<$Res>
    implements $OrderStatusChangedCopyWith<$Res> {
  _$OrderStatusChangedCopyWithImpl(this._self, this._then);

  final OrderStatusChanged _self;
  final $Res Function(OrderStatusChanged) _then;

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? screen = freezed,}) {
  return _then(OrderStatusChanged(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,screen: freezed == screen ? _self.screen : screen // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class OpenScreen with DiagnosticableTreeMixin implements NotificationData {
  const OpenScreen({this.screen, required this.data,  String? $type}): $type = $type ?? 'OpenScreen';
  factory OpenScreen.fromJson(Map<String, dynamic> json) => _$OpenScreenFromJson(json);

@override final  String? screen;
 final  dynamic data;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenScreenCopyWith<OpenScreen> get copyWith => _$OpenScreenCopyWithImpl<OpenScreen>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenScreenToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationData.openScreen'))
    ..add(DiagnosticsProperty('screen', screen))..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenScreen&&(identical(other.screen, screen) || other.screen == screen)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,screen,const DeepCollectionEquality().hash(data));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationData.openScreen(screen: $screen, data: $data)';
}


}

/// @nodoc
abstract mixin class $OpenScreenCopyWith<$Res> implements $NotificationDataCopyWith<$Res> {
  factory $OpenScreenCopyWith(OpenScreen value, $Res Function(OpenScreen) _then) = _$OpenScreenCopyWithImpl;
@override @useResult
$Res call({
 String? screen, dynamic data
});




}
/// @nodoc
class _$OpenScreenCopyWithImpl<$Res>
    implements $OpenScreenCopyWith<$Res> {
  _$OpenScreenCopyWithImpl(this._self, this._then);

  final OpenScreen _self;
  final $Res Function(OpenScreen) _then;

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? screen = freezed,Object? data = freezed,}) {
  return _then(OpenScreen(
screen: freezed == screen ? _self.screen : screen // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc
@JsonSerializable()

class BonusesChanged with DiagnosticableTreeMixin implements NotificationData {
  const BonusesChanged({this.screen,  String? $type}): $type = $type ?? 'BonusesChanged';
  factory BonusesChanged.fromJson(Map<String, dynamic> json) => _$BonusesChangedFromJson(json);

@override final  String? screen;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusesChangedCopyWith<BonusesChanged> get copyWith => _$BonusesChangedCopyWithImpl<BonusesChanged>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BonusesChangedToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationData.bonusesChanged'))
    ..add(DiagnosticsProperty('screen', screen));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusesChanged&&(identical(other.screen, screen) || other.screen == screen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,screen);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationData.bonusesChanged(screen: $screen)';
}


}

/// @nodoc
abstract mixin class $BonusesChangedCopyWith<$Res> implements $NotificationDataCopyWith<$Res> {
  factory $BonusesChangedCopyWith(BonusesChanged value, $Res Function(BonusesChanged) _then) = _$BonusesChangedCopyWithImpl;
@override @useResult
$Res call({
 String? screen
});




}
/// @nodoc
class _$BonusesChangedCopyWithImpl<$Res>
    implements $BonusesChangedCopyWith<$Res> {
  _$BonusesChangedCopyWithImpl(this._self, this._then);

  final BonusesChanged _self;
  final $Res Function(BonusesChanged) _then;

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? screen = freezed,}) {
  return _then(BonusesChanged(
screen: freezed == screen ? _self.screen : screen // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NotificationHeader implements DiagnosticableTreeMixin {

 String get title; String get body;
/// Create a copy of NotificationHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationHeaderCopyWith<NotificationHeader> get copyWith => _$NotificationHeaderCopyWithImpl<NotificationHeader>(this as NotificationHeader, _$identity);

  /// Serializes this NotificationHeader to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationHeader'))
    ..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('body', body));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationHeader&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,body);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationHeader(title: $title, body: $body)';
}


}

/// @nodoc
abstract mixin class $NotificationHeaderCopyWith<$Res>  {
  factory $NotificationHeaderCopyWith(NotificationHeader value, $Res Function(NotificationHeader) _then) = _$NotificationHeaderCopyWithImpl;
@useResult
$Res call({
 String title, String body
});




}
/// @nodoc
class _$NotificationHeaderCopyWithImpl<$Res>
    implements $NotificationHeaderCopyWith<$Res> {
  _$NotificationHeaderCopyWithImpl(this._self, this._then);

  final NotificationHeader _self;
  final $Res Function(NotificationHeader) _then;

/// Create a copy of NotificationHeader
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? body = null,}) {
  return _then(NotificationHeader(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationHeader].
extension NotificationHeaderPatterns on NotificationHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationHeader value)  $default,){
final _that = this;
switch (_that) {
case _NotificationHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationHeader value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationHeader() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationHeader() when $default != null:
return $default(_that.title,_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String body)  $default,) {final _that = this;
switch (_that) {
case _NotificationHeader():
return $default(_that.title,_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String body)?  $default,) {final _that = this;
switch (_that) {
case _NotificationHeader() when $default != null:
return $default(_that.title,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationHeader extends NotificationHeader with DiagnosticableTreeMixin {
  const _NotificationHeader(this.title, this.body): super._();
  factory _NotificationHeader.fromJson(Map<String, dynamic> json) => _$NotificationHeaderFromJson(json);

@override final  String title;
@override final  String body;

/// Create a copy of NotificationHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationHeaderCopyWith<_NotificationHeader> get copyWith => __$NotificationHeaderCopyWithImpl<_NotificationHeader>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationHeaderToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NotificationHeader'))
    ..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('body', body));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationHeader&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,body);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NotificationHeader(title: $title, body: $body)';
}


}

/// @nodoc
abstract mixin class _$NotificationHeaderCopyWith<$Res> implements $NotificationHeaderCopyWith<$Res> {
  factory _$NotificationHeaderCopyWith(_NotificationHeader value, $Res Function(_NotificationHeader) _then) = __$NotificationHeaderCopyWithImpl;
@override @useResult
$Res call({
 String title, String body
});




}
/// @nodoc
class __$NotificationHeaderCopyWithImpl<$Res>
    implements _$NotificationHeaderCopyWith<$Res> {
  __$NotificationHeaderCopyWithImpl(this._self, this._then);

  final _NotificationHeader _self;
  final $Res Function(_NotificationHeader) _then;

/// Create a copy of NotificationHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? body = null,}) {
  return _then(_NotificationHeader(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Notification implements DiagnosticableTreeMixin {

@JsonKey(readValue: readHeader)@NotificationHeaderConverter() NotificationHeader get header; NotificationData get data;@JsonKey(name: 'sentTime') int get sentTime;
/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCopyWith<Notification> get copyWith => _$NotificationCopyWithImpl<Notification>(this as Notification, _$identity);

  /// Serializes this Notification to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Notification'))
    ..add(DiagnosticsProperty('header', header))..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('sentTime', sentTime));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notification&&(identical(other.header, header) || other.header == header)&&(identical(other.data, data) || other.data == data)&&(identical(other.sentTime, sentTime) || other.sentTime == sentTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,data,sentTime);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Notification(header: $header, data: $data, sentTime: $sentTime)';
}


}

/// @nodoc
abstract mixin class $NotificationCopyWith<$Res>  {
  factory $NotificationCopyWith(Notification value, $Res Function(Notification) _then) = _$NotificationCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: readHeader)@NotificationHeaderConverter() NotificationHeader header, NotificationData data,@JsonKey(name: 'sentTime') int sentTime
});


$NotificationHeaderCopyWith<$Res> get header;$NotificationDataCopyWith<$Res> get data;

}
/// @nodoc
class _$NotificationCopyWithImpl<$Res>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._self, this._then);

  final Notification _self;
  final $Res Function(Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? header = null,Object? data = null,Object? sentTime = null,}) {
  return _then(Notification(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as NotificationHeader,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationData,sentTime: null == sentTime ? _self.sentTime : sentTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationHeaderCopyWith<$Res> get header {
  
  return $NotificationHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<$Res> get data {
  
  return $NotificationDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [Notification].
extension NotificationPatterns on Notification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Notification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Notification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Notification value)  $default,){
final _that = this;
switch (_that) {
case _Notification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Notification value)?  $default,){
final _that = this;
switch (_that) {
case _Notification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: readHeader)@NotificationHeaderConverter()  NotificationHeader header,  NotificationData data, @JsonKey(name: 'sentTime')  int sentTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Notification() when $default != null:
return $default(_that.header,_that.data,_that.sentTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: readHeader)@NotificationHeaderConverter()  NotificationHeader header,  NotificationData data, @JsonKey(name: 'sentTime')  int sentTime)  $default,) {final _that = this;
switch (_that) {
case _Notification():
return $default(_that.header,_that.data,_that.sentTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: readHeader)@NotificationHeaderConverter()  NotificationHeader header,  NotificationData data, @JsonKey(name: 'sentTime')  int sentTime)?  $default,) {final _that = this;
switch (_that) {
case _Notification() when $default != null:
return $default(_that.header,_that.data,_that.sentTime);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _Notification with DiagnosticableTreeMixin implements Notification {
  const _Notification({@JsonKey(readValue: readHeader)@NotificationHeaderConverter() required this.header, required this.data, @JsonKey(name: 'sentTime') required this.sentTime});
  factory _Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);

@override@JsonKey(readValue: readHeader)@NotificationHeaderConverter() final  NotificationHeader header;
@override final  NotificationData data;
@override@JsonKey(name: 'sentTime') final  int sentTime;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationCopyWith<_Notification> get copyWith => __$NotificationCopyWithImpl<_Notification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Notification'))
    ..add(DiagnosticsProperty('header', header))..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('sentTime', sentTime));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Notification&&(identical(other.header, header) || other.header == header)&&(identical(other.data, data) || other.data == data)&&(identical(other.sentTime, sentTime) || other.sentTime == sentTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,data,sentTime);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Notification(header: $header, data: $data, sentTime: $sentTime)';
}


}

/// @nodoc
abstract mixin class _$NotificationCopyWith<$Res> implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(_Notification value, $Res Function(_Notification) _then) = __$NotificationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: readHeader)@NotificationHeaderConverter() NotificationHeader header, NotificationData data,@JsonKey(name: 'sentTime') int sentTime
});


@override $NotificationHeaderCopyWith<$Res> get header;@override $NotificationDataCopyWith<$Res> get data;

}
/// @nodoc
class __$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(this._self, this._then);

  final _Notification _self;
  final $Res Function(_Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? header = null,Object? data = null,Object? sentTime = null,}) {
  return _then(_Notification(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as NotificationHeader,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationData,sentTime: null == sentTime ? _self.sentTime : sentTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationHeaderCopyWith<$Res> get header {
  
  return $NotificationHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<$Res> get data {
  
  return $NotificationDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
