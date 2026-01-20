// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plot_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlotList _$PlotListFromJson(Map<String, dynamic> json) => _PlotList(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => Plot.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PlotListToJson(_PlotList instance) => <String, dynamic>{
  'data': instance.data,
};

_Plot _$PlotFromJson(Map<String, dynamic> json) => _Plot(
  id: (json['id'] as num?)?.toInt(),
  blockId: (json['block_id'] as num?)?.toInt(),
  streetId: (json['street_id'] as num?)?.toInt(),
  plotNo: json['plot_no'] as String?,
  sqYards: json['sq_yards'] as String?,
  status: (json['status'] as num?)?.toInt(),
);

Map<String, dynamic> _$PlotToJson(_Plot instance) => <String, dynamic>{
  'id': instance.id,
  'block_id': instance.blockId,
  'street_id': instance.streetId,
  'plot_no': instance.plotNo,
  'sq_yards': instance.sqYards,
  'status': instance.status,
};
