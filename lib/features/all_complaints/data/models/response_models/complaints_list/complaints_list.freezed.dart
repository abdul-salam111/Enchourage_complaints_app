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

@JsonKey(name: "data") Data? get data;
/// Create a copy of ComplaintsList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintsListCopyWith<ComplaintsList> get copyWith => _$ComplaintsListCopyWithImpl<ComplaintsList>(this as ComplaintsList, _$identity);

  /// Serializes this ComplaintsList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintsList&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

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
@JsonKey(name: "data") Data? data
});


$DataCopyWith<$Res>? get data;

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
as Data?,
  ));
}
/// Create a copy of ComplaintsList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  Data? data)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  Data? data)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  Data? data)?  $default,) {final _that = this;
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
  const _ComplaintsList({@JsonKey(name: "data") this.data});
  factory _ComplaintsList.fromJson(Map<String, dynamic> json) => _$ComplaintsListFromJson(json);

@override@JsonKey(name: "data") final  Data? data;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintsList&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

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
@JsonKey(name: "data") Data? data
});


@override $DataCopyWith<$Res>? get data;

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
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}

/// Create a copy of ComplaintsList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$Data {

@JsonKey(name: "current_page") int? get currentPage;@JsonKey(name: "data") List<Complaints>? get data;@JsonKey(name: "from") int? get from;@JsonKey(name: "last_page") int? get lastPage;@JsonKey(name: "per_page") int? get perPage;@JsonKey(name: "to") int? get to;@JsonKey(name: "total") int? get total;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,const DeepCollectionEquality().hash(data),from,lastPage,perPage,to,total);

@override
String toString() {
  return 'Data(currentPage: $currentPage, data: $data, from: $from, lastPage: $lastPage, perPage: $perPage, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "current_page") int? currentPage,@JsonKey(name: "data") List<Complaints>? data,@JsonKey(name: "from") int? from,@JsonKey(name: "last_page") int? lastPage,@JsonKey(name: "per_page") int? perPage,@JsonKey(name: "to") int? to,@JsonKey(name: "total") int? total
});




}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? data = freezed,Object? from = freezed,Object? lastPage = freezed,Object? perPage = freezed,Object? to = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Complaints>?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "current_page")  int? currentPage, @JsonKey(name: "data")  List<Complaints>? data, @JsonKey(name: "from")  int? from, @JsonKey(name: "last_page")  int? lastPage, @JsonKey(name: "per_page")  int? perPage, @JsonKey(name: "to")  int? to, @JsonKey(name: "total")  int? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.currentPage,_that.data,_that.from,_that.lastPage,_that.perPage,_that.to,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "current_page")  int? currentPage, @JsonKey(name: "data")  List<Complaints>? data, @JsonKey(name: "from")  int? from, @JsonKey(name: "last_page")  int? lastPage, @JsonKey(name: "per_page")  int? perPage, @JsonKey(name: "to")  int? to, @JsonKey(name: "total")  int? total)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.currentPage,_that.data,_that.from,_that.lastPage,_that.perPage,_that.to,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "current_page")  int? currentPage, @JsonKey(name: "data")  List<Complaints>? data, @JsonKey(name: "from")  int? from, @JsonKey(name: "last_page")  int? lastPage, @JsonKey(name: "per_page")  int? perPage, @JsonKey(name: "to")  int? to, @JsonKey(name: "total")  int? total)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.currentPage,_that.data,_that.from,_that.lastPage,_that.perPage,_that.to,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "current_page") this.currentPage, @JsonKey(name: "data") final  List<Complaints>? data, @JsonKey(name: "from") this.from, @JsonKey(name: "last_page") this.lastPage, @JsonKey(name: "per_page") this.perPage, @JsonKey(name: "to") this.to, @JsonKey(name: "total") this.total}): _data = data;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: "current_page") final  int? currentPage;
 final  List<Complaints>? _data;
@override@JsonKey(name: "data") List<Complaints>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "from") final  int? from;
@override@JsonKey(name: "last_page") final  int? lastPage;
@override@JsonKey(name: "per_page") final  int? perPage;
@override@JsonKey(name: "to") final  int? to;
@override@JsonKey(name: "total") final  int? total;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,const DeepCollectionEquality().hash(_data),from,lastPage,perPage,to,total);

