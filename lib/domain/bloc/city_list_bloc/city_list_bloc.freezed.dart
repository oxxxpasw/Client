// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CityListState {

 CityListStatus get status; List<City>? get cities; List<City>? get searchResult; City? get selected;
/// Create a copy of CityListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityListStateCopyWith<CityListState> get copyWith => _$CityListStateCopyWithImpl<CityListState>(this as CityListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.cities, cities)&&const DeepCollectionEquality().equals(other.searchResult, searchResult)&&(identical(other.selected, selected) || other.selected == selected));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(cities),const DeepCollectionEquality().hash(searchResult),selected);

@override
String toString() {
  return 'CityListState(status: $status, cities: $cities, searchResult: $searchResult, selected: $selected)';
}


}

/// @nodoc
abstract mixin class $CityListStateCopyWith<$Res>  {
  factory $CityListStateCopyWith(CityListState value, $Res Function(CityListState) _then) = _$CityListStateCopyWithImpl;
@useResult
$Res call({
 CityListStatus status, List<City>? cities, List<City>? searchResult, City? selected
});


$CityCopyWith<$Res>? get selected;

}
/// @nodoc
class _$CityListStateCopyWithImpl<$Res>
    implements $CityListStateCopyWith<$Res> {
  _$CityListStateCopyWithImpl(this._self, this._then);

  final CityListState _self;
  final $Res Function(CityListState) _then;

/// Create a copy of CityListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? cities = freezed,Object? searchResult = freezed,Object? selected = freezed,}) {
  return _then(CityListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CityListStatus,cities: freezed == cities ? _self.cities : cities // ignore: cast_nullable_to_non_nullable
as List<City>?,searchResult: freezed == searchResult ? _self.searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<City>?,selected: freezed == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as City?,
  ));
}
/// Create a copy of CityListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get selected {
    if (_self.selected == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.selected!, (value) {
    return _then(_self.copyWith(selected: value));
  });
}
}


/// Adds pattern-matching-related methods to [CityListState].
extension CityListStatePatterns on CityListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityListState value)  $default,){
final _that = this;
switch (_that) {
case _CityListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityListState value)?  $default,){
final _that = this;
switch (_that) {
case _CityListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CityListStatus status,  List<City>? cities,  List<City>? searchResult,  City? selected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityListState() when $default != null:
return $default(_that.status,_that.cities,_that.searchResult,_that.selected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CityListStatus status,  List<City>? cities,  List<City>? searchResult,  City? selected)  $default,) {final _that = this;
switch (_that) {
case _CityListState():
return $default(_that.status,_that.cities,_that.searchResult,_that.selected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CityListStatus status,  List<City>? cities,  List<City>? searchResult,  City? selected)?  $default,) {final _that = this;
switch (_that) {
case _CityListState() when $default != null:
return $default(_that.status,_that.cities,_that.searchResult,_that.selected);case _:
  return null;

}
}

}

/// @nodoc


class _CityListState implements CityListState {
  const _CityListState({this.status = CityListStatus.init,  List<City>? cities,  List<City>? searchResult, this.selected}): assert(status != CityListStatus.ready || cities != null),_cities = cities,_searchResult = searchResult;
  

@override@JsonKey() final  CityListStatus status;
 final  List<City>? _cities;
@override List<City>? get cities {
  final value = _cities;
  if (value == null) return null;
  if (_cities is EqualUnmodifiableListView) return _cities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<City>? _searchResult;
@override List<City>? get searchResult {
  final value = _searchResult;
  if (value == null) return null;
  if (_searchResult is EqualUnmodifiableListView) return _searchResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  City? selected;

/// Create a copy of CityListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityListStateCopyWith<_CityListState> get copyWith => __$CityListStateCopyWithImpl<_CityListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._cities, _cities)&&const DeepCollectionEquality().equals(other._searchResult, _searchResult)&&(identical(other.selected, selected) || other.selected == selected));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_cities),const DeepCollectionEquality().hash(_searchResult),selected);

@override
String toString() {
  return 'CityListState(status: $status, cities: $cities, searchResult: $searchResult, selected: $selected)';
}


}

/// @nodoc
abstract mixin class _$CityListStateCopyWith<$Res> implements $CityListStateCopyWith<$Res> {
  factory _$CityListStateCopyWith(_CityListState value, $Res Function(_CityListState) _then) = __$CityListStateCopyWithImpl;
@override @useResult
$Res call({
 CityListStatus status, List<City>? cities, List<City>? searchResult, City? selected
});


@override $CityCopyWith<$Res>? get selected;

}
/// @nodoc
class __$CityListStateCopyWithImpl<$Res>
    implements _$CityListStateCopyWith<$Res> {
  __$CityListStateCopyWithImpl(this._self, this._then);

  final _CityListState _self;
  final $Res Function(_CityListState) _then;

/// Create a copy of CityListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? cities = freezed,Object? searchResult = freezed,Object? selected = freezed,}) {
  return _then(_CityListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CityListStatus,cities: freezed == cities ? _self._cities : cities // ignore: cast_nullable_to_non_nullable
as List<City>?,searchResult: freezed == searchResult ? _self._searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<City>?,selected: freezed == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as City?,
  ));
}

/// Create a copy of CityListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get selected {
    if (_self.selected == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.selected!, (value) {
    return _then(_self.copyWith(selected: value));
  });
}
}

