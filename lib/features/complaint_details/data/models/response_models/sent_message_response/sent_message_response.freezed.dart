// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sent_message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SentMessageResponse {

@JsonKey(name: "message") String? get message;@JsonKey(name: "data") MessageDetails? get messageDetails;
/// Create a copy of SentMessageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SentMessageResponseCopyWith<SentMessageResponse> get copyWith => _$SentMessageResponseCopyWithImpl<SentMessageResponse>(this as SentMessageResponse, _$identity);

  /// Serializes this SentMessageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SentMessageResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.messageDetails, messageDetails) || other.messageDetails == messageDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,messageDetails);

@override
String toString() {
  return 'SentMessageResponse(message: $message, messageDetails: $messageDetails)';
}


}

/// @nodoc
abstract mixin class $SentMessageResponseCopyWith<$Res>  {
  factory $SentMessageResponseCopyWith(SentMessageResponse value, $Res Function(SentMessageResponse) _then) = _$SentMessageResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "message") String? message,@JsonKey(name: "data") MessageDetails? messageDetails
});


$MessageDetailsCopyWith<$Res>? get messageDetails;

}
/// @nodoc
class _$SentMessageResponseCopyWithImpl<$Res>
    implements $SentMessageResponseCopyWith<$Res> {
  _$SentMessageResponseCopyWithImpl(this._self, this._then);

  final SentMessageResponse _self;
  final $Res Function(SentMessageResponse) _then;

/// Create a copy of SentMessageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? messageDetails = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,messageDetails: freezed == messageDetails ? _self.messageDetails : messageDetails // ignore: cast_nullable_to_non_nullable
as MessageDetails?,
  ));
}
/// Create a copy of SentMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageDetailsCopyWith<$Res>? get messageDetails {
    if (_self.messageDetails == null) {
    return null;
  }

  return $MessageDetailsCopyWith<$Res>(_self.messageDetails!, (value) {
    return _then(_self.copyWith(messageDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [SentMessageResponse].
extension SentMessageResponsePatterns on SentMessageResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SentMessageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SentMessageResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SentMessageResponse value)  $default,){
final _that = this;
switch (_that) {
case _SentMessageResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SentMessageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SentMessageResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "message")  String? message, @JsonKey(name: "data")  MessageDetails? messageDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SentMessageResponse() when $default != null:
return $default(_that.message,_that.messageDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "message")  String? message, @JsonKey(name: "data")  MessageDetails? messageDetails)  $default,) {final _that = this;
switch (_that) {
case _SentMessageResponse():
return $default(_that.message,_that.messageDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "message")  String? message, @JsonKey(name: "data")  MessageDetails? messageDetails)?  $default,) {final _that = this;
switch (_that) {
case _SentMessageResponse() when $default != null:
return $default(_that.message,_that.messageDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SentMessageResponse implements SentMessageResponse {
  const _SentMessageResponse({@JsonKey(name: "message") this.message, @JsonKey(name: "data") this.messageDetails});
  factory _SentMessageResponse.fromJson(Map<String, dynamic> json) => _$SentMessageResponseFromJson(json);

@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "data") final  MessageDetails? messageDetails;

/// Create a copy of SentMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SentMessageResponseCopyWith<_SentMessageResponse> get copyWith => __$SentMessageResponseCopyWithImpl<_SentMessageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SentMessageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SentMessageResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.messageDetails, messageDetails) || other.messageDetails == messageDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,messageDetails);

@override
String toString() {
  return 'SentMessageResponse(message: $message, messageDetails: $messageDetails)';
}


}

/// @nodoc
abstract mixin class _$SentMessageResponseCopyWith<$Res> implements $SentMessageResponseCopyWith<$Res> {
  factory _$SentMessageResponseCopyWith(_SentMessageResponse value, $Res Function(_SentMessageResponse) _then) = __$SentMessageResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "message") String? message,@JsonKey(name: "data") MessageDetails? messageDetails
});


@override $MessageDetailsCopyWith<$Res>? get messageDetails;

}
/// @nodoc
class __$SentMessageResponseCopyWithImpl<$Res>
    implements _$SentMessageResponseCopyWith<$Res> {
  __$SentMessageResponseCopyWithImpl(this._self, this._then);

  final _SentMessageResponse _self;
  final $Res Function(_SentMessageResponse) _then;

/// Create a copy of SentMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? messageDetails = freezed,}) {
  return _then(_SentMessageResponse(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,messageDetails: freezed == messageDetails ? _self.messageDetails : messageDetails // ignore: cast_nullable_to_non_nullable
as MessageDetails?,
  ));
}

