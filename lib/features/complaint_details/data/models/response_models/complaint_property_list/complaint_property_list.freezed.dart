// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_property_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ComplaintPropertyList {

 ComplaintProperty? get data;
/// Create a copy of ComplaintPropertyList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintPropertyListCopyWith<ComplaintPropertyList> get copyWith => _$ComplaintPropertyListCopyWithImpl<ComplaintPropertyList>(this as ComplaintPropertyList, _$identity);

  /// Serializes this ComplaintPropertyList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintPropertyList&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ComplaintPropertyList(data: $data)';
}


}

/// @nodoc
abstract mixin class $ComplaintPropertyListCopyWith<$Res>  {
  factory $ComplaintPropertyListCopyWith(ComplaintPropertyList value, $Res Function(ComplaintPropertyList) _then) = _$ComplaintPropertyListCopyWithImpl;
@useResult
$Res call({
 ComplaintProperty? data
});


$ComplaintPropertyCopyWith<$Res>? get data;

}
/// @nodoc
class _$ComplaintPropertyListCopyWithImpl<$Res>
    implements $ComplaintPropertyListCopyWith<$Res> {
  _$ComplaintPropertyListCopyWithImpl(this._self, this._then);

  final ComplaintPropertyList _self;
  final $Res Function(ComplaintPropertyList) _then;

/// Create a copy of ComplaintPropertyList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ComplaintProperty?,
  ));
}
/// Create a copy of ComplaintPropertyList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComplaintPropertyCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ComplaintPropertyCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ComplaintPropertyList].
extension ComplaintPropertyListPatterns on ComplaintPropertyList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintPropertyList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintPropertyList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintPropertyList value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintPropertyList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintPropertyList value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintPropertyList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ComplaintProperty? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintPropertyList() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ComplaintProperty? data)  $default,) {final _that = this;
switch (_that) {
case _ComplaintPropertyList():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ComplaintProperty? data)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintPropertyList() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComplaintPropertyList implements ComplaintPropertyList {
  const _ComplaintPropertyList({this.data});
  factory _ComplaintPropertyList.fromJson(Map<String, dynamic> json) => _$ComplaintPropertyListFromJson(json);

@override final  ComplaintProperty? data;

/// Create a copy of ComplaintPropertyList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintPropertyListCopyWith<_ComplaintPropertyList> get copyWith => __$ComplaintPropertyListCopyWithImpl<_ComplaintPropertyList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintPropertyListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintPropertyList&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ComplaintPropertyList(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ComplaintPropertyListCopyWith<$Res> implements $ComplaintPropertyListCopyWith<$Res> {
  factory _$ComplaintPropertyListCopyWith(_ComplaintPropertyList value, $Res Function(_ComplaintPropertyList) _then) = __$ComplaintPropertyListCopyWithImpl;
@override @useResult
$Res call({
 ComplaintProperty? data
});


@override $ComplaintPropertyCopyWith<$Res>? get data;

}
/// @nodoc
class __$ComplaintPropertyListCopyWithImpl<$Res>
    implements _$ComplaintPropertyListCopyWith<$Res> {
  __$ComplaintPropertyListCopyWithImpl(this._self, this._then);

  final _ComplaintPropertyList _self;
  final $Res Function(_ComplaintPropertyList) _then;

/// Create a copy of ComplaintPropertyList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_ComplaintPropertyList(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ComplaintProperty?,
  ));
}

/// Create a copy of ComplaintPropertyList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComplaintPropertyCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ComplaintPropertyCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ComplaintProperty {

 int? get complaintId; int? get propertyId; String? get address;
/// Create a copy of ComplaintProperty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintPropertyCopyWith<ComplaintProperty> get copyWith => _$ComplaintPropertyCopyWithImpl<ComplaintProperty>(this as ComplaintProperty, _$identity);

  /// Serializes this ComplaintProperty to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintProperty&&(identical(other.complaintId, complaintId) || other.complaintId == complaintId)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintId,propertyId,address);

@override
String toString() {
  return 'ComplaintProperty(complaintId: $complaintId, propertyId: $propertyId, address: $address)';
}


}

/// @nodoc
abstract mixin class $ComplaintPropertyCopyWith<$Res>  {
  factory $ComplaintPropertyCopyWith(ComplaintProperty value, $Res Function(ComplaintProperty) _then) = _$ComplaintPropertyCopyWithImpl;
@useResult
$Res call({
 int? complaintId, int? propertyId, String? address
});




}
/// @nodoc
class _$ComplaintPropertyCopyWithImpl<$Res>
    implements $ComplaintPropertyCopyWith<$Res> {
  _$ComplaintPropertyCopyWithImpl(this._self, this._then);

  final ComplaintProperty _self;
  final $Res Function(ComplaintProperty) _then;

/// Create a copy of ComplaintProperty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? complaintId = freezed,Object? propertyId = freezed,Object? address = freezed,}) {
  return _then(_self.copyWith(
complaintId: freezed == complaintId ? _self.complaintId : complaintId // ignore: cast_nullable_to_non_nullable
as int?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintProperty].
extension ComplaintPropertyPatterns on ComplaintProperty {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintProperty value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintProperty() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintProperty value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintProperty():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintProperty value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintProperty() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? complaintId,  int? propertyId,  String? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintProperty() when $default != null:
return $default(_that.complaintId,_that.propertyId,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? complaintId,  int? propertyId,  String? address)  $default,) {final _that = this;
switch (_that) {
case _ComplaintProperty():
return $default(_that.complaintId,_that.propertyId,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? complaintId,  int? propertyId,  String? address)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintProperty() when $default != null:
return $default(_that.complaintId,_that.propertyId,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComplaintProperty implements ComplaintProperty {
  const _ComplaintProperty({this.complaintId, this.propertyId, this.address});
  factory _ComplaintProperty.fromJson(Map<String, dynamic> json) => _$ComplaintPropertyFromJson(json);

@override final  int? complaintId;
@override final  int? propertyId;
@override final  String? address;

/// Create a copy of ComplaintProperty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintPropertyCopyWith<_ComplaintProperty> get copyWith => __$ComplaintPropertyCopyWithImpl<_ComplaintProperty>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintPropertyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintProperty&&(identical(other.complaintId, complaintId) || other.complaintId == complaintId)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintId,propertyId,address);

@override
String toString() {
  return 'ComplaintProperty(complaintId: $complaintId, propertyId: $propertyId, address: $address)';
}


}

/// @nodoc
abstract mixin class _$ComplaintPropertyCopyWith<$Res> implements $ComplaintPropertyCopyWith<$Res> {
  factory _$ComplaintPropertyCopyWith(_ComplaintProperty value, $Res Function(_ComplaintProperty) _then) = __$ComplaintPropertyCopyWithImpl;
@override @useResult
$Res call({
 int? complaintId, int? propertyId, String? address
});




}
/// @nodoc
class __$ComplaintPropertyCopyWithImpl<$Res>
    implements _$ComplaintPropertyCopyWith<$Res> {
  __$ComplaintPropertyCopyWithImpl(this._self, this._then);

  final _ComplaintProperty _self;
  final $Res Function(_ComplaintProperty) _then;

/// Create a copy of ComplaintProperty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? complaintId = freezed,Object? propertyId = freezed,Object? address = freezed,}) {
  return _then(_ComplaintProperty(
complaintId: freezed == complaintId ? _self.complaintId : complaintId // ignore: cast_nullable_to_non_nullable
as int?,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
