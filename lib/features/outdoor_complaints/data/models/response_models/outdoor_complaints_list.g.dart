// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outdoor_complaints_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OutdoorComplaintsList _$OutdoorComplaintsListFromJson(
  Map<String, dynamic> json,
) => _OutdoorComplaintsList(
  complaints: (json['complaints'] as List<dynamic>?)
      ?.map((e) => Complaint.fromJson(e as Map<String, dynamic>))
      .toList(),
  departments: (json['departments'] as List<dynamic>?)
      ?.map((e) => Department.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OutdoorComplaintsListToJson(
  _OutdoorComplaintsList instance,
) => <String, dynamic>{
  'complaints': instance.complaints,
  'departments': instance.departments,
};

_Department _$DepartmentFromJson(Map<String, dynamic> json) => _Department(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
);

Map<String, dynamic> _$DepartmentToJson(_Department instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};
