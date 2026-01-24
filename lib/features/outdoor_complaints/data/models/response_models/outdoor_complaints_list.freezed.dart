// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outdoor_complaints_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OutdoorComplaintsList {

@JsonKey(name: "complaints") List<Complaint>? get complaints;@JsonKey(name: "departments") List<Department>? get departments;
/// Create a copy of OutdoorComplaintsList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutdoorComplaintsListCopyWith<OutdoorComplaintsList> get copyWith => _$OutdoorComplaintsListCopyWithImpl<OutdoorComplaintsList>(this as OutdoorComplaintsList, _$identity);

  /// Serializes this OutdoorComplaintsList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutdoorComplaintsList&&const DeepCollectionEquality().equals(other.complaints, complaints)&&const DeepCollectionEquality().equals(other.departments, departments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(complaints),const DeepCollectionEquality().hash(departments));

@override
String toString() {
  return 'OutdoorComplaintsList(complaints: $complaints, departments: $departments)';
}


}

/// @nodoc
abstract mixin class $OutdoorComplaintsListCopyWith<$Res>  {
  factory $OutdoorComplaintsListCopyWith(OutdoorComplaintsList value, $Res Function(OutdoorComplaintsList) _then) = _$OutdoorComplaintsListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "complaints") List<Complaint>? complaints,@JsonKey(name: "departments") List<Department>? departments
});




}
/// @nodoc
class _$OutdoorComplaintsListCopyWithImpl<$Res>
    implements $OutdoorComplaintsListCopyWith<$Res> {
  _$OutdoorComplaintsListCopyWithImpl(this._self, this._then);

  final OutdoorComplaintsList _self;
  final $Res Function(OutdoorComplaintsList) _then;

/// Create a copy of OutdoorComplaintsList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? complaints = freezed,Object? departments = freezed,}) {
  return _then(_self.copyWith(
complaints: freezed == complaints ? _self.complaints : complaints // ignore: cast_nullable_to_non_nullable
as List<Complaint>?,departments: freezed == departments ? _self.departments : departments // ignore: cast_nullable_to_non_nullable
as List<Department>?,
  ));
}

}


