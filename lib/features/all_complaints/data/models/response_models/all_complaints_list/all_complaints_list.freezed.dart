// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_complaints_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllComplaintsList {

@JsonKey(name: "success") bool? get success;@JsonKey(name: "data") List<Complaints>? get data;@JsonKey(name: "message") String? get message;
/// Create a copy of AllComplaintsList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllComplaintsListCopyWith<AllComplaintsList> get copyWith => _$AllComplaintsListCopyWithImpl<AllComplaintsList>(this as AllComplaintsList, _$identity);

  /// Serializes this AllComplaintsList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllComplaintsList&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),message);

@override
String toString() {
  return 'AllComplaintsList(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $AllComplaintsListCopyWith<$Res>  {
  factory $AllComplaintsListCopyWith(AllComplaintsList value, $Res Function(AllComplaintsList) _then) = _$AllComplaintsListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") bool? success,@JsonKey(name: "data") List<Complaints>? data,@JsonKey(name: "message") String? message
});




}
/// @nodoc
class _$AllComplaintsListCopyWithImpl<$Res>
    implements $AllComplaintsListCopyWith<$Res> {
  _$AllComplaintsListCopyWithImpl(this._self, this._then);

  final AllComplaintsList _self;
  final $Res Function(AllComplaintsList) _then;

/// Create a copy of AllComplaintsList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? data = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Complaints>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AllComplaintsList].
extension AllComplaintsListPatterns on AllComplaintsList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AllComplaintsList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AllComplaintsList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AllComplaintsList value)  $default,){
final _that = this;
switch (_that) {
case _AllComplaintsList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AllComplaintsList value)?  $default,){
final _that = this;
switch (_that) {
case _AllComplaintsList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool? success, @JsonKey(name: "data")  List<Complaints>? data, @JsonKey(name: "message")  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AllComplaintsList() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool? success, @JsonKey(name: "data")  List<Complaints>? data, @JsonKey(name: "message")  String? message)  $default,) {final _that = this;
switch (_that) {
case _AllComplaintsList():
return $default(_that.success,_that.data,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  bool? success, @JsonKey(name: "data")  List<Complaints>? data, @JsonKey(name: "message")  String? message)?  $default,) {final _that = this;
switch (_that) {
case _AllComplaintsList() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AllComplaintsList implements AllComplaintsList {
  const _AllComplaintsList({@JsonKey(name: "success") this.success, @JsonKey(name: "data") final  List<Complaints>? data, @JsonKey(name: "message") this.message}): _data = data;
  factory _AllComplaintsList.fromJson(Map<String, dynamic> json) => _$AllComplaintsListFromJson(json);

@override@JsonKey(name: "success") final  bool? success;
 final  List<Complaints>? _data;
@override@JsonKey(name: "data") List<Complaints>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "message") final  String? message;

/// Create a copy of AllComplaintsList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AllComplaintsListCopyWith<_AllComplaintsList> get copyWith => __$AllComplaintsListCopyWithImpl<_AllComplaintsList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AllComplaintsListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllComplaintsList&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data),message);

@override
String toString() {
  return 'AllComplaintsList(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$AllComplaintsListCopyWith<$Res> implements $AllComplaintsListCopyWith<$Res> {
  factory _$AllComplaintsListCopyWith(_AllComplaintsList value, $Res Function(_AllComplaintsList) _then) = __$AllComplaintsListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") bool? success,@JsonKey(name: "data") List<Complaints>? data,@JsonKey(name: "message") String? message
});




}
/// @nodoc
class __$AllComplaintsListCopyWithImpl<$Res>
    implements _$AllComplaintsListCopyWith<$Res> {
  __$AllComplaintsListCopyWithImpl(this._self, this._then);

  final _AllComplaintsList _self;
  final $Res Function(_AllComplaintsList) _then;

/// Create a copy of AllComplaintsList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? data = freezed,Object? message = freezed,}) {
  return _then(_AllComplaintsList(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Complaints>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Complaints {

@JsonKey(name: "id") int? get id;@JsonKey(name: "member_id") int? get memberId;@JsonKey(name: "assign_to_user_id") int? get assignToUserId;@JsonKey(name: "assign_by_user_id") int? get assignByUserId;@JsonKey(name: "complaint_type_id") int? get complaintTypeId;@JsonKey(name: "property_id") int? get propertyId;@JsonKey(name: "created_by") int? get createdBy;@JsonKey(name: "description") String? get description;@JsonKey(name: "attachment") String? get attachment;@JsonKey(name: "first_datetime") DateTime? get firstDatetime;@JsonKey(name: "sec_datetime") DateTime? get secDatetime;@JsonKey(name: "status") String? get status;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;@JsonKey(name: "deleted_at") dynamic get deletedAt;@JsonKey(name: "find_complaint_type") FindComplaintType? get findComplaintType;@JsonKey(name: "find_property") FindProperty? get findProperty;
/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintsCopyWith<Complaints> get copyWith => _$ComplaintsCopyWithImpl<Complaints>(this as Complaints, _$identity);

  /// Serializes this Complaints to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Complaints&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.assignToUserId, assignToUserId) || other.assignToUserId == assignToUserId)&&(identical(other.assignByUserId, assignByUserId) || other.assignByUserId == assignByUserId)&&(identical(other.complaintTypeId, complaintTypeId) || other.complaintTypeId == complaintTypeId)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.description, description) || other.description == description)&&(identical(other.attachment, attachment) || other.attachment == attachment)&&(identical(other.firstDatetime, firstDatetime) || other.firstDatetime == firstDatetime)&&(identical(other.secDatetime, secDatetime) || other.secDatetime == secDatetime)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&(identical(other.findComplaintType, findComplaintType) || other.findComplaintType == findComplaintType)&&(identical(other.findProperty, findProperty) || other.findProperty == findProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,memberId,assignToUserId,assignByUserId,complaintTypeId,propertyId,createdBy,description,attachment,firstDatetime,secDatetime,status,createdAt,updatedAt,const DeepCollectionEquality().hash(deletedAt),findComplaintType,findProperty);

@override
String toString() {
  return 'Complaints(id: $id, memberId: $memberId, assignToUserId: $assignToUserId, assignByUserId: $assignByUserId, complaintTypeId: $complaintTypeId, propertyId: $propertyId, createdBy: $createdBy, description: $description, attachment: $attachment, firstDatetime: $firstDatetime, secDatetime: $secDatetime, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, findComplaintType: $findComplaintType, findProperty: $findProperty)';
}


}

/// @nodoc
abstract mixin class $ComplaintsCopyWith<$Res>  {
  factory $ComplaintsCopyWith(Complaints value, $Res Function(Complaints) _then) = _$ComplaintsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "member_id") int? memberId,@JsonKey(name: "assign_to_user_id") int? assignToUserId,@JsonKey(name: "assign_by_user_id") int? assignByUserId,@JsonKey(name: "complaint_type_id") int? complaintTypeId,@JsonKey(name: "property_id") int? propertyId,@JsonKey(name: "created_by") int? createdBy,@JsonKey(name: "description") String? description,@JsonKey(name: "attachment") String? attachment,@JsonKey(name: "first_datetime") DateTime? firstDatetime,@JsonKey(name: "sec_datetime") DateTime? secDatetime,@JsonKey(name: "status") String? status,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "deleted_at") dynamic deletedAt,@JsonKey(name: "find_complaint_type") FindComplaintType? findComplaintType,@JsonKey(name: "find_property") FindProperty? findProperty
});


$FindComplaintTypeCopyWith<$Res>? get findComplaintType;$FindPropertyCopyWith<$Res>? get findProperty;

}
/// @nodoc
class _$ComplaintsCopyWithImpl<$Res>
    implements $ComplaintsCopyWith<$Res> {
  _$ComplaintsCopyWithImpl(this._self, this._then);

  final Complaints _self;
  final $Res Function(Complaints) _then;

/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? memberId = freezed,Object? assignToUserId = freezed,Object? assignByUserId = freezed,Object? complaintTypeId = freezed,Object? propertyId = freezed,Object? createdBy = freezed,Object? description = freezed,Object? attachment = freezed,Object? firstDatetime = freezed,Object? secDatetime = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,Object? findComplaintType = freezed,Object? findProperty = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int?,assignToUserId: freezed == assignToUserId ? _self.assignToUserId : assignToUserId // ignore: cast_nullable_to_non_nullable
as int?,assignByUserId: freezed == assignByUserId ? _self.assignByUserId : assignByUserId // ignore: cast_nullable_to_non_nullable
as int?,complaintTypeId: freezed == complaintTypeId ? _self.complaintTypeId : complaintTypeId // ignore: cast_nullable_to_non_nullable
as int?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as int?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,attachment: freezed == attachment ? _self.attachment : attachment // ignore: cast_nullable_to_non_nullable
as String?,firstDatetime: freezed == firstDatetime ? _self.firstDatetime : firstDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,secDatetime: freezed == secDatetime ? _self.secDatetime : secDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,findComplaintType: freezed == findComplaintType ? _self.findComplaintType : findComplaintType // ignore: cast_nullable_to_non_nullable
as FindComplaintType?,findProperty: freezed == findProperty ? _self.findProperty : findProperty // ignore: cast_nullable_to_non_nullable
as FindProperty?,
  ));
}
/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FindComplaintTypeCopyWith<$Res>? get findComplaintType {
    if (_self.findComplaintType == null) {
    return null;
  }

  return $FindComplaintTypeCopyWith<$Res>(_self.findComplaintType!, (value) {
    return _then(_self.copyWith(findComplaintType: value));
  });
}/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FindPropertyCopyWith<$Res>? get findProperty {
    if (_self.findProperty == null) {
    return null;
  }

  return $FindPropertyCopyWith<$Res>(_self.findProperty!, (value) {
    return _then(_self.copyWith(findProperty: value));
  });
}
}


