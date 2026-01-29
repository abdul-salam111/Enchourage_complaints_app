// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_bills_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ComplaintBillsList {

 List<ComplaintBills>? get data;
/// Create a copy of ComplaintBillsList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintBillsListCopyWith<ComplaintBillsList> get copyWith => _$ComplaintBillsListCopyWithImpl<ComplaintBillsList>(this as ComplaintBillsList, _$identity);

  /// Serializes this ComplaintBillsList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintBillsList&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ComplaintBillsList(data: $data)';
}


}

/// @nodoc
abstract mixin class $ComplaintBillsListCopyWith<$Res>  {
  factory $ComplaintBillsListCopyWith(ComplaintBillsList value, $Res Function(ComplaintBillsList) _then) = _$ComplaintBillsListCopyWithImpl;
@useResult
$Res call({
 List<ComplaintBills>? data
});




}
/// @nodoc
class _$ComplaintBillsListCopyWithImpl<$Res>
    implements $ComplaintBillsListCopyWith<$Res> {
  _$ComplaintBillsListCopyWithImpl(this._self, this._then);

  final ComplaintBillsList _self;
  final $Res Function(ComplaintBillsList) _then;

/// Create a copy of ComplaintBillsList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ComplaintBills>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintBillsList].
extension ComplaintBillsListPatterns on ComplaintBillsList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintBillsList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintBillsList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintBillsList value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintBillsList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintBillsList value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintBillsList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ComplaintBills>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintBillsList() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ComplaintBills>? data)  $default,) {final _that = this;
switch (_that) {
case _ComplaintBillsList():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ComplaintBills>? data)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintBillsList() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComplaintBillsList implements ComplaintBillsList {
  const _ComplaintBillsList({final  List<ComplaintBills>? data}): _data = data;
  factory _ComplaintBillsList.fromJson(Map<String, dynamic> json) => _$ComplaintBillsListFromJson(json);

 final  List<ComplaintBills>? _data;
@override List<ComplaintBills>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ComplaintBillsList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintBillsListCopyWith<_ComplaintBillsList> get copyWith => __$ComplaintBillsListCopyWithImpl<_ComplaintBillsList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintBillsListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintBillsList&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ComplaintBillsList(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ComplaintBillsListCopyWith<$Res> implements $ComplaintBillsListCopyWith<$Res> {
  factory _$ComplaintBillsListCopyWith(_ComplaintBillsList value, $Res Function(_ComplaintBillsList) _then) = __$ComplaintBillsListCopyWithImpl;
@override @useResult
$Res call({
 List<ComplaintBills>? data
});




}
/// @nodoc
class __$ComplaintBillsListCopyWithImpl<$Res>
    implements _$ComplaintBillsListCopyWith<$Res> {
  __$ComplaintBillsListCopyWithImpl(this._self, this._then);

  final _ComplaintBillsList _self;
  final $Res Function(_ComplaintBillsList) _then;

/// Create a copy of ComplaintBillsList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_ComplaintBillsList(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ComplaintBills>?,
  ));
}


}


/// @nodoc
mixin _$ComplaintBills {

 int? get id; int? get billing_type; int? get amount; dynamic get description; DateTime? get created_at; List<dynamic>? get receipts;
/// Create a copy of ComplaintBills
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintBillsCopyWith<ComplaintBills> get copyWith => _$ComplaintBillsCopyWithImpl<ComplaintBills>(this as ComplaintBills, _$identity);

  /// Serializes this ComplaintBills to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintBills&&(identical(other.id, id) || other.id == id)&&(identical(other.billing_type, billing_type) || other.billing_type == billing_type)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other.description, description)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&const DeepCollectionEquality().equals(other.receipts, receipts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,billing_type,amount,const DeepCollectionEquality().hash(description),created_at,const DeepCollectionEquality().hash(receipts));

@override
String toString() {
  return 'ComplaintBills(id: $id, billing_type: $billing_type, amount: $amount, description: $description, created_at: $created_at, receipts: $receipts)';
}


}