/// Create a copy of SentMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageDetailsCopyWith<$Res>? get messageDetails {
    if (_self.messageDetails == null) {
    return null;
  }

  return $MessageDetailsCopyWith<$Res>(_self.messageDetails!, (value) {
    return _then(_self.copyWith(messageDetails: value));
  });
}
}


/// @nodoc
mixin _$MessageDetails {

@JsonKey(name: "message_id") int? get messageId;@JsonKey(name: "complaint_no") int? get complaintNo;@JsonKey(name: "message") String? get message;@JsonKey(name: "sent_by") SentBy? get sentBy;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "created_at_human") String? get createdAtHuman;
/// Create a copy of MessageDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageDetailsCopyWith<MessageDetails> get copyWith => _$MessageDetailsCopyWithImpl<MessageDetails>(this as MessageDetails, _$identity);

  /// Serializes this MessageDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageDetails&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.message, message) || other.message == message)&&(identical(other.sentBy, sentBy) || other.sentBy == sentBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.createdAtHuman, createdAtHuman) || other.createdAtHuman == createdAtHuman));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,complaintNo,message,sentBy,createdAt,createdAtHuman);

@override
String toString() {
  return 'MessageDetails(messageId: $messageId, complaintNo: $complaintNo, message: $message, sentBy: $sentBy, createdAt: $createdAt, createdAtHuman: $createdAtHuman)';
}


}

/// @nodoc
abstract mixin class $MessageDetailsCopyWith<$Res>  {
  factory $MessageDetailsCopyWith(MessageDetails value, $Res Function(MessageDetails) _then) = _$MessageDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "message_id") int? messageId,@JsonKey(name: "complaint_no") int? complaintNo,@JsonKey(name: "message") String? message,@JsonKey(name: "sent_by") SentBy? sentBy,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "created_at_human") String? createdAtHuman
});


$SentByCopyWith<$Res>? get sentBy;

}
/// @nodoc
class _$MessageDetailsCopyWithImpl<$Res>
    implements $MessageDetailsCopyWith<$Res> {
  _$MessageDetailsCopyWithImpl(this._self, this._then);

  final MessageDetails _self;
  final $Res Function(MessageDetails) _then;

/// Create a copy of MessageDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = freezed,Object? complaintNo = freezed,Object? message = freezed,Object? sentBy = freezed,Object? createdAt = freezed,Object? createdAtHuman = freezed,}) {
  return _then(_self.copyWith(
messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as int?,complaintNo: freezed == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,sentBy: freezed == sentBy ? _self.sentBy : sentBy // ignore: cast_nullable_to_non_nullable
as SentBy?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAtHuman: freezed == createdAtHuman ? _self.createdAtHuman : createdAtHuman // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MessageDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SentByCopyWith<$Res>? get sentBy {
    if (_self.sentBy == null) {
    return null;
  }

  return $SentByCopyWith<$Res>(_self.sentBy!, (value) {
    return _then(_self.copyWith(sentBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [MessageDetails].
extension MessageDetailsPatterns on MessageDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageDetails value)  $default,){
final _that = this;
switch (_that) {
case _MessageDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageDetails value)?  $default,){
final _that = this;
switch (_that) {
case _MessageDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "message_id")  int? messageId, @JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "message")  String? message, @JsonKey(name: "sent_by")  SentBy? sentBy, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "created_at_human")  String? createdAtHuman)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageDetails() when $default != null:
return $default(_that.messageId,_that.complaintNo,_that.message,_that.sentBy,_that.createdAt,_that.createdAtHuman);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "message_id")  int? messageId, @JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "message")  String? message, @JsonKey(name: "sent_by")  SentBy? sentBy, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "created_at_human")  String? createdAtHuman)  $default,) {final _that = this;
switch (_that) {
case _MessageDetails():
return $default(_that.messageId,_that.complaintNo,_that.message,_that.sentBy,_that.createdAt,_that.createdAtHuman);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "message_id")  int? messageId, @JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "message")  String? message, @JsonKey(name: "sent_by")  SentBy? sentBy, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "created_at_human")  String? createdAtHuman)?  $default,) {final _that = this;
switch (_that) {
case _MessageDetails() when $default != null:
return $default(_that.messageId,_that.complaintNo,_that.message,_that.sentBy,_that.createdAt,_that.createdAtHuman);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageDetails implements MessageDetails {
  const _MessageDetails({@JsonKey(name: "message_id") this.messageId, @JsonKey(name: "complaint_no") this.complaintNo, @JsonKey(name: "message") this.message, @JsonKey(name: "sent_by") this.sentBy, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "created_at_human") this.createdAtHuman});
  factory _MessageDetails.fromJson(Map<String, dynamic> json) => _$MessageDetailsFromJson(json);

@override@JsonKey(name: "message_id") final  int? messageId;
@override@JsonKey(name: "complaint_no") final  int? complaintNo;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "sent_by") final  SentBy? sentBy;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "created_at_human") final  String? createdAtHuman;

