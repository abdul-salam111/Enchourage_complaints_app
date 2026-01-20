// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plot_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlotList {

@JsonKey(name: "data") List<Plot>? get data;
/// Create a copy of PlotList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlotListCopyWith<PlotList> get copyWith => _$PlotListCopyWithImpl<PlotList>(this as PlotList, _$identity);

  /// Serializes this PlotList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlotList&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'PlotList(data: $data)';
}


}

/// @nodoc
abstract mixin class $PlotListCopyWith<$Res>  {
  factory $PlotListCopyWith(PlotList value, $Res Function(PlotList) _then) = _$PlotListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") List<Plot>? data
});




}
/// @nodoc
class _$PlotListCopyWithImpl<$Res>
    implements $PlotListCopyWith<$Res> {
  _$PlotListCopyWithImpl(this._self, this._then);

  final PlotList _self;
  final $Res Function(PlotList) _then;

/// Create a copy of PlotList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Plot>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlotList].
extension PlotListPatterns on PlotList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlotList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlotList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlotList value)  $default,){
final _that = this;
switch (_that) {
case _PlotList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlotList value)?  $default,){
final _that = this;
switch (_that) {
case _PlotList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<Plot>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlotList() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<Plot>? data)  $default,) {final _that = this;
switch (_that) {
case _PlotList():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  List<Plot>? data)?  $default,) {final _that = this;
switch (_that) {
case _PlotList() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlotList implements PlotList {
  const _PlotList({@JsonKey(name: "data") final  List<Plot>? data}): _data = data;
  factory _PlotList.fromJson(Map<String, dynamic> json) => _$PlotListFromJson(json);

 final  List<Plot>? _data;
@override@JsonKey(name: "data") List<Plot>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PlotList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlotListCopyWith<_PlotList> get copyWith => __$PlotListCopyWithImpl<_PlotList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlotListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlotList&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'PlotList(data: $data)';
}


}

/// @nodoc
abstract mixin class _$PlotListCopyWith<$Res> implements $PlotListCopyWith<$Res> {
  factory _$PlotListCopyWith(_PlotList value, $Res Function(_PlotList) _then) = __$PlotListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") List<Plot>? data
});




}
/// @nodoc
class __$PlotListCopyWithImpl<$Res>
    implements _$PlotListCopyWith<$Res> {
  __$PlotListCopyWithImpl(this._self, this._then);

  final _PlotList _self;
  final $Res Function(_PlotList) _then;

/// Create a copy of PlotList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_PlotList(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Plot>?,
  ));
}


}


/// @nodoc
mixin _$Plot {

@JsonKey(name: "id") int? get id;@JsonKey(name: "block_id") int? get blockId;@JsonKey(name: "street_id") int? get streetId;@JsonKey(name: "plot_no") String? get plotNo;@JsonKey(name: "sq_yards") String? get sqYards;@JsonKey(name: "status") int? get status;
/// Create a copy of Plot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlotCopyWith<Plot> get copyWith => _$PlotCopyWithImpl<Plot>(this as Plot, _$identity);

  /// Serializes this Plot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Plot&&(identical(other.id, id) || other.id == id)&&(identical(other.blockId, blockId) || other.blockId == blockId)&&(identical(other.streetId, streetId) || other.streetId == streetId)&&(identical(other.plotNo, plotNo) || other.plotNo == plotNo)&&(identical(other.sqYards, sqYards) || other.sqYards == sqYards)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,blockId,streetId,plotNo,sqYards,status);

@override
String toString() {
  return 'Plot(id: $id, blockId: $blockId, streetId: $streetId, plotNo: $plotNo, sqYards: $sqYards, status: $status)';
}


}

