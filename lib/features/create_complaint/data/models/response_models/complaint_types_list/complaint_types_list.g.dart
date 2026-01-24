// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaint_types_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ComplaintTypesList _$ComplaintTypesListFromJson(Map<String, dynamic> json) =>
    _ComplaintTypesList(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ComplaintType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ComplaintTypesListToJson(_ComplaintTypesList instance) =>
    <String, dynamic>{'data': instance.data};

_ComplaintType _$ComplaintTypeFromJson(Map<String, dynamic> json) =>
    _ComplaintType(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      status: (json['status'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'],
      findDepartments: (json['find_departments'] as List<dynamic>?)
          ?.map((e) => FindDepartment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ComplaintTypeToJson(_ComplaintType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt,
      'find_departments': instance.findDepartments,
    };

_FindDepartment _$FindDepartmentFromJson(Map<String, dynamic> json) =>
    _FindDepartment(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      depTypeId: (json['dep_type_id'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'],
    );

Map<String, dynamic> _$FindDepartmentToJson(_FindDepartment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'dep_type_id': instance.depTypeId,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt,
    };
