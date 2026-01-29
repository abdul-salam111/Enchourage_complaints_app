// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaint_property_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ComplaintPropertyList _$ComplaintPropertyListFromJson(
  Map<String, dynamic> json,
) => _ComplaintPropertyList(
  data: json['data'] == null
      ? null
      : ComplaintProperty.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ComplaintPropertyListToJson(
  _ComplaintPropertyList instance,
) => <String, dynamic>{'data': instance.data};

_ComplaintProperty _$ComplaintPropertyFromJson(Map<String, dynamic> json) =>
    _ComplaintProperty(
      complaint_id: (json['complaint_id'] as num?)?.toInt(),
      property_id: (json['property_id'] as num?)?.toInt(),
      address: json['address'] as String?,
    );

Map<String, dynamic> _$ComplaintPropertyToJson(_ComplaintProperty instance) =>
    <String, dynamic>{
      'complaint_id': instance.complaint_id,
      'property_id': instance.property_id,
      'address': instance.address,
    };
