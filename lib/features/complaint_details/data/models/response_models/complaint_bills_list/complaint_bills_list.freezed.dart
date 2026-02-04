// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_bills_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ComplaintBillsList {

@JsonKey(name: 'data') List<ComplaintBills>? get data;
/// Create a copy of ComplaintBillsList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintBillsListCopyWith<ComplaintBillsList> get copyWith => _$ComplaintBillsListCopyWithImpl<ComplaintBillsList>(this as ComplaintBillsList, _$identity);

  /// Serializes this ComplaintBillsList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintBillsList&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ComplaintBillsList(data: $data)';
}


}

/// @nodoc
abstract mixin class $ComplaintBillsListCopyWith<$Res>  {
  factory $ComplaintBillsListCopyWith(ComplaintBillsList value, $Res Function(ComplaintBillsList) _then) = _$ComplaintBillsListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<ComplaintBills>? data
});




}
/// @nodoc
class _$ComplaintBillsListCopyWithImpl<$Res>
    implements $ComplaintBillsListCopyWith<$Res> {
  _$ComplaintBillsListCopyWithImpl(this._self, this._then);

  final ComplaintBillsList _self;
  final $Res Function(ComplaintBillsList) _then;

/// Create a copy of ComplaintBillsList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ComplaintBills>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintBillsList].
extension ComplaintBillsListPatterns on ComplaintBillsList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintBillsList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintBillsList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintBillsList value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintBillsList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintBillsList value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintBillsList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<ComplaintBills>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintBillsList() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<ComplaintBills>? data)  $default,) {final _that = this;
switch (_that) {
case _ComplaintBillsList():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<ComplaintBills>? data)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintBillsList() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComplaintBillsList implements ComplaintBillsList {
  const _ComplaintBillsList({@JsonKey(name: 'data') final  List<ComplaintBills>? data}): _data = data;
  factory _ComplaintBillsList.fromJson(Map<String, dynamic> json) => _$ComplaintBillsListFromJson(json);

 final  List<ComplaintBills>? _data;
@override@JsonKey(name: 'data') List<ComplaintBills>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ComplaintBillsList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintBillsListCopyWith<_ComplaintBillsList> get copyWith => __$ComplaintBillsListCopyWithImpl<_ComplaintBillsList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintBillsListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintBillsList&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ComplaintBillsList(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ComplaintBillsListCopyWith<$Res> implements $ComplaintBillsListCopyWith<$Res> {
  factory _$ComplaintBillsListCopyWith(_ComplaintBillsList value, $Res Function(_ComplaintBillsList) _then) = __$ComplaintBillsListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<ComplaintBills>? data
});




}
/// @nodoc
class __$ComplaintBillsListCopyWithImpl<$Res>
    implements _$ComplaintBillsListCopyWith<$Res> {
  __$ComplaintBillsListCopyWithImpl(this._self, this._then);

  final _ComplaintBillsList _self;
  final $Res Function(_ComplaintBillsList) _then;

/// Create a copy of ComplaintBillsList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_ComplaintBillsList(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ComplaintBills>?,
  ));
}


}


/// @nodoc
mixin _$ComplaintBills {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'billing_type_id') int? get billingTypeId;@JsonKey(name: 'billing_type') String? get billingType;@JsonKey(name: 'property_id') int? get propertyId;@JsonKey(name: 'property_address') String? get propertyAddress;@JsonKey(name: 'amount') double? get amount;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'receipts') List<String>? get receipts;
/// Create a copy of ComplaintBills
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintBillsCopyWith<ComplaintBills> get copyWith => _$ComplaintBillsCopyWithImpl<ComplaintBills>(this as ComplaintBills, _$identity);

  /// Serializes this ComplaintBills to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintBills&&(identical(other.id, id) || other.id == id)&&(identical(other.billingTypeId, billingTypeId) || other.billingTypeId == billingTypeId)&&(identical(other.billingType, billingType) || other.billingType == billingType)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.propertyAddress, propertyAddress) || other.propertyAddress == propertyAddress)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.receipts, receipts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,billingTypeId,billingType,propertyId,propertyAddress,amount,description,createdAt,const DeepCollectionEquality().hash(receipts));

@override
String toString() {
  return 'ComplaintBills(id: $id, billingTypeId: $billingTypeId, billingType: $billingType, propertyId: $propertyId, propertyAddress: $propertyAddress, amount: $amount, description: $description, createdAt: $createdAt, receipts: $receipts)';
}


}