/// Adds pattern-matching-related methods to [Complaints].
extension ComplaintsPatterns on Complaints {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Complaints value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Complaints() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Complaints value)  $default,){
final _that = this;
switch (_that) {
case _Complaints():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Complaints value)?  $default,){
final _that = this;
switch (_that) {
case _Complaints() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "member_id")  int? memberId, @JsonKey(name: "assign_to_user_id")  int? assignToUserId, @JsonKey(name: "assign_by_user_id")  int? assignByUserId, @JsonKey(name: "complaint_type_id")  int? complaintTypeId, @JsonKey(name: "property_id")  int? propertyId, @JsonKey(name: "created_by")  int? createdBy, @JsonKey(name: "description")  String? description, @JsonKey(name: "attachment")  String? attachment, @JsonKey(name: "first_datetime")  DateTime? firstDatetime, @JsonKey(name: "sec_datetime")  DateTime? secDatetime, @JsonKey(name: "status")  String? status, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  DateTime? updatedAt, @JsonKey(name: "deleted_at")  dynamic deletedAt, @JsonKey(name: "find_complaint_type")  FindComplaintType? findComplaintType, @JsonKey(name: "find_property")  FindProperty? findProperty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Complaints() when $default != null:
return $default(_that.id,_that.memberId,_that.assignToUserId,_that.assignByUserId,_that.complaintTypeId,_that.propertyId,_that.createdBy,_that.description,_that.attachment,_that.firstDatetime,_that.secDatetime,_that.status,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.findComplaintType,_that.findProperty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "member_id")  int? memberId, @JsonKey(name: "assign_to_user_id")  int? assignToUserId, @JsonKey(name: "assign_by_user_id")  int? assignByUserId, @JsonKey(name: "complaint_type_id")  int? complaintTypeId, @JsonKey(name: "property_id")  int? propertyId, @JsonKey(name: "created_by")  int? createdBy, @JsonKey(name: "description")  String? description, @JsonKey(name: "attachment")  String? attachment, @JsonKey(name: "first_datetime")  DateTime? firstDatetime, @JsonKey(name: "sec_datetime")  DateTime? secDatetime, @JsonKey(name: "status")  String? status, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  DateTime? updatedAt, @JsonKey(name: "deleted_at")  dynamic deletedAt, @JsonKey(name: "find_complaint_type")  FindComplaintType? findComplaintType, @JsonKey(name: "find_property")  FindProperty? findProperty)  $default,) {final _that = this;
switch (_that) {
case _Complaints():
return $default(_that.id,_that.memberId,_that.assignToUserId,_that.assignByUserId,_that.complaintTypeId,_that.propertyId,_that.createdBy,_that.description,_that.attachment,_that.firstDatetime,_that.secDatetime,_that.status,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.findComplaintType,_that.findProperty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "member_id")  int? memberId, @JsonKey(name: "assign_to_user_id")  int? assignToUserId, @JsonKey(name: "assign_by_user_id")  int? assignByUserId, @JsonKey(name: "complaint_type_id")  int? complaintTypeId, @JsonKey(name: "property_id")  int? propertyId, @JsonKey(name: "created_by")  int? createdBy, @JsonKey(name: "description")  String? description, @JsonKey(name: "attachment")  String? attachment, @JsonKey(name: "first_datetime")  DateTime? firstDatetime, @JsonKey(name: "sec_datetime")  DateTime? secDatetime, @JsonKey(name: "status")  String? status, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  DateTime? updatedAt, @JsonKey(name: "deleted_at")  dynamic deletedAt, @JsonKey(name: "find_complaint_type")  FindComplaintType? findComplaintType, @JsonKey(name: "find_property")  FindProperty? findProperty)?  $default,) {final _that = this;
switch (_that) {
case _Complaints() when $default != null:
return $default(_that.id,_that.memberId,_that.assignToUserId,_that.assignByUserId,_that.complaintTypeId,_that.propertyId,_that.createdBy,_that.description,_that.attachment,_that.firstDatetime,_that.secDatetime,_that.status,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.findComplaintType,_that.findProperty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Complaints implements Complaints {
  const _Complaints({@JsonKey(name: "id") this.id, @JsonKey(name: "member_id") this.memberId, @JsonKey(name: "assign_to_user_id") this.assignToUserId, @JsonKey(name: "assign_by_user_id") this.assignByUserId, @JsonKey(name: "complaint_type_id") this.complaintTypeId, @JsonKey(name: "property_id") this.propertyId, @JsonKey(name: "created_by") this.createdBy, @JsonKey(name: "description") this.description, @JsonKey(name: "attachment") this.attachment, @JsonKey(name: "first_datetime") this.firstDatetime, @JsonKey(name: "sec_datetime") this.secDatetime, @JsonKey(name: "status") this.status, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt, @JsonKey(name: "deleted_at") this.deletedAt, @JsonKey(name: "find_complaint_type") this.findComplaintType, @JsonKey(name: "find_property") this.findProperty});
  factory _Complaints.fromJson(Map<String, dynamic> json) => _$ComplaintsFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "member_id") final  int? memberId;
@override@JsonKey(name: "assign_to_user_id") final  int? assignToUserId;
@override@JsonKey(name: "assign_by_user_id") final  int? assignByUserId;
@override@JsonKey(name: "complaint_type_id") final  int? complaintTypeId;
@override@JsonKey(name: "property_id") final  int? propertyId;
@override@JsonKey(name: "created_by") final  int? createdBy;
@override@JsonKey(name: "description") final  String? description;
@override@JsonKey(name: "attachment") final  String? attachment;
@override@JsonKey(name: "first_datetime") final  DateTime? firstDatetime;
@override@JsonKey(name: "sec_datetime") final  DateTime? secDatetime;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;
@override@JsonKey(name: "deleted_at") final  dynamic deletedAt;
@override@JsonKey(name: "find_complaint_type") final  FindComplaintType? findComplaintType;
@override@JsonKey(name: "find_property") final  FindProperty? findProperty;

/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintsCopyWith<_Complaints> get copyWith => __$ComplaintsCopyWithImpl<_Complaints>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Complaints&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.assignToUserId, assignToUserId) || other.assignToUserId == assignToUserId)&&(identical(other.assignByUserId, assignByUserId) || other.assignByUserId == assignByUserId)&&(identical(other.complaintTypeId, complaintTypeId) || other.complaintTypeId == complaintTypeId)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.description, description) || other.description == description)&&(identical(other.attachment, attachment) || other.attachment == attachment)&&(identical(other.firstDatetime, firstDatetime) || other.firstDatetime == firstDatetime)&&(identical(other.secDatetime, secDatetime) || other.secDatetime == secDatetime)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&(identical(other.findComplaintType, findComplaintType) || other.findComplaintType == findComplaintType)&&(identical(other.findProperty, findProperty) || other.findProperty == findProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,memberId,assignToUserId,assignByUserId,complaintTypeId,propertyId,createdBy,description,attachment,firstDatetime,secDatetime,status,createdAt,updatedAt,const DeepCollectionEquality().hash(deletedAt),findComplaintType,findProperty);

