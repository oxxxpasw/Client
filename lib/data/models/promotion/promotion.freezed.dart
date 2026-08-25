// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PromotionShortInfo {

 String get id; String get name; PromotionTitle get title;@PublicationPlaceJsonConverter() PublicationPlace get publicationPlace;@JsonKey(unknownEnumValue: PromotionActivityType.unknown) PromotionActivityType get activityType;
/// Create a copy of PromotionShortInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionShortInfoCopyWith<PromotionShortInfo> get copyWith => _$PromotionShortInfoCopyWithImpl<PromotionShortInfo>(this as PromotionShortInfo, _$identity);

  /// Serializes this PromotionShortInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionShortInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.publicationPlace, publicationPlace) || other.publicationPlace == publicationPlace)&&(identical(other.activityType, activityType) || other.activityType == activityType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,title,publicationPlace,activityType);

@override
String toString() {
  return 'PromotionShortInfo(id: $id, name: $name, title: $title, publicationPlace: $publicationPlace, activityType: $activityType)';
}


}

/// @nodoc
abstract mixin class $PromotionShortInfoCopyWith<$Res>  {
  factory $PromotionShortInfoCopyWith(PromotionShortInfo value, $Res Function(PromotionShortInfo) _then) = _$PromotionShortInfoCopyWithImpl;
@useResult
$Res call({
 String id, String name, PromotionTitle title,@PublicationPlaceJsonConverter() PublicationPlace publicationPlace,@JsonKey(unknownEnumValue: PromotionActivityType.unknown) PromotionActivityType activityType
});


$PromotionTitleCopyWith<$Res> get title;

}
/// @nodoc
class _$PromotionShortInfoCopyWithImpl<$Res>
    implements $PromotionShortInfoCopyWith<$Res> {
  _$PromotionShortInfoCopyWithImpl(this._self, this._then);

  final PromotionShortInfo _self;
  final $Res Function(PromotionShortInfo) _then;

/// Create a copy of PromotionShortInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? title = null,Object? publicationPlace = null,Object? activityType = null,}) {
  return _then(PromotionShortInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as PromotionTitle,publicationPlace: null == publicationPlace ? _self.publicationPlace : publicationPlace // ignore: cast_nullable_to_non_nullable
as PublicationPlace,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as PromotionActivityType,
  ));
}
/// Create a copy of PromotionShortInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionTitleCopyWith<$Res> get title {
  
  return $PromotionTitleCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}
}


/// Adds pattern-matching-related methods to [PromotionShortInfo].
extension PromotionShortInfoPatterns on PromotionShortInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionShortInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionShortInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionShortInfo value)  $default,){
final _that = this;
switch (_that) {
case _PromotionShortInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionShortInfo value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionShortInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  PromotionTitle title, @PublicationPlaceJsonConverter()  PublicationPlace publicationPlace, @JsonKey(unknownEnumValue: PromotionActivityType.unknown)  PromotionActivityType activityType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionShortInfo() when $default != null:
return $default(_that.id,_that.name,_that.title,_that.publicationPlace,_that.activityType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  PromotionTitle title, @PublicationPlaceJsonConverter()  PublicationPlace publicationPlace, @JsonKey(unknownEnumValue: PromotionActivityType.unknown)  PromotionActivityType activityType)  $default,) {final _that = this;
switch (_that) {
case _PromotionShortInfo():
return $default(_that.id,_that.name,_that.title,_that.publicationPlace,_that.activityType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  PromotionTitle title, @PublicationPlaceJsonConverter()  PublicationPlace publicationPlace, @JsonKey(unknownEnumValue: PromotionActivityType.unknown)  PromotionActivityType activityType)?  $default,) {final _that = this;
switch (_that) {
case _PromotionShortInfo() when $default != null:
return $default(_that.id,_that.name,_that.title,_that.publicationPlace,_that.activityType);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _PromotionShortInfo implements PromotionShortInfo {
  const _PromotionShortInfo({required this.id, required this.name, required this.title, @PublicationPlaceJsonConverter() this.publicationPlace = const PublicationPlace(0), @JsonKey(unknownEnumValue: PromotionActivityType.unknown) this.activityType = PromotionActivityType.unknown});
  factory _PromotionShortInfo.fromJson(Map<String, dynamic> json) => _$PromotionShortInfoFromJson(json);

@override final  String id;
@override final  String name;
@override final  PromotionTitle title;
@override@JsonKey()@PublicationPlaceJsonConverter() final  PublicationPlace publicationPlace;
@override@JsonKey(unknownEnumValue: PromotionActivityType.unknown) final  PromotionActivityType activityType;

/// Create a copy of PromotionShortInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionShortInfoCopyWith<_PromotionShortInfo> get copyWith => __$PromotionShortInfoCopyWithImpl<_PromotionShortInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionShortInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionShortInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.publicationPlace, publicationPlace) || other.publicationPlace == publicationPlace)&&(identical(other.activityType, activityType) || other.activityType == activityType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,title,publicationPlace,activityType);

@override
String toString() {
  return 'PromotionShortInfo(id: $id, name: $name, title: $title, publicationPlace: $publicationPlace, activityType: $activityType)';
}


}

/// @nodoc
abstract mixin class _$PromotionShortInfoCopyWith<$Res> implements $PromotionShortInfoCopyWith<$Res> {
  factory _$PromotionShortInfoCopyWith(_PromotionShortInfo value, $Res Function(_PromotionShortInfo) _then) = __$PromotionShortInfoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, PromotionTitle title,@PublicationPlaceJsonConverter() PublicationPlace publicationPlace,@JsonKey(unknownEnumValue: PromotionActivityType.unknown) PromotionActivityType activityType
});


@override $PromotionTitleCopyWith<$Res> get title;

}
/// @nodoc
class __$PromotionShortInfoCopyWithImpl<$Res>
    implements _$PromotionShortInfoCopyWith<$Res> {
  __$PromotionShortInfoCopyWithImpl(this._self, this._then);

  final _PromotionShortInfo _self;
  final $Res Function(_PromotionShortInfo) _then;

/// Create a copy of PromotionShortInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? title = null,Object? publicationPlace = null,Object? activityType = null,}) {
  return _then(_PromotionShortInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as PromotionTitle,publicationPlace: null == publicationPlace ? _self.publicationPlace : publicationPlace // ignore: cast_nullable_to_non_nullable
as PublicationPlace,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as PromotionActivityType,
  ));
}

/// Create a copy of PromotionShortInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionTitleCopyWith<$Res> get title {
  
  return $PromotionTitleCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}
}

Promotion _$PromotionFromJson(
  Map<String, dynamic> json
) {
        switch (json['ActivityType']) {
                  case 'simple':
          return SimplePromotion.fromJson(
            json
          );
                case 'survey':
          return SurveyPromotion.fromJson(
            json
          );
                case 'unknown':
          return UnknownPromotion.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'ActivityType',
  'Promotion',
  'Invalid union type "${json['ActivityType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Promotion {

 String get id; String get name; PromotionTitle get title; String? get htmlContent;@JsonKey(unknownEnumValue: PromotionActivityStatus.unknown) PromotionActivityStatus get activityStatus;@JsonKey(unknownEnumValue: PromotionCoverageType.unknown) PromotionCoverageType get coverageType;@JsonKey(unknownEnumValue: PromotionState.unknown) PromotionState get state;
/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionCopyWith<Promotion> get copyWith => _$PromotionCopyWithImpl<Promotion>(this as Promotion, _$identity);

  /// Serializes this Promotion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Promotion&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.htmlContent, htmlContent) || other.htmlContent == htmlContent)&&(identical(other.activityStatus, activityStatus) || other.activityStatus == activityStatus)&&(identical(other.coverageType, coverageType) || other.coverageType == coverageType)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,title,htmlContent,activityStatus,coverageType,state);

@override
String toString() {
  return 'Promotion(id: $id, name: $name, title: $title, htmlContent: $htmlContent, activityStatus: $activityStatus, coverageType: $coverageType, state: $state)';
}


}

/// @nodoc
abstract mixin class $PromotionCopyWith<$Res>  {
  factory $PromotionCopyWith(Promotion value, $Res Function(Promotion) _then) = _$PromotionCopyWithImpl;
@useResult
$Res call({
 String id, String name, PromotionTitle title, String? htmlContent,@JsonKey(unknownEnumValue: PromotionActivityStatus.unknown) PromotionActivityStatus activityStatus,@JsonKey(unknownEnumValue: PromotionCoverageType.unknown) PromotionCoverageType coverageType,@JsonKey(unknownEnumValue: PromotionState.unknown) PromotionState state
});


$PromotionTitleCopyWith<$Res> get title;

}
/// @nodoc
class _$PromotionCopyWithImpl<$Res>
    implements $PromotionCopyWith<$Res> {
  _$PromotionCopyWithImpl(this._self, this._then);

  final Promotion _self;
  final $Res Function(Promotion) _then;

/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? title = null,Object? htmlContent = freezed,Object? activityStatus = null,Object? coverageType = null,Object? state = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as PromotionTitle,htmlContent: freezed == htmlContent ? _self.htmlContent : htmlContent // ignore: cast_nullable_to_non_nullable
as String?,activityStatus: null == activityStatus ? _self.activityStatus : activityStatus // ignore: cast_nullable_to_non_nullable
as PromotionActivityStatus,coverageType: null == coverageType ? _self.coverageType : coverageType // ignore: cast_nullable_to_non_nullable
as PromotionCoverageType,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as PromotionState,
  ));
}
/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionTitleCopyWith<$Res> get title {
  
  return $PromotionTitleCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}
}


