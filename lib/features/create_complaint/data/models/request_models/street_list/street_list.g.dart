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
  streetNo: json['street_no'] as String?,
  blockName: json['block_name'] as String?,
);

Map<String, dynamic> _$StreetToJson(_Street instance) => <String, dynamic>{
  'id': instance.id,
  'street_no': instance.streetNo,
  'block_name': instance.blockName,
};
