// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaints_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ComplaintsList {

@JsonKey(name: "data") List<Complaint>? get data;
/// Create a copy of ComplaintsList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintsListCopyWith<ComplaintsList> get copyWith => _$ComplaintsListCopyWithImpl<ComplaintsList>(this as ComplaintsList, _$identity);

  /// Serializes this ComplaintsList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintsList&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ComplaintsList(data: $data)';
}


}

/// @nodoc
abstract mixin class $ComplaintsListCopyWith<$Res>  {
  factory $ComplaintsListCopyWith(ComplaintsList value, $Res Function(ComplaintsList) _then) = _$ComplaintsListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") List<Complaint>? data
});




}
/// @nodoc
class _$ComplaintsListCopyWithImpl<$Res>
    implements $ComplaintsListCopyWith<$Res> {
  _$ComplaintsListCopyWithImpl(this._self, this._then);

  final ComplaintsList _self;
  final $Res Function(ComplaintsList) _then;

/// Create a copy of ComplaintsList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Complaint>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintsList].
extension ComplaintsListPatterns on ComplaintsList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintsList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintsList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintsList value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintsList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintsList value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintsList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<Complaint>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintsList() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<Complaint>? data)  $default,) {final _that = this;
switch (_that) {
case _ComplaintsList():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  List<Complaint>? data)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintsList() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComplaintsList implements ComplaintsList {
  const _ComplaintsList({@JsonKey(name: "data") final  List<Complaint>? data}): _data = data;
  factory _ComplaintsList.fromJson(Map<String, dynamic> json) => _$ComplaintsListFromJson(json);

 final  List<Complaint>? _data;
@override@JsonKey(name: "data") List<Complaint>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ComplaintsList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintsListCopyWith<_ComplaintsList> get copyWith => __$ComplaintsListCopyWithImpl<_ComplaintsList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintsListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintsList&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ComplaintsList(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ComplaintsListCopyWith<$Res> implements $ComplaintsListCopyWith<$Res> {
  factory _$ComplaintsListCopyWith(_ComplaintsList value, $Res Function(_ComplaintsList) _then) = __$ComplaintsListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") List<Complaint>? data
});




}
/// @nodoc
class __$ComplaintsListCopyWithImpl<$Res>
    implements _$ComplaintsListCopyWith<$Res> {
  __$ComplaintsListCopyWithImpl(this._self, this._then);

  final _ComplaintsList _self;
  final $Res Function(_ComplaintsList) _then;

/// Create a copy of ComplaintsList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_ComplaintsList(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Complaint>?,
  ));
}


}


