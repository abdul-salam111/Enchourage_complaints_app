// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Employees _$EmployeesFromJson(Map<String, dynamic> json) => _Employees(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$EmployeesToJson(_Employees instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
