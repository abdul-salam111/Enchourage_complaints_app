// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_duration_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetDurationResponse {

@JsonKey(name: "message") String? get message;@JsonKey(name: "data") DurationData? get durationData;
/// Create a copy of SetDurationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetDurationResponseCopyWith<SetDurationResponse> get copyWith => _$SetDurationResponseCopyWithImpl<SetDurationResponse>(this as SetDurationResponse, _$identity);

  /// Serializes this SetDurationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetDurationResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.durationData, durationData) || other.durationData == durationData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,durationData);

@override
String toString() {
  return 'SetDurationResponse(message: $message, durationData: $durationData)';
}


}

/// @nodoc
abstract mixin class $SetDurationResponseCopyWith<$Res>  {
  factory $SetDurationResponseCopyWith(SetDurationResponse value, $Res Function(SetDurationResponse) _then) = _$SetDurationResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "message") String? message,@JsonKey(name: "data") DurationData? durationData
});


$DurationDataCopyWith<$Res>? get durationData;

}
/// @nodoc
class _$SetDurationResponseCopyWithImpl<$Res>
    implements $SetDurationResponseCopyWith<$Res> {
  _$SetDurationResponseCopyWithImpl(this._self, this._then);

  final SetDurationResponse _self;
  final $Res Function(SetDurationResponse) _then;

/// Create a copy of SetDurationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? durationData = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,durationData: freezed == durationData ? _self.durationData : durationData // ignore: cast_nullable_to_non_nullable
as DurationData?,
  ));
}
/// Create a copy of SetDurationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DurationDataCopyWith<$Res>? get durationData {
    if (_self.durationData == null) {
    return null;
  }

  return $DurationDataCopyWith<$Res>(_self.durationData!, (value) {
    return _then(_self.copyWith(durationData: value));
  });
}
}


/// Adds pattern-matching-related methods to [SetDurationResponse].
extension SetDurationResponsePatterns on SetDurationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetDurationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetDurationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetDurationResponse value)  $default,){
final _that = this;
switch (_that) {
case _SetDurationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetDurationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SetDurationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "message")  String? message, @JsonKey(name: "data")  DurationData? durationData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetDurationResponse() when $default != null:
return $default(_that.message,_that.durationData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "message")  String? message, @JsonKey(name: "data")  DurationData? durationData)  $default,) {final _that = this;
switch (_that) {
case _SetDurationResponse():
return $default(_that.message,_that.durationData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "message")  String? message, @JsonKey(name: "data")  DurationData? durationData)?  $default,) {final _that = this;
switch (_that) {
case _SetDurationResponse() when $default != null:
return $default(_that.message,_that.durationData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetDurationResponse implements SetDurationResponse {
  const _SetDurationResponse({@JsonKey(name: "message") this.message, @JsonKey(name: "data") this.durationData});
  factory _SetDurationResponse.fromJson(Map<String, dynamic> json) => _$SetDurationResponseFromJson(json);

@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "data") final  DurationData? durationData;

/// Create a copy of SetDurationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetDurationResponseCopyWith<_SetDurationResponse> get copyWith => __$SetDurationResponseCopyWithImpl<_SetDurationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetDurationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetDurationResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.durationData, durationData) || other.durationData == durationData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,durationData);

@override
String toString() {
  return 'SetDurationResponse(message: $message, durationData: $durationData)';
}


}

/// @nodoc
abstract mixin class _$SetDurationResponseCopyWith<$Res> implements $SetDurationResponseCopyWith<$Res> {
  factory _$SetDurationResponseCopyWith(_SetDurationResponse value, $Res Function(_SetDurationResponse) _then) = __$SetDurationResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "message") String? message,@JsonKey(name: "data") DurationData? durationData
});


@override $DurationDataCopyWith<$Res>? get durationData;

}
/// @nodoc
class __$SetDurationResponseCopyWithImpl<$Res>
    implements _$SetDurationResponseCopyWith<$Res> {
  __$SetDurationResponseCopyWithImpl(this._self, this._then);

  final _SetDurationResponse _self;
  final $Res Function(_SetDurationResponse) _then;

/// Create a copy of SetDurationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? durationData = freezed,}) {
  return _then(_SetDurationResponse(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,durationData: freezed == durationData ? _self.durationData : durationData // ignore: cast_nullable_to_non_nullable
as DurationData?,
  ));
}

