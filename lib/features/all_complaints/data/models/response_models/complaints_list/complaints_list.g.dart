// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaints_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ComplaintsList _$ComplaintsListFromJson(Map<String, dynamic> json) =>
    _ComplaintsList(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ComplaintsListToJson(_ComplaintsList instance) =>
    <String, dynamic>{'data': instance.data};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  currentPage: (json['current_page'] as num?)?.toInt(),
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => Complaints.fromJson(e as Map<String, dynamic>))
      .toList(),
  from: (json['from'] as num?)?.toInt(),
  lastPage: (json['last_page'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  to: (json['to'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'current_page': instance.currentPage,
  'data': instance.data,
  'from': instance.from,
  'last_page': instance.lastPage,
  'per_page': instance.perPage,
  'to': instance.to,
  'total': instance.total,
};

_Complaints _$ComplaintsFromJson(Map<String, dynamic> json) => _Complaints(
  complaintNo: (json['complaint_no'] as num?)?.toInt(),
  memberName: json['member_name'] as String?,
  address: json['address'] as String?,
  complaintType: json['complaint_type'] as String?,
  status: json['status'] as String?,
  assignBy: json['assign_by'] as String?,
  assignToUser: json['assign_to user'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$ComplaintsToJson(_Complaints instance) =>
    <String, dynamic>{
      'complaint_no': instance.complaintNo,
      'member_name': instance.memberName,
      'address': instance.address,
      'complaint_type': instance.complaintType,
      'status': instance.status,
      'assign_by': instance.assignBy,
      'assign_to user': instance.assignToUser,
      'created_at': instance.createdAt?.toIso8601String(),
    };
