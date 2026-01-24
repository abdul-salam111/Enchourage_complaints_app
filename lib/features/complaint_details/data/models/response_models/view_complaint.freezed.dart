// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_complaint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ViewComplaint {

@JsonKey(name: "data") ComplaintDetails? get data;
/// Create a copy of ViewComplaint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewComplaintCopyWith<ViewComplaint> get copyWith => _$ViewComplaintCopyWithImpl<ViewComplaint>(this as ViewComplaint, _$identity);

  /// Serializes this ViewComplaint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewComplaint&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ViewComplaint(data: $data)';
}


}

/// @nodoc
abstract mixin class $ViewComplaintCopyWith<$Res>  {
  factory $ViewComplaintCopyWith(ViewComplaint value, $Res Function(ViewComplaint) _then) = _$ViewComplaintCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") ComplaintDetails? data
});


$ComplaintDetailsCopyWith<$Res>? get data;

}
/// @nodoc
class _$ViewComplaintCopyWithImpl<$Res>
    implements $ViewComplaintCopyWith<$Res> {
  _$ViewComplaintCopyWithImpl(this._self, this._then);

  final ViewComplaint _self;
  final $Res Function(ViewComplaint) _then;

/// Create a copy of ViewComplaint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ComplaintDetails?,
  ));
}
/// Create a copy of ViewComplaint
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComplaintDetailsCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ComplaintDetailsCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ViewComplaint].
extension ViewComplaintPatterns on ViewComplaint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ViewComplaint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ViewComplaint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ViewComplaint value)  $default,){
final _that = this;
switch (_that) {
case _ViewComplaint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ViewComplaint value)?  $default,){
final _that = this;
switch (_that) {
case _ViewComplaint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  ComplaintDetails? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ViewComplaint() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  ComplaintDetails? data)  $default,) {final _that = this;
switch (_that) {
case _ViewComplaint():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  ComplaintDetails? data)?  $default,) {final _that = this;
switch (_that) {
case _ViewComplaint() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ViewComplaint implements ViewComplaint {
  const _ViewComplaint({@JsonKey(name: "data") this.data});
  factory _ViewComplaint.fromJson(Map<String, dynamic> json) => _$ViewComplaintFromJson(json);

@override@JsonKey(name: "data") final  ComplaintDetails? data;

/// Create a copy of ViewComplaint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewComplaintCopyWith<_ViewComplaint> get copyWith => __$ViewComplaintCopyWithImpl<_ViewComplaint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ViewComplaintToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewComplaint&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ViewComplaint(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ViewComplaintCopyWith<$Res> implements $ViewComplaintCopyWith<$Res> {
  factory _$ViewComplaintCopyWith(_ViewComplaint value, $Res Function(_ViewComplaint) _then) = __$ViewComplaintCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") ComplaintDetails? data
});


@override $ComplaintDetailsCopyWith<$Res>? get data;

}
/// @nodoc
class __$ViewComplaintCopyWithImpl<$Res>
    implements _$ViewComplaintCopyWith<$Res> {
  __$ViewComplaintCopyWithImpl(this._self, this._then);

  final _ViewComplaint _self;
  final $Res Function(_ViewComplaint) _then;

/// Create a copy of ViewComplaint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_ViewComplaint(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ComplaintDetails?,
  ));
}

