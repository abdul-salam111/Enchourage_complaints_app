// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_complaint_bill_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateComplaintBillResponse {

 CreatedComplaintBill? get data;
/// Create a copy of CreateComplaintBillResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateComplaintBillResponseCopyWith<CreateComplaintBillResponse> get copyWith => _$CreateComplaintBillResponseCopyWithImpl<CreateComplaintBillResponse>(this as CreateComplaintBillResponse, _$identity);

  /// Serializes this CreateComplaintBillResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateComplaintBillResponse&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'CreateComplaintBillResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class $CreateComplaintBillResponseCopyWith<$Res>  {
  factory $CreateComplaintBillResponseCopyWith(CreateComplaintBillResponse value, $Res Function(CreateComplaintBillResponse) _then) = _$CreateComplaintBillResponseCopyWithImpl;
@useResult
$Res call({
 CreatedComplaintBill? data
});


$CreatedComplaintBillCopyWith<$Res>? get data;

}
/// @nodoc
class _$CreateComplaintBillResponseCopyWithImpl<$Res>
    implements $CreateComplaintBillResponseCopyWith<$Res> {
  _$CreateComplaintBillResponseCopyWithImpl(this._self, this._then);

  final CreateComplaintBillResponse _self;
  final $Res Function(CreateComplaintBillResponse) _then;

/// Create a copy of CreateComplaintBillResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreatedComplaintBill?,
  ));
}
/// Create a copy of CreateComplaintBillResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedComplaintBillCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CreatedComplaintBillCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateComplaintBillResponse].
extension CreateComplaintBillResponsePatterns on CreateComplaintBillResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateComplaintBillResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateComplaintBillResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateComplaintBillResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateComplaintBillResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateComplaintBillResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateComplaintBillResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreatedComplaintBill? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateComplaintBillResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreatedComplaintBill? data)  $default,) {final _that = this;
switch (_that) {
case _CreateComplaintBillResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreatedComplaintBill? data)?  $default,) {final _that = this;
switch (_that) {
case _CreateComplaintBillResponse() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateComplaintBillResponse implements CreateComplaintBillResponse {
  const _CreateComplaintBillResponse({this.data});
  factory _CreateComplaintBillResponse.fromJson(Map<String, dynamic> json) => _$CreateComplaintBillResponseFromJson(json);

@override final  CreatedComplaintBill? data;

/// Create a copy of CreateComplaintBillResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateComplaintBillResponseCopyWith<_CreateComplaintBillResponse> get copyWith => __$CreateComplaintBillResponseCopyWithImpl<_CreateComplaintBillResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateComplaintBillResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateComplaintBillResponse&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'CreateComplaintBillResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class _$CreateComplaintBillResponseCopyWith<$Res> implements $CreateComplaintBillResponseCopyWith<$Res> {
  factory _$CreateComplaintBillResponseCopyWith(_CreateComplaintBillResponse value, $Res Function(_CreateComplaintBillResponse) _then) = __$CreateComplaintBillResponseCopyWithImpl;
@override @useResult
$Res call({
 CreatedComplaintBill? data
});


@override $CreatedComplaintBillCopyWith<$Res>? get data;

}
/// @nodoc
class __$CreateComplaintBillResponseCopyWithImpl<$Res>
    implements _$CreateComplaintBillResponseCopyWith<$Res> {
  __$CreateComplaintBillResponseCopyWithImpl(this._self, this._then);

  final _CreateComplaintBillResponse _self;
  final $Res Function(_CreateComplaintBillResponse) _then;

/// Create a copy of CreateComplaintBillResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_CreateComplaintBillResponse(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreatedComplaintBill?,
  ));
}

/// Create a copy of CreateComplaintBillResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedComplaintBillCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CreatedComplaintBillCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CreatedComplaintBill {

 int? get id; int? get complaintId; String? get propertyId; String? get billingType; String? get amount; String? get description; List<String>? get receipts; DateTime? get createdAt;
/// Create a copy of CreatedComplaintBill
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedComplaintBillCopyWith<CreatedComplaintBill> get copyWith => _$CreatedComplaintBillCopyWithImpl<CreatedComplaintBill>(this as CreatedComplaintBill, _$identity);

  /// Serializes this CreatedComplaintBill to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedComplaintBill&&(identical(other.id, id) || other.id == id)&&(identical(other.complaintId, complaintId) || other.complaintId == complaintId)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.billingType, billingType) || other.billingType == billingType)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.receipts, receipts)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,complaintId,propertyId,billingType,amount,description,const DeepCollectionEquality().hash(receipts),createdAt);

