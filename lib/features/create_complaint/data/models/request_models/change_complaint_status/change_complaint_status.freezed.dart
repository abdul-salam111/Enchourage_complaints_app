// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_complaint_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangeComplaintStatus {

@JsonKey(name: "complaint_no") int? get complaintNo;@JsonKey(name: "status") String? get status;@JsonKey(name: "assign_to") String? get assignTo;
/// Create a copy of ChangeComplaintStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeComplaintStatusCopyWith<ChangeComplaintStatus> get copyWith => _$ChangeComplaintStatusCopyWithImpl<ChangeComplaintStatus>(this as ChangeComplaintStatus, _$identity);

  /// Serializes this ChangeComplaintStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeComplaintStatus&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.status, status) || other.status == status)&&(identical(other.assignTo, assignTo) || other.assignTo == assignTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintNo,status,assignTo);

@override
String toString() {
  return 'ChangeComplaintStatus(complaintNo: $complaintNo, status: $status, assignTo: $assignTo)';
}


}

/// @nodoc
abstract mixin class $ChangeComplaintStatusCopyWith<$Res>  {
  factory $ChangeComplaintStatusCopyWith(ChangeComplaintStatus value, $Res Function(ChangeComplaintStatus) _then) = _$ChangeComplaintStatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "complaint_no") int? complaintNo,@JsonKey(name: "status") String? status,@JsonKey(name: "assign_to") String? assignTo
});




}
/// @nodoc
class _$ChangeComplaintStatusCopyWithImpl<$Res>
    implements $ChangeComplaintStatusCopyWith<$Res> {
  _$ChangeComplaintStatusCopyWithImpl(this._self, this._then);

  final ChangeComplaintStatus _self;
  final $Res Function(ChangeComplaintStatus) _then;

/// Create a copy of ChangeComplaintStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? complaintNo = freezed,Object? status = freezed,Object? assignTo = freezed,}) {
  return _then(_self.copyWith(
complaintNo: freezed == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,assignTo: freezed == assignTo ? _self.assignTo : assignTo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangeComplaintStatus].
extension ChangeComplaintStatusPatterns on ChangeComplaintStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeComplaintStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeComplaintStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeComplaintStatus value)  $default,){
final _that = this;
switch (_that) {
case _ChangeComplaintStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeComplaintStatus value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeComplaintStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "status")  String? status, @JsonKey(name: "assign_to")  String? assignTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeComplaintStatus() when $default != null:
return $default(_that.complaintNo,_that.status,_that.assignTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "status")  String? status, @JsonKey(name: "assign_to")  String? assignTo)  $default,) {final _that = this;
switch (_that) {
case _ChangeComplaintStatus():
return $default(_that.complaintNo,_that.status,_that.assignTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "status")  String? status, @JsonKey(name: "assign_to")  String? assignTo)?  $default,) {final _that = this;
switch (_that) {
case _ChangeComplaintStatus() when $default != null:
return $default(_that.complaintNo,_that.status,_that.assignTo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangeComplaintStatus implements ChangeComplaintStatus {
  const _ChangeComplaintStatus({@JsonKey(name: "complaint_no") this.complaintNo, @JsonKey(name: "status") this.status, @JsonKey(name: "assign_to") this.assignTo});
  factory _ChangeComplaintStatus.fromJson(Map<String, dynamic> json) => _$ChangeComplaintStatusFromJson(json);

@override@JsonKey(name: "complaint_no") final  int? complaintNo;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "assign_to") final  String? assignTo;

/// Create a copy of ChangeComplaintStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeComplaintStatusCopyWith<_ChangeComplaintStatus> get copyWith => __$ChangeComplaintStatusCopyWithImpl<_ChangeComplaintStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeComplaintStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeComplaintStatus&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.status, status) || other.status == status)&&(identical(other.assignTo, assignTo) || other.assignTo == assignTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintNo,status,assignTo);

@override
String toString() {
  return 'ChangeComplaintStatus(complaintNo: $complaintNo, status: $status, assignTo: $assignTo)';
}


}

/// @nodoc
abstract mixin class _$ChangeComplaintStatusCopyWith<$Res> implements $ChangeComplaintStatusCopyWith<$Res> {
  factory _$ChangeComplaintStatusCopyWith(_ChangeComplaintStatus value, $Res Function(_ChangeComplaintStatus) _then) = __$ChangeComplaintStatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "complaint_no") int? complaintNo,@JsonKey(name: "status") String? status,@JsonKey(name: "assign_to") String? assignTo
});




}
/// @nodoc
class __$ChangeComplaintStatusCopyWithImpl<$Res>
    implements _$ChangeComplaintStatusCopyWith<$Res> {
  __$ChangeComplaintStatusCopyWithImpl(this._self, this._then);

  final _ChangeComplaintStatus _self;
  final $Res Function(_ChangeComplaintStatus) _then;

/// Create a copy of ChangeComplaintStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? complaintNo = freezed,Object? status = freezed,Object? assignTo = freezed,}) {
  return _then(_ChangeComplaintStatus(
complaintNo: freezed == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,assignTo: freezed == assignTo ? _self.assignTo : assignTo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