@override
String toString() {
  return 'Complaints(id: $id, memberId: $memberId, assignToUserId: $assignToUserId, assignByUserId: $assignByUserId, complaintTypeId: $complaintTypeId, propertyId: $propertyId, createdBy: $createdBy, description: $description, attachment: $attachment, firstDatetime: $firstDatetime, secDatetime: $secDatetime, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, findComplaintType: $findComplaintType, findProperty: $findProperty)';
}


}

/// @nodoc
abstract mixin class _$ComplaintsCopyWith<$Res> implements $ComplaintsCopyWith<$Res> {
  factory _$ComplaintsCopyWith(_Complaints value, $Res Function(_Complaints) _then) = __$ComplaintsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "member_id") int? memberId,@JsonKey(name: "assign_to_user_id") int? assignToUserId,@JsonKey(name: "assign_by_user_id") int? assignByUserId,@JsonKey(name: "complaint_type_id") int? complaintTypeId,@JsonKey(name: "property_id") int? propertyId,@JsonKey(name: "created_by") int? createdBy,@JsonKey(name: "description") String? description,@JsonKey(name: "attachment") String? attachment,@JsonKey(name: "first_datetime") DateTime? firstDatetime,@JsonKey(name: "sec_datetime") DateTime? secDatetime,@JsonKey(name: "status") String? status,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "deleted_at") dynamic deletedAt,@JsonKey(name: "find_complaint_type") FindComplaintType? findComplaintType,@JsonKey(name: "find_property") FindProperty? findProperty
});


