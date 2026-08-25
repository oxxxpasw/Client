// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drink_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DrinkListState {

 DrinkListStatus get status; List<Product>? get drinks; Product? get selectedDrink; bool get isSelectionConfirmed;
/// Create a copy of DrinkListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DrinkListStateCopyWith<DrinkListState> get copyWith => _$DrinkListStateCopyWithImpl<DrinkListState>(this as DrinkListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrinkListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.drinks, drinks)&&(identical(other.selectedDrink, selectedDrink) || other.selectedDrink == selectedDrink)&&(identical(other.isSelectionConfirmed, isSelectionConfirmed) || other.isSelectionConfirmed == isSelectionConfirmed));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(drinks),selectedDrink,isSelectionConfirmed);

@override
String toString() {
  return 'DrinkListState(status: $status, drinks: $drinks, selectedDrink: $selectedDrink, isSelectionConfirmed: $isSelectionConfirmed)';
}


}

/// @nodoc
abstract mixin class $DrinkListStateCopyWith<$Res>  {
  factory $DrinkListStateCopyWith(DrinkListState value, $Res Function(DrinkListState) _then) = _$DrinkListStateCopyWithImpl;
@useResult
$Res call({
 DrinkListStatus status, List<Product>? drinks, Product? selectedDrink, bool isSelectionConfirmed
});


$ProductCopyWith<$Res>? get selectedDrink;

}
/// @nodoc
class _$DrinkListStateCopyWithImpl<$Res>
    implements $DrinkListStateCopyWith<$Res> {
  _$DrinkListStateCopyWithImpl(this._self, this._then);

  final DrinkListState _self;
  final $Res Function(DrinkListState) _then;

/// Create a copy of DrinkListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? drinks = freezed,Object? selectedDrink = freezed,Object? isSelectionConfirmed = null,}) {
  return _then(DrinkListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DrinkListStatus,drinks: freezed == drinks ? _self.drinks : drinks // ignore: cast_nullable_to_non_nullable
as List<Product>?,selectedDrink: freezed == selectedDrink ? _self.selectedDrink : selectedDrink // ignore: cast_nullable_to_non_nullable
as Product?,isSelectionConfirmed: null == isSelectionConfirmed ? _self.isSelectionConfirmed : isSelectionConfirmed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of DrinkListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get selectedDrink {
    if (_self.selectedDrink == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.selectedDrink!, (value) {
    return _then(_self.copyWith(selectedDrink: value));
  });
}
}


/// Adds pattern-matching-related methods to [DrinkListState].
extension DrinkListStatePatterns on DrinkListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DrinkListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DrinkListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DrinkListState value)  $default,){
final _that = this;
switch (_that) {
case _DrinkListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DrinkListState value)?  $default,){
final _that = this;
switch (_that) {
case _DrinkListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DrinkListStatus status,  List<Product>? drinks,  Product? selectedDrink,  bool isSelectionConfirmed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DrinkListState() when $default != null:
return $default(_that.status,_that.drinks,_that.selectedDrink,_that.isSelectionConfirmed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DrinkListStatus status,  List<Product>? drinks,  Product? selectedDrink,  bool isSelectionConfirmed)  $default,) {final _that = this;
switch (_that) {
case _DrinkListState():
return $default(_that.status,_that.drinks,_that.selectedDrink,_that.isSelectionConfirmed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DrinkListStatus status,  List<Product>? drinks,  Product? selectedDrink,  bool isSelectionConfirmed)?  $default,) {final _that = this;
switch (_that) {
case _DrinkListState() when $default != null:
return $default(_that.status,_that.drinks,_that.selectedDrink,_that.isSelectionConfirmed);case _:
  return null;

}
}

}

/// @nodoc


class _DrinkListState implements DrinkListState {
  const _DrinkListState({this.status = DrinkListStatus.initial,  List<Product>? drinks, this.selectedDrink, this.isSelectionConfirmed = false}): _drinks = drinks;
  

@override@JsonKey() final  DrinkListStatus status;
 final  List<Product>? _drinks;
@override List<Product>? get drinks {
  final value = _drinks;
  if (value == null) return null;
  if (_drinks is EqualUnmodifiableListView) return _drinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Product? selectedDrink;
@override@JsonKey() final  bool isSelectionConfirmed;

/// Create a copy of DrinkListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DrinkListStateCopyWith<_DrinkListState> get copyWith => __$DrinkListStateCopyWithImpl<_DrinkListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DrinkListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._drinks, _drinks)&&(identical(other.selectedDrink, selectedDrink) || other.selectedDrink == selectedDrink)&&(identical(other.isSelectionConfirmed, isSelectionConfirmed) || other.isSelectionConfirmed == isSelectionConfirmed));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_drinks),selectedDrink,isSelectionConfirmed);

@override
String toString() {
  return 'DrinkListState(status: $status, drinks: $drinks, selectedDrink: $selectedDrink, isSelectionConfirmed: $isSelectionConfirmed)';
}


}

/// @nodoc
abstract mixin class _$DrinkListStateCopyWith<$Res> implements $DrinkListStateCopyWith<$Res> {
  factory _$DrinkListStateCopyWith(_DrinkListState value, $Res Function(_DrinkListState) _then) = __$DrinkListStateCopyWithImpl;
@override @useResult
$Res call({
 DrinkListStatus status, List<Product>? drinks, Product? selectedDrink, bool isSelectionConfirmed
});


@override $ProductCopyWith<$Res>? get selectedDrink;

}
/// @nodoc
class __$DrinkListStateCopyWithImpl<$Res>
    implements _$DrinkListStateCopyWith<$Res> {
  __$DrinkListStateCopyWithImpl(this._self, this._then);

  final _DrinkListState _self;
  final $Res Function(_DrinkListState) _then;

/// Create a copy of DrinkListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? drinks = freezed,Object? selectedDrink = freezed,Object? isSelectionConfirmed = null,}) {
  return _then(_DrinkListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DrinkListStatus,drinks: freezed == drinks ? _self._drinks : drinks // ignore: cast_nullable_to_non_nullable
as List<Product>?,selectedDrink: freezed == selectedDrink ? _self.selectedDrink : selectedDrink // ignore: cast_nullable_to_non_nullable
as Product?,isSelectionConfirmed: null == isSelectionConfirmed ? _self.isSelectionConfirmed : isSelectionConfirmed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of DrinkListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get selectedDrink {
    if (_self.selectedDrink == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.selectedDrink!, (value) {
    return _then(_self.copyWith(selectedDrink: value));
  });
}
}

/// @nodoc
mixin _$DrinkListSr {

 Product get drink;
/// Create a copy of DrinkListSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DrinkListSrCopyWith<DrinkListSr> get copyWith => _$DrinkListSrCopyWithImpl<DrinkListSr>(this as DrinkListSr, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrinkListSr&&(identical(other.drink, drink) || other.drink == drink));
}


@override
int get hashCode => Object.hash(runtimeType,drink);

@override
String toString() {
  return 'DrinkListSr(drink: $drink)';
}


}

/// @nodoc
abstract mixin class $DrinkListSrCopyWith<$Res>  {
  factory $DrinkListSrCopyWith(DrinkListSr value, $Res Function(DrinkListSr) _then) = _$DrinkListSrCopyWithImpl;
@useResult
$Res call({
 Product drink
});


$ProductCopyWith<$Res> get drink;

}
/// @nodoc
class _$DrinkListSrCopyWithImpl<$Res>
    implements $DrinkListSrCopyWith<$Res> {
  _$DrinkListSrCopyWithImpl(this._self, this._then);

  final DrinkListSr _self;
  final $Res Function(DrinkListSr) _then;

/// Create a copy of DrinkListSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? drink = null,}) {
  return _then(DrinkListSr.selectionConfirmed(
null == drink ? _self.drink : drink // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}
/// Create a copy of DrinkListSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get drink {
  
  return $ProductCopyWith<$Res>(_self.drink, (value) {
    return _then(_self.copyWith(drink: value));
  });
}
}


/// Adds pattern-matching-related methods to [DrinkListSr].
extension DrinkListSrPatterns on DrinkListSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DrinkListSelectionConfirmedSr value)?  selectionConfirmed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DrinkListSelectionConfirmedSr() when selectionConfirmed != null:
return selectionConfirmed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DrinkListSelectionConfirmedSr value)  selectionConfirmed,}){
final _that = this;
switch (_that) {
case DrinkListSelectionConfirmedSr():
return selectionConfirmed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DrinkListSelectionConfirmedSr value)?  selectionConfirmed,}){
final _that = this;
switch (_that) {
case DrinkListSelectionConfirmedSr() when selectionConfirmed != null:
return selectionConfirmed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Product drink)?  selectionConfirmed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DrinkListSelectionConfirmedSr() when selectionConfirmed != null:
return selectionConfirmed(_that.drink);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Product drink)  selectionConfirmed,}) {final _that = this;
switch (_that) {
case DrinkListSelectionConfirmedSr():
return selectionConfirmed(_that.drink);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Product drink)?  selectionConfirmed,}) {final _that = this;
switch (_that) {
case DrinkListSelectionConfirmedSr() when selectionConfirmed != null:
return selectionConfirmed(_that.drink);case _:
  return null;

}
}

}

