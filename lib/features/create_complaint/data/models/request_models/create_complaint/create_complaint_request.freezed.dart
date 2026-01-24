// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_complaint_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateComplaintRequest {

@JsonKey(name: "complaint_type") String get complaintType;@JsonKey(name: "description") String get description;@JsonKey(name: "block") String get block;@JsonKey(name: "street") String get street;@JsonKey(name: "house") String get house;@JsonKey(name: "residents") String get residents;@JsonKey(name: "plot_id") String get plotId;@JsonKey(includeFromJson: false, includeToJson: false) List<String>? get attachmentPaths;
/// Create a copy of CreateComplaintRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateComplaintRequestCopyWith<CreateComplaintRequest> get copyWith => _$CreateComplaintRequestCopyWithImpl<CreateComplaintRequest>(this as CreateComplaintRequest, _$identity);

  /// Serializes this CreateComplaintRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateComplaintRequest&&(identical(other.complaintType, complaintType) || other.complaintType == complaintType)&&(identical(other.description, description) || other.description == description)&&(identical(other.block, block) || other.block == block)&&(identical(other.street, street) || other.street == street)&&(identical(other.house, house) || other.house == house)&&(identical(other.residents, residents) || other.residents == residents)&&(identical(other.plotId, plotId) || other.plotId == plotId)&&const DeepCollectionEquality().equals(other.attachmentPaths, attachmentPaths));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintType,description,block,street,house,residents,plotId,const DeepCollectionEquality().hash(attachmentPaths));

@override
String toString() {
  return 'CreateComplaintRequest(complaintType: $complaintType, description: $description, block: $block, street: $street, house: $house, residents: $residents, plotId: $plotId, attachmentPaths: $attachmentPaths)';
}


}