@override $FindComplaintTypeCopyWith<$Res>? get findComplaintType;@override $FindPropertyCopyWith<$Res>? get findProperty;

}
/// @nodoc
class __$ComplaintsCopyWithImpl<$Res>
    implements _$ComplaintsCopyWith<$Res> {
  __$ComplaintsCopyWithImpl(this._self, this._then);

  final _Complaints _self;
  final $Res Function(_Complaints) _then;

/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? memberId = freezed,Object? assignToUserId = freezed,Object? assignByUserId = freezed,Object? complaintTypeId = freezed,Object? propertyId = freezed,Object? createdBy = freezed,Object? description = freezed,Object? attachment = freezed,Object? firstDatetime = freezed,Object? secDatetime = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,Object? findComplaintType = freezed,Object? findProperty = freezed,}) {
  return _then(_Complaints(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int?,assignToUserId: freezed == assignToUserId ? _self.assignToUserId : assignToUserId // ignore: cast_nullable_to_non_nullable
as int?,assignByUserId: freezed == assignByUserId ? _self.assignByUserId : assignByUserId // ignore: cast_nullable_to_non_nullable
as int?,complaintTypeId: freezed == complaintTypeId ? _self.complaintTypeId : complaintTypeId // ignore: cast_nullable_to_non_nullable
as int?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as int?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,attachment: freezed == attachment ? _self.attachment : attachment // ignore: cast_nullable_to_non_nullable
as String?,firstDatetime: freezed == firstDatetime ? _self.firstDatetime : firstDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,secDatetime: freezed == secDatetime ? _self.secDatetime : secDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,findComplaintType: freezed == findComplaintType ? _self.findComplaintType : findComplaintType // ignore: cast_nullable_to_non_nullable
as FindComplaintType?,findProperty: freezed == findProperty ? _self.findProperty : findProperty // ignore: cast_nullable_to_non_nullable
as FindProperty?,
  ));
}

/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FindComplaintTypeCopyWith<$Res>? get findComplaintType {
    if (_self.findComplaintType == null) {
    return null;
  }

  return $FindComplaintTypeCopyWith<$Res>(_self.findComplaintType!, (value) {
    return _then(_self.copyWith(findComplaintType: value));
  });
}/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FindPropertyCopyWith<$Res>? get findProperty {
    if (_self.findProperty == null) {
    return null;
  }

  return $FindPropertyCopyWith<$Res>(_self.findProperty!, (value) {
    return _then(_self.copyWith(findProperty: value));
  });
}
}