@override
String toString() {
  return 'CreatedComplaintBill(id: $id, complaintId: $complaintId, propertyId: $propertyId, billingType: $billingType, amount: $amount, description: $description, receipts: $receipts, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CreatedComplaintBillCopyWith<$Res>  {
  factory $CreatedComplaintBillCopyWith(CreatedComplaintBill value, $Res Function(CreatedComplaintBill) _then) = _$CreatedComplaintBillCopyWithImpl;
@useResult
$Res call({
 int? id, int? complaintId, String? propertyId, String? billingType, String? amount, String? description, List<String>? receipts, DateTime? createdAt
});




}
/// @nodoc
class _$CreatedComplaintBillCopyWithImpl<$Res>
    implements $CreatedComplaintBillCopyWith<$Res> {
  _$CreatedComplaintBillCopyWithImpl(this._self, this._then);

  final CreatedComplaintBill _self;
  final $Res Function(CreatedComplaintBill) _then;

/// Create a copy of CreatedComplaintBill
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? complaintId = freezed,Object? propertyId = freezed,Object? billingType = freezed,Object? amount = freezed,Object? description = freezed,Object? receipts = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,complaintId: freezed == complaintId ? _self.complaintId : complaintId // ignore: cast_nullable_to_non_nullable
as int?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,billingType: freezed == billingType ? _self.billingType : billingType // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,receipts: freezed == receipts ? _self.receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<String>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedComplaintBill].
extension CreatedComplaintBillPatterns on CreatedComplaintBill {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedComplaintBill value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedComplaintBill() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedComplaintBill value)  $default,){
final _that = this;
switch (_that) {
case _CreatedComplaintBill():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedComplaintBill value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedComplaintBill() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? complaintId,  String? propertyId,  String? billingType,  String? amount,  String? description,  List<String>? receipts,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatedComplaintBill() when $default != null:
return $default(_that.id,_that.complaintId,_that.propertyId,_that.billingType,_that.amount,_that.description,_that.receipts,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? complaintId,  String? propertyId,  String? billingType,  String? amount,  String? description,  List<String>? receipts,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _CreatedComplaintBill():
return $default(_that.id,_that.complaintId,_that.propertyId,_that.billingType,_that.amount,_that.description,_that.receipts,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? complaintId,  String? propertyId,  String? billingType,  String? amount,  String? description,  List<String>? receipts,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CreatedComplaintBill() when $default != null:
return $default(_that.id,_that.complaintId,_that.propertyId,_that.billingType,_that.amount,_that.description,_that.receipts,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedComplaintBill implements CreatedComplaintBill {
  const _CreatedComplaintBill({this.id, this.complaintId, this.propertyId, this.billingType, this.amount, this.description, final  List<String>? receipts, this.createdAt}): _receipts = receipts;
  factory _CreatedComplaintBill.fromJson(Map<String, dynamic> json) => _$CreatedComplaintBillFromJson(json);

@override final  int? id;
@override final  int? complaintId;
@override final  String? propertyId;
@override final  String? billingType;
@override final  String? amount;
@override final  String? description;
 final  List<String>? _receipts;
@override List<String>? get receipts {
  final value = _receipts;
  if (value == null) return null;
  if (_receipts is EqualUnmodifiableListView) return _receipts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? createdAt;

/// Create a copy of CreatedComplaintBill
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedComplaintBillCopyWith<_CreatedComplaintBill> get copyWith => __$CreatedComplaintBillCopyWithImpl<_CreatedComplaintBill>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedComplaintBillToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedComplaintBill&&(identical(other.id, id) || other.id == id)&&(identical(other.complaintId, complaintId) || other.complaintId == complaintId)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.billingType, billingType) || other.billingType == billingType)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._receipts, _receipts)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,complaintId,propertyId,billingType,amount,description,const DeepCollectionEquality().hash(_receipts),createdAt);

@override
String toString() {
  return 'CreatedComplaintBill(id: $id, complaintId: $complaintId, propertyId: $propertyId, billingType: $billingType, amount: $amount, description: $description, receipts: $receipts, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CreatedComplaintBillCopyWith<$Res> implements $CreatedComplaintBillCopyWith<$Res> {
  factory _$CreatedComplaintBillCopyWith(_CreatedComplaintBill value, $Res Function(_CreatedComplaintBill) _then) = __$CreatedComplaintBillCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? complaintId, String? propertyId, String? billingType, String? amount, String? description, List<String>? receipts, DateTime? createdAt
});




}
/// @nodoc
class __$CreatedComplaintBillCopyWithImpl<$Res>
    implements _$CreatedComplaintBillCopyWith<$Res> {
  __$CreatedComplaintBillCopyWithImpl(this._self, this._then);

  final _CreatedComplaintBill _self;
  final $Res Function(_CreatedComplaintBill) _then;

/// Create a copy of CreatedComplaintBill
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? complaintId = freezed,Object? propertyId = freezed,Object? billingType = freezed,Object? amount = freezed,Object? description = freezed,Object? receipts = freezed,Object? createdAt = freezed,}) {
  return _then(_CreatedComplaintBill(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,complaintId: freezed == complaintId ? _self.complaintId : complaintId // ignore: cast_nullable_to_non_nullable
as int?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,billingType: freezed == billingType ? _self.billingType : billingType // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,receipts: freezed == receipts ? _self._receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<String>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
