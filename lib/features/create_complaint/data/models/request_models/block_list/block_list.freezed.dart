// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlockList {

@JsonKey(name: "data") List<Blocks>? get data;
/// Create a copy of BlockList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlockListCopyWith<BlockList> get copyWith => _$BlockListCopyWithImpl<BlockList>(this as BlockList, _$identity);

  /// Serializes this BlockList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlockList&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BlockList(data: $data)';
}


}

/// @nodoc
abstract mixin class $BlockListCopyWith<$Res>  {
  factory $BlockListCopyWith(BlockList value, $Res Function(BlockList) _then) = _$BlockListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") List<Blocks>? data
});




}
/// @nodoc
class _$BlockListCopyWithImpl<$Res>
    implements $BlockListCopyWith<$Res> {
  _$BlockListCopyWithImpl(this._self, this._then);

  final BlockList _self;
  final $Res Function(BlockList) _then;

/// Create a copy of BlockList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Blocks>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BlockList].
extension BlockListPatterns on BlockList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlockList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlockList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlockList value)  $default,){
final _that = this;
switch (_that) {
case _BlockList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlockList value)?  $default,){
final _that = this;
switch (_that) {
case _BlockList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<Blocks>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlockList() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<Blocks>? data)  $default,) {final _that = this;
switch (_that) {
case _BlockList():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  List<Blocks>? data)?  $default,) {final _that = this;
switch (_that) {
case _BlockList() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BlockList implements BlockList {
  const _BlockList({@JsonKey(name: "data") final  List<Blocks>? data}): _data = data;
  factory _BlockList.fromJson(Map<String, dynamic> json) => _$BlockListFromJson(json);

 final  List<Blocks>? _data;
@override@JsonKey(name: "data") List<Blocks>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BlockList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlockListCopyWith<_BlockList> get copyWith => __$BlockListCopyWithImpl<_BlockList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlockListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlockList&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'BlockList(data: $data)';
}


}

/// @nodoc
abstract mixin class _$BlockListCopyWith<$Res> implements $BlockListCopyWith<$Res> {
  factory _$BlockListCopyWith(_BlockList value, $Res Function(_BlockList) _then) = __$BlockListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") List<Blocks>? data
});




}
/// @nodoc
class __$BlockListCopyWithImpl<$Res>
    implements _$BlockListCopyWith<$Res> {
  __$BlockListCopyWithImpl(this._self, this._then);

  final _BlockList _self;
  final $Res Function(_BlockList) _then;

/// Create a copy of BlockList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_BlockList(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Blocks>?,
  ));
}


}


/// @nodoc
mixin _$Blocks {

@JsonKey(name: "id") int? get id;@JsonKey(name: "title") String? get title;@JsonKey(name: "society_id") String? get societyId;@JsonKey(name: "status") int? get status;
/// Create a copy of Blocks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlocksCopyWith<Blocks> get copyWith => _$BlocksCopyWithImpl<Blocks>(this as Blocks, _$identity);

  /// Serializes this Blocks to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Blocks&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.societyId, societyId) || other.societyId == societyId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,societyId,status);

@override
String toString() {
  return 'Blocks(id: $id, title: $title, societyId: $societyId, status: $status)';
}


}

/// @nodoc
abstract mixin class $BlocksCopyWith<$Res>  {
  factory $BlocksCopyWith(Blocks value, $Res Function(Blocks) _then) = _$BlocksCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "society_id") String? societyId,@JsonKey(name: "status") int? status
});




}
/// @nodoc
class _$BlocksCopyWithImpl<$Res>
    implements $BlocksCopyWith<$Res> {
  _$BlocksCopyWithImpl(this._self, this._then);

  final Blocks _self;
  final $Res Function(Blocks) _then;

/// Create a copy of Blocks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? societyId = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,societyId: freezed == societyId ? _self.societyId : societyId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Blocks].
extension BlocksPatterns on Blocks {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Blocks value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Blocks() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Blocks value)  $default,){
final _that = this;
switch (_that) {
case _Blocks():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Blocks value)?  $default,){
final _that = this;
switch (_that) {
case _Blocks() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "society_id")  String? societyId, @JsonKey(name: "status")  int? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Blocks() when $default != null:
return $default(_that.id,_that.title,_that.societyId,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "society_id")  String? societyId, @JsonKey(name: "status")  int? status)  $default,) {final _that = this;
switch (_that) {
case _Blocks():
return $default(_that.id,_that.title,_that.societyId,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "society_id")  String? societyId, @JsonKey(name: "status")  int? status)?  $default,) {final _that = this;
switch (_that) {
case _Blocks() when $default != null:
return $default(_that.id,_that.title,_that.societyId,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Blocks implements Blocks {
  const _Blocks({@JsonKey(name: "id") this.id, @JsonKey(name: "title") this.title, @JsonKey(name: "society_id") this.societyId, @JsonKey(name: "status") this.status});
  factory _Blocks.fromJson(Map<String, dynamic> json) => _$BlocksFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "society_id") final  String? societyId;
@override@JsonKey(name: "status") final  int? status;

/// Create a copy of Blocks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlocksCopyWith<_Blocks> get copyWith => __$BlocksCopyWithImpl<_Blocks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlocksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Blocks&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.societyId, societyId) || other.societyId == societyId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,societyId,status);

@override
String toString() {
  return 'Blocks(id: $id, title: $title, societyId: $societyId, status: $status)';
}


}

/// @nodoc
abstract mixin class _$BlocksCopyWith<$Res> implements $BlocksCopyWith<$Res> {
  factory _$BlocksCopyWith(_Blocks value, $Res Function(_Blocks) _then) = __$BlocksCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "society_id") String? societyId,@JsonKey(name: "status") int? status
});




}
/// @nodoc
class __$BlocksCopyWithImpl<$Res>
    implements _$BlocksCopyWith<$Res> {
  __$BlocksCopyWithImpl(this._self, this._then);

  final _Blocks _self;
  final $Res Function(_Blocks) _then;

/// Create a copy of Blocks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? societyId = freezed,Object? status = freezed,}) {
  return _then(_Blocks(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,societyId: freezed == societyId ? _self.societyId : societyId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