/// @nodoc
mixin _$FindComplaintType {

@JsonKey(name: "id") int? get id;@JsonKey(name: "title") String? get title;@JsonKey(name: "dep_type_id") int? get depTypeId;@JsonKey(name: "status") int? get status;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;@JsonKey(name: "deleted_at") dynamic get deletedAt;
/// Create a copy of FindComplaintType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindComplaintTypeCopyWith<FindComplaintType> get copyWith => _$FindComplaintTypeCopyWithImpl<FindComplaintType>(this as FindComplaintType, _$identity);

  /// Serializes this FindComplaintType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FindComplaintType&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.depTypeId, depTypeId) || other.depTypeId == depTypeId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,depTypeId,status,createdAt,updatedAt,const DeepCollectionEquality().hash(deletedAt));

@override
String toString() {
  return 'FindComplaintType(id: $id, title: $title, depTypeId: $depTypeId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $FindComplaintTypeCopyWith<$Res>  {
  factory $FindComplaintTypeCopyWith(FindComplaintType value, $Res Function(FindComplaintType) _then) = _$FindComplaintTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "dep_type_id") int? depTypeId,@JsonKey(name: "status") int? status,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "deleted_at") dynamic deletedAt
});




}
/// @nodoc
class _$FindComplaintTypeCopyWithImpl<$Res>
    implements $FindComplaintTypeCopyWith<$Res> {
  _$FindComplaintTypeCopyWithImpl(this._self, this._then);

  final FindComplaintType _self;
  final $Res Function(FindComplaintType) _then;

/// Create a copy of FindComplaintType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? depTypeId = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,depTypeId: freezed == depTypeId ? _self.depTypeId : depTypeId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [FindComplaintType].
extension FindComplaintTypePatterns on FindComplaintType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FindComplaintType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FindComplaintType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FindComplaintType value)  $default,){
final _that = this;
switch (_that) {
case _FindComplaintType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FindComplaintType value)?  $default,){
final _that = this;
switch (_that) {
case _FindComplaintType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "dep_type_id")  int? depTypeId, @JsonKey(name: "status")  int? status, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  DateTime? updatedAt, @JsonKey(name: "deleted_at")  dynamic deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FindComplaintType() when $default != null:
return $default(_that.id,_that.title,_that.depTypeId,_that.status,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "dep_type_id")  int? depTypeId, @JsonKey(name: "status")  int? status, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  DateTime? updatedAt, @JsonKey(name: "deleted_at")  dynamic deletedAt)  $default,) {final _that = this;
switch (_that) {
case _FindComplaintType():
return $default(_that.id,_that.title,_that.depTypeId,_that.status,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "dep_type_id")  int? depTypeId, @JsonKey(name: "status")  int? status, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  DateTime? updatedAt, @JsonKey(name: "deleted_at")  dynamic deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _FindComplaintType() when $default != null:
return $default(_that.id,_that.title,_that.depTypeId,_that.status,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FindComplaintType implements FindComplaintType {
  const _FindComplaintType({@JsonKey(name: "id") this.id, @JsonKey(name: "title") this.title, @JsonKey(name: "dep_type_id") this.depTypeId, @JsonKey(name: "status") this.status, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt, @JsonKey(name: "deleted_at") this.deletedAt});
  factory _FindComplaintType.fromJson(Map<String, dynamic> json) => _$FindComplaintTypeFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "dep_type_id") final  int? depTypeId;
@override@JsonKey(name: "status") final  int? status;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;
@override@JsonKey(name: "deleted_at") final  dynamic deletedAt;

/// Create a copy of FindComplaintType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FindComplaintTypeCopyWith<_FindComplaintType> get copyWith => __$FindComplaintTypeCopyWithImpl<_FindComplaintType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FindComplaintTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FindComplaintType&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.depTypeId, depTypeId) || other.depTypeId == depTypeId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,depTypeId,status,createdAt,updatedAt,const DeepCollectionEquality().hash(deletedAt));

@override
String toString() {
  return 'FindComplaintType(id: $id, title: $title, depTypeId: $depTypeId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$FindComplaintTypeCopyWith<$Res> implements $FindComplaintTypeCopyWith<$Res> {
  factory _$FindComplaintTypeCopyWith(_FindComplaintType value, $Res Function(_FindComplaintType) _then) = __$FindComplaintTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "dep_type_id") int? depTypeId,@JsonKey(name: "status") int? status,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "deleted_at") dynamic deletedAt
});




}
/// @nodoc
class __$FindComplaintTypeCopyWithImpl<$Res>
    implements _$FindComplaintTypeCopyWith<$Res> {
  __$FindComplaintTypeCopyWithImpl(this._self, this._then);

  final _FindComplaintType _self;
  final $Res Function(_FindComplaintType) _then;

/// Create a copy of FindComplaintType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? depTypeId = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_FindComplaintType(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,depTypeId: freezed == depTypeId ? _self.depTypeId : depTypeId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$FindProperty {

@JsonKey(name: "id") int? get id;@JsonKey(name: "membership_id") String? get membershipId;@JsonKey(name: "member_id") int? get memberId;@JsonKey(name: "inst_code") String? get instCode;@JsonKey(name: "proj_code") String? get projCode;@JsonKey(name: "society_id") int? get societyId;@JsonKey(name: "property_type_id") int? get propertyTypeId;@JsonKey(name: "plot_category_id") int? get plotCategoryId;@JsonKey(name: "flat_type_id") dynamic get flatTypeId;@JsonKey(name: "story_type") String? get storyType;@JsonKey(name: "plot_no") String? get plotNo;@JsonKey(name: "flat_no") dynamic get flatNo;@JsonKey(name: "shop_no") dynamic get shopNo;@JsonKey(name: "no_of_rooms") dynamic get noOfRooms;@JsonKey(name: "sq_feet") dynamic get sqFeet;@JsonKey(name: "sq_yards") int? get sqYards;@JsonKey(name: "street") String? get street;@JsonKey(name: "block") String? get block;@JsonKey(name: "amount") int? get amount;@JsonKey(name: "status") int? get status;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;@JsonKey(name: "deleted_at") dynamic get deletedAt;
/// Create a copy of FindProperty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindPropertyCopyWith<FindProperty> get copyWith => _$FindPropertyCopyWithImpl<FindProperty>(this as FindProperty, _$identity);

  /// Serializes this FindProperty to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FindProperty&&(identical(other.id, id) || other.id == id)&&(identical(other.membershipId, membershipId) || other.membershipId == membershipId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.instCode, instCode) || other.instCode == instCode)&&(identical(other.projCode, projCode) || other.projCode == projCode)&&(identical(other.societyId, societyId) || other.societyId == societyId)&&(identical(other.propertyTypeId, propertyTypeId) || other.propertyTypeId == propertyTypeId)&&(identical(other.plotCategoryId, plotCategoryId) || other.plotCategoryId == plotCategoryId)&&const DeepCollectionEquality().equals(other.flatTypeId, flatTypeId)&&(identical(other.storyType, storyType) || other.storyType == storyType)&&(identical(other.plotNo, plotNo) || other.plotNo == plotNo)&&const DeepCollectionEquality().equals(other.flatNo, flatNo)&&const DeepCollectionEquality().equals(other.shopNo, shopNo)&&const DeepCollectionEquality().equals(other.noOfRooms, noOfRooms)&&const DeepCollectionEquality().equals(other.sqFeet, sqFeet)&&(identical(other.sqYards, sqYards) || other.sqYards == sqYards)&&(identical(other.street, street) || other.street == street)&&(identical(other.block, block) || other.block == block)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,membershipId,memberId,instCode,projCode,societyId,propertyTypeId,plotCategoryId,const DeepCollectionEquality().hash(flatTypeId),storyType,plotNo,const DeepCollectionEquality().hash(flatNo),const DeepCollectionEquality().hash(shopNo),const DeepCollectionEquality().hash(noOfRooms),const DeepCollectionEquality().hash(sqFeet),sqYards,street,block,amount,status,createdAt,updatedAt,const DeepCollectionEquality().hash(deletedAt)]);

@override
String toString() {
  return 'FindProperty(id: $id, membershipId: $membershipId, memberId: $memberId, instCode: $instCode, projCode: $projCode, societyId: $societyId, propertyTypeId: $propertyTypeId, plotCategoryId: $plotCategoryId, flatTypeId: $flatTypeId, storyType: $storyType, plotNo: $plotNo, flatNo: $flatNo, shopNo: $shopNo, noOfRooms: $noOfRooms, sqFeet: $sqFeet, sqYards: $sqYards, street: $street, block: $block, amount: $amount, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $FindPropertyCopyWith<$Res>  {
  factory $FindPropertyCopyWith(FindProperty value, $Res Function(FindProperty) _then) = _$FindPropertyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "membership_id") String? membershipId,@JsonKey(name: "member_id") int? memberId,@JsonKey(name: "inst_code") String? instCode,@JsonKey(name: "proj_code") String? projCode,@JsonKey(name: "society_id") int? societyId,@JsonKey(name: "property_type_id") int? propertyTypeId,@JsonKey(name: "plot_category_id") int? plotCategoryId,@JsonKey(name: "flat_type_id") dynamic flatTypeId,@JsonKey(name: "story_type") String? storyType,@JsonKey(name: "plot_no") String? plotNo,@JsonKey(name: "flat_no") dynamic flatNo,@JsonKey(name: "shop_no") dynamic shopNo,@JsonKey(name: "no_of_rooms") dynamic noOfRooms,@JsonKey(name: "sq_feet") dynamic sqFeet,@JsonKey(name: "sq_yards") int? sqYards,@JsonKey(name: "street") String? street,@JsonKey(name: "block") String? block,@JsonKey(name: "amount") int? amount,@JsonKey(name: "status") int? status,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "deleted_at") dynamic deletedAt
});




}
/// @nodoc
class _$FindPropertyCopyWithImpl<$Res>
    implements $FindPropertyCopyWith<$Res> {
  _$FindPropertyCopyWithImpl(this._self, this._then);

  final FindProperty _self;
  final $Res Function(FindProperty) _then;

/// Create a copy of FindProperty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? membershipId = freezed,Object? memberId = freezed,Object? instCode = freezed,Object? projCode = freezed,Object? societyId = freezed,Object? propertyTypeId = freezed,Object? plotCategoryId = freezed,Object? flatTypeId = freezed,Object? storyType = freezed,Object? plotNo = freezed,Object? flatNo = freezed,Object? shopNo = freezed,Object? noOfRooms = freezed,Object? sqFeet = freezed,Object? sqYards = freezed,Object? street = freezed,Object? block = freezed,Object? amount = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,membershipId: freezed == membershipId ? _self.membershipId : membershipId // ignore: cast_nullable_to_non_nullable
as String?,memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int?,instCode: freezed == instCode ? _self.instCode : instCode // ignore: cast_nullable_to_non_nullable
as String?,projCode: freezed == projCode ? _self.projCode : projCode // ignore: cast_nullable_to_non_nullable
as String?,societyId: freezed == societyId ? _self.societyId : societyId // ignore: cast_nullable_to_non_nullable
as int?,propertyTypeId: freezed == propertyTypeId ? _self.propertyTypeId : propertyTypeId // ignore: cast_nullable_to_non_nullable
as int?,plotCategoryId: freezed == plotCategoryId ? _self.plotCategoryId : plotCategoryId // ignore: cast_nullable_to_non_nullable
as int?,flatTypeId: freezed == flatTypeId ? _self.flatTypeId : flatTypeId // ignore: cast_nullable_to_non_nullable
as dynamic,storyType: freezed == storyType ? _self.storyType : storyType // ignore: cast_nullable_to_non_nullable
as String?,plotNo: freezed == plotNo ? _self.plotNo : plotNo // ignore: cast_nullable_to_non_nullable
as String?,flatNo: freezed == flatNo ? _self.flatNo : flatNo // ignore: cast_nullable_to_non_nullable
as dynamic,shopNo: freezed == shopNo ? _self.shopNo : shopNo // ignore: cast_nullable_to_non_nullable
as dynamic,noOfRooms: freezed == noOfRooms ? _self.noOfRooms : noOfRooms // ignore: cast_nullable_to_non_nullable
as dynamic,sqFeet: freezed == sqFeet ? _self.sqFeet : sqFeet // ignore: cast_nullable_to_non_nullable
as dynamic,sqYards: freezed == sqYards ? _self.sqYards : sqYards // ignore: cast_nullable_to_non_nullable
as int?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,block: freezed == block ? _self.block : block // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [FindProperty].
extension FindPropertyPatterns on FindProperty {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FindProperty value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FindProperty() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FindProperty value)  $default,){
final _that = this;
switch (_that) {
case _FindProperty():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FindProperty value)?  $default,){
final _that = this;
switch (_that) {
case _FindProperty() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "membership_id")  String? membershipId, @JsonKey(name: "member_id")  int? memberId, @JsonKey(name: "inst_code")  String? instCode, @JsonKey(name: "proj_code")  String? projCode, @JsonKey(name: "society_id")  int? societyId, @JsonKey(name: "property_type_id")  int? propertyTypeId, @JsonKey(name: "plot_category_id")  int? plotCategoryId, @JsonKey(name: "flat_type_id")  dynamic flatTypeId, @JsonKey(name: "story_type")  String? storyType, @JsonKey(name: "plot_no")  String? plotNo, @JsonKey(name: "flat_no")  dynamic flatNo, @JsonKey(name: "shop_no")  dynamic shopNo, @JsonKey(name: "no_of_rooms")  dynamic noOfRooms, @JsonKey(name: "sq_feet")  dynamic sqFeet, @JsonKey(name: "sq_yards")  int? sqYards, @JsonKey(name: "street")  String? street, @JsonKey(name: "block")  String? block, @JsonKey(name: "amount")  int? amount, @JsonKey(name: "status")  int? status, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  DateTime? updatedAt, @JsonKey(name: "deleted_at")  dynamic deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FindProperty() when $default != null:
return $default(_that.id,_that.membershipId,_that.memberId,_that.instCode,_that.projCode,_that.societyId,_that.propertyTypeId,_that.plotCategoryId,_that.flatTypeId,_that.storyType,_that.plotNo,_that.flatNo,_that.shopNo,_that.noOfRooms,_that.sqFeet,_that.sqYards,_that.street,_that.block,_that.amount,_that.status,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "membership_id")  String? membershipId, @JsonKey(name: "member_id")  int? memberId, @JsonKey(name: "inst_code")  String? instCode, @JsonKey(name: "proj_code")  String? projCode, @JsonKey(name: "society_id")  int? societyId, @JsonKey(name: "property_type_id")  int? propertyTypeId, @JsonKey(name: "plot_category_id")  int? plotCategoryId, @JsonKey(name: "flat_type_id")  dynamic flatTypeId, @JsonKey(name: "story_type")  String? storyType, @JsonKey(name: "plot_no")  String? plotNo, @JsonKey(name: "flat_no")  dynamic flatNo, @JsonKey(name: "shop_no")  dynamic shopNo, @JsonKey(name: "no_of_rooms")  dynamic noOfRooms, @JsonKey(name: "sq_feet")  dynamic sqFeet, @JsonKey(name: "sq_yards")  int? sqYards, @JsonKey(name: "street")  String? street, @JsonKey(name: "block")  String? block, @JsonKey(name: "amount")  int? amount, @JsonKey(name: "status")  int? status, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  DateTime? updatedAt, @JsonKey(name: "deleted_at")  dynamic deletedAt)  $default,) {final _that = this;
switch (_that) {
case _FindProperty():
return $default(_that.id,_that.membershipId,_that.memberId,_that.instCode,_that.projCode,_that.societyId,_that.propertyTypeId,_that.plotCategoryId,_that.flatTypeId,_that.storyType,_that.plotNo,_that.flatNo,_that.shopNo,_that.noOfRooms,_that.sqFeet,_that.sqYards,_that.street,_that.block,_that.amount,_that.status,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "membership_id")  String? membershipId, @JsonKey(name: "member_id")  int? memberId, @JsonKey(name: "inst_code")  String? instCode, @JsonKey(name: "proj_code")  String? projCode, @JsonKey(name: "society_id")  int? societyId, @JsonKey(name: "property_type_id")  int? propertyTypeId, @JsonKey(name: "plot_category_id")  int? plotCategoryId, @JsonKey(name: "flat_type_id")  dynamic flatTypeId, @JsonKey(name: "story_type")  String? storyType, @JsonKey(name: "plot_no")  String? plotNo, @JsonKey(name: "flat_no")  dynamic flatNo, @JsonKey(name: "shop_no")  dynamic shopNo, @JsonKey(name: "no_of_rooms")  dynamic noOfRooms, @JsonKey(name: "sq_feet")  dynamic sqFeet, @JsonKey(name: "sq_yards")  int? sqYards, @JsonKey(name: "street")  String? street, @JsonKey(name: "block")  String? block, @JsonKey(name: "amount")  int? amount, @JsonKey(name: "status")  int? status, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  DateTime? updatedAt, @JsonKey(name: "deleted_at")  dynamic deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _FindProperty() when $default != null:
return $default(_that.id,_that.membershipId,_that.memberId,_that.instCode,_that.projCode,_that.societyId,_that.propertyTypeId,_that.plotCategoryId,_that.flatTypeId,_that.storyType,_that.plotNo,_that.flatNo,_that.shopNo,_that.noOfRooms,_that.sqFeet,_that.sqYards,_that.street,_that.block,_that.amount,_that.status,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FindProperty implements FindProperty {
  const _FindProperty({@JsonKey(name: "id") this.id, @JsonKey(name: "membership_id") this.membershipId, @JsonKey(name: "member_id") this.memberId, @JsonKey(name: "inst_code") this.instCode, @JsonKey(name: "proj_code") this.projCode, @JsonKey(name: "society_id") this.societyId, @JsonKey(name: "property_type_id") this.propertyTypeId, @JsonKey(name: "plot_category_id") this.plotCategoryId, @JsonKey(name: "flat_type_id") this.flatTypeId, @JsonKey(name: "story_type") this.storyType, @JsonKey(name: "plot_no") this.plotNo, @JsonKey(name: "flat_no") this.flatNo, @JsonKey(name: "shop_no") this.shopNo, @JsonKey(name: "no_of_rooms") this.noOfRooms, @JsonKey(name: "sq_feet") this.sqFeet, @JsonKey(name: "sq_yards") this.sqYards, @JsonKey(name: "street") this.street, @JsonKey(name: "block") this.block, @JsonKey(name: "amount") this.amount, @JsonKey(name: "status") this.status, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt, @JsonKey(name: "deleted_at") this.deletedAt});
  factory _FindProperty.fromJson(Map<String, dynamic> json) => _$FindPropertyFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "membership_id") final  String? membershipId;
@override@JsonKey(name: "member_id") final  int? memberId;
@override@JsonKey(name: "inst_code") final  String? instCode;
@override@JsonKey(name: "proj_code") final  String? projCode;
@override@JsonKey(name: "society_id") final  int? societyId;
@override@JsonKey(name: "property_type_id") final  int? propertyTypeId;
@override@JsonKey(name: "plot_category_id") final  int? plotCategoryId;
@override@JsonKey(name: "flat_type_id") final  dynamic flatTypeId;
@override@JsonKey(name: "story_type") final  String? storyType;
@override@JsonKey(name: "plot_no") final  String? plotNo;
@override@JsonKey(name: "flat_no") final  dynamic flatNo;
@override@JsonKey(name: "shop_no") final  dynamic shopNo;
@override@JsonKey(name: "no_of_rooms") final  dynamic noOfRooms;
@override@JsonKey(name: "sq_feet") final  dynamic sqFeet;
@override@JsonKey(name: "sq_yards") final  int? sqYards;
@override@JsonKey(name: "street") final  String? street;
@override@JsonKey(name: "block") final  String? block;
@override@JsonKey(name: "amount") final  int? amount;
@override@JsonKey(name: "status") final  int? status;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;
@override@JsonKey(name: "deleted_at") final  dynamic deletedAt;

/// Create a copy of FindProperty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FindPropertyCopyWith<_FindProperty> get copyWith => __$FindPropertyCopyWithImpl<_FindProperty>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FindPropertyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FindProperty&&(identical(other.id, id) || other.id == id)&&(identical(other.membershipId, membershipId) || other.membershipId == membershipId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.instCode, instCode) || other.instCode == instCode)&&(identical(other.projCode, projCode) || other.projCode == projCode)&&(identical(other.societyId, societyId) || other.societyId == societyId)&&(identical(other.propertyTypeId, propertyTypeId) || other.propertyTypeId == propertyTypeId)&&(identical(other.plotCategoryId, plotCategoryId) || other.plotCategoryId == plotCategoryId)&&const DeepCollectionEquality().equals(other.flatTypeId, flatTypeId)&&(identical(other.storyType, storyType) || other.storyType == storyType)&&(identical(other.plotNo, plotNo) || other.plotNo == plotNo)&&const DeepCollectionEquality().equals(other.flatNo, flatNo)&&const DeepCollectionEquality().equals(other.shopNo, shopNo)&&const DeepCollectionEquality().equals(other.noOfRooms, noOfRooms)&&const DeepCollectionEquality().equals(other.sqFeet, sqFeet)&&(identical(other.sqYards, sqYards) || other.sqYards == sqYards)&&(identical(other.street, street) || other.street == street)&&(identical(other.block, block) || other.block == block)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,membershipId,memberId,instCode,projCode,societyId,propertyTypeId,plotCategoryId,const DeepCollectionEquality().hash(flatTypeId),storyType,plotNo,const DeepCollectionEquality().hash(flatNo),const DeepCollectionEquality().hash(shopNo),const DeepCollectionEquality().hash(noOfRooms),const DeepCollectionEquality().hash(sqFeet),sqYards,street,block,amount,status,createdAt,updatedAt,const DeepCollectionEquality().hash(deletedAt)]);

@override
String toString() {
  return 'FindProperty(id: $id, membershipId: $membershipId, memberId: $memberId, instCode: $instCode, projCode: $projCode, societyId: $societyId, propertyTypeId: $propertyTypeId, plotCategoryId: $plotCategoryId, flatTypeId: $flatTypeId, storyType: $storyType, plotNo: $plotNo, flatNo: $flatNo, shopNo: $shopNo, noOfRooms: $noOfRooms, sqFeet: $sqFeet, sqYards: $sqYards, street: $street, block: $block, amount: $amount, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$FindPropertyCopyWith<$Res> implements $FindPropertyCopyWith<$Res> {
  factory _$FindPropertyCopyWith(_FindProperty value, $Res Function(_FindProperty) _then) = __$FindPropertyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "membership_id") String? membershipId,@JsonKey(name: "member_id") int? memberId,@JsonKey(name: "inst_code") String? instCode,@JsonKey(name: "proj_code") String? projCode,@JsonKey(name: "society_id") int? societyId,@JsonKey(name: "property_type_id") int? propertyTypeId,@JsonKey(name: "plot_category_id") int? plotCategoryId,@JsonKey(name: "flat_type_id") dynamic flatTypeId,@JsonKey(name: "story_type") String? storyType,@JsonKey(name: "plot_no") String? plotNo,@JsonKey(name: "flat_no") dynamic flatNo,@JsonKey(name: "shop_no") dynamic shopNo,@JsonKey(name: "no_of_rooms") dynamic noOfRooms,@JsonKey(name: "sq_feet") dynamic sqFeet,@JsonKey(name: "sq_yards") int? sqYards,@JsonKey(name: "street") String? street,@JsonKey(name: "block") String? block,@JsonKey(name: "amount") int? amount,@JsonKey(name: "status") int? status,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "deleted_at") dynamic deletedAt
});




}
/// @nodoc
class __$FindPropertyCopyWithImpl<$Res>
    implements _$FindPropertyCopyWith<$Res> {
  __$FindPropertyCopyWithImpl(this._self, this._then);

  final _FindProperty _self;
  final $Res Function(_FindProperty) _then;

/// Create a copy of FindProperty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? membershipId = freezed,Object? memberId = freezed,Object? instCode = freezed,Object? projCode = freezed,Object? societyId = freezed,Object? propertyTypeId = freezed,Object? plotCategoryId = freezed,Object? flatTypeId = freezed,Object? storyType = freezed,Object? plotNo = freezed,Object? flatNo = freezed,Object? shopNo = freezed,Object? noOfRooms = freezed,Object? sqFeet = freezed,Object? sqYards = freezed,Object? street = freezed,Object? block = freezed,Object? amount = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_FindProperty(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,membershipId: freezed == membershipId ? _self.membershipId : membershipId // ignore: cast_nullable_to_non_nullable
as String?,memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int?,instCode: freezed == instCode ? _self.instCode : instCode // ignore: cast_nullable_to_non_nullable
as String?,projCode: freezed == projCode ? _self.projCode : projCode // ignore: cast_nullable_to_non_nullable
as String?,societyId: freezed == societyId ? _self.societyId : societyId // ignore: cast_nullable_to_non_nullable
as int?,propertyTypeId: freezed == propertyTypeId ? _self.propertyTypeId : propertyTypeId // ignore: cast_nullable_to_non_nullable
as int?,plotCategoryId: freezed == plotCategoryId ? _self.plotCategoryId : plotCategoryId // ignore: cast_nullable_to_non_nullable
as int?,flatTypeId: freezed == flatTypeId ? _self.flatTypeId : flatTypeId // ignore: cast_nullable_to_non_nullable
as dynamic,storyType: freezed == storyType ? _self.storyType : storyType // ignore: cast_nullable_to_non_nullable
as String?,plotNo: freezed == plotNo ? _self.plotNo : plotNo // ignore: cast_nullable_to_non_nullable
as String?,flatNo: freezed == flatNo ? _self.flatNo : flatNo // ignore: cast_nullable_to_non_nullable
as dynamic,shopNo: freezed == shopNo ? _self.shopNo : shopNo // ignore: cast_nullable_to_non_nullable
as dynamic,noOfRooms: freezed == noOfRooms ? _self.noOfRooms : noOfRooms // ignore: cast_nullable_to_non_nullable
as dynamic,sqFeet: freezed == sqFeet ? _self.sqFeet : sqFeet // ignore: cast_nullable_to_non_nullable
as dynamic,sqYards: freezed == sqYards ? _self.sqYards : sqYards // ignore: cast_nullable_to_non_nullable
as int?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,block: freezed == block ? _self.block : block // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
