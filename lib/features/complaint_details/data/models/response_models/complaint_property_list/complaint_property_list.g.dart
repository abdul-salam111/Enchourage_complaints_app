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
      complaintId: (json['complaintId'] as num?)?.toInt(),
      propertyId: (json['propertyId'] as num?)?.toInt(),
      address: json['address'] as String?,
    );

Map<String, dynamic> _$ComplaintPropertyToJson(_ComplaintProperty instance) =>
    <String, dynamic>{
      'complaintId': instance.complaintId,
      'propertyId': instance.propertyId,
      'address': instance.address,
    };
