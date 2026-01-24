// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_complaint_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateComplaintResponse {

@JsonKey(name: "data") ComplaintData? get data;
/// Create a copy of CreateComplaintResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateComplaintResponseCopyWith<CreateComplaintResponse> get copyWith => _$CreateComplaintResponseCopyWithImpl<CreateComplaintResponse>(this as CreateComplaintResponse, _$identity);

  /// Serializes this CreateComplaintResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateComplaintResponse&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'CreateComplaintResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class $CreateComplaintResponseCopyWith<$Res>  {
  factory $CreateComplaintResponseCopyWith(CreateComplaintResponse value, $Res Function(CreateComplaintResponse) _then) = _$CreateComplaintResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") ComplaintData? data
});


$ComplaintDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$CreateComplaintResponseCopyWithImpl<$Res>
    implements $CreateComplaintResponseCopyWith<$Res> {
  _$CreateComplaintResponseCopyWithImpl(this._self, this._then);

  final CreateComplaintResponse _self;
  final $Res Function(CreateComplaintResponse) _then;

/// Create a copy of CreateComplaintResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ComplaintData?,
  ));
}
/// Create a copy of CreateComplaintResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComplaintDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ComplaintDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateComplaintResponse].
extension CreateComplaintResponsePatterns on CreateComplaintResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateComplaintResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateComplaintResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateComplaintResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateComplaintResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateComplaintResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateComplaintResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  ComplaintData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateComplaintResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  ComplaintData? data)  $default,) {final _that = this;
switch (_that) {
case _CreateComplaintResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  ComplaintData? data)?  $default,) {final _that = this;
switch (_that) {
case _CreateComplaintResponse() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateComplaintResponse implements CreateComplaintResponse {
  const _CreateComplaintResponse({@JsonKey(name: "data") this.data});
  factory _CreateComplaintResponse.fromJson(Map<String, dynamic> json) => _$CreateComplaintResponseFromJson(json);

@override@JsonKey(name: "data") final  ComplaintData? data;

/// Create a copy of CreateComplaintResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateComplaintResponseCopyWith<_CreateComplaintResponse> get copyWith => __$CreateComplaintResponseCopyWithImpl<_CreateComplaintResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateComplaintResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateComplaintResponse&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'CreateComplaintResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class _$CreateComplaintResponseCopyWith<$Res> implements $CreateComplaintResponseCopyWith<$Res> {
  factory _$CreateComplaintResponseCopyWith(_CreateComplaintResponse value, $Res Function(_CreateComplaintResponse) _then) = __$CreateComplaintResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") ComplaintData? data
});


@override $ComplaintDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$CreateComplaintResponseCopyWithImpl<$Res>
    implements _$CreateComplaintResponseCopyWith<$Res> {
  __$CreateComplaintResponseCopyWithImpl(this._self, this._then);

  final _CreateComplaintResponse _self;
  final $Res Function(_CreateComplaintResponse) _then;

/// Create a copy of CreateComplaintResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_CreateComplaintResponse(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ComplaintData?,
  ));
}

/// Create a copy of CreateComplaintResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComplaintDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ComplaintDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ComplaintData {

@JsonKey(name: "complaint_no") int? get complaintNo;@JsonKey(name: "complaint_type") String? get complaintType;@JsonKey(name: "description") String? get description;@JsonKey(name: "member_name") String? get memberName;@JsonKey(name: "phone") dynamic get phone;@JsonKey(name: "address") String? get address;@JsonKey(name: "date") DateTime? get date;@JsonKey(name: "attachments") List<dynamic>? get attachments;@JsonKey(name: "assigned_by") String? get assignedBy;@JsonKey(name: "assigned_to") dynamic get assignedTo;
/// Create a copy of ComplaintData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintDataCopyWith<ComplaintData> get copyWith => _$ComplaintDataCopyWithImpl<ComplaintData>(this as ComplaintData, _$identity);

  /// Serializes this ComplaintData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintData&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.complaintType, complaintType) || other.complaintType == complaintType)&&(identical(other.description, description) || other.description == description)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&const DeepCollectionEquality().equals(other.phone, phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.assignedBy, assignedBy) || other.assignedBy == assignedBy)&&const DeepCollectionEquality().equals(other.assignedTo, assignedTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintNo,complaintType,description,memberName,const DeepCollectionEquality().hash(phone),address,date,const DeepCollectionEquality().hash(attachments),assignedBy,const DeepCollectionEquality().hash(assignedTo));

