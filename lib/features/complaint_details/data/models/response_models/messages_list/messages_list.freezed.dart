// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessagesList {

@JsonKey(name: "data") List<Message>? get data;
/// Create a copy of MessagesList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessagesListCopyWith<MessagesList> get copyWith => _$MessagesListCopyWithImpl<MessagesList>(this as MessagesList, _$identity);

  /// Serializes this MessagesList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessagesList&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'MessagesList(data: $data)';
}


}

/// @nodoc
abstract mixin class $MessagesListCopyWith<$Res>  {
  factory $MessagesListCopyWith(MessagesList value, $Res Function(MessagesList) _then) = _$MessagesListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") List<Message>? data
});




}
/// @nodoc
class _$MessagesListCopyWithImpl<$Res>
    implements $MessagesListCopyWith<$Res> {
  _$MessagesListCopyWithImpl(this._self, this._then);

  final MessagesList _self;
  final $Res Function(MessagesList) _then;

/// Create a copy of MessagesList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Message>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MessagesList].
extension MessagesListPatterns on MessagesList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessagesList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessagesList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessagesList value)  $default,){
final _that = this;
switch (_that) {
case _MessagesList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessagesList value)?  $default,){
final _that = this;
switch (_that) {
case _MessagesList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<Message>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessagesList() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<Message>? data)  $default,) {final _that = this;
switch (_that) {
case _MessagesList():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  List<Message>? data)?  $default,) {final _that = this;
switch (_that) {
case _MessagesList() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessagesList implements MessagesList {
  const _MessagesList({@JsonKey(name: "data") final  List<Message>? data}): _data = data;
  factory _MessagesList.fromJson(Map<String, dynamic> json) => _$MessagesListFromJson(json);

 final  List<Message>? _data;
@override@JsonKey(name: "data") List<Message>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MessagesList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessagesListCopyWith<_MessagesList> get copyWith => __$MessagesListCopyWithImpl<_MessagesList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessagesListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessagesList&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'MessagesList(data: $data)';
}


}

/// @nodoc
abstract mixin class _$MessagesListCopyWith<$Res> implements $MessagesListCopyWith<$Res> {
  factory _$MessagesListCopyWith(_MessagesList value, $Res Function(_MessagesList) _then) = __$MessagesListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") List<Message>? data
});




}
/// @nodoc
class __$MessagesListCopyWithImpl<$Res>
    implements _$MessagesListCopyWith<$Res> {
  __$MessagesListCopyWithImpl(this._self, this._then);

  final _MessagesList _self;
  final $Res Function(_MessagesList) _then;

/// Create a copy of MessagesList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_MessagesList(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Message>?,
  ));
}


}


/// @nodoc
mixin _$Message {

@JsonKey(name: "id") int? get id;@JsonKey(name: "message") String? get message;@JsonKey(name: "sender_type") dynamic get senderType;@JsonKey(name: "sender_name") String? get senderName;@JsonKey(name: "created_at") String? get createdAt;
/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageCopyWith<Message> get copyWith => _$MessageCopyWithImpl<Message>(this as Message, _$identity);

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Message&&(identical(other.id, id) || other.id == id)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.senderType, senderType)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,message,const DeepCollectionEquality().hash(senderType),senderName,createdAt);

@override
String toString() {
  return 'Message(id: $id, message: $message, senderType: $senderType, senderName: $senderName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MessageCopyWith<$Res>  {
  factory $MessageCopyWith(Message value, $Res Function(Message) _then) = _$MessageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "message") String? message,@JsonKey(name: "sender_type") dynamic senderType,@JsonKey(name: "sender_name") String? senderName,@JsonKey(name: "created_at") String? createdAt
});




}
/// @nodoc
class _$MessageCopyWithImpl<$Res>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._self, this._then);

  final Message _self;
  final $Res Function(Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? message = freezed,Object? senderType = freezed,Object? senderName = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,senderType: freezed == senderType ? _self.senderType : senderType // ignore: cast_nullable_to_non_nullable
as dynamic,senderName: freezed == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Message].
extension MessagePatterns on Message {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Message value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Message() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Message value)  $default,){
final _that = this;
switch (_that) {
case _Message():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Message value)?  $default,){
final _that = this;
switch (_that) {
case _Message() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "message")  String? message, @JsonKey(name: "sender_type")  dynamic senderType, @JsonKey(name: "sender_name")  String? senderName, @JsonKey(name: "created_at")  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Message() when $default != null:
return $default(_that.id,_that.message,_that.senderType,_that.senderName,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "message")  String? message, @JsonKey(name: "sender_type")  dynamic senderType, @JsonKey(name: "sender_name")  String? senderName, @JsonKey(name: "created_at")  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Message():
return $default(_that.id,_that.message,_that.senderType,_that.senderName,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "message")  String? message, @JsonKey(name: "sender_type")  dynamic senderType, @JsonKey(name: "sender_name")  String? senderName, @JsonKey(name: "created_at")  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Message() when $default != null:
return $default(_that.id,_that.message,_that.senderType,_that.senderName,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Message implements Message {
  const _Message({@JsonKey(name: "id") this.id, @JsonKey(name: "message") this.message, @JsonKey(name: "sender_type") this.senderType, @JsonKey(name: "sender_name") this.senderName, @JsonKey(name: "created_at") this.createdAt});
  factory _Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "sender_type") final  dynamic senderType;
@override@JsonKey(name: "sender_name") final  String? senderName;
@override@JsonKey(name: "created_at") final  String? createdAt;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageCopyWith<_Message> get copyWith => __$MessageCopyWithImpl<_Message>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Message&&(identical(other.id, id) || other.id == id)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.senderType, senderType)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,message,const DeepCollectionEquality().hash(senderType),senderName,createdAt);

@override
String toString() {
  return 'Message(id: $id, message: $message, senderType: $senderType, senderName: $senderName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) _then) = __$MessageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "message") String? message,@JsonKey(name: "sender_type") dynamic senderType,@JsonKey(name: "sender_name") String? senderName,@JsonKey(name: "created_at") String? createdAt
});




}
/// @nodoc
class __$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(this._self, this._then);

  final _Message _self;
  final $Res Function(_Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? message = freezed,Object? senderType = freezed,Object? senderName = freezed,Object? createdAt = freezed,}) {
  return _then(_Message(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,senderType: freezed == senderType ? _self.senderType : senderType // ignore: cast_nullable_to_non_nullable
as dynamic,senderName: freezed == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