/// Create a copy of ViewComplaint
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComplaintDetailsCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ComplaintDetailsCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ComplaintDetails {

@JsonKey(name: "complaint_no") int? get complaintNo;@JsonKey(name: "member_name") String? get memberName;@JsonKey(name: "phone") dynamic get phone;@JsonKey(name: "address") String? get address;@JsonKey(name: "title") String? get title;@JsonKey(name: "description") String? get description;@JsonKey(name: "date") String? get date;@JsonKey(name: "assign_by") String? get assignBy;@JsonKey(name: "assign_to") String? get assignTo;
/// Create a copy of ComplaintDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintDetailsCopyWith<ComplaintDetails> get copyWith => _$ComplaintDetailsCopyWithImpl<ComplaintDetails>(this as ComplaintDetails, _$identity);

  /// Serializes this ComplaintDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintDetails&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&const DeepCollectionEquality().equals(other.phone, phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.assignBy, assignBy) || other.assignBy == assignBy)&&(identical(other.assignTo, assignTo) || other.assignTo == assignTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintNo,memberName,const DeepCollectionEquality().hash(phone),address,title,description,date,assignBy,assignTo);

@override
String toString() {
  return 'ComplaintDetails(complaintNo: $complaintNo, memberName: $memberName, phone: $phone, address: $address, title: $title, description: $description, date: $date, assignBy: $assignBy, assignTo: $assignTo)';
}


}