/// Adds pattern-matching-related methods to [Promotion].
extension PromotionPatterns on Promotion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SimplePromotion value)?  simple,TResult Function( SurveyPromotion value)?  survey,TResult Function( UnknownPromotion value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SimplePromotion() when simple != null:
return simple(_that);case SurveyPromotion() when survey != null:
return survey(_that);case UnknownPromotion() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SimplePromotion value)  simple,required TResult Function( SurveyPromotion value)  survey,required TResult Function( UnknownPromotion value)  unknown,}){
final _that = this;
switch (_that) {
case SimplePromotion():
return simple(_that);case SurveyPromotion():
return survey(_that);case UnknownPromotion():
return unknown(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SimplePromotion value)?  simple,TResult? Function( SurveyPromotion value)?  survey,TResult? Function( UnknownPromotion value)?  unknown,}){
final _that = this;
switch (_that) {
case SimplePromotion() when simple != null:
return simple(_that);case SurveyPromotion() when survey != null:
return survey(_that);case UnknownPromotion() when unknown != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String name,  PromotionTitle title,  String? htmlContent, @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown)  PromotionActivityStatus activityStatus, @JsonKey(unknownEnumValue: PromotionCoverageType.unknown)  PromotionCoverageType coverageType, @JsonKey(unknownEnumValue: PromotionState.unknown)  PromotionState state,  DateTime? expirationDate)?  simple,TResult Function( String id,  String name,  PromotionTitle title,  String? htmlContent, @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown)  PromotionActivityStatus activityStatus, @JsonKey(unknownEnumValue: PromotionCoverageType.unknown)  PromotionCoverageType coverageType, @JsonKey(unknownEnumValue: PromotionState.unknown)  PromotionState state,  SurveyActivity activity,  SurveyActivityResult? activityResult)?  survey,TResult Function( String id,  String name,  PromotionTitle title,  String? htmlContent, @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown)  PromotionActivityStatus activityStatus, @JsonKey(unknownEnumValue: PromotionCoverageType.unknown)  PromotionCoverageType coverageType, @JsonKey(unknownEnumValue: PromotionState.unknown)  PromotionState state)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SimplePromotion() when simple != null:
return simple(_that.id,_that.name,_that.title,_that.htmlContent,_that.activityStatus,_that.coverageType,_that.state,_that.expirationDate);case SurveyPromotion() when survey != null:
return survey(_that.id,_that.name,_that.title,_that.htmlContent,_that.activityStatus,_that.coverageType,_that.state,_that.activity,_that.activityResult);case UnknownPromotion() when unknown != null:
return unknown(_that.id,_that.name,_that.title,_that.htmlContent,_that.activityStatus,_that.coverageType,_that.state);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String name,  PromotionTitle title,  String? htmlContent, @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown)  PromotionActivityStatus activityStatus, @JsonKey(unknownEnumValue: PromotionCoverageType.unknown)  PromotionCoverageType coverageType, @JsonKey(unknownEnumValue: PromotionState.unknown)  PromotionState state,  DateTime? expirationDate)  simple,required TResult Function( String id,  String name,  PromotionTitle title,  String? htmlContent, @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown)  PromotionActivityStatus activityStatus, @JsonKey(unknownEnumValue: PromotionCoverageType.unknown)  PromotionCoverageType coverageType, @JsonKey(unknownEnumValue: PromotionState.unknown)  PromotionState state,  SurveyActivity activity,  SurveyActivityResult? activityResult)  survey,required TResult Function( String id,  String name,  PromotionTitle title,  String? htmlContent, @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown)  PromotionActivityStatus activityStatus, @JsonKey(unknownEnumValue: PromotionCoverageType.unknown)  PromotionCoverageType coverageType, @JsonKey(unknownEnumValue: PromotionState.unknown)  PromotionState state)  unknown,}) {final _that = this;
switch (_that) {
case SimplePromotion():
return simple(_that.id,_that.name,_that.title,_that.htmlContent,_that.activityStatus,_that.coverageType,_that.state,_that.expirationDate);case SurveyPromotion():
return survey(_that.id,_that.name,_that.title,_that.htmlContent,_that.activityStatus,_that.coverageType,_that.state,_that.activity,_that.activityResult);case UnknownPromotion():
return unknown(_that.id,_that.name,_that.title,_that.htmlContent,_that.activityStatus,_that.coverageType,_that.state);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String name,  PromotionTitle title,  String? htmlContent, @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown)  PromotionActivityStatus activityStatus, @JsonKey(unknownEnumValue: PromotionCoverageType.unknown)  PromotionCoverageType coverageType, @JsonKey(unknownEnumValue: PromotionState.unknown)  PromotionState state,  DateTime? expirationDate)?  simple,TResult? Function( String id,  String name,  PromotionTitle title,  String? htmlContent, @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown)  PromotionActivityStatus activityStatus, @JsonKey(unknownEnumValue: PromotionCoverageType.unknown)  PromotionCoverageType coverageType, @JsonKey(unknownEnumValue: PromotionState.unknown)  PromotionState state,  SurveyActivity activity,  SurveyActivityResult? activityResult)?  survey,TResult? Function( String id,  String name,  PromotionTitle title,  String? htmlContent, @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown)  PromotionActivityStatus activityStatus, @JsonKey(unknownEnumValue: PromotionCoverageType.unknown)  PromotionCoverageType coverageType, @JsonKey(unknownEnumValue: PromotionState.unknown)  PromotionState state)?  unknown,}) {final _that = this;
switch (_that) {
case SimplePromotion() when simple != null:
return simple(_that.id,_that.name,_that.title,_that.htmlContent,_that.activityStatus,_that.coverageType,_that.state,_that.expirationDate);case SurveyPromotion() when survey != null:
return survey(_that.id,_that.name,_that.title,_that.htmlContent,_that.activityStatus,_that.coverageType,_that.state,_that.activity,_that.activityResult);case UnknownPromotion() when unknown != null:
return unknown(_that.id,_that.name,_that.title,_that.htmlContent,_that.activityStatus,_that.coverageType,_that.state);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class SimplePromotion implements Promotion {
  const SimplePromotion({required this.id, required this.name, this.title = const PromotionTitle(), this.htmlContent, @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown) this.activityStatus = PromotionActivityStatus.unknown, @JsonKey(unknownEnumValue: PromotionCoverageType.unknown) this.coverageType = PromotionCoverageType.unknown, @JsonKey(unknownEnumValue: PromotionState.unknown) this.state = PromotionState.unknown, this.expirationDate,  String? $type}): $type = $type ?? 'simple';
  factory SimplePromotion.fromJson(Map<String, dynamic> json) => _$SimplePromotionFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  PromotionTitle title;
@override final  String? htmlContent;
@override@JsonKey(unknownEnumValue: PromotionActivityStatus.unknown) final  PromotionActivityStatus activityStatus;
@override@JsonKey(unknownEnumValue: PromotionCoverageType.unknown) final  PromotionCoverageType coverageType;
@override@JsonKey(unknownEnumValue: PromotionState.unknown) final  PromotionState state;
 final  DateTime? expirationDate;

@JsonKey(name: 'ActivityType')
final String $type;


/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimplePromotionCopyWith<SimplePromotion> get copyWith => _$SimplePromotionCopyWithImpl<SimplePromotion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SimplePromotionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimplePromotion&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.htmlContent, htmlContent) || other.htmlContent == htmlContent)&&(identical(other.activityStatus, activityStatus) || other.activityStatus == activityStatus)&&(identical(other.coverageType, coverageType) || other.coverageType == coverageType)&&(identical(other.state, state) || other.state == state)&&(identical(other.expirationDate, expirationDate) || other.expirationDate == expirationDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,title,htmlContent,activityStatus,coverageType,state,expirationDate);

