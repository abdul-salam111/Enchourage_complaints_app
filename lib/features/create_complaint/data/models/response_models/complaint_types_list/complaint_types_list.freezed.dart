// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_types_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ComplaintTypesList {

@JsonKey(name: "data") List<ComplaintType>? get data;
/// Create a copy of ComplaintTypesList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintTypesListCopyWith<ComplaintTypesList> get copyWith => _$ComplaintTypesListCopyWithImpl<ComplaintTypesList>(this as ComplaintTypesList, _$identity);

  /// Serializes this ComplaintTypesList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintTypesList&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ComplaintTypesList(data: $data)';
}


}

/// @nodoc
abstract mixin class $ComplaintTypesListCopyWith<$Res>  {
  factory $ComplaintTypesListCopyWith(ComplaintTypesList value, $Res Function(ComplaintTypesList) _then) = _$ComplaintTypesListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") List<ComplaintType>? data
});




}
/// @nodoc
class _$ComplaintTypesListCopyWithImpl<$Res>
    implements $ComplaintTypesListCopyWith<$Res> {
  _$ComplaintTypesListCopyWithImpl(this._self, this._then);

  final ComplaintTypesList _self;
  final $Res Function(ComplaintTypesList) _then;

/// Create a copy of ComplaintTypesList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ComplaintType>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintTypesList].
extension ComplaintTypesListPatterns on ComplaintTypesList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintTypesList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintTypesList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintTypesList value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintTypesList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintTypesList value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintTypesList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<ComplaintType>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintTypesList() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<ComplaintType>? data)  $default,) {final _that = this;
switch (_that) {
case _ComplaintTypesList():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  List<ComplaintType>? data)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintTypesList() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComplaintTypesList implements ComplaintTypesList {
  const _ComplaintTypesList({@JsonKey(name: "data") final  List<ComplaintType>? data}): _data = data;
  factory _ComplaintTypesList.fromJson(Map<String, dynamic> json) => _$ComplaintTypesListFromJson(json);

 final  List<ComplaintType>? _data;
@override@JsonKey(name: "data") List<ComplaintType>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ComplaintTypesList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintTypesListCopyWith<_ComplaintTypesList> get copyWith => __$ComplaintTypesListCopyWithImpl<_ComplaintTypesList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintTypesListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintTypesList&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ComplaintTypesList(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ComplaintTypesListCopyWith<$Res> implements $ComplaintTypesListCopyWith<$Res> {
  factory _$ComplaintTypesListCopyWith(_ComplaintTypesList value, $Res Function(_ComplaintTypesList) _then) = __$ComplaintTypesListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") List<ComplaintType>? data
});




}
/// @nodoc
class __$ComplaintTypesListCopyWithImpl<$Res>
    implements _$ComplaintTypesListCopyWith<$Res> {
  __$ComplaintTypesListCopyWithImpl(this._self, this._then);

  final _ComplaintTypesList _self;
  final $Res Function(_ComplaintTypesList) _then;

/// Create a copy of ComplaintTypesList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_ComplaintTypesList(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ComplaintType>?,
  ));
}


}


/// @nodoc
mixin _$ComplaintType {

@JsonKey(name: "id") int? get id;@JsonKey(name: "title") String? get title;@JsonKey(name: "status") int? get status;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") dynamic get updatedAt;@JsonKey(name: "find_departments") List<FindDepartment>? get findDepartments;
/// Create a copy of ComplaintType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintTypeCopyWith<ComplaintType> get copyWith => _$ComplaintTypeCopyWithImpl<ComplaintType>(this as ComplaintType, _$identity);

  /// Serializes this ComplaintType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintType&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.updatedAt, updatedAt)&&const DeepCollectionEquality().equals(other.findDepartments, findDepartments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,status,createdAt,const DeepCollectionEquality().hash(updatedAt),const DeepCollectionEquality().hash(findDepartments));

@override
String toString() {
  return 'ComplaintType(id: $id, title: $title, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, findDepartments: $findDepartments)';
}


}

