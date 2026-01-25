// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_complaint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ViewComplaint _$ViewComplaintFromJson(Map<String, dynamic> json) =>
    _ViewComplaint(
      data: json['data'] == null
          ? null
          : ComplaintDetails.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ViewComplaintToJson(_ViewComplaint instance) =>
    <String, dynamic>{'data': instance.data};

_ComplaintDetails _$ComplaintDetailsFromJson(Map<String, dynamic> json) =>
    _ComplaintDetails(
      complaintNo: (json['complaint_no'] as num?)?.toInt(),
      memberName: json['member_name'] as String?,
      phone: json['phone'],
      address: json['address'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      timeDuration: json['time_duration'],
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      date: json['date'] as String?,
      assignBy: json['assign_by'] as String?,
      assignTo: json['assign_to'] as String?,
    );

Map<String, dynamic> _$ComplaintDetailsToJson(_ComplaintDetails instance) =>
    <String, dynamic>{
      'complaint_no': instance.complaintNo,
      'member_name': instance.memberName,
      'phone': instance.phone,
      'address': instance.address,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'time_duration': instance.timeDuration,
      'attachments': instance.attachments,
      'date': instance.date,
      'assign_by': instance.assignBy,
      'assign_to': instance.assignTo,
    };
