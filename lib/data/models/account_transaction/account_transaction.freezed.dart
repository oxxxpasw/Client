// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountTransactionsResponse {

 List<AccountTransaction> get transactions;
/// Create a copy of AccountTransactionsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountTransactionsResponseCopyWith<AccountTransactionsResponse> get copyWith => _$AccountTransactionsResponseCopyWithImpl<AccountTransactionsResponse>(this as AccountTransactionsResponse, _$identity);

  /// Serializes this AccountTransactionsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountTransactionsResponse&&const DeepCollectionEquality().equals(other.transactions, transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(transactions));

@override
String toString() {
  return 'AccountTransactionsResponse(transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $AccountTransactionsResponseCopyWith<$Res>  {
  factory $AccountTransactionsResponseCopyWith(AccountTransactionsResponse value, $Res Function(AccountTransactionsResponse) _then) = _$AccountTransactionsResponseCopyWithImpl;
@useResult
$Res call({
 List<AccountTransaction> transactions
});




}
/// @nodoc
class _$AccountTransactionsResponseCopyWithImpl<$Res>
    implements $AccountTransactionsResponseCopyWith<$Res> {
  _$AccountTransactionsResponseCopyWithImpl(this._self, this._then);

  final AccountTransactionsResponse _self;
  final $Res Function(AccountTransactionsResponse) _then;

/// Create a copy of AccountTransactionsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactions = null,}) {
  return _then(AccountTransactionsResponse(
transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<AccountTransaction>,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountTransactionsResponse].
extension AccountTransactionsResponsePatterns on AccountTransactionsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountTransactionsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountTransactionsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountTransactionsResponse value)  $default,){
final _that = this;
switch (_that) {
case _AccountTransactionsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountTransactionsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AccountTransactionsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AccountTransaction> transactions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountTransactionsResponse() when $default != null:
return $default(_that.transactions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AccountTransaction> transactions)  $default,) {final _that = this;
switch (_that) {
case _AccountTransactionsResponse():
return $default(_that.transactions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AccountTransaction> transactions)?  $default,) {final _that = this;
switch (_that) {
case _AccountTransactionsResponse() when $default != null:
return $default(_that.transactions);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _AccountTransactionsResponse implements AccountTransactionsResponse {
  const _AccountTransactionsResponse({required  List<AccountTransaction> transactions}): _transactions = transactions;
  factory _AccountTransactionsResponse.fromJson(Map<String, dynamic> json) => _$AccountTransactionsResponseFromJson(json);

 final  List<AccountTransaction> _transactions;
@override List<AccountTransaction> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of AccountTransactionsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountTransactionsResponseCopyWith<_AccountTransactionsResponse> get copyWith => __$AccountTransactionsResponseCopyWithImpl<_AccountTransactionsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountTransactionsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountTransactionsResponse&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'AccountTransactionsResponse(transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$AccountTransactionsResponseCopyWith<$Res> implements $AccountTransactionsResponseCopyWith<$Res> {
  factory _$AccountTransactionsResponseCopyWith(_AccountTransactionsResponse value, $Res Function(_AccountTransactionsResponse) _then) = __$AccountTransactionsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<AccountTransaction> transactions
});




}
/// @nodoc
class __$AccountTransactionsResponseCopyWithImpl<$Res>
    implements _$AccountTransactionsResponseCopyWith<$Res> {
  __$AccountTransactionsResponseCopyWithImpl(this._self, this._then);

  final _AccountTransactionsResponse _self;
  final $Res Function(_AccountTransactionsResponse) _then;

/// Create a copy of AccountTransactionsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactions = null,}) {
  return _then(_AccountTransactionsResponse(
transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<AccountTransaction>,
  ));
}


}


/// @nodoc
mixin _$AccountTransaction {

 String get user; String? get purchase; DateTime get date; double get value;@JsonKey(unknownEnumValue: TransactionType.another, defaultValue: TransactionType.another) TransactionType get transactionType; double get userBonusesSnapshot; double get bonusPercent; DateTime? get dateActiveBonus; String? get accountBonus; String? get bonus;@JsonKey(name: 'ID') String get id;
/// Create a copy of AccountTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountTransactionCopyWith<AccountTransaction> get copyWith => _$AccountTransactionCopyWithImpl<AccountTransaction>(this as AccountTransaction, _$identity);

  /// Serializes this AccountTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountTransaction&&(identical(other.user, user) || other.user == user)&&(identical(other.purchase, purchase) || other.purchase == purchase)&&(identical(other.date, date) || other.date == date)&&(identical(other.value, value) || other.value == value)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.userBonusesSnapshot, userBonusesSnapshot) || other.userBonusesSnapshot == userBonusesSnapshot)&&(identical(other.bonusPercent, bonusPercent) || other.bonusPercent == bonusPercent)&&(identical(other.dateActiveBonus, dateActiveBonus) || other.dateActiveBonus == dateActiveBonus)&&(identical(other.accountBonus, accountBonus) || other.accountBonus == accountBonus)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,purchase,date,value,transactionType,userBonusesSnapshot,bonusPercent,dateActiveBonus,accountBonus,bonus,id);

@override
String toString() {
  return 'AccountTransaction(user: $user, purchase: $purchase, date: $date, value: $value, transactionType: $transactionType, userBonusesSnapshot: $userBonusesSnapshot, bonusPercent: $bonusPercent, dateActiveBonus: $dateActiveBonus, accountBonus: $accountBonus, bonus: $bonus, id: $id)';
}


}

/// @nodoc
abstract mixin class $AccountTransactionCopyWith<$Res>  {
  factory $AccountTransactionCopyWith(AccountTransaction value, $Res Function(AccountTransaction) _then) = _$AccountTransactionCopyWithImpl;
@useResult
$Res call({
 String user, String? purchase, DateTime date, double value,@JsonKey(unknownEnumValue: TransactionType.another, defaultValue: TransactionType.another) TransactionType transactionType, double userBonusesSnapshot, double bonusPercent, DateTime? dateActiveBonus, String? accountBonus, String? bonus,@JsonKey(name: 'ID') String id
});




}
/// @nodoc
class _$AccountTransactionCopyWithImpl<$Res>
    implements $AccountTransactionCopyWith<$Res> {
  _$AccountTransactionCopyWithImpl(this._self, this._then);

  final AccountTransaction _self;
  final $Res Function(AccountTransaction) _then;

/// Create a copy of AccountTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? purchase = freezed,Object? date = null,Object? value = null,Object? transactionType = null,Object? userBonusesSnapshot = null,Object? bonusPercent = null,Object? dateActiveBonus = freezed,Object? accountBonus = freezed,Object? bonus = freezed,Object? id = null,}) {
  return _then(AccountTransaction(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as TransactionType,userBonusesSnapshot: null == userBonusesSnapshot ? _self.userBonusesSnapshot : userBonusesSnapshot // ignore: cast_nullable_to_non_nullable
as double,bonusPercent: null == bonusPercent ? _self.bonusPercent : bonusPercent // ignore: cast_nullable_to_non_nullable
as double,dateActiveBonus: freezed == dateActiveBonus ? _self.dateActiveBonus : dateActiveBonus // ignore: cast_nullable_to_non_nullable
as DateTime?,accountBonus: freezed == accountBonus ? _self.accountBonus : accountBonus // ignore: cast_nullable_to_non_nullable
as String?,bonus: freezed == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountTransaction].
extension AccountTransactionPatterns on AccountTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountTransaction value)  $default,){
final _that = this;
switch (_that) {
case _AccountTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _AccountTransaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String user,  String? purchase,  DateTime date,  double value, @JsonKey(unknownEnumValue: TransactionType.another, defaultValue: TransactionType.another)  TransactionType transactionType,  double userBonusesSnapshot,  double bonusPercent,  DateTime? dateActiveBonus,  String? accountBonus,  String? bonus, @JsonKey(name: 'ID')  String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountTransaction() when $default != null:
return $default(_that.user,_that.purchase,_that.date,_that.value,_that.transactionType,_that.userBonusesSnapshot,_that.bonusPercent,_that.dateActiveBonus,_that.accountBonus,_that.bonus,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String user,  String? purchase,  DateTime date,  double value, @JsonKey(unknownEnumValue: TransactionType.another, defaultValue: TransactionType.another)  TransactionType transactionType,  double userBonusesSnapshot,  double bonusPercent,  DateTime? dateActiveBonus,  String? accountBonus,  String? bonus, @JsonKey(name: 'ID')  String id)  $default,) {final _that = this;
switch (_that) {
case _AccountTransaction():
return $default(_that.user,_that.purchase,_that.date,_that.value,_that.transactionType,_that.userBonusesSnapshot,_that.bonusPercent,_that.dateActiveBonus,_that.accountBonus,_that.bonus,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String user,  String? purchase,  DateTime date,  double value, @JsonKey(unknownEnumValue: TransactionType.another, defaultValue: TransactionType.another)  TransactionType transactionType,  double userBonusesSnapshot,  double bonusPercent,  DateTime? dateActiveBonus,  String? accountBonus,  String? bonus, @JsonKey(name: 'ID')  String id)?  $default,) {final _that = this;
switch (_that) {
case _AccountTransaction() when $default != null:
return $default(_that.user,_that.purchase,_that.date,_that.value,_that.transactionType,_that.userBonusesSnapshot,_that.bonusPercent,_that.dateActiveBonus,_that.accountBonus,_that.bonus,_that.id);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _AccountTransaction implements AccountTransaction {
  const _AccountTransaction({required this.user, this.purchase, required this.date, required this.value, @JsonKey(unknownEnumValue: TransactionType.another, defaultValue: TransactionType.another) required this.transactionType, required this.userBonusesSnapshot, required this.bonusPercent, this.dateActiveBonus, this.accountBonus, this.bonus, @JsonKey(name: 'ID') required this.id});
  factory _AccountTransaction.fromJson(Map<String, dynamic> json) => _$AccountTransactionFromJson(json);

@override final  String user;
@override final  String? purchase;
@override final  DateTime date;
@override final  double value;
@override@JsonKey(unknownEnumValue: TransactionType.another, defaultValue: TransactionType.another) final  TransactionType transactionType;
@override final  double userBonusesSnapshot;
@override final  double bonusPercent;
@override final  DateTime? dateActiveBonus;
@override final  String? accountBonus;
@override final  String? bonus;
@override@JsonKey(name: 'ID') final  String id;

/// Create a copy of AccountTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountTransactionCopyWith<_AccountTransaction> get copyWith => __$AccountTransactionCopyWithImpl<_AccountTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountTransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountTransaction&&(identical(other.user, user) || other.user == user)&&(identical(other.purchase, purchase) || other.purchase == purchase)&&(identical(other.date, date) || other.date == date)&&(identical(other.value, value) || other.value == value)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.userBonusesSnapshot, userBonusesSnapshot) || other.userBonusesSnapshot == userBonusesSnapshot)&&(identical(other.bonusPercent, bonusPercent) || other.bonusPercent == bonusPercent)&&(identical(other.dateActiveBonus, dateActiveBonus) || other.dateActiveBonus == dateActiveBonus)&&(identical(other.accountBonus, accountBonus) || other.accountBonus == accountBonus)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,purchase,date,value,transactionType,userBonusesSnapshot,bonusPercent,dateActiveBonus,accountBonus,bonus,id);

@override
String toString() {
  return 'AccountTransaction(user: $user, purchase: $purchase, date: $date, value: $value, transactionType: $transactionType, userBonusesSnapshot: $userBonusesSnapshot, bonusPercent: $bonusPercent, dateActiveBonus: $dateActiveBonus, accountBonus: $accountBonus, bonus: $bonus, id: $id)';
}


}

/// @nodoc
abstract mixin class _$AccountTransactionCopyWith<$Res> implements $AccountTransactionCopyWith<$Res> {
  factory _$AccountTransactionCopyWith(_AccountTransaction value, $Res Function(_AccountTransaction) _then) = __$AccountTransactionCopyWithImpl;
@override @useResult
$Res call({
 String user, String? purchase, DateTime date, double value,@JsonKey(unknownEnumValue: TransactionType.another, defaultValue: TransactionType.another) TransactionType transactionType, double userBonusesSnapshot, double bonusPercent, DateTime? dateActiveBonus, String? accountBonus, String? bonus,@JsonKey(name: 'ID') String id
});




}
/// @nodoc
class __$AccountTransactionCopyWithImpl<$Res>
    implements _$AccountTransactionCopyWith<$Res> {
  __$AccountTransactionCopyWithImpl(this._self, this._then);

  final _AccountTransaction _self;
  final $Res Function(_AccountTransaction) _then;

/// Create a copy of AccountTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? purchase = freezed,Object? date = null,Object? value = null,Object? transactionType = null,Object? userBonusesSnapshot = null,Object? bonusPercent = null,Object? dateActiveBonus = freezed,Object? accountBonus = freezed,Object? bonus = freezed,Object? id = null,}) {
  return _then(_AccountTransaction(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,purchase: freezed == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as TransactionType,userBonusesSnapshot: null == userBonusesSnapshot ? _self.userBonusesSnapshot : userBonusesSnapshot // ignore: cast_nullable_to_non_nullable
as double,bonusPercent: null == bonusPercent ? _self.bonusPercent : bonusPercent // ignore: cast_nullable_to_non_nullable
as double,dateActiveBonus: freezed == dateActiveBonus ? _self.dateActiveBonus : dateActiveBonus // ignore: cast_nullable_to_non_nullable
as DateTime?,accountBonus: freezed == accountBonus ? _self.accountBonus : accountBonus // ignore: cast_nullable_to_non_nullable
as String?,bonus: freezed == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