/// @nodoc
abstract mixin class $ComplaintBillsCopyWith<$Res>  {
  factory $ComplaintBillsCopyWith(ComplaintBills value, $Res Function(ComplaintBills) _then) = _$ComplaintBillsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'billing_type_id') int? billingTypeId,@JsonKey(name: 'billing_type') String? billingType,@JsonKey(name: 'property_id') int? propertyId,@JsonKey(name: 'property_address') String? propertyAddress,@JsonKey(name: 'amount') double? amount,@JsonKey(name: 'description') String? description,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'receipts') List<String>? receipts
});




}
/// @nodoc
class _$ComplaintBillsCopyWithImpl<$Res>
    implements $ComplaintBillsCopyWith<$Res> {
  _$ComplaintBillsCopyWithImpl(this._self, this._then);

  final ComplaintBills _self;
  final $Res Function(ComplaintBills) _then;

/// Create a copy of ComplaintBills
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? billingTypeId = freezed,Object? billingType = freezed,Object? propertyId = freezed,Object? propertyAddress = freezed,Object? amount = freezed,Object? description = freezed,Object? createdAt = freezed,Object? receipts = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,billingTypeId: freezed == billingTypeId ? _self.billingTypeId : billingTypeId // ignore: cast_nullable_to_non_nullable
as int?,billingType: freezed == billingType ? _self.billingType : billingType // ignore: cast_nullable_to_non_nullable
as String?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as int?,propertyAddress: freezed == propertyAddress ? _self.propertyAddress : propertyAddress // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,receipts: freezed == receipts ? _self.receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintBills].
extension ComplaintBillsPatterns on ComplaintBills {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintBills value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintBills() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintBills value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintBills():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintBills value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintBills() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'billing_type_id')  int? billingTypeId, @JsonKey(name: 'billing_type')  String? billingType, @JsonKey(name: 'property_id')  int? propertyId, @JsonKey(name: 'property_address')  String? propertyAddress, @JsonKey(name: 'amount')  double? amount, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'receipts')  List<String>? receipts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintBills() when $default != null:
return $default(_that.id,_that.billingTypeId,_that.billingType,_that.propertyId,_that.propertyAddress,_that.amount,_that.description,_that.createdAt,_that.receipts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'billing_type_id')  int? billingTypeId, @JsonKey(name: 'billing_type')  String? billingType, @JsonKey(name: 'property_id')  int? propertyId, @JsonKey(name: 'property_address')  String? propertyAddress, @JsonKey(name: 'amount')  double? amount, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'receipts')  List<String>? receipts)  $default,) {final _that = this;
switch (_that) {
case _ComplaintBills():
return $default(_that.id,_that.billingTypeId,_that.billingType,_that.propertyId,_that.propertyAddress,_that.amount,_that.description,_that.createdAt,_that.receipts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'billing_type_id')  int? billingTypeId, @JsonKey(name: 'billing_type')  String? billingType, @JsonKey(name: 'property_id')  int? propertyId, @JsonKey(name: 'property_address')  String? propertyAddress, @JsonKey(name: 'amount')  double? amount, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'receipts')  List<String>? receipts)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintBills() when $default != null:
return $default(_that.id,_that.billingTypeId,_that.billingType,_that.propertyId,_that.propertyAddress,_that.amount,_that.description,_that.createdAt,_that.receipts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComplaintBills implements ComplaintBills {
  const _ComplaintBills({@JsonKey(name: 'id') this.id, @JsonKey(name: 'billing_type_id') this.billingTypeId, @JsonKey(name: 'billing_type') this.billingType, @JsonKey(name: 'property_id') this.propertyId, @JsonKey(name: 'property_address') this.propertyAddress, @JsonKey(name: 'amount') this.amount, @JsonKey(name: 'description') this.description, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'receipts') final  List<String>? receipts}): _receipts = receipts;
  factory _ComplaintBills.fromJson(Map<String, dynamic> json) => _$ComplaintBillsFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'billing_type_id') final  int? billingTypeId;
@override@JsonKey(name: 'billing_type') final  String? billingType;
@override@JsonKey(name: 'property_id') final  int? propertyId;
@override@JsonKey(name: 'property_address') final  String? propertyAddress;
@override@JsonKey(name: 'amount') final  double? amount;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
 final  List<String>? _receipts;
@override@JsonKey(name: 'receipts') List<String>? get receipts {
  final value = _receipts;
  if (value == null) return null;
  if (_receipts is EqualUnmodifiableListView) return _receipts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ComplaintBills
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintBillsCopyWith<_ComplaintBills> get copyWith => __$ComplaintBillsCopyWithImpl<_ComplaintBills>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintBillsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintBills&&(identical(other.id, id) || other.id == id)&&(identical(other.billingTypeId, billingTypeId) || other.billingTypeId == billingTypeId)&&(identical(other.billingType, billingType) || other.billingType == billingType)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.propertyAddress, propertyAddress) || other.propertyAddress == propertyAddress)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._receipts, _receipts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,billingTypeId,billingType,propertyId,propertyAddress,amount,description,createdAt,const DeepCollectionEquality().hash(_receipts));

@override
String toString() {
  return 'ComplaintBills(id: $id, billingTypeId: $billingTypeId, billingType: $billingType, propertyId: $propertyId, propertyAddress: $propertyAddress, amount: $amount, description: $description, createdAt: $createdAt, receipts: $receipts)';
}


}

/// @nodoc
abstract mixin class _$ComplaintBillsCopyWith<$Res> implements $ComplaintBillsCopyWith<$Res> {
  factory _$ComplaintBillsCopyWith(_ComplaintBills value, $Res Function(_ComplaintBills) _then) = __$ComplaintBillsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'billing_type_id') int? billingTypeId,@JsonKey(name: 'billing_type') String? billingType,@JsonKey(name: 'property_id') int? propertyId,@JsonKey(name: 'property_address') String? propertyAddress,@JsonKey(name: 'amount') double? amount,@JsonKey(name: 'description') String? description,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'receipts') List<String>? receipts
});




}
/// @nodoc
class __$ComplaintBillsCopyWithImpl<$Res>
    implements _$ComplaintBillsCopyWith<$Res> {
  __$ComplaintBillsCopyWithImpl(this._self, this._then);

  final _ComplaintBills _self;
  final $Res Function(_ComplaintBills) _then;

/// Create a copy of ComplaintBills
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? billingTypeId = freezed,Object? billingType = freezed,Object? propertyId = freezed,Object? propertyAddress = freezed,Object? amount = freezed,Object? description = freezed,Object? createdAt = freezed,Object? receipts = freezed,}) {
  return _then(_ComplaintBills(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,billingTypeId: freezed == billingTypeId ? _self.billingTypeId : billingTypeId // ignore: cast_nullable_to_non_nullable
as int?,billingType: freezed == billingType ? _self.billingType : billingType // ignore: cast_nullable_to_non_nullable
as String?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as int?,propertyAddress: freezed == propertyAddress ? _self.propertyAddress : propertyAddress // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,receipts: freezed == receipts ? _self._receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