/// @nodoc
abstract mixin class $ComplaintBillsCopyWith<$Res>  {
  factory $ComplaintBillsCopyWith(ComplaintBills value, $Res Function(ComplaintBills) _then) = _$ComplaintBillsCopyWithImpl;
@useResult
$Res call({
 int? id, int? billing_type, int? amount, dynamic description, DateTime? created_at, List<dynamic>? receipts
});




}
/// @nodoc
class _$ComplaintBillsCopyWithImpl<$Res>
    implements $ComplaintBillsCopyWith<$Res> {
  _$ComplaintBillsCopyWithImpl(this._self, this._then);

  final ComplaintBills _self;
  final $Res Function(ComplaintBills) _then;

/// Create a copy of ComplaintBills
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? billing_type = freezed,Object? amount = freezed,Object? description = freezed,Object? created_at = freezed,Object? receipts = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,billing_type: freezed == billing_type ? _self.billing_type : billing_type // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as dynamic,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime?,receipts: freezed == receipts ? _self.receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintBills].
extension ComplaintBillsPatterns on ComplaintBills {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintBills value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintBills() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintBills value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintBills():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintBills value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintBills() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? billing_type,  int? amount,  dynamic description,  DateTime? created_at,  List<dynamic>? receipts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintBills() when $default != null:
return $default(_that.id,_that.billing_type,_that.amount,_that.description,_that.created_at,_that.receipts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? billing_type,  int? amount,  dynamic description,  DateTime? created_at,  List<dynamic>? receipts)  $default,) {final _that = this;
switch (_that) {
case _ComplaintBills():
return $default(_that.id,_that.billing_type,_that.amount,_that.description,_that.created_at,_that.receipts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? billing_type,  int? amount,  dynamic description,  DateTime? created_at,  List<dynamic>? receipts)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintBills() when $default != null:
return $default(_that.id,_that.billing_type,_that.amount,_that.description,_that.created_at,_that.receipts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComplaintBills implements ComplaintBills {
  const _ComplaintBills({this.id, this.billing_type, this.amount, this.description, this.created_at, final  List<dynamic>? receipts}): _receipts = receipts;
  factory _ComplaintBills.fromJson(Map<String, dynamic> json) => _$ComplaintBillsFromJson(json);

@override final  int? id;
@override final  int? billing_type;
@override final  int? amount;
@override final  dynamic description;
@override final  DateTime? created_at;
 final  List<dynamic>? _receipts;
@override List<dynamic>? get receipts {
  final value = _receipts;
  if (value == null) return null;
  if (_receipts is EqualUnmodifiableListView) return _receipts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ComplaintBills
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintBillsCopyWith<_ComplaintBills> get copyWith => __$ComplaintBillsCopyWithImpl<_ComplaintBills>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintBillsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintBills&&(identical(other.id, id) || other.id == id)&&(identical(other.billing_type, billing_type) || other.billing_type == billing_type)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other.description, description)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&const DeepCollectionEquality().equals(other._receipts, _receipts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,billing_type,amount,const DeepCollectionEquality().hash(description),created_at,const DeepCollectionEquality().hash(_receipts));

@override
String toString() {
  return 'ComplaintBills(id: $id, billing_type: $billing_type, amount: $amount, description: $description, created_at: $created_at, receipts: $receipts)';
}


}

/// @nodoc
abstract mixin class _$ComplaintBillsCopyWith<$Res> implements $ComplaintBillsCopyWith<$Res> {
  factory _$ComplaintBillsCopyWith(_ComplaintBills value, $Res Function(_ComplaintBills) _then) = __$ComplaintBillsCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? billing_type, int? amount, dynamic description, DateTime? created_at, List<dynamic>? receipts
});




}
/// @nodoc
class __$ComplaintBillsCopyWithImpl<$Res>
    implements _$ComplaintBillsCopyWith<$Res> {
  __$ComplaintBillsCopyWithImpl(this._self, this._then);

  final _ComplaintBills _self;
  final $Res Function(_ComplaintBills) _then;

/// Create a copy of ComplaintBills
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? billing_type = freezed,Object? amount = freezed,Object? description = freezed,Object? created_at = freezed,Object? receipts = freezed,}) {
  return _then(_ComplaintBills(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,billing_type: freezed == billing_type ? _self.billing_type : billing_type // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as dynamic,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as DateTime?,receipts: freezed == receipts ? _self._receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}

// dart format on