/// @nodoc
abstract mixin class $ComplaintDetailsCopyWith<$Res>  {
  factory $ComplaintDetailsCopyWith(ComplaintDetails value, $Res Function(ComplaintDetails) _then) = _$ComplaintDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "complaint_no") int? complaintNo,@JsonKey(name: "member_name") String? memberName,@JsonKey(name: "phone") dynamic phone,@JsonKey(name: "address") String? address,@JsonKey(name: "title") String? title,@JsonKey(name: "description") String? description,@JsonKey(name: "date") String? date,@JsonKey(name: "assign_by") String? assignBy,@JsonKey(name: "assign_to") String? assignTo
});




}
/// @nodoc
class _$ComplaintDetailsCopyWithImpl<$Res>
    implements $ComplaintDetailsCopyWith<$Res> {
  _$ComplaintDetailsCopyWithImpl(this._self, this._then);

  final ComplaintDetails _self;
  final $Res Function(ComplaintDetails) _then;

/// Create a copy of ComplaintDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? complaintNo = freezed,Object? memberName = freezed,Object? phone = freezed,Object? address = freezed,Object? title = freezed,Object? description = freezed,Object? date = freezed,Object? assignBy = freezed,Object? assignTo = freezed,}) {
  return _then(_self.copyWith(
complaintNo: freezed == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int?,memberName: freezed == memberName ? _self.memberName : memberName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as dynamic,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,assignBy: freezed == assignBy ? _self.assignBy : assignBy // ignore: cast_nullable_to_non_nullable
as String?,assignTo: freezed == assignTo ? _self.assignTo : assignTo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintDetails].
extension ComplaintDetailsPatterns on ComplaintDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintDetails value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintDetails value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "member_name")  String? memberName, @JsonKey(name: "phone")  dynamic phone, @JsonKey(name: "address")  String? address, @JsonKey(name: "title")  String? title, @JsonKey(name: "description")  String? description, @JsonKey(name: "date")  String? date, @JsonKey(name: "assign_by")  String? assignBy, @JsonKey(name: "assign_to")  String? assignTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintDetails() when $default != null:
return $default(_that.complaintNo,_that.memberName,_that.phone,_that.address,_that.title,_that.description,_that.date,_that.assignBy,_that.assignTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "member_name")  String? memberName, @JsonKey(name: "phone")  dynamic phone, @JsonKey(name: "address")  String? address, @JsonKey(name: "title")  String? title, @JsonKey(name: "description")  String? description, @JsonKey(name: "date")  String? date, @JsonKey(name: "assign_by")  String? assignBy, @JsonKey(name: "assign_to")  String? assignTo)  $default,) {final _that = this;
switch (_that) {
case _ComplaintDetails():
return $default(_that.complaintNo,_that.memberName,_that.phone,_that.address,_that.title,_that.description,_that.date,_that.assignBy,_that.assignTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "member_name")  String? memberName, @JsonKey(name: "phone")  dynamic phone, @JsonKey(name: "address")  String? address, @JsonKey(name: "title")  String? title, @JsonKey(name: "description")  String? description, @JsonKey(name: "date")  String? date, @JsonKey(name: "assign_by")  String? assignBy, @JsonKey(name: "assign_to")  String? assignTo)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintDetails() when $default != null:
return $default(_that.complaintNo,_that.memberName,_that.phone,_that.address,_that.title,_that.description,_that.date,_that.assignBy,_that.assignTo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComplaintDetails implements ComplaintDetails {
  const _ComplaintDetails({@JsonKey(name: "complaint_no") this.complaintNo, @JsonKey(name: "member_name") this.memberName, @JsonKey(name: "phone") this.phone, @JsonKey(name: "address") this.address, @JsonKey(name: "title") this.title, @JsonKey(name: "description") this.description, @JsonKey(name: "date") this.date, @JsonKey(name: "assign_by") this.assignBy, @JsonKey(name: "assign_to") this.assignTo});
  factory _ComplaintDetails.fromJson(Map<String, dynamic> json) => _$ComplaintDetailsFromJson(json);

@override@JsonKey(name: "complaint_no") final  int? complaintNo;
@override@JsonKey(name: "member_name") final  String? memberName;
@override@JsonKey(name: "phone") final  dynamic phone;
@override@JsonKey(name: "address") final  String? address;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "description") final  String? description;
@override@JsonKey(name: "date") final  String? date;
@override@JsonKey(name: "assign_by") final  String? assignBy;
@override@JsonKey(name: "assign_to") final  String? assignTo;

/// Create a copy of ComplaintDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintDetailsCopyWith<_ComplaintDetails> get copyWith => __$ComplaintDetailsCopyWithImpl<_ComplaintDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintDetails&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&const DeepCollectionEquality().equals(other.phone, phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.assignBy, assignBy) || other.assignBy == assignBy)&&(identical(other.assignTo, assignTo) || other.assignTo == assignTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintNo,memberName,const DeepCollectionEquality().hash(phone),address,title,description,date,assignBy,assignTo);

@override
String toString() {
  return 'ComplaintDetails(complaintNo: $complaintNo, memberName: $memberName, phone: $phone, address: $address, title: $title, description: $description, date: $date, assignBy: $assignBy, assignTo: $assignTo)';
}


}

/// @nodoc
abstract mixin class _$ComplaintDetailsCopyWith<$Res> implements $ComplaintDetailsCopyWith<$Res> {
  factory _$ComplaintDetailsCopyWith(_ComplaintDetails value, $Res Function(_ComplaintDetails) _then) = __$ComplaintDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "complaint_no") int? complaintNo,@JsonKey(name: "member_name") String? memberName,@JsonKey(name: "phone") dynamic phone,@JsonKey(name: "address") String? address,@JsonKey(name: "title") String? title,@JsonKey(name: "description") String? description,@JsonKey(name: "date") String? date,@JsonKey(name: "assign_by") String? assignBy,@JsonKey(name: "assign_to") String? assignTo
});




}
/// @nodoc
class __$ComplaintDetailsCopyWithImpl<$Res>
    implements _$ComplaintDetailsCopyWith<$Res> {
  __$ComplaintDetailsCopyWithImpl(this._self, this._then);

  final _ComplaintDetails _self;
  final $Res Function(_ComplaintDetails) _then;

/// Create a copy of ComplaintDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? complaintNo = freezed,Object? memberName = freezed,Object? phone = freezed,Object? address = freezed,Object? title = freezed,Object? description = freezed,Object? date = freezed,Object? assignBy = freezed,Object? assignTo = freezed,}) {
  return _then(_ComplaintDetails(
complaintNo: freezed == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int?,memberName: freezed == memberName ? _self.memberName : memberName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as dynamic,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,assignBy: freezed == assignBy ? _self.assignBy : assignBy // ignore: cast_nullable_to_non_nullable
as String?,assignTo: freezed == assignTo ? _self.assignTo : assignTo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