/// @nodoc
abstract mixin class $PlotCopyWith<$Res>  {
  factory $PlotCopyWith(Plot value, $Res Function(Plot) _then) = _$PlotCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "block_id") int? blockId,@JsonKey(name: "street_id") int? streetId,@JsonKey(name: "plot_no") String? plotNo,@JsonKey(name: "sq_yards") String? sqYards,@JsonKey(name: "status") int? status
});




}
/// @nodoc
class _$PlotCopyWithImpl<$Res>
    implements $PlotCopyWith<$Res> {
  _$PlotCopyWithImpl(this._self, this._then);

  final Plot _self;
  final $Res Function(Plot) _then;

/// Create a copy of Plot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? blockId = freezed,Object? streetId = freezed,Object? plotNo = freezed,Object? sqYards = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,blockId: freezed == blockId ? _self.blockId : blockId // ignore: cast_nullable_to_non_nullable
as int?,streetId: freezed == streetId ? _self.streetId : streetId // ignore: cast_nullable_to_non_nullable
as int?,plotNo: freezed == plotNo ? _self.plotNo : plotNo // ignore: cast_nullable_to_non_nullable
as String?,sqYards: freezed == sqYards ? _self.sqYards : sqYards // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Plot].
extension PlotPatterns on Plot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Plot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Plot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Plot value)  $default,){
final _that = this;
switch (_that) {
case _Plot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Plot value)?  $default,){
final _that = this;
switch (_that) {
case _Plot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "block_id")  int? blockId, @JsonKey(name: "street_id")  int? streetId, @JsonKey(name: "plot_no")  String? plotNo, @JsonKey(name: "sq_yards")  String? sqYards, @JsonKey(name: "status")  int? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Plot() when $default != null:
return $default(_that.id,_that.blockId,_that.streetId,_that.plotNo,_that.sqYards,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "block_id")  int? blockId, @JsonKey(name: "street_id")  int? streetId, @JsonKey(name: "plot_no")  String? plotNo, @JsonKey(name: "sq_yards")  String? sqYards, @JsonKey(name: "status")  int? status)  $default,) {final _that = this;
switch (_that) {
case _Plot():
return $default(_that.id,_that.blockId,_that.streetId,_that.plotNo,_that.sqYards,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "block_id")  int? blockId, @JsonKey(name: "street_id")  int? streetId, @JsonKey(name: "plot_no")  String? plotNo, @JsonKey(name: "sq_yards")  String? sqYards, @JsonKey(name: "status")  int? status)?  $default,) {final _that = this;
switch (_that) {
case _Plot() when $default != null:
return $default(_that.id,_that.blockId,_that.streetId,_that.plotNo,_that.sqYards,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Plot implements Plot {
  const _Plot({@JsonKey(name: "id") this.id, @JsonKey(name: "block_id") this.blockId, @JsonKey(name: "street_id") this.streetId, @JsonKey(name: "plot_no") this.plotNo, @JsonKey(name: "sq_yards") this.sqYards, @JsonKey(name: "status") this.status});
  factory _Plot.fromJson(Map<String, dynamic> json) => _$PlotFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "block_id") final  int? blockId;
@override@JsonKey(name: "street_id") final  int? streetId;
@override@JsonKey(name: "plot_no") final  String? plotNo;
@override@JsonKey(name: "sq_yards") final  String? sqYards;
@override@JsonKey(name: "status") final  int? status;

/// Create a copy of Plot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlotCopyWith<_Plot> get copyWith => __$PlotCopyWithImpl<_Plot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Plot&&(identical(other.id, id) || other.id == id)&&(identical(other.blockId, blockId) || other.blockId == blockId)&&(identical(other.streetId, streetId) || other.streetId == streetId)&&(identical(other.plotNo, plotNo) || other.plotNo == plotNo)&&(identical(other.sqYards, sqYards) || other.sqYards == sqYards)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,blockId,streetId,plotNo,sqYards,status);

@override
String toString() {
  return 'Plot(id: $id, blockId: $blockId, streetId: $streetId, plotNo: $plotNo, sqYards: $sqYards, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PlotCopyWith<$Res> implements $PlotCopyWith<$Res> {
  factory _$PlotCopyWith(_Plot value, $Res Function(_Plot) _then) = __$PlotCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "block_id") int? blockId,@JsonKey(name: "street_id") int? streetId,@JsonKey(name: "plot_no") String? plotNo,@JsonKey(name: "sq_yards") String? sqYards,@JsonKey(name: "status") int? status
});




}
/// @nodoc
class __$PlotCopyWithImpl<$Res>
    implements _$PlotCopyWith<$Res> {
  __$PlotCopyWithImpl(this._self, this._then);

  final _Plot _self;
  final $Res Function(_Plot) _then;

/// Create a copy of Plot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? blockId = freezed,Object? streetId = freezed,Object? plotNo = freezed,Object? sqYards = freezed,Object? status = freezed,}) {
  return _then(_Plot(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,blockId: freezed == blockId ? _self.blockId : blockId // ignore: cast_nullable_to_non_nullable
as int?,streetId: freezed == streetId ? _self.streetId : streetId // ignore: cast_nullable_to_non_nullable
as int?,plotNo: freezed == plotNo ? _self.plotNo : plotNo // ignore: cast_nullable_to_non_nullable
as String?,sqYards: freezed == sqYards ? _self.sqYards : sqYards // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