/// Adds pattern-matching-related methods to [OutdoorComplaintsList].
extension OutdoorComplaintsListPatterns on OutdoorComplaintsList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OutdoorComplaintsList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OutdoorComplaintsList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OutdoorComplaintsList value)  $default,){
final _that = this;
switch (_that) {
case _OutdoorComplaintsList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OutdoorComplaintsList value)?  $default,){
final _that = this;
switch (_that) {
case _OutdoorComplaintsList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "complaints")  List<Complaint>? complaints, @JsonKey(name: "departments")  List<Department>? departments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OutdoorComplaintsList() when $default != null:
return $default(_that.complaints,_that.departments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "complaints")  List<Complaint>? complaints, @JsonKey(name: "departments")  List<Department>? departments)  $default,) {final _that = this;
switch (_that) {
case _OutdoorComplaintsList():
return $default(_that.complaints,_that.departments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "complaints")  List<Complaint>? complaints, @JsonKey(name: "departments")  List<Department>? departments)?  $default,) {final _that = this;
switch (_that) {
case _OutdoorComplaintsList() when $default != null:
return $default(_that.complaints,_that.departments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OutdoorComplaintsList implements OutdoorComplaintsList {
  const _OutdoorComplaintsList({@JsonKey(name: "complaints") final  List<Complaint>? complaints, @JsonKey(name: "departments") final  List<Department>? departments}): _complaints = complaints,_departments = departments;
  factory _OutdoorComplaintsList.fromJson(Map<String, dynamic> json) => _$OutdoorComplaintsListFromJson(json);

 final  List<Complaint>? _complaints;
@override@JsonKey(name: "complaints") List<Complaint>? get complaints {
  final value = _complaints;
  if (value == null) return null;
  if (_complaints is EqualUnmodifiableListView) return _complaints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Department>? _departments;
@override@JsonKey(name: "departments") List<Department>? get departments {
  final value = _departments;
  if (value == null) return null;
  if (_departments is EqualUnmodifiableListView) return _departments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of OutdoorComplaintsList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutdoorComplaintsListCopyWith<_OutdoorComplaintsList> get copyWith => __$OutdoorComplaintsListCopyWithImpl<_OutdoorComplaintsList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutdoorComplaintsListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OutdoorComplaintsList&&const DeepCollectionEquality().equals(other._complaints, _complaints)&&const DeepCollectionEquality().equals(other._departments, _departments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_complaints),const DeepCollectionEquality().hash(_departments));

@override
String toString() {
  return 'OutdoorComplaintsList(complaints: $complaints, departments: $departments)';
}


}

/// @nodoc
abstract mixin class _$OutdoorComplaintsListCopyWith<$Res> implements $OutdoorComplaintsListCopyWith<$Res> {
  factory _$OutdoorComplaintsListCopyWith(_OutdoorComplaintsList value, $Res Function(_OutdoorComplaintsList) _then) = __$OutdoorComplaintsListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "complaints") List<Complaint>? complaints,@JsonKey(name: "departments") List<Department>? departments
});




}
/// @nodoc
class __$OutdoorComplaintsListCopyWithImpl<$Res>
    implements _$OutdoorComplaintsListCopyWith<$Res> {
  __$OutdoorComplaintsListCopyWithImpl(this._self, this._then);

  final _OutdoorComplaintsList _self;
  final $Res Function(_OutdoorComplaintsList) _then;

/// Create a copy of OutdoorComplaintsList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? complaints = freezed,Object? departments = freezed,}) {
  return _then(_OutdoorComplaintsList(
complaints: freezed == complaints ? _self._complaints : complaints // ignore: cast_nullable_to_non_nullable
as List<Complaint>?,departments: freezed == departments ? _self._departments : departments // ignore: cast_nullable_to_non_nullable
as List<Department>?,
  ));
}


}


/// @nodoc
mixin _$Department {

@JsonKey(name: "id") int? get id;@JsonKey(name: "title") String? get title;
/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartmentCopyWith<Department> get copyWith => _$DepartmentCopyWithImpl<Department>(this as Department, _$identity);

  /// Serializes this Department to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Department&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'Department(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $DepartmentCopyWith<$Res>  {
  factory $DepartmentCopyWith(Department value, $Res Function(Department) _then) = _$DepartmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title
});




}
/// @nodoc
class _$DepartmentCopyWithImpl<$Res>
    implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._self, this._then);

  final Department _self;
  final $Res Function(Department) _then;

/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Department].
extension DepartmentPatterns on Department {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Department value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Department() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Department value)  $default,){
final _that = this;
switch (_that) {
case _Department():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Department value)?  $default,){
final _that = this;
switch (_that) {
case _Department() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Department() when $default != null:
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title)  $default,) {final _that = this;
switch (_that) {
case _Department():
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title)?  $default,) {final _that = this;
switch (_that) {
case _Department() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Department implements Department {
  const _Department({@JsonKey(name: "id") this.id, @JsonKey(name: "title") this.title});
  factory _Department.fromJson(Map<String, dynamic> json) => _$DepartmentFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "title") final  String? title;

/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepartmentCopyWith<_Department> get copyWith => __$DepartmentCopyWithImpl<_Department>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepartmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Department&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'Department(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$DepartmentCopyWith<$Res> implements $DepartmentCopyWith<$Res> {
  factory _$DepartmentCopyWith(_Department value, $Res Function(_Department) _then) = __$DepartmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title
});




}
/// @nodoc
class __$DepartmentCopyWithImpl<$Res>
    implements _$DepartmentCopyWith<$Res> {
  __$DepartmentCopyWithImpl(this._self, this._then);

  final _Department _self;
  final $Res Function(_Department) _then;

/// Create a copy of Department
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_Department(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
