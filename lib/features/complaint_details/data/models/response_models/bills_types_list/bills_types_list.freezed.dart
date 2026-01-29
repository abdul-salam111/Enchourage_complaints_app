// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bills_types_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillsTypesList {

 List<BillType>? get data;
/// Create a copy of BillsTypesList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillsTypesListCopyWith<BillsTypesList> get copyWith => _$BillsTypesListCopyWithImpl<BillsTypesList>(this as BillsTypesList, _$identity);

  /// Serializes this BillsTypesList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillsTypesList&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BillsTypesList(data: $data)';
}


}

/// @nodoc
abstract mixin class $BillsTypesListCopyWith<$Res>  {
  factory $BillsTypesListCopyWith(BillsTypesList value, $Res Function(BillsTypesList) _then) = _$BillsTypesListCopyWithImpl;
@useResult
$Res call({
 List<BillType>? data
});




}
/// @nodoc
class _$BillsTypesListCopyWithImpl<$Res>
    implements $BillsTypesListCopyWith<$Res> {
  _$BillsTypesListCopyWithImpl(this._self, this._then);

  final BillsTypesList _self;
  final $Res Function(BillsTypesList) _then;

/// Create a copy of BillsTypesList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BillType>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BillsTypesList].
extension BillsTypesListPatterns on BillsTypesList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillsTypesList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillsTypesList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillsTypesList value)  $default,){
final _that = this;
switch (_that) {
case _BillsTypesList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillsTypesList value)?  $default,){
final _that = this;
switch (_that) {
case _BillsTypesList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BillType>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillsTypesList() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BillType>? data)  $default,) {final _that = this;
switch (_that) {
case _BillsTypesList():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BillType>? data)?  $default,) {final _that = this;
switch (_that) {
case _BillsTypesList() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillsTypesList implements BillsTypesList {
  const _BillsTypesList({final  List<BillType>? data}): _data = data;
  factory _BillsTypesList.fromJson(Map<String, dynamic> json) => _$BillsTypesListFromJson(json);

 final  List<BillType>? _data;
@override List<BillType>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BillsTypesList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillsTypesListCopyWith<_BillsTypesList> get copyWith => __$BillsTypesListCopyWithImpl<_BillsTypesList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillsTypesListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillsTypesList&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'BillsTypesList(data: $data)';
}


}

/// @nodoc
abstract mixin class _$BillsTypesListCopyWith<$Res> implements $BillsTypesListCopyWith<$Res> {
  factory _$BillsTypesListCopyWith(_BillsTypesList value, $Res Function(_BillsTypesList) _then) = __$BillsTypesListCopyWithImpl;
@override @useResult
$Res call({
 List<BillType>? data
});




}
/// @nodoc
class __$BillsTypesListCopyWithImpl<$Res>
    implements _$BillsTypesListCopyWith<$Res> {
  __$BillsTypesListCopyWithImpl(this._self, this._then);

  final _BillsTypesList _self;
  final $Res Function(_BillsTypesList) _then;

/// Create a copy of BillsTypesList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_BillsTypesList(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BillType>?,
  ));
}


}


/// @nodoc
mixin _$BillType {

 int? get id; String? get title;
/// Create a copy of BillType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillTypeCopyWith<BillType> get copyWith => _$BillTypeCopyWithImpl<BillType>(this as BillType, _$identity);

  /// Serializes this BillType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillType&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'BillType(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $BillTypeCopyWith<$Res>  {
  factory $BillTypeCopyWith(BillType value, $Res Function(BillType) _then) = _$BillTypeCopyWithImpl;
@useResult
$Res call({
 int? id, String? title
});




}
/// @nodoc
class _$BillTypeCopyWithImpl<$Res>
    implements $BillTypeCopyWith<$Res> {
  _$BillTypeCopyWithImpl(this._self, this._then);

  final BillType _self;
  final $Res Function(BillType) _then;

/// Create a copy of BillType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BillType].
extension BillTypePatterns on BillType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillType value)  $default,){
final _that = this;
switch (_that) {
case _BillType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillType value)?  $default,){
final _that = this;
switch (_that) {
case _BillType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillType() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? title)  $default,) {final _that = this;
switch (_that) {
case _BillType():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? title)?  $default,) {final _that = this;
switch (_that) {
case _BillType() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillType implements BillType {
  const _BillType({this.id, this.title});
  factory _BillType.fromJson(Map<String, dynamic> json) => _$BillTypeFromJson(json);

@override final  int? id;
@override final  String? title;

/// Create a copy of BillType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillTypeCopyWith<_BillType> get copyWith => __$BillTypeCopyWithImpl<_BillType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillType&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'BillType(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$BillTypeCopyWith<$Res> implements $BillTypeCopyWith<$Res> {
  factory _$BillTypeCopyWith(_BillType value, $Res Function(_BillType) _then) = __$BillTypeCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? title
});




}
/// @nodoc
class __$BillTypeCopyWithImpl<$Res>
    implements _$BillTypeCopyWith<$Res> {
  __$BillTypeCopyWithImpl(this._self, this._then);

  final _BillType _self;
  final $Res Function(_BillType) _then;

/// Create a copy of BillType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_BillType(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