/// @nodoc
abstract mixin class $ComplaintTypeCopyWith<$Res>  {
  factory $ComplaintTypeCopyWith(ComplaintType value, $Res Function(ComplaintType) _then) = _$ComplaintTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "status") int? status,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") dynamic updatedAt,@JsonKey(name: "find_departments") List<FindDepartment>? findDepartments
});




}
/// @nodoc
class _$ComplaintTypeCopyWithImpl<$Res>
    implements $ComplaintTypeCopyWith<$Res> {
  _$ComplaintTypeCopyWithImpl(this._self, this._then);

  final ComplaintType _self;
  final $Res Function(ComplaintType) _then;

/// Create a copy of ComplaintType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? findDepartments = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as dynamic,findDepartments: freezed == findDepartments ? _self.findDepartments : findDepartments // ignore: cast_nullable_to_non_nullable
as List<FindDepartment>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintType].
extension ComplaintTypePatterns on ComplaintType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintType value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintType value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "status")  int? status, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  dynamic updatedAt, @JsonKey(name: "find_departments")  List<FindDepartment>? findDepartments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintType() when $default != null:
return $default(_that.id,_that.title,_that.status,_that.createdAt,_that.updatedAt,_that.findDepartments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "status")  int? status, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  dynamic updatedAt, @JsonKey(name: "find_departments")  List<FindDepartment>? findDepartments)  $default,) {final _that = this;
switch (_that) {
case _ComplaintType():
return $default(_that.id,_that.title,_that.status,_that.createdAt,_that.updatedAt,_that.findDepartments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "status")  int? status, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "updated_at")  dynamic updatedAt, @JsonKey(name: "find_departments")  List<FindDepartment>? findDepartments)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintType() when $default != null:
return $default(_that.id,_that.title,_that.status,_that.createdAt,_that.updatedAt,_that.findDepartments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComplaintType implements ComplaintType {
  const _ComplaintType({@JsonKey(name: "id") this.id, @JsonKey(name: "title") this.title, @JsonKey(name: "status") this.status, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt, @JsonKey(name: "find_departments") final  List<FindDepartment>? findDepartments}): _findDepartments = findDepartments;
  factory _ComplaintType.fromJson(Map<String, dynamic> json) => _$ComplaintTypeFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "status") final  int? status;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  dynamic updatedAt;
 final  List<FindDepartment>? _findDepartments;
@override@JsonKey(name: "find_departments") List<FindDepartment>? get findDepartments {
  final value = _findDepartments;
  if (value == null) return null;
  if (_findDepartments is EqualUnmodifiableListView) return _findDepartments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ComplaintType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintTypeCopyWith<_ComplaintType> get copyWith => __$ComplaintTypeCopyWithImpl<_ComplaintType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintType&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.updatedAt, updatedAt)&&const DeepCollectionEquality().equals(other._findDepartments, _findDepartments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,status,createdAt,const DeepCollectionEquality().hash(updatedAt),const DeepCollectionEquality().hash(_findDepartments));

@override
String toString() {
  return 'ComplaintType(id: $id, title: $title, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, findDepartments: $findDepartments)';
}


}

/// @nodoc
abstract mixin class _$ComplaintTypeCopyWith<$Res> implements $ComplaintTypeCopyWith<$Res> {
  factory _$ComplaintTypeCopyWith(_ComplaintType value, $Res Function(_ComplaintType) _then) = __$ComplaintTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "status") int? status,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") dynamic updatedAt,@JsonKey(name: "find_departments") List<FindDepartment>? findDepartments
});




}
/// @nodoc
class __$ComplaintTypeCopyWithImpl<$Res>
    implements _$ComplaintTypeCopyWith<$Res> {
  __$ComplaintTypeCopyWithImpl(this._self, this._then);

  final _ComplaintType _self;
  final $Res Function(_ComplaintType) _then;

/// Create a copy of ComplaintType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? findDepartments = freezed,}) {
  return _then(_ComplaintType(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as dynamic,findDepartments: freezed == findDepartments ? _self._findDepartments : findDepartments // ignore: cast_nullable_to_non_nullable
as List<FindDepartment>?,
  ));
}


}


