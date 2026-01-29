// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_complaint_bill_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddComplaintBillRequest {

@JsonKey(name: 'complaint_no') int get complaintNo;@JsonKey(name: 'billing_type_id') int get billingTypeId; double get amount; String? get description;@JsonKey(name: 'property_id') int get propertyId;@JsonKey(includeFromJson: false, includeToJson: false) List<File>? get receipts;
/// Create a copy of AddComplaintBillRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddComplaintBillRequestCopyWith<AddComplaintBillRequest> get copyWith => _$AddComplaintBillRequestCopyWithImpl<AddComplaintBillRequest>(this as AddComplaintBillRequest, _$identity);

  /// Serializes this AddComplaintBillRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddComplaintBillRequest&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.billingTypeId, billingTypeId) || other.billingTypeId == billingTypeId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&const DeepCollectionEquality().equals(other.receipts, receipts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintNo,billingTypeId,amount,description,propertyId,const DeepCollectionEquality().hash(receipts));

@override
String toString() {
  return 'AddComplaintBillRequest(complaintNo: $complaintNo, billingTypeId: $billingTypeId, amount: $amount, description: $description, propertyId: $propertyId, receipts: $receipts)';
}


}

/// @nodoc
abstract mixin class $AddComplaintBillRequestCopyWith<$Res>  {
  factory $AddComplaintBillRequestCopyWith(AddComplaintBillRequest value, $Res Function(AddComplaintBillRequest) _then) = _$AddComplaintBillRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'complaint_no') int complaintNo,@JsonKey(name: 'billing_type_id') int billingTypeId, double amount, String? description,@JsonKey(name: 'property_id') int propertyId,@JsonKey(includeFromJson: false, includeToJson: false) List<File>? receipts
});




}
/// @nodoc
class _$AddComplaintBillRequestCopyWithImpl<$Res>
    implements $AddComplaintBillRequestCopyWith<$Res> {
  _$AddComplaintBillRequestCopyWithImpl(this._self, this._then);

  final AddComplaintBillRequest _self;
  final $Res Function(AddComplaintBillRequest) _then;

/// Create a copy of AddComplaintBillRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? complaintNo = null,Object? billingTypeId = null,Object? amount = null,Object? description = freezed,Object? propertyId = null,Object? receipts = freezed,}) {
  return _then(_self.copyWith(
complaintNo: null == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int,billingTypeId: null == billingTypeId ? _self.billingTypeId : billingTypeId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,propertyId: null == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as int,receipts: freezed == receipts ? _self.receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<File>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddComplaintBillRequest].
extension AddComplaintBillRequestPatterns on AddComplaintBillRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddComplaintBillRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddComplaintBillRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddComplaintBillRequest value)  $default,){
final _that = this;
switch (_that) {
case _AddComplaintBillRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddComplaintBillRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AddComplaintBillRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'complaint_no')  int complaintNo, @JsonKey(name: 'billing_type_id')  int billingTypeId,  double amount,  String? description, @JsonKey(name: 'property_id')  int propertyId, @JsonKey(includeFromJson: false, includeToJson: false)  List<File>? receipts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddComplaintBillRequest() when $default != null:
return $default(_that.complaintNo,_that.billingTypeId,_that.amount,_that.description,_that.propertyId,_that.receipts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'complaint_no')  int complaintNo, @JsonKey(name: 'billing_type_id')  int billingTypeId,  double amount,  String? description, @JsonKey(name: 'property_id')  int propertyId, @JsonKey(includeFromJson: false, includeToJson: false)  List<File>? receipts)  $default,) {final _that = this;
switch (_that) {
case _AddComplaintBillRequest():
return $default(_that.complaintNo,_that.billingTypeId,_that.amount,_that.description,_that.propertyId,_that.receipts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'complaint_no')  int complaintNo, @JsonKey(name: 'billing_type_id')  int billingTypeId,  double amount,  String? description, @JsonKey(name: 'property_id')  int propertyId, @JsonKey(includeFromJson: false, includeToJson: false)  List<File>? receipts)?  $default,) {final _that = this;
switch (_that) {
case _AddComplaintBillRequest() when $default != null:
return $default(_that.complaintNo,_that.billingTypeId,_that.amount,_that.description,_that.propertyId,_that.receipts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddComplaintBillRequest implements AddComplaintBillRequest {
  const _AddComplaintBillRequest({@JsonKey(name: 'complaint_no') required this.complaintNo, @JsonKey(name: 'billing_type_id') required this.billingTypeId, required this.amount, this.description, @JsonKey(name: 'property_id') required this.propertyId, @JsonKey(includeFromJson: false, includeToJson: false) final  List<File>? receipts}): _receipts = receipts;
  factory _AddComplaintBillRequest.fromJson(Map<String, dynamic> json) => _$AddComplaintBillRequestFromJson(json);

@override@JsonKey(name: 'complaint_no') final  int complaintNo;
@override@JsonKey(name: 'billing_type_id') final  int billingTypeId;
@override final  double amount;
@override final  String? description;
@override@JsonKey(name: 'property_id') final  int propertyId;
 final  List<File>? _receipts;
@override@JsonKey(includeFromJson: false, includeToJson: false) List<File>? get receipts {
  final value = _receipts;
  if (value == null) return null;
  if (_receipts is EqualUnmodifiableListView) return _receipts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AddComplaintBillRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddComplaintBillRequestCopyWith<_AddComplaintBillRequest> get copyWith => __$AddComplaintBillRequestCopyWithImpl<_AddComplaintBillRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddComplaintBillRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddComplaintBillRequest&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.billingTypeId, billingTypeId) || other.billingTypeId == billingTypeId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&const DeepCollectionEquality().equals(other._receipts, _receipts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintNo,billingTypeId,amount,description,propertyId,const DeepCollectionEquality().hash(_receipts));

@override
String toString() {
  return 'AddComplaintBillRequest(complaintNo: $complaintNo, billingTypeId: $billingTypeId, amount: $amount, description: $description, propertyId: $propertyId, receipts: $receipts)';
}


}

/// @nodoc
abstract mixin class _$AddComplaintBillRequestCopyWith<$Res> implements $AddComplaintBillRequestCopyWith<$Res> {
  factory _$AddComplaintBillRequestCopyWith(_AddComplaintBillRequest value, $Res Function(_AddComplaintBillRequest) _then) = __$AddComplaintBillRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'complaint_no') int complaintNo,@JsonKey(name: 'billing_type_id') int billingTypeId, double amount, String? description,@JsonKey(name: 'property_id') int propertyId,@JsonKey(includeFromJson: false, includeToJson: false) List<File>? receipts
});




}
/// @nodoc
class __$AddComplaintBillRequestCopyWithImpl<$Res>
    implements _$AddComplaintBillRequestCopyWith<$Res> {
  __$AddComplaintBillRequestCopyWithImpl(this._self, this._then);

  final _AddComplaintBillRequest _self;
  final $Res Function(_AddComplaintBillRequest) _then;

/// Create a copy of AddComplaintBillRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? complaintNo = null,Object? billingTypeId = null,Object? amount = null,Object? description = freezed,Object? propertyId = null,Object? receipts = freezed,}) {
  return _then(_AddComplaintBillRequest(
complaintNo: null == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int,billingTypeId: null == billingTypeId ? _self.billingTypeId : billingTypeId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,propertyId: null == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as int,receipts: freezed == receipts ? _self._receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<File>?,
  ));
}


}

// dart format on
