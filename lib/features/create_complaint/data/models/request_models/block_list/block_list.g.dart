// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlockList _$BlockListFromJson(Map<String, dynamic> json) => _BlockList(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => Blocks.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BlockListToJson(_BlockList instance) =>
    <String, dynamic>{'data': instance.data};

_Blocks _$BlocksFromJson(Map<String, dynamic> json) => _Blocks(
  id: (json['id'] as num?)?.toInt(),
  blockName: json['block_name'] as String?,
);

Map<String, dynamic> _$BlocksToJson(_Blocks instance) => <String, dynamic>{
  'id': instance.id,
  'block_name': instance.blockName,
};