/// @nodoc
mixin _$Complaint {

@JsonKey(name: "complaint_no") int? get complaintNo;@JsonKey(name: "member_name") String? get memberName;@JsonKey(name: "address") String? get address;@JsonKey(name: "complaint_type") String? get complaintType;@JsonKey(name: "description") String? get description;@JsonKey(name: "status") String? get status;@JsonKey(name: "assign_by") String? get assignBy;@JsonKey(name: "assign_to_user") String? get assignToUser;@JsonKey(name: "created_at") DateTime? get createdAt;
/// Create a copy of Complaint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintCopyWith<Complaint> get copyWith => _$ComplaintCopyWithImpl<Complaint>(this as Complaint, _$identity);

  /// Serializes this Complaint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Complaint&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&(identical(other.address, address) || other.address == address)&&(identical(other.complaintType, complaintType) || other.complaintType == complaintType)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.assignBy, assignBy) || other.assignBy == assignBy)&&(identical(other.assignToUser, assignToUser) || other.assignToUser == assignToUser)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintNo,memberName,address,complaintType,description,status,assignBy,assignToUser,createdAt);

@override
String toString() {
  return 'Complaint(complaintNo: $complaintNo, memberName: $memberName, address: $address, complaintType: $complaintType, description: $description, status: $status, assignBy: $assignBy, assignToUser: $assignToUser, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ComplaintCopyWith<$Res>  {
  factory $ComplaintCopyWith(Complaint value, $Res Function(Complaint) _then) = _$ComplaintCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "complaint_no") int? complaintNo,@JsonKey(name: "member_name") String? memberName,@JsonKey(name: "address") String? address,@JsonKey(name: "complaint_type") String? complaintType,@JsonKey(name: "description") String? description,@JsonKey(name: "status") String? status,@JsonKey(name: "assign_by") String? assignBy,@JsonKey(name: "assign_to_user") String? assignToUser,@JsonKey(name: "created_at") DateTime? createdAt
});




}
/// @nodoc
class _$ComplaintCopyWithImpl<$Res>
    implements $ComplaintCopyWith<$Res> {
  _$ComplaintCopyWithImpl(this._self, this._then);

  final Complaint _self;
  final $Res Function(Complaint) _then;

/// Create a copy of Complaint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? complaintNo = freezed,Object? memberName = freezed,Object? address = freezed,Object? complaintType = freezed,Object? description = freezed,Object? status = freezed,Object? assignBy = freezed,Object? assignToUser = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
complaintNo: freezed == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int?,memberName: freezed == memberName ? _self.memberName : memberName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,complaintType: freezed == complaintType ? _self.complaintType : complaintType // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,assignBy: freezed == assignBy ? _self.assignBy : assignBy // ignore: cast_nullable_to_non_nullable
as String?,assignToUser: freezed == assignToUser ? _self.assignToUser : assignToUser // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Complaint].
extension ComplaintPatterns on Complaint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Complaint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Complaint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Complaint value)  $default,){
final _that = this;
switch (_that) {
case _Complaint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Complaint value)?  $default,){
final _that = this;
switch (_that) {
case _Complaint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "member_name")  String? memberName, @JsonKey(name: "address")  String? address, @JsonKey(name: "complaint_type")  String? complaintType, @JsonKey(name: "description")  String? description, @JsonKey(name: "status")  String? status, @JsonKey(name: "assign_by")  String? assignBy, @JsonKey(name: "assign_to_user")  String? assignToUser, @JsonKey(name: "created_at")  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Complaint() when $default != null:
return $default(_that.complaintNo,_that.memberName,_that.address,_that.complaintType,_that.description,_that.status,_that.assignBy,_that.assignToUser,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "member_name")  String? memberName, @JsonKey(name: "address")  String? address, @JsonKey(name: "complaint_type")  String? complaintType, @JsonKey(name: "description")  String? description, @JsonKey(name: "status")  String? status, @JsonKey(name: "assign_by")  String? assignBy, @JsonKey(name: "assign_to_user")  String? assignToUser, @JsonKey(name: "created_at")  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Complaint():
return $default(_that.complaintNo,_that.memberName,_that.address,_that.complaintType,_that.description,_that.status,_that.assignBy,_that.assignToUser,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "member_name")  String? memberName, @JsonKey(name: "address")  String? address, @JsonKey(name: "complaint_type")  String? complaintType, @JsonKey(name: "description")  String? description, @JsonKey(name: "status")  String? status, @JsonKey(name: "assign_by")  String? assignBy, @JsonKey(name: "assign_to_user")  String? assignToUser, @JsonKey(name: "created_at")  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Complaint() when $default != null:
return $default(_that.complaintNo,_that.memberName,_that.address,_that.complaintType,_that.description,_that.status,_that.assignBy,_that.assignToUser,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Complaint implements Complaint {
  const _Complaint({@JsonKey(name: "complaint_no") this.complaintNo, @JsonKey(name: "member_name") this.memberName, @JsonKey(name: "address") this.address, @JsonKey(name: "complaint_type") this.complaintType, @JsonKey(name: "description") this.description, @JsonKey(name: "status") this.status, @JsonKey(name: "assign_by") this.assignBy, @JsonKey(name: "assign_to_user") this.assignToUser, @JsonKey(name: "created_at") this.createdAt});
  factory _Complaint.fromJson(Map<String, dynamic> json) => _$ComplaintFromJson(json);

@override@JsonKey(name: "complaint_no") final  int? complaintNo;
@override@JsonKey(name: "member_name") final  String? memberName;
@override@JsonKey(name: "address") final  String? address;
@override@JsonKey(name: "complaint_type") final  String? complaintType;
@override@JsonKey(name: "description") final  String? description;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "assign_by") final  String? assignBy;
@override@JsonKey(name: "assign_to_user") final  String? assignToUser;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;

/// Create a copy of Complaint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintCopyWith<_Complaint> get copyWith => __$ComplaintCopyWithImpl<_Complaint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Complaint&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&(identical(other.address, address) || other.address == address)&&(identical(other.complaintType, complaintType) || other.complaintType == complaintType)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.assignBy, assignBy) || other.assignBy == assignBy)&&(identical(other.assignToUser, assignToUser) || other.assignToUser == assignToUser)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintNo,memberName,address,complaintType,description,status,assignBy,assignToUser,createdAt);

@override
String toString() {
  return 'Complaint(complaintNo: $complaintNo, memberName: $memberName, address: $address, complaintType: $complaintType, description: $description, status: $status, assignBy: $assignBy, assignToUser: $assignToUser, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ComplaintCopyWith<$Res> implements $ComplaintCopyWith<$Res> {
  factory _$ComplaintCopyWith(_Complaint value, $Res Function(_Complaint) _then) = __$ComplaintCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "complaint_no") int? complaintNo,@JsonKey(name: "member_name") String? memberName,@JsonKey(name: "address") String? address,@JsonKey(name: "complaint_type") String? complaintType,@JsonKey(name: "description") String? description,@JsonKey(name: "status") String? status,@JsonKey(name: "assign_by") String? assignBy,@JsonKey(name: "assign_to_user") String? assignToUser,@JsonKey(name: "created_at") DateTime? createdAt
});




}
/// @nodoc
class __$ComplaintCopyWithImpl<$Res>
    implements _$ComplaintCopyWith<$Res> {
  __$ComplaintCopyWithImpl(this._self, this._then);

  final _Complaint _self;
  final $Res Function(_Complaint) _then;

/// Create a copy of Complaint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? complaintNo = freezed,Object? memberName = freezed,Object? address = freezed,Object? complaintType = freezed,Object? description = freezed,Object? status = freezed,Object? assignBy = freezed,Object? assignToUser = freezed,Object? createdAt = freezed,}) {
  return _then(_Complaint(
complaintNo: freezed == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int?,memberName: freezed == memberName ? _self.memberName : memberName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,complaintType: freezed == complaintType ? _self.complaintType : complaintType // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,assignBy: freezed == assignBy ? _self.assignBy : assignBy // ignore: cast_nullable_to_non_nullable
as String?,assignToUser: freezed == assignToUser ? _self.assignToUser : assignToUser // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