/// @nodoc


class DrinkListSelectionConfirmedSr implements DrinkListSr {
  const DrinkListSelectionConfirmedSr(this.drink);
  

@override final  Product drink;

/// Create a copy of DrinkListSr
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DrinkListSelectionConfirmedSrCopyWith<DrinkListSelectionConfirmedSr> get copyWith => _$DrinkListSelectionConfirmedSrCopyWithImpl<DrinkListSelectionConfirmedSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrinkListSelectionConfirmedSr&&(identical(other.drink, drink) || other.drink == drink));
}


@override
int get hashCode => Object.hash(runtimeType,drink);

@override
String toString() {
  return 'DrinkListSr.selectionConfirmed(drink: $drink)';
}


}

/// @nodoc
abstract mixin class $DrinkListSelectionConfirmedSrCopyWith<$Res> implements $DrinkListSrCopyWith<$Res> {
  factory $DrinkListSelectionConfirmedSrCopyWith(DrinkListSelectionConfirmedSr value, $Res Function(DrinkListSelectionConfirmedSr) _then) = _$DrinkListSelectionConfirmedSrCopyWithImpl;
@override @useResult
$Res call({
 Product drink
});


@override $ProductCopyWith<$Res> get drink;

}
/// @nodoc
class _$DrinkListSelectionConfirmedSrCopyWithImpl<$Res>
    implements $DrinkListSelectionConfirmedSrCopyWith<$Res> {
  _$DrinkListSelectionConfirmedSrCopyWithImpl(this._self, this._then);

  final DrinkListSelectionConfirmedSr _self;
  final $Res Function(DrinkListSelectionConfirmedSr) _then;

/// Create a copy of DrinkListSr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? drink = null,}) {
  return _then(DrinkListSelectionConfirmedSr(
null == drink ? _self.drink : drink // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}

/// Create a copy of DrinkListSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get drink {
  
  return $ProductCopyWith<$Res>(_self.drink, (value) {
    return _then(_self.copyWith(drink: value));
  });
}
}

// dart format on