@override
String toString() {
  return 'Promotion.simple(id: $id, name: $name, title: $title, htmlContent: $htmlContent, activityStatus: $activityStatus, coverageType: $coverageType, state: $state, expirationDate: $expirationDate)';
}


}

/// @nodoc
abstract mixin class $SimplePromotionCopyWith<$Res> implements $PromotionCopyWith<$Res> {
  factory $SimplePromotionCopyWith(SimplePromotion value, $Res Function(SimplePromotion) _then) = _$SimplePromotionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, PromotionTitle title, String? htmlContent,@JsonKey(unknownEnumValue: PromotionActivityStatus.unknown) PromotionActivityStatus activityStatus,@JsonKey(unknownEnumValue: PromotionCoverageType.unknown) PromotionCoverageType coverageType,@JsonKey(unknownEnumValue: PromotionState.unknown) PromotionState state, DateTime? expirationDate
});


@override $PromotionTitleCopyWith<$Res> get title;

}
/// @nodoc
class _$SimplePromotionCopyWithImpl<$Res>
    implements $SimplePromotionCopyWith<$Res> {
  _$SimplePromotionCopyWithImpl(this._self, this._then);

  final SimplePromotion _self;
  final $Res Function(SimplePromotion) _then;

/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? title = null,Object? htmlContent = freezed,Object? activityStatus = null,Object? coverageType = null,Object? state = null,Object? expirationDate = freezed,}) {
  return _then(SimplePromotion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as PromotionTitle,htmlContent: freezed == htmlContent ? _self.htmlContent : htmlContent // ignore: cast_nullable_to_non_nullable
as String?,activityStatus: null == activityStatus ? _self.activityStatus : activityStatus // ignore: cast_nullable_to_non_nullable
as PromotionActivityStatus,coverageType: null == coverageType ? _self.coverageType : coverageType // ignore: cast_nullable_to_non_nullable
as PromotionCoverageType,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as PromotionState,expirationDate: freezed == expirationDate ? _self.expirationDate : expirationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionTitleCopyWith<$Res> get title {
  
  return $PromotionTitleCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class SurveyPromotion implements Promotion {
  const SurveyPromotion({required this.id, required this.name, this.title = const PromotionTitle(), this.htmlContent, @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown) this.activityStatus = PromotionActivityStatus.unknown, @JsonKey(unknownEnumValue: PromotionCoverageType.unknown) this.coverageType = PromotionCoverageType.unknown, @JsonKey(unknownEnumValue: PromotionState.unknown) this.state = PromotionState.unknown, required this.activity, this.activityResult,  String? $type}): $type = $type ?? 'survey';
  factory SurveyPromotion.fromJson(Map<String, dynamic> json) => _$SurveyPromotionFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  PromotionTitle title;
@override final  String? htmlContent;
@override@JsonKey(unknownEnumValue: PromotionActivityStatus.unknown) final  PromotionActivityStatus activityStatus;
@override@JsonKey(unknownEnumValue: PromotionCoverageType.unknown) final  PromotionCoverageType coverageType;
@override@JsonKey(unknownEnumValue: PromotionState.unknown) final  PromotionState state;
 final  SurveyActivity activity;
 final  SurveyActivityResult? activityResult;

@JsonKey(name: 'ActivityType')
final String $type;


/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurveyPromotionCopyWith<SurveyPromotion> get copyWith => _$SurveyPromotionCopyWithImpl<SurveyPromotion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SurveyPromotionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurveyPromotion&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.htmlContent, htmlContent) || other.htmlContent == htmlContent)&&(identical(other.activityStatus, activityStatus) || other.activityStatus == activityStatus)&&(identical(other.coverageType, coverageType) || other.coverageType == coverageType)&&(identical(other.state, state) || other.state == state)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.activityResult, activityResult) || other.activityResult == activityResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,title,htmlContent,activityStatus,coverageType,state,activity,activityResult);

@override
String toString() {
  return 'Promotion.survey(id: $id, name: $name, title: $title, htmlContent: $htmlContent, activityStatus: $activityStatus, coverageType: $coverageType, state: $state, activity: $activity, activityResult: $activityResult)';
}


}

/// @nodoc
abstract mixin class $SurveyPromotionCopyWith<$Res> implements $PromotionCopyWith<$Res> {
  factory $SurveyPromotionCopyWith(SurveyPromotion value, $Res Function(SurveyPromotion) _then) = _$SurveyPromotionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, PromotionTitle title, String? htmlContent,@JsonKey(unknownEnumValue: PromotionActivityStatus.unknown) PromotionActivityStatus activityStatus,@JsonKey(unknownEnumValue: PromotionCoverageType.unknown) PromotionCoverageType coverageType,@JsonKey(unknownEnumValue: PromotionState.unknown) PromotionState state, SurveyActivity activity, SurveyActivityResult? activityResult
});


@override $PromotionTitleCopyWith<$Res> get title;$SurveyActivityCopyWith<$Res> get activity;$SurveyActivityResultCopyWith<$Res>? get activityResult;

}
/// @nodoc
class _$SurveyPromotionCopyWithImpl<$Res>
    implements $SurveyPromotionCopyWith<$Res> {
  _$SurveyPromotionCopyWithImpl(this._self, this._then);

  final SurveyPromotion _self;
  final $Res Function(SurveyPromotion) _then;

/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? title = null,Object? htmlContent = freezed,Object? activityStatus = null,Object? coverageType = null,Object? state = null,Object? activity = null,Object? activityResult = freezed,}) {
  return _then(SurveyPromotion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as PromotionTitle,htmlContent: freezed == htmlContent ? _self.htmlContent : htmlContent // ignore: cast_nullable_to_non_nullable
as String?,activityStatus: null == activityStatus ? _self.activityStatus : activityStatus // ignore: cast_nullable_to_non_nullable
as PromotionActivityStatus,coverageType: null == coverageType ? _self.coverageType : coverageType // ignore: cast_nullable_to_non_nullable
as PromotionCoverageType,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as PromotionState,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as SurveyActivity,activityResult: freezed == activityResult ? _self.activityResult : activityResult // ignore: cast_nullable_to_non_nullable
as SurveyActivityResult?,
  ));
}

/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionTitleCopyWith<$Res> get title {
  
  return $PromotionTitleCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurveyActivityCopyWith<$Res> get activity {
  
  return $SurveyActivityCopyWith<$Res>(_self.activity, (value) {
    return _then(_self.copyWith(activity: value));
  });
}/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurveyActivityResultCopyWith<$Res>? get activityResult {
    if (_self.activityResult == null) {
    return null;
  }

  return $SurveyActivityResultCopyWith<$Res>(_self.activityResult!, (value) {
    return _then(_self.copyWith(activityResult: value));
  });
}
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class UnknownPromotion implements Promotion {
  const UnknownPromotion({required this.id, required this.name, this.title = const PromotionTitle(), this.htmlContent, @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown) this.activityStatus = PromotionActivityStatus.unknown, @JsonKey(unknownEnumValue: PromotionCoverageType.unknown) this.coverageType = PromotionCoverageType.unknown, @JsonKey(unknownEnumValue: PromotionState.unknown) this.state = PromotionState.unknown,  String? $type}): $type = $type ?? 'unknown';
  factory UnknownPromotion.fromJson(Map<String, dynamic> json) => _$UnknownPromotionFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  PromotionTitle title;
@override final  String? htmlContent;
@override@JsonKey(unknownEnumValue: PromotionActivityStatus.unknown) final  PromotionActivityStatus activityStatus;
@override@JsonKey(unknownEnumValue: PromotionCoverageType.unknown) final  PromotionCoverageType coverageType;
@override@JsonKey(unknownEnumValue: PromotionState.unknown) final  PromotionState state;

@JsonKey(name: 'ActivityType')
final String $type;


/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownPromotionCopyWith<UnknownPromotion> get copyWith => _$UnknownPromotionCopyWithImpl<UnknownPromotion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnknownPromotionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownPromotion&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.htmlContent, htmlContent) || other.htmlContent == htmlContent)&&(identical(other.activityStatus, activityStatus) || other.activityStatus == activityStatus)&&(identical(other.coverageType, coverageType) || other.coverageType == coverageType)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,title,htmlContent,activityStatus,coverageType,state);