/// @nodoc
abstract mixin class $CreateComplaintRequestCopyWith<$Res>  {
  factory $CreateComplaintRequestCopyWith(CreateComplaintRequest value, $Res Function(CreateComplaintRequest) _then) = _$CreateComplaintRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "complaint_type") String complaintType,@JsonKey(name: "description") String description,@JsonKey(name: "block") String block,@JsonKey(name: "street") String street,@JsonKey(name: "house") String house,@JsonKey(name: "residents") String residents,@JsonKey(name: "plot_id") String plotId,@JsonKey(includeFromJson: false, includeToJson: false) List<String>? attachmentPaths
});




}
/// @nodoc
class _$CreateComplaintRequestCopyWithImpl<$Res>
    implements $CreateComplaintRequestCopyWith<$Res> {
  _$CreateComplaintRequestCopyWithImpl(this._self, this._then);

  final CreateComplaintRequest _self;
  final $Res Function(CreateComplaintRequest) _then;

/// Create a copy of CreateComplaintRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? complaintType = null,Object? description = null,Object? block = null,Object? street = null,Object? house = null,Object? residents = null,Object? plotId = null,Object? attachmentPaths = freezed,}) {
  return _then(_self.copyWith(
complaintType: null == complaintType ? _self.complaintType : complaintType // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,block: null == block ? _self.block : block // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,house: null == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String,residents: null == residents ? _self.residents : residents // ignore: cast_nullable_to_non_nullable
as String,plotId: null == plotId ? _self.plotId : plotId // ignore: cast_nullable_to_non_nullable
as String,attachmentPaths: freezed == attachmentPaths ? _self.attachmentPaths : attachmentPaths // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateComplaintRequest].
extension CreateComplaintRequestPatterns on CreateComplaintRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateComplaintRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateComplaintRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateComplaintRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateComplaintRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateComplaintRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateComplaintRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "complaint_type")  String complaintType, @JsonKey(name: "description")  String description, @JsonKey(name: "block")  String block, @JsonKey(name: "street")  String street, @JsonKey(name: "house")  String house, @JsonKey(name: "residents")  String residents, @JsonKey(name: "plot_id")  String plotId, @JsonKey(includeFromJson: false, includeToJson: false)  List<String>? attachmentPaths)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateComplaintRequest() when $default != null:
return $default(_that.complaintType,_that.description,_that.block,_that.street,_that.house,_that.residents,_that.plotId,_that.attachmentPaths);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "complaint_type")  String complaintType, @JsonKey(name: "description")  String description, @JsonKey(name: "block")  String block, @JsonKey(name: "street")  String street, @JsonKey(name: "house")  String house, @JsonKey(name: "residents")  String residents, @JsonKey(name: "plot_id")  String plotId, @JsonKey(includeFromJson: false, includeToJson: false)  List<String>? attachmentPaths)  $default,) {final _that = this;
switch (_that) {
case _CreateComplaintRequest():
return $default(_that.complaintType,_that.description,_that.block,_that.street,_that.house,_that.residents,_that.plotId,_that.attachmentPaths);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "complaint_type")  String complaintType, @JsonKey(name: "description")  String description, @JsonKey(name: "block")  String block, @JsonKey(name: "street")  String street, @JsonKey(name: "house")  String house, @JsonKey(name: "residents")  String residents, @JsonKey(name: "plot_id")  String plotId, @JsonKey(includeFromJson: false, includeToJson: false)  List<String>? attachmentPaths)?  $default,) {final _that = this;
switch (_that) {
case _CreateComplaintRequest() when $default != null:
return $default(_that.complaintType,_that.description,_that.block,_that.street,_that.house,_that.residents,_that.plotId,_that.attachmentPaths);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateComplaintRequest implements CreateComplaintRequest {
  const _CreateComplaintRequest({@JsonKey(name: "complaint_type") required this.complaintType, @JsonKey(name: "description") required this.description, @JsonKey(name: "block") required this.block, @JsonKey(name: "street") required this.street, @JsonKey(name: "house") required this.house, @JsonKey(name: "residents") required this.residents, @JsonKey(name: "plot_id") required this.plotId, @JsonKey(includeFromJson: false, includeToJson: false) final  List<String>? attachmentPaths}): _attachmentPaths = attachmentPaths;
  factory _CreateComplaintRequest.fromJson(Map<String, dynamic> json) => _$CreateComplaintRequestFromJson(json);

@override@JsonKey(name: "complaint_type") final  String complaintType;
@override@JsonKey(name: "description") final  String description;
@override@JsonKey(name: "block") final  String block;
@override@JsonKey(name: "street") final  String street;
@override@JsonKey(name: "house") final  String house;
@override@JsonKey(name: "residents") final  String residents;
@override@JsonKey(name: "plot_id") final  String plotId;
 final  List<String>? _attachmentPaths;
@override@JsonKey(includeFromJson: false, includeToJson: false) List<String>? get attachmentPaths {
  final value = _attachmentPaths;
  if (value == null) return null;
  if (_attachmentPaths is EqualUnmodifiableListView) return _attachmentPaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CreateComplaintRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateComplaintRequestCopyWith<_CreateComplaintRequest> get copyWith => __$CreateComplaintRequestCopyWithImpl<_CreateComplaintRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateComplaintRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateComplaintRequest&&(identical(other.complaintType, complaintType) || other.complaintType == complaintType)&&(identical(other.description, description) || other.description == description)&&(identical(other.block, block) || other.block == block)&&(identical(other.street, street) || other.street == street)&&(identical(other.house, house) || other.house == house)&&(identical(other.residents, residents) || other.residents == residents)&&(identical(other.plotId, plotId) || other.plotId == plotId)&&const DeepCollectionEquality().equals(other._attachmentPaths, _attachmentPaths));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,complaintType,description,block,street,house,residents,plotId,const DeepCollectionEquality().hash(_attachmentPaths));

@override
String toString() {
  return 'CreateComplaintRequest(complaintType: $complaintType, description: $description, block: $block, street: $street, house: $house, residents: $residents, plotId: $plotId, attachmentPaths: $attachmentPaths)';
}


}

/// @nodoc
abstract mixin class _$CreateComplaintRequestCopyWith<$Res> implements $CreateComplaintRequestCopyWith<$Res> {
  factory _$CreateComplaintRequestCopyWith(_CreateComplaintRequest value, $Res Function(_CreateComplaintRequest) _then) = __$CreateComplaintRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "complaint_type") String complaintType,@JsonKey(name: "description") String description,@JsonKey(name: "block") String block,@JsonKey(name: "street") String street,@JsonKey(name: "house") String house,@JsonKey(name: "residents") String residents,@JsonKey(name: "plot_id") String plotId,@JsonKey(includeFromJson: false, includeToJson: false) List<String>? attachmentPaths
});




}
/// @nodoc
class __$CreateComplaintRequestCopyWithImpl<$Res>
    implements _$CreateComplaintRequestCopyWith<$Res> {
  __$CreateComplaintRequestCopyWithImpl(this._self, this._then);

  final _CreateComplaintRequest _self;
  final $Res Function(_CreateComplaintRequest) _then;

/// Create a copy of CreateComplaintRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? complaintType = null,Object? description = null,Object? block = null,Object? street = null,Object? house = null,Object? residents = null,Object? plotId = null,Object? attachmentPaths = freezed,}) {
  return _then(_CreateComplaintRequest(
complaintType: null == complaintType ? _self.complaintType : complaintType // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,block: null == block ? _self.block : block // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,house: null == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String,residents: null == residents ? _self.residents : residents // ignore: cast_nullable_to_non_nullable
as String,plotId: null == plotId ? _self.plotId : plotId // ignore: cast_nullable_to_non_nullable
as String,attachmentPaths: freezed == attachmentPaths ? _self._attachmentPaths : attachmentPaths // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