/// Create a copy of MessageDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageDetailsCopyWith<_MessageDetails> get copyWith => __$MessageDetailsCopyWithImpl<_MessageDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageDetails&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.message, message) || other.message == message)&&(identical(other.sentBy, sentBy) || other.sentBy == sentBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.createdAtHuman, createdAtHuman) || other.createdAtHuman == createdAtHuman));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,complaintNo,message,sentBy,createdAt,createdAtHuman);

@override
String toString() {
  return 'MessageDetails(messageId: $messageId, complaintNo: $complaintNo, message: $message, sentBy: $sentBy, createdAt: $createdAt, createdAtHuman: $createdAtHuman)';
}


}

/// @nodoc
abstract mixin class _$MessageDetailsCopyWith<$Res> implements $MessageDetailsCopyWith<$Res> {
  factory _$MessageDetailsCopyWith(_MessageDetails value, $Res Function(_MessageDetails) _then) = __$MessageDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "message_id") int? messageId,@JsonKey(name: "complaint_no") int? complaintNo,@JsonKey(name: "message") String? message,@JsonKey(name: "sent_by") SentBy? sentBy,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "created_at_human") String? createdAtHuman
});


@override $SentByCopyWith<$Res>? get sentBy;

}
/// @nodoc
class __$MessageDetailsCopyWithImpl<$Res>
    implements _$MessageDetailsCopyWith<$Res> {
  __$MessageDetailsCopyWithImpl(this._self, this._then);

  final _MessageDetails _self;
  final $Res Function(_MessageDetails) _then;

/// Create a copy of MessageDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = freezed,Object? complaintNo = freezed,Object? message = freezed,Object? sentBy = freezed,Object? createdAt = freezed,Object? createdAtHuman = freezed,}) {
  return _then(_MessageDetails(
messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as int?,complaintNo: freezed == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,sentBy: freezed == sentBy ? _self.sentBy : sentBy // ignore: cast_nullable_to_non_nullable
as SentBy?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAtHuman: freezed == createdAtHuman ? _self.createdAtHuman : createdAtHuman // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MessageDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SentByCopyWith<$Res>? get sentBy {
    if (_self.sentBy == null) {
    return null;
  }

  return $SentByCopyWith<$Res>(_self.sentBy!, (value) {
    return _then(_self.copyWith(sentBy: value));
  });
}
}


/// @nodoc
mixin _$SentBy {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;
/// Create a copy of SentBy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SentByCopyWith<SentBy> get copyWith => _$SentByCopyWithImpl<SentBy>(this as SentBy, _$identity);

  /// Serializes this SentBy to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SentBy&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'SentBy(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $SentByCopyWith<$Res>  {
  factory $SentByCopyWith(SentBy value, $Res Function(SentBy) _then) = _$SentByCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name
});




}
/// @nodoc
class _$SentByCopyWithImpl<$Res>
    implements $SentByCopyWith<$Res> {
  _$SentByCopyWithImpl(this._self, this._then);

  final SentBy _self;
  final $Res Function(SentBy) _then;

/// Create a copy of SentBy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SentBy].
extension SentByPatterns on SentBy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SentBy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SentBy() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SentBy value)  $default,){
final _that = this;
switch (_that) {
case _SentBy():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SentBy value)?  $default,){
final _that = this;
switch (_that) {
case _SentBy() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SentBy() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name)  $default,) {final _that = this;
switch (_that) {
case _SentBy():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name)?  $default,) {final _that = this;
switch (_that) {
case _SentBy() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SentBy implements SentBy {
  const _SentBy({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name});
  factory _SentBy.fromJson(Map<String, dynamic> json) => _$SentByFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;

/// Create a copy of SentBy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SentByCopyWith<_SentBy> get copyWith => __$SentByCopyWithImpl<_SentBy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SentByToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SentBy&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'SentBy(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$SentByCopyWith<$Res> implements $SentByCopyWith<$Res> {
  factory _$SentByCopyWith(_SentBy value, $Res Function(_SentBy) _then) = __$SentByCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name
});




}
/// @nodoc
class __$SentByCopyWithImpl<$Res>
    implements _$SentByCopyWith<$Res> {
  __$SentByCopyWithImpl(this._self, this._then);

  final _SentBy _self;
  final $Res Function(_SentBy) _then;

/// Create a copy of SentBy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_SentBy(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