@override
String toString() {
  return 'Promotion.unknown(id: $id, name: $name, title: $title, htmlContent: $htmlContent, activityStatus: $activityStatus, coverageType: $coverageType, state: $state)';
}


}

/// @nodoc
abstract mixin class $UnknownPromotionCopyWith<$Res> implements $PromotionCopyWith<$Res> {
  factory $UnknownPromotionCopyWith(UnknownPromotion value, $Res Function(UnknownPromotion) _then) = _$UnknownPromotionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, PromotionTitle title, String? htmlContent,@JsonKey(unknownEnumValue: PromotionActivityStatus.unknown) PromotionActivityStatus activityStatus,@JsonKey(unknownEnumValue: PromotionCoverageType.unknown) PromotionCoverageType coverageType,@JsonKey(unknownEnumValue: PromotionState.unknown) PromotionState state
});


@override $PromotionTitleCopyWith<$Res> get title;

}
/// @nodoc
class _$UnknownPromotionCopyWithImpl<$Res>
    implements $UnknownPromotionCopyWith<$Res> {
  _$UnknownPromotionCopyWithImpl(this._self, this._then);

  final UnknownPromotion _self;
  final $Res Function(UnknownPromotion) _then;

/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? title = null,Object? htmlContent = freezed,Object? activityStatus = null,Object? coverageType = null,Object? state = null,}) {
  return _then(UnknownPromotion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as PromotionTitle,htmlContent: freezed == htmlContent ? _self.htmlContent : htmlContent // ignore: cast_nullable_to_non_nullable
as String?,activityStatus: null == activityStatus ? _self.activityStatus : activityStatus // ignore: cast_nullable_to_non_nullable
as PromotionActivityStatus,coverageType: null == coverageType ? _self.coverageType : coverageType // ignore: cast_nullable_to_non_nullable
as PromotionCoverageType,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as PromotionState,
  ));
}

/// Create a copy of Promotion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromotionTitleCopyWith<$Res> get title {
  
  return $PromotionTitleCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}
}


