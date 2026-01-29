// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bills_types_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillsTypesList _$BillsTypesListFromJson(Map<String, dynamic> json) =>
    _BillsTypesList(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BillType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BillsTypesListToJson(_BillsTypesList instance) =>
    <String, dynamic>{'data': instance.data};

_BillType _$BillTypeFromJson(Map<String, dynamic> json) => _BillType(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
);

Map<String, dynamic> _$BillTypeToJson(_BillType instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
};