@override
String toString() {
  return 'ComplaintData(complaintNo: $complaintNo, complaintType: $complaintType, description: $description, memberName: $memberName, phone: $phone, address: $address, date: $date, attachments: $attachments, assignedBy: $assignedBy, assignedTo: $assignedTo)';
}


}

/// @nodoc
abstract mixin class $ComplaintDataCopyWith<$Res>  {
  factory $ComplaintDataCopyWith(ComplaintData value, $Res Function(ComplaintData) _then) = _$ComplaintDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "complaint_no") int? complaintNo,@JsonKey(name: "complaint_type") String? complaintType,@JsonKey(name: "description") String? description,@JsonKey(name: "member_name") String? memberName,@JsonKey(name: "phone") dynamic phone,@JsonKey(name: "address") String? address,@JsonKey(name: "date") DateTime? date,@JsonKey(name: "attachments") List<dynamic>? attachments,@JsonKey(name: "assigned_by") String? assignedBy,@JsonKey(name: "assigned_to") dynamic assignedTo
});




}
/// @nodoc
class _$ComplaintDataCopyWithImpl<$Res>
    implements $ComplaintDataCopyWith<$Res> {
  _$ComplaintDataCopyWithImpl(this._self, this._then);

  final ComplaintData _self;
  final $Res Function(ComplaintData) _then;

/// Create a copy of ComplaintData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? complaintNo = freezed,Object? complaintType = freezed,Object? description = freezed,Object? memberName = freezed,Object? phone = freezed,Object? address = freezed,Object? date = freezed,Object? attachments = freezed,Object? assignedBy = freezed,Object? assignedTo = freezed,}) {
  return _then(_self.copyWith(
complaintNo: freezed == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int?,complaintType: freezed == complaintType ? _self.complaintType : complaintType // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,memberName: freezed == memberName ? _self.memberName : memberName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as dynamic,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,assignedBy: freezed == assignedBy ? _self.assignedBy : assignedBy // ignore: cast_nullable_to_non_nullable
as String?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintData].
extension ComplaintDataPatterns on ComplaintData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintData value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintData value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "complaint_type")  String? complaintType, @JsonKey(name: "description")  String? description, @JsonKey(name: "member_name")  String? memberName, @JsonKey(name: "phone")  dynamic phone, @JsonKey(name: "address")  String? address, @JsonKey(name: "date")  DateTime? date, @JsonKey(name: "attachments")  List<dynamic>? attachments, @JsonKey(name: "assigned_by")  String? assignedBy, @JsonKey(name: "assigned_to")  dynamic assignedTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintData() when $default != null:
return $default(_that.complaintNo,_that.complaintType,_that.description,_that.memberName,_that.phone,_that.address,_that.date,_that.attachments,_that.assignedBy,_that.assignedTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "complaint_type")  String? complaintType, @JsonKey(name: "description")  String? description, @JsonKey(name: "member_name")  String? memberName, @JsonKey(name: "phone")  dynamic phone, @JsonKey(name: "address")  String? address, @JsonKey(name: "date")  DateTime? date, @JsonKey(name: "attachments")  List<dynamic>? attachments, @JsonKey(name: "assigned_by")  String? assignedBy, @JsonKey(name: "assigned_to")  dynamic assignedTo)  $default,) {final _that = this;
switch (_that) {
case _ComplaintData():
return $default(_that.complaintNo,_that.complaintType,_that.description,_that.memberName,_that.phone,_that.address,_that.date,_that.attachments,_that.assignedBy,_that.assignedTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "complaint_type")  String? complaintType, @JsonKey(name: "description")  String? description, @JsonKey(name: "member_name")  String? memberName, @JsonKey(name: "phone")  dynamic phone, @JsonKey(name: "address")  String? address, @JsonKey(name: "date")  DateTime? date, @JsonKey(name: "attachments")  List<dynamic>? attachments, @JsonKey(name: "assigned_by")  String? assignedBy, @JsonKey(name: "assigned_to")  dynamic assignedTo)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintData() when $default != null:
return $default(_that.complaintNo,_that.complaintType,_that.description,_that.memberName,_that.phone,_that.address,_that.date,_that.attachments,_that.assignedBy,_that.assignedTo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComplaintData implements ComplaintData {
  const _ComplaintData({@JsonKey(name: "complaint_no") this.complaintNo, @JsonKey(name: "complaint_type") this.complaintType, @JsonKey(name: "description") this.description, @JsonKey(name: "member_name") this.memberName, @JsonKey(name: "phone") this.phone, @JsonKey(name: "address") this.address, @JsonKey(name: "date") this.date, @JsonKey(name: "attachments") final  List<dynamic>? attachments, @JsonKey(name: "assigned_by") this.assignedBy, @JsonKey(name: "assigned_to") this.assignedTo}): _attachments = attachments;
  factory _ComplaintData.fromJson(Map<String, dynamic> json) => _$ComplaintDataFromJson(json);

@override@JsonKey(name: "complaint_no") final  int? complaintNo;
@override@JsonKey(name: "complaint_type") final  String? complaintType;
@override@JsonKey(name: "description") final  String? description;
@override@JsonKey(name: "member_name") final  String? memberName;
@override@JsonKey(name: "phone") final  dynamic phone;
@override@JsonKey(name: "address") final  String? address;
@override@JsonKey(name: "date") final  DateTime? date;
 final  List<dynamic>? _attachments;
@override@JsonKey(name: "attachments") List<dynamic>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "assigned_by") final  String? assignedBy;
@override@JsonKey(name: "assigned_to") final  dynamic assignedTo;

/// Create a copy of ComplaintData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintDataCopyWith<_ComplaintData> get copyWith => __$ComplaintDataCopyWithImpl<_ComplaintData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintData&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.complaintType, complaintType) || other.complaintType == complaintType)&&(identical(other.description, description) || other.description == description)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&const DeepCollectionEquality().equals(other.phone, phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.assignedBy, assignedBy) || other.assignedBy == assignedBy)&&const DeepCollectionEquality().equals(other.assignedTo, assignedTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintNo,complaintType,description,memberName,const DeepCollectionEquality().hash(phone),address,date,const DeepCollectionEquality().hash(_attachments),assignedBy,const DeepCollectionEquality().hash(assignedTo));

@override
String toString() {
  return 'ComplaintData(complaintNo: $complaintNo, complaintType: $complaintType, description: $description, memberName: $memberName, phone: $phone, address: $address, date: $date, attachments: $attachments, assignedBy: $assignedBy, assignedTo: $assignedTo)';
}


}

/// @nodoc
abstract mixin class _$ComplaintDataCopyWith<$Res> implements $ComplaintDataCopyWith<$Res> {
  factory _$ComplaintDataCopyWith(_ComplaintData value, $Res Function(_ComplaintData) _then) = __$ComplaintDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "complaint_no") int? complaintNo,@JsonKey(name: "complaint_type") String? complaintType,@JsonKey(name: "description") String? description,@JsonKey(name: "member_name") String? memberName,@JsonKey(name: "phone") dynamic phone,@JsonKey(name: "address") String? address,@JsonKey(name: "date") DateTime? date,@JsonKey(name: "attachments") List<dynamic>? attachments,@JsonKey(name: "assigned_by") String? assignedBy,@JsonKey(name: "assigned_to") dynamic assignedTo
});




}
/// @nodoc
class __$ComplaintDataCopyWithImpl<$Res>
    implements _$ComplaintDataCopyWith<$Res> {
  __$ComplaintDataCopyWithImpl(this._self, this._then);

  final _ComplaintData _self;
  final $Res Function(_ComplaintData) _then;

/// Create a copy of ComplaintData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? complaintNo = freezed,Object? complaintType = freezed,Object? description = freezed,Object? memberName = freezed,Object? phone = freezed,Object? address = freezed,Object? date = freezed,Object? attachments = freezed,Object? assignedBy = freezed,Object? assignedTo = freezed,}) {
  return _then(_ComplaintData(
complaintNo: freezed == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int?,complaintType: freezed == complaintType ? _self.complaintType : complaintType // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,memberName: freezed == memberName ? _self.memberName : memberName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as dynamic,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,assignedBy: freezed == assignedBy ? _self.assignedBy : assignedBy // ignore: cast_nullable_to_non_nullable
as String?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