/// @nodoc
mixin _$FindDepartment {

@JsonKey(name: "id") int? get id;@JsonKey(name: "title") String? get title;@JsonKey(name: "dep_type_id") int? get depTypeId;@JsonKey(name: "status") int? get status;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "updated_at") DateTime? get updatedAt;@JsonKey(name: "deleted_at") dynamic get deletedAt;
/// Create a copy of FindDepartment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindDepartmentCopyWith<FindDepartment> get copyWith => _$FindDepartmentCopyWithImpl<FindDepartment>(this as FindDepartment, _$identity);

  /// Serializes this FindDepartment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FindDepartment&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.depTypeId, depTypeId) || other.depTypeId == depTypeId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,depTypeId,status,createdAt,updatedAt,const DeepCollectionEquality().hash(deletedAt));

@override
String toString() {
  return 'FindDepartment(id: $id, title: $title, depTypeId: $depTypeId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $FindDepartmentCopyWith<$Res>  {
  factory $FindDepartmentCopyWith(FindDepartment value, $Res Function(FindDepartment) _then) = _$FindDepartmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "dep_type_id") int? depTypeId,@JsonKey(name: "status") int? status,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "deleted_at") dynamic deletedAt
});




}
/// @nodoc
class _$FindDepartmentCopyWithImpl<$Res>
    implements $FindDepartmentCopyWith<$Res> {
  _$FindDepartmentCopyWithImpl(this._self, this._then);

  final FindDepartment _self;
  final $Res Function(FindDepartment) _then;

/// Create a copy of FindDepartment
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


/// Adds pattern-matching-related methods to [FindDepartment].
extension FindDepartmentPatterns on FindDepartment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FindDepartment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FindDepartment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FindDepartment value)  $default,){
final _that = this;
switch (_that) {
case _FindDepartment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FindDepartment value)?  $default,){
final _that = this;
switch (_that) {
case _FindDepartment() when $default != null:
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
case _FindDepartment() when $default != null:
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
case _FindDepartment():
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
case _FindDepartment() when $default != null:
return $default(_that.id,_that.title,_that.depTypeId,_that.status,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FindDepartment implements FindDepartment {
  const _FindDepartment({@JsonKey(name: "id") this.id, @JsonKey(name: "title") this.title, @JsonKey(name: "dep_type_id") this.depTypeId, @JsonKey(name: "status") this.status, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt, @JsonKey(name: "deleted_at") this.deletedAt});
  factory _FindDepartment.fromJson(Map<String, dynamic> json) => _$FindDepartmentFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "dep_type_id") final  int? depTypeId;
@override@JsonKey(name: "status") final  int? status;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "updated_at") final  DateTime? updatedAt;
@override@JsonKey(name: "deleted_at") final  dynamic deletedAt;

/// Create a copy of FindDepartment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FindDepartmentCopyWith<_FindDepartment> get copyWith => __$FindDepartmentCopyWithImpl<_FindDepartment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FindDepartmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FindDepartment&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.depTypeId, depTypeId) || other.depTypeId == depTypeId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,depTypeId,status,createdAt,updatedAt,const DeepCollectionEquality().hash(deletedAt));

@override
String toString() {
  return 'FindDepartment(id: $id, title: $title, depTypeId: $depTypeId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$FindDepartmentCopyWith<$Res> implements $FindDepartmentCopyWith<$Res> {
  factory _$FindDepartmentCopyWith(_FindDepartment value, $Res Function(_FindDepartment) _then) = __$FindDepartmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "dep_type_id") int? depTypeId,@JsonKey(name: "status") int? status,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "updated_at") DateTime? updatedAt,@JsonKey(name: "deleted_at") dynamic deletedAt
});




}
/// @nodoc
class __$FindDepartmentCopyWithImpl<$Res>
    implements _$FindDepartmentCopyWith<$Res> {
  __$FindDepartmentCopyWithImpl(this._self, this._then);

  final _FindDepartment _self;
  final $Res Function(_FindDepartment) _then;

/// Create a copy of FindDepartment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? depTypeId = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_FindDepartment(
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

// dart format on
