// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'street_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StreetList {

@JsonKey(name: "data") List<Street>? get data;
/// Create a copy of StreetList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreetListCopyWith<StreetList> get copyWith => _$StreetListCopyWithImpl<StreetList>(this as StreetList, _$identity);

  /// Serializes this StreetList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreetList&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'StreetList(data: $data)';
}


}

/// @nodoc
abstract mixin class $StreetListCopyWith<$Res>  {
  factory $StreetListCopyWith(StreetList value, $Res Function(StreetList) _then) = _$StreetListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") List<Street>? data
});




}
/// @nodoc
class _$StreetListCopyWithImpl<$Res>
    implements $StreetListCopyWith<$Res> {
  _$StreetListCopyWithImpl(this._self, this._then);

  final StreetList _self;
  final $Res Function(StreetList) _then;

/// Create a copy of StreetList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Street>?,
  ));
}

}


/// Adds pattern-matching-related methods to [StreetList].
extension StreetListPatterns on StreetList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreetList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreetList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreetList value)  $default,){
final _that = this;
switch (_that) {
case _StreetList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreetList value)?  $default,){
final _that = this;
switch (_that) {
case _StreetList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<Street>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreetList() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<Street>? data)  $default,) {final _that = this;
switch (_that) {
case _StreetList():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  List<Street>? data)?  $default,) {final _that = this;
switch (_that) {
case _StreetList() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StreetList implements StreetList {
  const _StreetList({@JsonKey(name: "data") final  List<Street>? data}): _data = data;
  factory _StreetList.fromJson(Map<String, dynamic> json) => _$StreetListFromJson(json);

 final  List<Street>? _data;
@override@JsonKey(name: "data") List<Street>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of StreetList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreetListCopyWith<_StreetList> get copyWith => __$StreetListCopyWithImpl<_StreetList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StreetListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreetList&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'StreetList(data: $data)';
}


}

/// @nodoc
abstract mixin class _$StreetListCopyWith<$Res> implements $StreetListCopyWith<$Res> {
  factory _$StreetListCopyWith(_StreetList value, $Res Function(_StreetList) _then) = __$StreetListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") List<Street>? data
});




}
/// @nodoc
class __$StreetListCopyWithImpl<$Res>
    implements _$StreetListCopyWith<$Res> {
  __$StreetListCopyWithImpl(this._self, this._then);

  final _StreetList _self;
  final $Res Function(_StreetList) _then;

/// Create a copy of StreetList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_StreetList(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Street>?,
  ));
}


}


/// @nodoc
mixin _$Street {

@JsonKey(name: "id") int? get id;@JsonKey(name: "block_id") int? get blockId;@JsonKey(name: "title") String? get title;@JsonKey(name: "status") int? get status;
/// Create a copy of Street
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreetCopyWith<Street> get copyWith => _$StreetCopyWithImpl<Street>(this as Street, _$identity);

  /// Serializes this Street to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Street&&(identical(other.id, id) || other.id == id)&&(identical(other.blockId, blockId) || other.blockId == blockId)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,blockId,title,status);

@override
String toString() {
  return 'Street(id: $id, blockId: $blockId, title: $title, status: $status)';
}


}

/// @nodoc
abstract mixin class $StreetCopyWith<$Res>  {
  factory $StreetCopyWith(Street value, $Res Function(Street) _then) = _$StreetCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "block_id") int? blockId,@JsonKey(name: "title") String? title,@JsonKey(name: "status") int? status
});




}
/// @nodoc
class _$StreetCopyWithImpl<$Res>
    implements $StreetCopyWith<$Res> {
  _$StreetCopyWithImpl(this._self, this._then);

  final Street _self;
  final $Res Function(Street) _then;

/// Create a copy of Street
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? blockId = freezed,Object? title = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,blockId: freezed == blockId ? _self.blockId : blockId // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Street].
extension StreetPatterns on Street {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Street value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Street() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Street value)  $default,){
final _that = this;
switch (_that) {
case _Street():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Street value)?  $default,){
final _that = this;
switch (_that) {
case _Street() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "block_id")  int? blockId, @JsonKey(name: "title")  String? title, @JsonKey(name: "status")  int? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Street() when $default != null:
return $default(_that.id,_that.blockId,_that.title,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "block_id")  int? blockId, @JsonKey(name: "title")  String? title, @JsonKey(name: "status")  int? status)  $default,) {final _that = this;
switch (_that) {
case _Street():
return $default(_that.id,_that.blockId,_that.title,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "block_id")  int? blockId, @JsonKey(name: "title")  String? title, @JsonKey(name: "status")  int? status)?  $default,) {final _that = this;
switch (_that) {
case _Street() when $default != null:
return $default(_that.id,_that.blockId,_that.title,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Street implements Street {
  const _Street({@JsonKey(name: "id") this.id, @JsonKey(name: "block_id") this.blockId, @JsonKey(name: "title") this.title, @JsonKey(name: "status") this.status});
  factory _Street.fromJson(Map<String, dynamic> json) => _$StreetFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "block_id") final  int? blockId;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "status") final  int? status;

/// Create a copy of Street
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreetCopyWith<_Street> get copyWith => __$StreetCopyWithImpl<_Street>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StreetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Street&&(identical(other.id, id) || other.id == id)&&(identical(other.blockId, blockId) || other.blockId == blockId)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,blockId,title,status);

@override
String toString() {
  return 'Street(id: $id, blockId: $blockId, title: $title, status: $status)';
}


}

/// @nodoc
abstract mixin class _$StreetCopyWith<$Res> implements $StreetCopyWith<$Res> {
  factory _$StreetCopyWith(_Street value, $Res Function(_Street) _then) = __$StreetCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "block_id") int? blockId,@JsonKey(name: "title") String? title,@JsonKey(name: "status") int? status
});




}
/// @nodoc
class __$StreetCopyWithImpl<$Res>
    implements _$StreetCopyWith<$Res> {
  __$StreetCopyWithImpl(this._self, this._then);

  final _Street _self;
  final $Res Function(_Street) _then;

/// Create a copy of Street
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? blockId = freezed,Object? title = freezed,Object? status = freezed,}) {
  return _then(_Street(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,blockId: freezed == blockId ? _self.blockId : blockId // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
