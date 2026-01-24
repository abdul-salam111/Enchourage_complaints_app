// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaints_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ComplaintsList _$ComplaintsListFromJson(Map<String, dynamic> json) =>
    _ComplaintsList(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Complaint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ComplaintsListToJson(_ComplaintsList instance) =>
    <String, dynamic>{'data': instance.data};

_Complaint _$ComplaintFromJson(Map<String, dynamic> json) => _Complaint(
  complaintNo: (json['complaint_no'] as num?)?.toInt(),
  memberName: json['member_name'] as String?,
  address: json['address'] as String?,
  complaintType: json['complaint_type'] as String?,
  description: json['description'] as String?,
  status: json['status'] as String?,
  assignBy: json['assign_by'] as String?,
  assignToUser: json['assign_to_user'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$ComplaintToJson(_Complaint instance) =>
    <String, dynamic>{
      'complaint_no': instance.complaintNo,
      'member_name': instance.memberName,
      'address': instance.address,
      'complaint_type': instance.complaintType,
      'description': instance.description,
      'status': instance.status,
      'assign_by': instance.assignBy,
      'assign_to_user': instance.assignToUser,
      'created_at': instance.createdAt?.toIso8601String(),
    };
