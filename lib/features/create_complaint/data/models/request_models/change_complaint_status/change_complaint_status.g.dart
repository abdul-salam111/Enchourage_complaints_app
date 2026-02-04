// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_complaint_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangeComplaintStatus _$ChangeComplaintStatusFromJson(
  Map<String, dynamic> json,
) => _ChangeComplaintStatus(
  complaintNo: (json['complaint_no'] as num?)?.toInt(),
  status: json['status'] as String?,
  assignTo: json['assign_to_user_id'] as String?,
);

Map<String, dynamic> _$ChangeComplaintStatusToJson(
  _ChangeComplaintStatus instance,
) => <String, dynamic>{
  'complaint_no': instance.complaintNo,
  'status': instance.status,
  'assign_to_user_id': instance.assignTo,
};
