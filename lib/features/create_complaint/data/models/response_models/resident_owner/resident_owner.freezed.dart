// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resident_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResidentOwner {

@JsonKey(name: "data") OwnerData? get data;
/// Create a copy of ResidentOwner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResidentOwnerCopyWith<ResidentOwner> get copyWith => _$ResidentOwnerCopyWithImpl<ResidentOwner>(this as ResidentOwner, _$identity);

  /// Serializes this ResidentOwner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResidentOwner&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ResidentOwner(data: $data)';
}


}

/// @nodoc
abstract mixin class $ResidentOwnerCopyWith<$Res>  {
  factory $ResidentOwnerCopyWith(ResidentOwner value, $Res Function(ResidentOwner) _then) = _$ResidentOwnerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") OwnerData? data
});


$OwnerDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$ResidentOwnerCopyWithImpl<$Res>
    implements $ResidentOwnerCopyWith<$Res> {
  _$ResidentOwnerCopyWithImpl(this._self, this._then);

  final ResidentOwner _self;
  final $Res Function(ResidentOwner) _then;

/// Create a copy of ResidentOwner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OwnerData?,
  ));
}
/// Create a copy of ResidentOwner
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $OwnerDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ResidentOwner].
extension ResidentOwnerPatterns on ResidentOwner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResidentOwner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResidentOwner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResidentOwner value)  $default,){
final _that = this;
switch (_that) {
case _ResidentOwner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResidentOwner value)?  $default,){
final _that = this;
switch (_that) {
case _ResidentOwner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  OwnerData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResidentOwner() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  OwnerData? data)  $default,) {final _that = this;
switch (_that) {
case _ResidentOwner():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  OwnerData? data)?  $default,) {final _that = this;
switch (_that) {
case _ResidentOwner() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResidentOwner implements ResidentOwner {
  const _ResidentOwner({@JsonKey(name: "data") this.data});
  factory _ResidentOwner.fromJson(Map<String, dynamic> json) => _$ResidentOwnerFromJson(json);

@override@JsonKey(name: "data") final  OwnerData? data;

/// Create a copy of ResidentOwner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResidentOwnerCopyWith<_ResidentOwner> get copyWith => __$ResidentOwnerCopyWithImpl<_ResidentOwner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResidentOwnerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResidentOwner&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ResidentOwner(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ResidentOwnerCopyWith<$Res> implements $ResidentOwnerCopyWith<$Res> {
  factory _$ResidentOwnerCopyWith(_ResidentOwner value, $Res Function(_ResidentOwner) _then) = __$ResidentOwnerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") OwnerData? data
});


@override $OwnerDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$ResidentOwnerCopyWithImpl<$Res>
    implements _$ResidentOwnerCopyWith<$Res> {
  __$ResidentOwnerCopyWithImpl(this._self, this._then);

  final _ResidentOwner _self;
  final $Res Function(_ResidentOwner) _then;

/// Create a copy of ResidentOwner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_ResidentOwner(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OwnerData?,
  ));
}

/// Create a copy of ResidentOwner
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $OwnerDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$OwnerData {

@JsonKey(name: "owner") String? get owner;
/// Create a copy of OwnerData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OwnerDataCopyWith<OwnerData> get copyWith => _$OwnerDataCopyWithImpl<OwnerData>(this as OwnerData, _$identity);

  /// Serializes this OwnerData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OwnerData&&(identical(other.owner, owner) || other.owner == owner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,owner);

@override
String toString() {
  return 'OwnerData(owner: $owner)';
}


}

/// @nodoc
abstract mixin class $OwnerDataCopyWith<$Res>  {
  factory $OwnerDataCopyWith(OwnerData value, $Res Function(OwnerData) _then) = _$OwnerDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "owner") String? owner
});




}
/// @nodoc
class _$OwnerDataCopyWithImpl<$Res>
    implements $OwnerDataCopyWith<$Res> {
  _$OwnerDataCopyWithImpl(this._self, this._then);

  final OwnerData _self;
  final $Res Function(OwnerData) _then;

/// Create a copy of OwnerData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? owner = freezed,}) {
  return _then(_self.copyWith(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OwnerData].
extension OwnerDataPatterns on OwnerData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OwnerData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OwnerData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OwnerData value)  $default,){
final _that = this;
switch (_that) {
case _OwnerData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OwnerData value)?  $default,){
final _that = this;
switch (_that) {
case _OwnerData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "owner")  String? owner)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OwnerData() when $default != null:
return $default(_that.owner);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "owner")  String? owner)  $default,) {final _that = this;
switch (_that) {
case _OwnerData():
return $default(_that.owner);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "owner")  String? owner)?  $default,) {final _that = this;
switch (_that) {
case _OwnerData() when $default != null:
return $default(_that.owner);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OwnerData implements OwnerData {
  const _OwnerData({@JsonKey(name: "owner") this.owner});
  factory _OwnerData.fromJson(Map<String, dynamic> json) => _$OwnerDataFromJson(json);

@override@JsonKey(name: "owner") final  String? owner;

/// Create a copy of OwnerData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OwnerDataCopyWith<_OwnerData> get copyWith => __$OwnerDataCopyWithImpl<_OwnerData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OwnerDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OwnerData&&(identical(other.owner, owner) || other.owner == owner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,owner);

@override
String toString() {
  return 'OwnerData(owner: $owner)';
}


}

/// @nodoc
abstract mixin class _$OwnerDataCopyWith<$Res> implements $OwnerDataCopyWith<$Res> {
  factory _$OwnerDataCopyWith(_OwnerData value, $Res Function(_OwnerData) _then) = __$OwnerDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "owner") String? owner
});




}
/// @nodoc
class __$OwnerDataCopyWithImpl<$Res>
    implements _$OwnerDataCopyWith<$Res> {
  __$OwnerDataCopyWithImpl(this._self, this._then);

  final _OwnerData _self;
  final $Res Function(_OwnerData) _then;

/// Create a copy of OwnerData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? owner = freezed,}) {
  return _then(_OwnerData(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