@override
String toString() {
  return 'Data(currentPage: $currentPage, data: $data, from: $from, lastPage: $lastPage, perPage: $perPage, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "current_page") int? currentPage,@JsonKey(name: "data") List<Complaints>? data,@JsonKey(name: "from") int? from,@JsonKey(name: "last_page") int? lastPage,@JsonKey(name: "per_page") int? perPage,@JsonKey(name: "to") int? to,@JsonKey(name: "total") int? total
});




}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? data = freezed,Object? from = freezed,Object? lastPage = freezed,Object? perPage = freezed,Object? to = freezed,Object? total = freezed,}) {
  return _then(_Data(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Complaints>?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Complaints {

@JsonKey(name: "complaint_no") int? get complaintNo;@JsonKey(name: "member_name") String? get memberName;@JsonKey(name: "address") String? get address;@JsonKey(name: "complaint_type") String? get complaintType;@JsonKey(name: "status") String? get status;@JsonKey(name: "assign_by") String? get assignBy;@JsonKey(name: "assign_to user") String? get assignToUser;@JsonKey(name: "created_at") DateTime? get createdAt;
/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintsCopyWith<Complaints> get copyWith => _$ComplaintsCopyWithImpl<Complaints>(this as Complaints, _$identity);

  /// Serializes this Complaints to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Complaints&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&(identical(other.address, address) || other.address == address)&&(identical(other.complaintType, complaintType) || other.complaintType == complaintType)&&(identical(other.status, status) || other.status == status)&&(identical(other.assignBy, assignBy) || other.assignBy == assignBy)&&(identical(other.assignToUser, assignToUser) || other.assignToUser == assignToUser)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintNo,memberName,address,complaintType,status,assignBy,assignToUser,createdAt);

@override
String toString() {
  return 'Complaints(complaintNo: $complaintNo, memberName: $memberName, address: $address, complaintType: $complaintType, status: $status, assignBy: $assignBy, assignToUser: $assignToUser, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ComplaintsCopyWith<$Res>  {
  factory $ComplaintsCopyWith(Complaints value, $Res Function(Complaints) _then) = _$ComplaintsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "complaint_no") int? complaintNo,@JsonKey(name: "member_name") String? memberName,@JsonKey(name: "address") String? address,@JsonKey(name: "complaint_type") String? complaintType,@JsonKey(name: "status") String? status,@JsonKey(name: "assign_by") String? assignBy,@JsonKey(name: "assign_to user") String? assignToUser,@JsonKey(name: "created_at") DateTime? createdAt
});




}
/// @nodoc
class _$ComplaintsCopyWithImpl<$Res>
    implements $ComplaintsCopyWith<$Res> {
  _$ComplaintsCopyWithImpl(this._self, this._then);

  final Complaints _self;
  final $Res Function(Complaints) _then;

/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? complaintNo = freezed,Object? memberName = freezed,Object? address = freezed,Object? complaintType = freezed,Object? status = freezed,Object? assignBy = freezed,Object? assignToUser = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
complaintNo: freezed == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int?,memberName: freezed == memberName ? _self.memberName : memberName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,complaintType: freezed == complaintType ? _self.complaintType : complaintType // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,assignBy: freezed == assignBy ? _self.assignBy : assignBy // ignore: cast_nullable_to_non_nullable
as String?,assignToUser: freezed == assignToUser ? _self.assignToUser : assignToUser // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Complaints].
extension ComplaintsPatterns on Complaints {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Complaints value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Complaints() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Complaints value)  $default,){
final _that = this;
switch (_that) {
case _Complaints():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Complaints value)?  $default,){
final _that = this;
switch (_that) {
case _Complaints() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "member_name")  String? memberName, @JsonKey(name: "address")  String? address, @JsonKey(name: "complaint_type")  String? complaintType, @JsonKey(name: "status")  String? status, @JsonKey(name: "assign_by")  String? assignBy, @JsonKey(name: "assign_to user")  String? assignToUser, @JsonKey(name: "created_at")  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Complaints() when $default != null:
return $default(_that.complaintNo,_that.memberName,_that.address,_that.complaintType,_that.status,_that.assignBy,_that.assignToUser,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "member_name")  String? memberName, @JsonKey(name: "address")  String? address, @JsonKey(name: "complaint_type")  String? complaintType, @JsonKey(name: "status")  String? status, @JsonKey(name: "assign_by")  String? assignBy, @JsonKey(name: "assign_to user")  String? assignToUser, @JsonKey(name: "created_at")  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Complaints():
return $default(_that.complaintNo,_that.memberName,_that.address,_that.complaintType,_that.status,_that.assignBy,_that.assignToUser,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "complaint_no")  int? complaintNo, @JsonKey(name: "member_name")  String? memberName, @JsonKey(name: "address")  String? address, @JsonKey(name: "complaint_type")  String? complaintType, @JsonKey(name: "status")  String? status, @JsonKey(name: "assign_by")  String? assignBy, @JsonKey(name: "assign_to user")  String? assignToUser, @JsonKey(name: "created_at")  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Complaints() when $default != null:
return $default(_that.complaintNo,_that.memberName,_that.address,_that.complaintType,_that.status,_that.assignBy,_that.assignToUser,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Complaints implements Complaints {
  const _Complaints({@JsonKey(name: "complaint_no") this.complaintNo, @JsonKey(name: "member_name") this.memberName, @JsonKey(name: "address") this.address, @JsonKey(name: "complaint_type") this.complaintType, @JsonKey(name: "status") this.status, @JsonKey(name: "assign_by") this.assignBy, @JsonKey(name: "assign_to user") this.assignToUser, @JsonKey(name: "created_at") this.createdAt});
  factory _Complaints.fromJson(Map<String, dynamic> json) => _$ComplaintsFromJson(json);

@override@JsonKey(name: "complaint_no") final  int? complaintNo;
@override@JsonKey(name: "member_name") final  String? memberName;
@override@JsonKey(name: "address") final  String? address;
@override@JsonKey(name: "complaint_type") final  String? complaintType;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "assign_by") final  String? assignBy;
@override@JsonKey(name: "assign_to user") final  String? assignToUser;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;

/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintsCopyWith<_Complaints> get copyWith => __$ComplaintsCopyWithImpl<_Complaints>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Complaints&&(identical(other.complaintNo, complaintNo) || other.complaintNo == complaintNo)&&(identical(other.memberName, memberName) || other.memberName == memberName)&&(identical(other.address, address) || other.address == address)&&(identical(other.complaintType, complaintType) || other.complaintType == complaintType)&&(identical(other.status, status) || other.status == status)&&(identical(other.assignBy, assignBy) || other.assignBy == assignBy)&&(identical(other.assignToUser, assignToUser) || other.assignToUser == assignToUser)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintNo,memberName,address,complaintType,status,assignBy,assignToUser,createdAt);

@override
String toString() {
  return 'Complaints(complaintNo: $complaintNo, memberName: $memberName, address: $address, complaintType: $complaintType, status: $status, assignBy: $assignBy, assignToUser: $assignToUser, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ComplaintsCopyWith<$Res> implements $ComplaintsCopyWith<$Res> {
  factory _$ComplaintsCopyWith(_Complaints value, $Res Function(_Complaints) _then) = __$ComplaintsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "complaint_no") int? complaintNo,@JsonKey(name: "member_name") String? memberName,@JsonKey(name: "address") String? address,@JsonKey(name: "complaint_type") String? complaintType,@JsonKey(name: "status") String? status,@JsonKey(name: "assign_by") String? assignBy,@JsonKey(name: "assign_to user") String? assignToUser,@JsonKey(name: "created_at") DateTime? createdAt
});




}
/// @nodoc
class __$ComplaintsCopyWithImpl<$Res>
    implements _$ComplaintsCopyWith<$Res> {
  __$ComplaintsCopyWithImpl(this._self, this._then);

  final _Complaints _self;
  final $Res Function(_Complaints) _then;

/// Create a copy of Complaints
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? complaintNo = freezed,Object? memberName = freezed,Object? address = freezed,Object? complaintType = freezed,Object? status = freezed,Object? assignBy = freezed,Object? assignToUser = freezed,Object? createdAt = freezed,}) {
  return _then(_Complaints(
complaintNo: freezed == complaintNo ? _self.complaintNo : complaintNo // ignore: cast_nullable_to_non_nullable
as int?,memberName: freezed == memberName ? _self.memberName : memberName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,complaintType: freezed == complaintType ? _self.complaintType : complaintType // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,assignBy: freezed == assignBy ? _self.assignBy : assignBy // ignore: cast_nullable_to_non_nullable
as String?,assignToUser: freezed == assignToUser ? _self.assignToUser : assignToUser // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