/// @nodoc
mixin _$PromotionTitle {

 String get imageUrl;
/// Create a copy of PromotionTitle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromotionTitleCopyWith<PromotionTitle> get copyWith => _$PromotionTitleCopyWithImpl<PromotionTitle>(this as PromotionTitle, _$identity);

  /// Serializes this PromotionTitle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromotionTitle&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl);

@override
String toString() {
  return 'PromotionTitle(imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $PromotionTitleCopyWith<$Res>  {
  factory $PromotionTitleCopyWith(PromotionTitle value, $Res Function(PromotionTitle) _then) = _$PromotionTitleCopyWithImpl;
@useResult
$Res call({
 String imageUrl
});




}
/// @nodoc
class _$PromotionTitleCopyWithImpl<$Res>
    implements $PromotionTitleCopyWith<$Res> {
  _$PromotionTitleCopyWithImpl(this._self, this._then);

  final PromotionTitle _self;
  final $Res Function(PromotionTitle) _then;

/// Create a copy of PromotionTitle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = null,}) {
  return _then(PromotionTitle(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PromotionTitle].
extension PromotionTitlePatterns on PromotionTitle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromotionTitle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromotionTitle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromotionTitle value)  $default,){
final _that = this;
switch (_that) {
case _PromotionTitle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromotionTitle value)?  $default,){
final _that = this;
switch (_that) {
case _PromotionTitle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromotionTitle() when $default != null:
return $default(_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _PromotionTitle():
return $default(_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _PromotionTitle() when $default != null:
return $default(_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _PromotionTitle implements PromotionTitle {
  const _PromotionTitle({this.imageUrl = ''});
  factory _PromotionTitle.fromJson(Map<String, dynamic> json) => _$PromotionTitleFromJson(json);

@override@JsonKey() final  String imageUrl;

/// Create a copy of PromotionTitle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromotionTitleCopyWith<_PromotionTitle> get copyWith => __$PromotionTitleCopyWithImpl<_PromotionTitle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromotionTitleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromotionTitle&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl);

@override
String toString() {
  return 'PromotionTitle(imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$PromotionTitleCopyWith<$Res> implements $PromotionTitleCopyWith<$Res> {
  factory _$PromotionTitleCopyWith(_PromotionTitle value, $Res Function(_PromotionTitle) _then) = __$PromotionTitleCopyWithImpl;
@override @useResult
$Res call({
 String imageUrl
});




}
/// @nodoc
class __$PromotionTitleCopyWithImpl<$Res>
    implements _$PromotionTitleCopyWith<$Res> {
  __$PromotionTitleCopyWithImpl(this._self, this._then);

  final _PromotionTitle _self;
  final $Res Function(_PromotionTitle) _then;

/// Create a copy of PromotionTitle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = null,}) {
  return _then(_PromotionTitle(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SurveyActivity {

@SurveyQuestionConverter() List<SurveyQuestion> get questions; String? get sendSurveyResultButtonText; String? get surveyAlreadyCompletedText;
/// Create a copy of SurveyActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurveyActivityCopyWith<SurveyActivity> get copyWith => _$SurveyActivityCopyWithImpl<SurveyActivity>(this as SurveyActivity, _$identity);

  /// Serializes this SurveyActivity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurveyActivity&&const DeepCollectionEquality().equals(other.questions, questions)&&(identical(other.sendSurveyResultButtonText, sendSurveyResultButtonText) || other.sendSurveyResultButtonText == sendSurveyResultButtonText)&&(identical(other.surveyAlreadyCompletedText, surveyAlreadyCompletedText) || other.surveyAlreadyCompletedText == surveyAlreadyCompletedText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(questions),sendSurveyResultButtonText,surveyAlreadyCompletedText);

@override
String toString() {
  return 'SurveyActivity(questions: $questions, sendSurveyResultButtonText: $sendSurveyResultButtonText, surveyAlreadyCompletedText: $surveyAlreadyCompletedText)';
}


}

/// @nodoc
abstract mixin class $SurveyActivityCopyWith<$Res>  {
  factory $SurveyActivityCopyWith(SurveyActivity value, $Res Function(SurveyActivity) _then) = _$SurveyActivityCopyWithImpl;
@useResult
$Res call({
@SurveyQuestionConverter() List<SurveyQuestion> questions, String? sendSurveyResultButtonText, String? surveyAlreadyCompletedText
});




}
/// @nodoc
class _$SurveyActivityCopyWithImpl<$Res>
    implements $SurveyActivityCopyWith<$Res> {
  _$SurveyActivityCopyWithImpl(this._self, this._then);

  final SurveyActivity _self;
  final $Res Function(SurveyActivity) _then;

/// Create a copy of SurveyActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questions = null,Object? sendSurveyResultButtonText = freezed,Object? surveyAlreadyCompletedText = freezed,}) {
  return _then(SurveyActivity(
questions: null == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<SurveyQuestion>,sendSurveyResultButtonText: freezed == sendSurveyResultButtonText ? _self.sendSurveyResultButtonText : sendSurveyResultButtonText // ignore: cast_nullable_to_non_nullable
as String?,surveyAlreadyCompletedText: freezed == surveyAlreadyCompletedText ? _self.surveyAlreadyCompletedText : surveyAlreadyCompletedText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SurveyActivity].
extension SurveyActivityPatterns on SurveyActivity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurveyActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurveyActivity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurveyActivity value)  $default,){
final _that = this;
switch (_that) {
case _SurveyActivity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurveyActivity value)?  $default,){
final _that = this;
switch (_that) {
case _SurveyActivity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@SurveyQuestionConverter()  List<SurveyQuestion> questions,  String? sendSurveyResultButtonText,  String? surveyAlreadyCompletedText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurveyActivity() when $default != null:
return $default(_that.questions,_that.sendSurveyResultButtonText,_that.surveyAlreadyCompletedText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@SurveyQuestionConverter()  List<SurveyQuestion> questions,  String? sendSurveyResultButtonText,  String? surveyAlreadyCompletedText)  $default,) {final _that = this;
switch (_that) {
case _SurveyActivity():
return $default(_that.questions,_that.sendSurveyResultButtonText,_that.surveyAlreadyCompletedText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@SurveyQuestionConverter()  List<SurveyQuestion> questions,  String? sendSurveyResultButtonText,  String? surveyAlreadyCompletedText)?  $default,) {final _that = this;
switch (_that) {
case _SurveyActivity() when $default != null:
return $default(_that.questions,_that.sendSurveyResultButtonText,_that.surveyAlreadyCompletedText);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _SurveyActivity implements SurveyActivity {
  const _SurveyActivity({@SurveyQuestionConverter() required  List<SurveyQuestion> questions, this.sendSurveyResultButtonText, this.surveyAlreadyCompletedText}): _questions = questions;
  factory _SurveyActivity.fromJson(Map<String, dynamic> json) => _$SurveyActivityFromJson(json);

 final  List<SurveyQuestion> _questions;
@override@SurveyQuestionConverter() List<SurveyQuestion> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}

@override final  String? sendSurveyResultButtonText;
@override final  String? surveyAlreadyCompletedText;

/// Create a copy of SurveyActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurveyActivityCopyWith<_SurveyActivity> get copyWith => __$SurveyActivityCopyWithImpl<_SurveyActivity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SurveyActivityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurveyActivity&&const DeepCollectionEquality().equals(other._questions, _questions)&&(identical(other.sendSurveyResultButtonText, sendSurveyResultButtonText) || other.sendSurveyResultButtonText == sendSurveyResultButtonText)&&(identical(other.surveyAlreadyCompletedText, surveyAlreadyCompletedText) || other.surveyAlreadyCompletedText == surveyAlreadyCompletedText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_questions),sendSurveyResultButtonText,surveyAlreadyCompletedText);

@override
String toString() {
  return 'SurveyActivity(questions: $questions, sendSurveyResultButtonText: $sendSurveyResultButtonText, surveyAlreadyCompletedText: $surveyAlreadyCompletedText)';
}


}

/// @nodoc
abstract mixin class _$SurveyActivityCopyWith<$Res> implements $SurveyActivityCopyWith<$Res> {
  factory _$SurveyActivityCopyWith(_SurveyActivity value, $Res Function(_SurveyActivity) _then) = __$SurveyActivityCopyWithImpl;
@override @useResult
$Res call({
@SurveyQuestionConverter() List<SurveyQuestion> questions, String? sendSurveyResultButtonText, String? surveyAlreadyCompletedText
});




}
/// @nodoc
class __$SurveyActivityCopyWithImpl<$Res>
    implements _$SurveyActivityCopyWith<$Res> {
  __$SurveyActivityCopyWithImpl(this._self, this._then);

  final _SurveyActivity _self;
  final $Res Function(_SurveyActivity) _then;

/// Create a copy of SurveyActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questions = null,Object? sendSurveyResultButtonText = freezed,Object? surveyAlreadyCompletedText = freezed,}) {
  return _then(_SurveyActivity(
questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<SurveyQuestion>,sendSurveyResultButtonText: freezed == sendSurveyResultButtonText ? _self.sendSurveyResultButtonText : sendSurveyResultButtonText // ignore: cast_nullable_to_non_nullable
as String?,surveyAlreadyCompletedText: freezed == surveyAlreadyCompletedText ? _self.surveyAlreadyCompletedText : surveyAlreadyCompletedText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SurveyActivityResult {

 Map<String, dynamic>? get answers;
/// Create a copy of SurveyActivityResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurveyActivityResultCopyWith<SurveyActivityResult> get copyWith => _$SurveyActivityResultCopyWithImpl<SurveyActivityResult>(this as SurveyActivityResult, _$identity);

  /// Serializes this SurveyActivityResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurveyActivityResult&&const DeepCollectionEquality().equals(other.answers, answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(answers));

@override
String toString() {
  return 'SurveyActivityResult(answers: $answers)';
}


}

/// @nodoc
abstract mixin class $SurveyActivityResultCopyWith<$Res>  {
  factory $SurveyActivityResultCopyWith(SurveyActivityResult value, $Res Function(SurveyActivityResult) _then) = _$SurveyActivityResultCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic>? answers
});




}
/// @nodoc
class _$SurveyActivityResultCopyWithImpl<$Res>
    implements $SurveyActivityResultCopyWith<$Res> {
  _$SurveyActivityResultCopyWithImpl(this._self, this._then);

  final SurveyActivityResult _self;
  final $Res Function(SurveyActivityResult) _then;

/// Create a copy of SurveyActivityResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answers = freezed,}) {
  return _then(SurveyActivityResult(
answers: freezed == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SurveyActivityResult].
extension SurveyActivityResultPatterns on SurveyActivityResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurveyActivityResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurveyActivityResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurveyActivityResult value)  $default,){
final _that = this;
switch (_that) {
case _SurveyActivityResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurveyActivityResult value)?  $default,){
final _that = this;
switch (_that) {
case _SurveyActivityResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, dynamic>? answers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurveyActivityResult() when $default != null:
return $default(_that.answers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, dynamic>? answers)  $default,) {final _that = this;
switch (_that) {
case _SurveyActivityResult():
return $default(_that.answers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, dynamic>? answers)?  $default,) {final _that = this;
switch (_that) {
case _SurveyActivityResult() when $default != null:
return $default(_that.answers);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _SurveyActivityResult implements SurveyActivityResult {
  const _SurveyActivityResult({ Map<String, dynamic>? answers}): _answers = answers;
  factory _SurveyActivityResult.fromJson(Map<String, dynamic> json) => _$SurveyActivityResultFromJson(json);

 final  Map<String, dynamic>? _answers;
@override Map<String, dynamic>? get answers {
  final value = _answers;
  if (value == null) return null;
  if (_answers is EqualUnmodifiableMapView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SurveyActivityResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurveyActivityResultCopyWith<_SurveyActivityResult> get copyWith => __$SurveyActivityResultCopyWithImpl<_SurveyActivityResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SurveyActivityResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurveyActivityResult&&const DeepCollectionEquality().equals(other._answers, _answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_answers));

@override
String toString() {
  return 'SurveyActivityResult(answers: $answers)';
}


}

/// @nodoc
abstract mixin class _$SurveyActivityResultCopyWith<$Res> implements $SurveyActivityResultCopyWith<$Res> {
  factory _$SurveyActivityResultCopyWith(_SurveyActivityResult value, $Res Function(_SurveyActivityResult) _then) = __$SurveyActivityResultCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic>? answers
});




}
/// @nodoc
class __$SurveyActivityResultCopyWithImpl<$Res>
    implements _$SurveyActivityResultCopyWith<$Res> {
  __$SurveyActivityResultCopyWithImpl(this._self, this._then);

  final _SurveyActivityResult _self;
  final $Res Function(_SurveyActivityResult) _then;

/// Create a copy of SurveyActivityResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answers = freezed,}) {
  return _then(_SurveyActivityResult(
answers: freezed == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

SurveyQuestion _$SurveyQuestionFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'text':
          return TextSurveyQuestion.fromJson(
            json
          );
                case 'optionList':
          return OptionSurveyQuestion.fromJson(
            json
          );
                case 'multipleOptionList':
          return MultipleOptionSurveyQuestion.fromJson(
            json
          );
                case 'dateTime':
          return DateTimeSurveyQuestion.fromJson(
            json
          );
                case 'date':
          return DateSurveyQuestion.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'SurveyQuestion',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$SurveyQuestion {

 String get name; String get title; bool get required; String? get tooltip; Object? get defaultValue;
/// Create a copy of SurveyQuestion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurveyQuestionCopyWith<SurveyQuestion> get copyWith => _$SurveyQuestionCopyWithImpl<SurveyQuestion>(this as SurveyQuestion, _$identity);

  /// Serializes this SurveyQuestion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurveyQuestion&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.required, required) || other.required == required)&&(identical(other.tooltip, tooltip) || other.tooltip == tooltip)&&const DeepCollectionEquality().equals(other.defaultValue, defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,required,tooltip,const DeepCollectionEquality().hash(defaultValue));

@override
String toString() {
  return 'SurveyQuestion(name: $name, title: $title, required: $required, tooltip: $tooltip, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $SurveyQuestionCopyWith<$Res>  {
  factory $SurveyQuestionCopyWith(SurveyQuestion value, $Res Function(SurveyQuestion) _then) = _$SurveyQuestionCopyWithImpl;
@useResult
$Res call({
 String name, String title, bool required, String? tooltip
});




}
/// @nodoc
class _$SurveyQuestionCopyWithImpl<$Res>
    implements $SurveyQuestionCopyWith<$Res> {
  _$SurveyQuestionCopyWithImpl(this._self, this._then);

  final SurveyQuestion _self;
  final $Res Function(SurveyQuestion) _then;

/// Create a copy of SurveyQuestion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? title = null,Object? required = null,Object? tooltip = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,tooltip: freezed == tooltip ? _self.tooltip : tooltip // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SurveyQuestion].
extension SurveyQuestionPatterns on SurveyQuestion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TextSurveyQuestion value)?  text,TResult Function( OptionSurveyQuestion value)?  optionList,TResult Function( MultipleOptionSurveyQuestion value)?  multipleOptionList,TResult Function( DateTimeSurveyQuestion value)?  dateTime,TResult Function( DateSurveyQuestion value)?  date,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TextSurveyQuestion() when text != null:
return text(_that);case OptionSurveyQuestion() when optionList != null:
return optionList(_that);case MultipleOptionSurveyQuestion() when multipleOptionList != null:
return multipleOptionList(_that);case DateTimeSurveyQuestion() when dateTime != null:
return dateTime(_that);case DateSurveyQuestion() when date != null:
return date(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TextSurveyQuestion value)  text,required TResult Function( OptionSurveyQuestion value)  optionList,required TResult Function( MultipleOptionSurveyQuestion value)  multipleOptionList,required TResult Function( DateTimeSurveyQuestion value)  dateTime,required TResult Function( DateSurveyQuestion value)  date,}){
final _that = this;
switch (_that) {
case TextSurveyQuestion():
return text(_that);case OptionSurveyQuestion():
return optionList(_that);case MultipleOptionSurveyQuestion():
return multipleOptionList(_that);case DateTimeSurveyQuestion():
return dateTime(_that);case DateSurveyQuestion():
return date(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TextSurveyQuestion value)?  text,TResult? Function( OptionSurveyQuestion value)?  optionList,TResult? Function( MultipleOptionSurveyQuestion value)?  multipleOptionList,TResult? Function( DateTimeSurveyQuestion value)?  dateTime,TResult? Function( DateSurveyQuestion value)?  date,}){
final _that = this;
switch (_that) {
case TextSurveyQuestion() when text != null:
return text(_that);case OptionSurveyQuestion() when optionList != null:
return optionList(_that);case MultipleOptionSurveyQuestion() when multipleOptionList != null:
return multipleOptionList(_that);case DateTimeSurveyQuestion() when dateTime != null:
return dateTime(_that);case DateSurveyQuestion() when date != null:
return date(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name,  String title,  bool required,  String? tooltip,  String? hintText,  TextRegex? regex,  String? defaultValue, @TextInputTypeConverter()  TextInputType? textInput)?  text,TResult Function( String name,  String title,  bool required,  String? tooltip,  List<String> options,  String? defaultValue)?  optionList,TResult Function( String name,  String title,  bool required,  String? tooltip,  List<String> options,  int? minOptionsNumber,  int? maxOptionsNumber,  List<String>? defaultValue)?  multipleOptionList,TResult Function( String name,  String title,  bool required,  String? tooltip,  DateTime? minDateTime,  DateTime? maxDateTime,  DateTime? defaultValue)?  dateTime,TResult Function( String name,  String title,  bool required,  String? tooltip,  DateTime? minDate,  DateTime? maxDate,  DateTime? defaultValue)?  date,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TextSurveyQuestion() when text != null:
return text(_that.name,_that.title,_that.required,_that.tooltip,_that.hintText,_that.regex,_that.defaultValue,_that.textInput);case OptionSurveyQuestion() when optionList != null:
return optionList(_that.name,_that.title,_that.required,_that.tooltip,_that.options,_that.defaultValue);case MultipleOptionSurveyQuestion() when multipleOptionList != null:
return multipleOptionList(_that.name,_that.title,_that.required,_that.tooltip,_that.options,_that.minOptionsNumber,_that.maxOptionsNumber,_that.defaultValue);case DateTimeSurveyQuestion() when dateTime != null:
return dateTime(_that.name,_that.title,_that.required,_that.tooltip,_that.minDateTime,_that.maxDateTime,_that.defaultValue);case DateSurveyQuestion() when date != null:
return date(_that.name,_that.title,_that.required,_that.tooltip,_that.minDate,_that.maxDate,_that.defaultValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name,  String title,  bool required,  String? tooltip,  String? hintText,  TextRegex? regex,  String? defaultValue, @TextInputTypeConverter()  TextInputType? textInput)  text,required TResult Function( String name,  String title,  bool required,  String? tooltip,  List<String> options,  String? defaultValue)  optionList,required TResult Function( String name,  String title,  bool required,  String? tooltip,  List<String> options,  int? minOptionsNumber,  int? maxOptionsNumber,  List<String>? defaultValue)  multipleOptionList,required TResult Function( String name,  String title,  bool required,  String? tooltip,  DateTime? minDateTime,  DateTime? maxDateTime,  DateTime? defaultValue)  dateTime,required TResult Function( String name,  String title,  bool required,  String? tooltip,  DateTime? minDate,  DateTime? maxDate,  DateTime? defaultValue)  date,}) {final _that = this;
switch (_that) {
case TextSurveyQuestion():
return text(_that.name,_that.title,_that.required,_that.tooltip,_that.hintText,_that.regex,_that.defaultValue,_that.textInput);case OptionSurveyQuestion():
return optionList(_that.name,_that.title,_that.required,_that.tooltip,_that.options,_that.defaultValue);case MultipleOptionSurveyQuestion():
return multipleOptionList(_that.name,_that.title,_that.required,_that.tooltip,_that.options,_that.minOptionsNumber,_that.maxOptionsNumber,_that.defaultValue);case DateTimeSurveyQuestion():
return dateTime(_that.name,_that.title,_that.required,_that.tooltip,_that.minDateTime,_that.maxDateTime,_that.defaultValue);case DateSurveyQuestion():
return date(_that.name,_that.title,_that.required,_that.tooltip,_that.minDate,_that.maxDate,_that.defaultValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name,  String title,  bool required,  String? tooltip,  String? hintText,  TextRegex? regex,  String? defaultValue, @TextInputTypeConverter()  TextInputType? textInput)?  text,TResult? Function( String name,  String title,  bool required,  String? tooltip,  List<String> options,  String? defaultValue)?  optionList,TResult? Function( String name,  String title,  bool required,  String? tooltip,  List<String> options,  int? minOptionsNumber,  int? maxOptionsNumber,  List<String>? defaultValue)?  multipleOptionList,TResult? Function( String name,  String title,  bool required,  String? tooltip,  DateTime? minDateTime,  DateTime? maxDateTime,  DateTime? defaultValue)?  dateTime,TResult? Function( String name,  String title,  bool required,  String? tooltip,  DateTime? minDate,  DateTime? maxDate,  DateTime? defaultValue)?  date,}) {final _that = this;
switch (_that) {
case TextSurveyQuestion() when text != null:
return text(_that.name,_that.title,_that.required,_that.tooltip,_that.hintText,_that.regex,_that.defaultValue,_that.textInput);case OptionSurveyQuestion() when optionList != null:
return optionList(_that.name,_that.title,_that.required,_that.tooltip,_that.options,_that.defaultValue);case MultipleOptionSurveyQuestion() when multipleOptionList != null:
return multipleOptionList(_that.name,_that.title,_that.required,_that.tooltip,_that.options,_that.minOptionsNumber,_that.maxOptionsNumber,_that.defaultValue);case DateTimeSurveyQuestion() when dateTime != null:
return dateTime(_that.name,_that.title,_that.required,_that.tooltip,_that.minDateTime,_that.maxDateTime,_that.defaultValue);case DateSurveyQuestion() when date != null:
return date(_that.name,_that.title,_that.required,_that.tooltip,_that.minDate,_that.maxDate,_that.defaultValue);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class TextSurveyQuestion implements SurveyQuestion {
  const TextSurveyQuestion({required this.name, required this.title, this.required = false, this.tooltip, this.hintText, this.regex, this.defaultValue, @TextInputTypeConverter() this.textInput,  String? $type}): $type = $type ?? 'text';
  factory TextSurveyQuestion.fromJson(Map<String, dynamic> json) => _$TextSurveyQuestionFromJson(json);

@override final  String name;
@override final  String title;
@override@JsonKey() final  bool required;
@override final  String? tooltip;
 final  String? hintText;
 final  TextRegex? regex;
@override final  String? defaultValue;
@TextInputTypeConverter() final  TextInputType? textInput;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of SurveyQuestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextSurveyQuestionCopyWith<TextSurveyQuestion> get copyWith => _$TextSurveyQuestionCopyWithImpl<TextSurveyQuestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TextSurveyQuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextSurveyQuestion&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.required, required) || other.required == required)&&(identical(other.tooltip, tooltip) || other.tooltip == tooltip)&&(identical(other.hintText, hintText) || other.hintText == hintText)&&(identical(other.regex, regex) || other.regex == regex)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&(identical(other.textInput, textInput) || other.textInput == textInput));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,required,tooltip,hintText,regex,defaultValue,textInput);

@override
String toString() {
  return 'SurveyQuestion.text(name: $name, title: $title, required: $required, tooltip: $tooltip, hintText: $hintText, regex: $regex, defaultValue: $defaultValue, textInput: $textInput)';
}


}

/// @nodoc
abstract mixin class $TextSurveyQuestionCopyWith<$Res> implements $SurveyQuestionCopyWith<$Res> {
  factory $TextSurveyQuestionCopyWith(TextSurveyQuestion value, $Res Function(TextSurveyQuestion) _then) = _$TextSurveyQuestionCopyWithImpl;
@override @useResult
$Res call({
 String name, String title, bool required, String? tooltip, String? hintText, TextRegex? regex, String? defaultValue,@TextInputTypeConverter() TextInputType? textInput
});


$TextRegexCopyWith<$Res>? get regex;

}
/// @nodoc
class _$TextSurveyQuestionCopyWithImpl<$Res>
    implements $TextSurveyQuestionCopyWith<$Res> {
  _$TextSurveyQuestionCopyWithImpl(this._self, this._then);

  final TextSurveyQuestion _self;
  final $Res Function(TextSurveyQuestion) _then;

/// Create a copy of SurveyQuestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? title = null,Object? required = null,Object? tooltip = freezed,Object? hintText = freezed,Object? regex = freezed,Object? defaultValue = freezed,Object? textInput = freezed,}) {
  return _then(TextSurveyQuestion(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,tooltip: freezed == tooltip ? _self.tooltip : tooltip // ignore: cast_nullable_to_non_nullable
as String?,hintText: freezed == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String?,regex: freezed == regex ? _self.regex : regex // ignore: cast_nullable_to_non_nullable
as TextRegex?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,textInput: freezed == textInput ? _self.textInput : textInput // ignore: cast_nullable_to_non_nullable
as TextInputType?,
  ));
}

/// Create a copy of SurveyQuestion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TextRegexCopyWith<$Res>? get regex {
    if (_self.regex == null) {
    return null;
  }

  return $TextRegexCopyWith<$Res>(_self.regex!, (value) {
    return _then(_self.copyWith(regex: value));
  });
}
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class OptionSurveyQuestion implements SurveyQuestion {
  const OptionSurveyQuestion({required this.name, required this.title, this.required = false, this.tooltip, required  List<String> options, this.defaultValue,  String? $type}): _options = options,$type = $type ?? 'optionList';
  factory OptionSurveyQuestion.fromJson(Map<String, dynamic> json) => _$OptionSurveyQuestionFromJson(json);

@override final  String name;
@override final  String title;
@override@JsonKey() final  bool required;
@override final  String? tooltip;
 final  List<String> _options;
 List<String> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

@override final  String? defaultValue;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of SurveyQuestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionSurveyQuestionCopyWith<OptionSurveyQuestion> get copyWith => _$OptionSurveyQuestionCopyWithImpl<OptionSurveyQuestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionSurveyQuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionSurveyQuestion&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.required, required) || other.required == required)&&(identical(other.tooltip, tooltip) || other.tooltip == tooltip)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,required,tooltip,const DeepCollectionEquality().hash(_options),defaultValue);

@override
String toString() {
  return 'SurveyQuestion.optionList(name: $name, title: $title, required: $required, tooltip: $tooltip, options: $options, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $OptionSurveyQuestionCopyWith<$Res> implements $SurveyQuestionCopyWith<$Res> {
  factory $OptionSurveyQuestionCopyWith(OptionSurveyQuestion value, $Res Function(OptionSurveyQuestion) _then) = _$OptionSurveyQuestionCopyWithImpl;
@override @useResult
$Res call({
 String name, String title, bool required, String? tooltip, List<String> options, String? defaultValue
});




}
/// @nodoc
class _$OptionSurveyQuestionCopyWithImpl<$Res>
    implements $OptionSurveyQuestionCopyWith<$Res> {
  _$OptionSurveyQuestionCopyWithImpl(this._self, this._then);

  final OptionSurveyQuestion _self;
  final $Res Function(OptionSurveyQuestion) _then;

/// Create a copy of SurveyQuestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? title = null,Object? required = null,Object? tooltip = freezed,Object? options = null,Object? defaultValue = freezed,}) {
  return _then(OptionSurveyQuestion(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,tooltip: freezed == tooltip ? _self.tooltip : tooltip // ignore: cast_nullable_to_non_nullable
as String?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class MultipleOptionSurveyQuestion implements SurveyQuestion {
  const MultipleOptionSurveyQuestion({required this.name, required this.title, this.required = false, this.tooltip, required  List<String> options, this.minOptionsNumber, this.maxOptionsNumber,  List<String>? defaultValue,  String? $type}): _options = options,_defaultValue = defaultValue,$type = $type ?? 'multipleOptionList';
  factory MultipleOptionSurveyQuestion.fromJson(Map<String, dynamic> json) => _$MultipleOptionSurveyQuestionFromJson(json);

@override final  String name;
@override final  String title;
@override@JsonKey() final  bool required;
@override final  String? tooltip;
 final  List<String> _options;
 List<String> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

 final  int? minOptionsNumber;
 final  int? maxOptionsNumber;
 final  List<String>? _defaultValue;
@override List<String>? get defaultValue {
  final value = _defaultValue;
  if (value == null) return null;
  if (_defaultValue is EqualUnmodifiableListView) return _defaultValue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of SurveyQuestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultipleOptionSurveyQuestionCopyWith<MultipleOptionSurveyQuestion> get copyWith => _$MultipleOptionSurveyQuestionCopyWithImpl<MultipleOptionSurveyQuestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultipleOptionSurveyQuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultipleOptionSurveyQuestion&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.required, required) || other.required == required)&&(identical(other.tooltip, tooltip) || other.tooltip == tooltip)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.minOptionsNumber, minOptionsNumber) || other.minOptionsNumber == minOptionsNumber)&&(identical(other.maxOptionsNumber, maxOptionsNumber) || other.maxOptionsNumber == maxOptionsNumber)&&const DeepCollectionEquality().equals(other._defaultValue, _defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,required,tooltip,const DeepCollectionEquality().hash(_options),minOptionsNumber,maxOptionsNumber,const DeepCollectionEquality().hash(_defaultValue));

@override
String toString() {
  return 'SurveyQuestion.multipleOptionList(name: $name, title: $title, required: $required, tooltip: $tooltip, options: $options, minOptionsNumber: $minOptionsNumber, maxOptionsNumber: $maxOptionsNumber, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $MultipleOptionSurveyQuestionCopyWith<$Res> implements $SurveyQuestionCopyWith<$Res> {
  factory $MultipleOptionSurveyQuestionCopyWith(MultipleOptionSurveyQuestion value, $Res Function(MultipleOptionSurveyQuestion) _then) = _$MultipleOptionSurveyQuestionCopyWithImpl;
@override @useResult
$Res call({
 String name, String title, bool required, String? tooltip, List<String> options, int? minOptionsNumber, int? maxOptionsNumber, List<String>? defaultValue
});




}
/// @nodoc
class _$MultipleOptionSurveyQuestionCopyWithImpl<$Res>
    implements $MultipleOptionSurveyQuestionCopyWith<$Res> {
  _$MultipleOptionSurveyQuestionCopyWithImpl(this._self, this._then);

  final MultipleOptionSurveyQuestion _self;
  final $Res Function(MultipleOptionSurveyQuestion) _then;

/// Create a copy of SurveyQuestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? title = null,Object? required = null,Object? tooltip = freezed,Object? options = null,Object? minOptionsNumber = freezed,Object? maxOptionsNumber = freezed,Object? defaultValue = freezed,}) {
  return _then(MultipleOptionSurveyQuestion(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,tooltip: freezed == tooltip ? _self.tooltip : tooltip // ignore: cast_nullable_to_non_nullable
as String?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,minOptionsNumber: freezed == minOptionsNumber ? _self.minOptionsNumber : minOptionsNumber // ignore: cast_nullable_to_non_nullable
as int?,maxOptionsNumber: freezed == maxOptionsNumber ? _self.maxOptionsNumber : maxOptionsNumber // ignore: cast_nullable_to_non_nullable
as int?,defaultValue: freezed == defaultValue ? _self._defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class DateTimeSurveyQuestion implements SurveyQuestion {
  const DateTimeSurveyQuestion({required this.name, required this.title, this.required = false, this.tooltip, this.minDateTime, this.maxDateTime, this.defaultValue,  String? $type}): $type = $type ?? 'dateTime';
  factory DateTimeSurveyQuestion.fromJson(Map<String, dynamic> json) => _$DateTimeSurveyQuestionFromJson(json);

@override final  String name;
@override final  String title;
@override@JsonKey() final  bool required;
@override final  String? tooltip;
 final  DateTime? minDateTime;
 final  DateTime? maxDateTime;
@override final  DateTime? defaultValue;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of SurveyQuestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateTimeSurveyQuestionCopyWith<DateTimeSurveyQuestion> get copyWith => _$DateTimeSurveyQuestionCopyWithImpl<DateTimeSurveyQuestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DateTimeSurveyQuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateTimeSurveyQuestion&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.required, required) || other.required == required)&&(identical(other.tooltip, tooltip) || other.tooltip == tooltip)&&(identical(other.minDateTime, minDateTime) || other.minDateTime == minDateTime)&&(identical(other.maxDateTime, maxDateTime) || other.maxDateTime == maxDateTime)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,required,tooltip,minDateTime,maxDateTime,defaultValue);

@override
String toString() {
  return 'SurveyQuestion.dateTime(name: $name, title: $title, required: $required, tooltip: $tooltip, minDateTime: $minDateTime, maxDateTime: $maxDateTime, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $DateTimeSurveyQuestionCopyWith<$Res> implements $SurveyQuestionCopyWith<$Res> {
  factory $DateTimeSurveyQuestionCopyWith(DateTimeSurveyQuestion value, $Res Function(DateTimeSurveyQuestion) _then) = _$DateTimeSurveyQuestionCopyWithImpl;
@override @useResult
$Res call({
 String name, String title, bool required, String? tooltip, DateTime? minDateTime, DateTime? maxDateTime, DateTime? defaultValue
});




}
/// @nodoc
class _$DateTimeSurveyQuestionCopyWithImpl<$Res>
    implements $DateTimeSurveyQuestionCopyWith<$Res> {
  _$DateTimeSurveyQuestionCopyWithImpl(this._self, this._then);

  final DateTimeSurveyQuestion _self;
  final $Res Function(DateTimeSurveyQuestion) _then;

/// Create a copy of SurveyQuestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? title = null,Object? required = null,Object? tooltip = freezed,Object? minDateTime = freezed,Object? maxDateTime = freezed,Object? defaultValue = freezed,}) {
  return _then(DateTimeSurveyQuestion(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,tooltip: freezed == tooltip ? _self.tooltip : tooltip // ignore: cast_nullable_to_non_nullable
as String?,minDateTime: freezed == minDateTime ? _self.minDateTime : minDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,maxDateTime: freezed == maxDateTime ? _self.maxDateTime : maxDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class DateSurveyQuestion implements SurveyQuestion {
  const DateSurveyQuestion({required this.name, required this.title, this.required = false, this.tooltip, this.minDate, this.maxDate, this.defaultValue,  String? $type}): $type = $type ?? 'date';
  factory DateSurveyQuestion.fromJson(Map<String, dynamic> json) => _$DateSurveyQuestionFromJson(json);

@override final  String name;
@override final  String title;
@override@JsonKey() final  bool required;
@override final  String? tooltip;
 final  DateTime? minDate;
 final  DateTime? maxDate;
@override final  DateTime? defaultValue;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of SurveyQuestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateSurveyQuestionCopyWith<DateSurveyQuestion> get copyWith => _$DateSurveyQuestionCopyWithImpl<DateSurveyQuestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DateSurveyQuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateSurveyQuestion&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.required, required) || other.required == required)&&(identical(other.tooltip, tooltip) || other.tooltip == tooltip)&&(identical(other.minDate, minDate) || other.minDate == minDate)&&(identical(other.maxDate, maxDate) || other.maxDate == maxDate)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,required,tooltip,minDate,maxDate,defaultValue);

@override
String toString() {
  return 'SurveyQuestion.date(name: $name, title: $title, required: $required, tooltip: $tooltip, minDate: $minDate, maxDate: $maxDate, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $DateSurveyQuestionCopyWith<$Res> implements $SurveyQuestionCopyWith<$Res> {
  factory $DateSurveyQuestionCopyWith(DateSurveyQuestion value, $Res Function(DateSurveyQuestion) _then) = _$DateSurveyQuestionCopyWithImpl;
@override @useResult
$Res call({
 String name, String title, bool required, String? tooltip, DateTime? minDate, DateTime? maxDate, DateTime? defaultValue
});




}
/// @nodoc
class _$DateSurveyQuestionCopyWithImpl<$Res>
    implements $DateSurveyQuestionCopyWith<$Res> {
  _$DateSurveyQuestionCopyWithImpl(this._self, this._then);

  final DateSurveyQuestion _self;
  final $Res Function(DateSurveyQuestion) _then;

/// Create a copy of SurveyQuestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? title = null,Object? required = null,Object? tooltip = freezed,Object? minDate = freezed,Object? maxDate = freezed,Object? defaultValue = freezed,}) {
  return _then(DateSurveyQuestion(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,tooltip: freezed == tooltip ? _self.tooltip : tooltip // ignore: cast_nullable_to_non_nullable
as String?,minDate: freezed == minDate ? _self.minDate : minDate // ignore: cast_nullable_to_non_nullable
as DateTime?,maxDate: freezed == maxDate ? _self.maxDate : maxDate // ignore: cast_nullable_to_non_nullable
as DateTime?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$TextRegex {

 String get pattern; int get options;
/// Create a copy of TextRegex
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextRegexCopyWith<TextRegex> get copyWith => _$TextRegexCopyWithImpl<TextRegex>(this as TextRegex, _$identity);

  /// Serializes this TextRegex to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextRegex&&(identical(other.pattern, pattern) || other.pattern == pattern)&&(identical(other.options, options) || other.options == options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pattern,options);

@override
String toString() {
  return 'TextRegex(pattern: $pattern, options: $options)';
}


}

/// @nodoc
abstract mixin class $TextRegexCopyWith<$Res>  {
  factory $TextRegexCopyWith(TextRegex value, $Res Function(TextRegex) _then) = _$TextRegexCopyWithImpl;
@useResult
$Res call({
 String pattern, int options
});




}
/// @nodoc
class _$TextRegexCopyWithImpl<$Res>
    implements $TextRegexCopyWith<$Res> {
  _$TextRegexCopyWithImpl(this._self, this._then);

  final TextRegex _self;
  final $Res Function(TextRegex) _then;

/// Create a copy of TextRegex
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pattern = null,Object? options = null,}) {
  return _then(TextRegex(
pattern: null == pattern ? _self.pattern : pattern // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TextRegex].
extension TextRegexPatterns on TextRegex {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TextRegex value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TextRegex() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TextRegex value)  $default,){
final _that = this;
switch (_that) {
case _TextRegex():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TextRegex value)?  $default,){
final _that = this;
switch (_that) {
case _TextRegex() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String pattern,  int options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TextRegex() when $default != null:
return $default(_that.pattern,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String pattern,  int options)  $default,) {final _that = this;
switch (_that) {
case _TextRegex():
return $default(_that.pattern,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String pattern,  int options)?  $default,) {final _that = this;
switch (_that) {
case _TextRegex() when $default != null:
return $default(_that.pattern,_that.options);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _TextRegex implements TextRegex {
  const _TextRegex({required this.pattern, required this.options});
  factory _TextRegex.fromJson(Map<String, dynamic> json) => _$TextRegexFromJson(json);

@override final  String pattern;
@override final  int options;

/// Create a copy of TextRegex
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextRegexCopyWith<_TextRegex> get copyWith => __$TextRegexCopyWithImpl<_TextRegex>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TextRegexToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextRegex&&(identical(other.pattern, pattern) || other.pattern == pattern)&&(identical(other.options, options) || other.options == options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pattern,options);

@override
String toString() {
  return 'TextRegex(pattern: $pattern, options: $options)';
}


}

/// @nodoc
abstract mixin class _$TextRegexCopyWith<$Res> implements $TextRegexCopyWith<$Res> {
  factory _$TextRegexCopyWith(_TextRegex value, $Res Function(_TextRegex) _then) = __$TextRegexCopyWithImpl;
@override @useResult
$Res call({
 String pattern, int options
});




}
/// @nodoc
class __$TextRegexCopyWithImpl<$Res>
    implements _$TextRegexCopyWith<$Res> {
  __$TextRegexCopyWithImpl(this._self, this._then);

  final _TextRegex _self;
  final $Res Function(_TextRegex) _then;

/// Create a copy of TextRegex
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pattern = null,Object? options = null,}) {
  return _then(_TextRegex(
pattern: null == pattern ? _self.pattern : pattern // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
