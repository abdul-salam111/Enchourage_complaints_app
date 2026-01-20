// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StreetList _$StreetListFromJson(Map<String, dynamic> json) => _StreetList(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => Street.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StreetListToJson(_StreetList instance) =>
    <String, dynamic>{'data': instance.data};

_Street _$StreetFromJson(Map<String, dynamic> json) => _Street(
  id: (json['id'] as num?)?.toInt(),
  blockId: (json['block_id'] as num?)?.toInt(),
  title: json['title'] as String?,
  status: (json['status'] as num?)?.toInt(),
);

Map<String, dynamic> _$StreetToJson(_Street instance) => <String, dynamic>{
  'id': instance.id,
  'block_id': instance.blockId,
  'title': instance.title,
  'status': instance.status,
};