/// @nodoc
mixin _$CityListSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityListSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CityListSr()';
}


}

/// @nodoc
class $CityListSrCopyWith<$Res>  {
$CityListSrCopyWith(CityListSr _, $Res Function(CityListSr) __);
}


/// Adds pattern-matching-related methods to [CityListSr].
extension CityListSrPatterns on CityListSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CityListErrorSr value)?  error,TResult Function( CityListSelectedSr value)?  selected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CityListErrorSr() when error != null:
return error(_that);case CityListSelectedSr() when selected != null:
return selected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CityListErrorSr value)  error,required TResult Function( CityListSelectedSr value)  selected,}){
final _that = this;
switch (_that) {
case CityListErrorSr():
return error(_that);case CityListSelectedSr():
return selected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CityListErrorSr value)?  error,TResult? Function( CityListSelectedSr value)?  selected,}){
final _that = this;
switch (_that) {
case CityListErrorSr() when error != null:
return error(_that);case CityListSelectedSr() when selected != null:
return selected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  error,TResult Function()?  selected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CityListErrorSr() when error != null:
return error(_that.message);case CityListSelectedSr() when selected != null:
return selected();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  error,required TResult Function()  selected,}) {final _that = this;
switch (_that) {
case CityListErrorSr():
return error(_that.message);case CityListSelectedSr():
return selected();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  error,TResult? Function()?  selected,}) {final _that = this;
switch (_that) {
case CityListErrorSr() when error != null:
return error(_that.message);case CityListSelectedSr() when selected != null:
return selected();case _:
  return null;

}
}

}

/// @nodoc


class CityListErrorSr implements CityListSr {
  const CityListErrorSr(this.message);
  

 final  String message;

/// Create a copy of CityListSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityListErrorSrCopyWith<CityListErrorSr> get copyWith => _$CityListErrorSrCopyWithImpl<CityListErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityListErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CityListSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CityListErrorSrCopyWith<$Res> implements $CityListSrCopyWith<$Res> {
  factory $CityListErrorSrCopyWith(CityListErrorSr value, $Res Function(CityListErrorSr) _then) = _$CityListErrorSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CityListErrorSrCopyWithImpl<$Res>
    implements $CityListErrorSrCopyWith<$Res> {
  _$CityListErrorSrCopyWithImpl(this._self, this._then);

  final CityListErrorSr _self;
  final $Res Function(CityListErrorSr) _then;

/// Create a copy of CityListSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CityListErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CityListSelectedSr implements CityListSr {
  const CityListSelectedSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityListSelectedSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CityListSr.selected()';
}


}




// dart format on
