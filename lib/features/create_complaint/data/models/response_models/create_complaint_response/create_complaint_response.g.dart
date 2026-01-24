// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_complaint_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateComplaintResponse _$CreateComplaintResponseFromJson(
  Map<String, dynamic> json,
) => _CreateComplaintResponse(
  data: json['data'] == null
      ? null
      : ComplaintData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreateComplaintResponseToJson(
  _CreateComplaintResponse instance,
) => <String, dynamic>{'data': instance.data};

_ComplaintData _$ComplaintDataFromJson(Map<String, dynamic> json) =>
    _ComplaintData(
      complaintNo: (json['complaint_no'] as num?)?.toInt(),
      complaintType: json['complaint_type'] as String?,
      description: json['description'] as String?,
      memberName: json['member_name'] as String?,
      phone: json['phone'],
      address: json['address'] as String?,
      date: json['date'] == null
          ? null
          : DateTime.parse(json['date'] as String),
      attachments: json['attachments'] as List<dynamic>?,
      assignedBy: json['assigned_by'] as String?,
      assignedTo: json['assigned_to'],
    );

Map<String, dynamic> _$ComplaintDataToJson(_ComplaintData instance) =>
    <String, dynamic>{
      'complaint_no': instance.complaintNo,
      'complaint_type': instance.complaintType,
      'description': instance.description,
      'member_name': instance.memberName,
      'phone': instance.phone,
      'address': instance.address,
      'date': instance.date?.toIso8601String(),
      'attachments': instance.attachments,
      'assigned_by': instance.assignedBy,
      'assigned_to': instance.assignedTo,
    };