/// Create a copy of SetDurationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DurationDataCopyWith<$Res>? get durationData {
    if (_self.durationData == null) {
    return null;
  }

  return $DurationDataCopyWith<$Res>(_self.durationData!, (value) {
    return _then(_self.copyWith(durationData: value));
  });
}
}


/// @nodoc
mixin _$DurationData {

@JsonKey(name: "complaint_no") int? get complaintNo;@JsonKey(name: "status") String? get status;@JsonKey(name: "duration") String? get duration;@JsonKey(name: "deadline") DateTime? get deadline;
/// Create a copy of DurationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DurationDataCopyWith<DurationData> get copyWith => _$DurationDataCopyWithImpl<DurationData>(this as DurationData, _$identity);

  /// Serializes this DurationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DurationData&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.status, status) || other.status == status)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintNo,status,duration,deadline);

@override
String toString() {
  return 'DurationData(complaintNo: $complaintNo, status: $status, duration: $duration, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class $DurationDataCopyWith<$Res>  {
  factory $DurationDataCopyWith(DurationData value, $Res Function(DurationData) _then) = _$DurationDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "complaint_no") int? complaintNo,@JsonKey(name: "status") String? status,@JsonKey(name: "duration") String? duration,@JsonKey(name: "deadline") DateTime? deadline
});




}
/// @nodoc
class _$DurationDataCopyWithImpl<$Res>
    implements $DurationDataCopyWith<$Res> {
  _$DurationDataCopyWithImpl(this._self, this._then);

  final DurationData _self;
  final $Res Function(DurationData) _then;

/// Create a copy of DurationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? complaintNo = freezed,Object? status = freezed,Object? duration = freezed,Object? deadline = freezed,}) {
  return _then(_self.copyWith(
complaintNo: freezed == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DurationData].
extension DurationDataPatterns on DurationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DurationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DurationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DurationData value)  $default,){
final _that = this;
switch (_that) {
case _DurationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DurationData value)?  $default,){
final _that = this;
switch (_that) {
case _DurationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "status")  String? status, @JsonKey(name: "duration")  String? duration, @JsonKey(name: "deadline")  DateTime? deadline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DurationData() when $default != null:
return $default(_that.complaintNo,_that.status,_that.duration,_that.deadline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "status")  String? status, @JsonKey(name: "duration")  String? duration, @JsonKey(name: "deadline")  DateTime? deadline)  $default,) {final _that = this;
switch (_that) {
case _DurationData():
return $default(_that.complaintNo,_that.status,_that.duration,_that.deadline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "status")  String? status, @JsonKey(name: "duration")  String? duration, @JsonKey(name: "deadline")  DateTime? deadline)?  $default,) {final _that = this;
switch (_that) {
case _DurationData() when $default != null:
return $default(_that.complaintNo,_that.status,_that.duration,_that.deadline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DurationData implements DurationData {
  const _DurationData({@JsonKey(name: "complaint_no") this.complaintNo, @JsonKey(name: "status") this.status, @JsonKey(name: "duration") this.duration, @JsonKey(name: "deadline") this.deadline});
  factory _DurationData.fromJson(Map<String, dynamic> json) => _$DurationDataFromJson(json);

@override@JsonKey(name: "complaint_no") final  int? complaintNo;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "duration") final  String? duration;
@override@JsonKey(name: "deadline") final  DateTime? deadline;

/// Create a copy of DurationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DurationDataCopyWith<_DurationData> get copyWith => __$DurationDataCopyWithImpl<_DurationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DurationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DurationData&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.status, status) || other.status == status)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintNo,status,duration,deadline);

@override
String toString() {
  return 'DurationData(complaintNo: $complaintNo, status: $status, duration: $duration, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class _$DurationDataCopyWith<$Res> implements $DurationDataCopyWith<$Res> {
  factory _$DurationDataCopyWith(_DurationData value, $Res Function(_DurationData) _then) = __$DurationDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "complaint_no") int? complaintNo,@JsonKey(name: "status") String? status,@JsonKey(name: "duration") String? duration,@JsonKey(name: "deadline") DateTime? deadline
});




}
/// @nodoc
class __$DurationDataCopyWithImpl<$Res>
    implements _$DurationDataCopyWith<$Res> {
  __$DurationDataCopyWithImpl(this._self, this._then);

  final _DurationData _self;
  final $Res Function(_DurationData) _then;

/// Create a copy of DurationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? complaintNo = freezed,Object? status = freezed,Object? duration = freezed,Object? deadline = freezed,}) {
  return _then(_DurationData(
complaintNo: freezed == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
