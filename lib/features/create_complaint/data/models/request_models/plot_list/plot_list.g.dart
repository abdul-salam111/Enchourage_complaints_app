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
  plotNo: json['plot_no'] as String?,
  streetNo: json['street_no'] as String?,
  blockName: json['block_name'] as String?,
);

Map<String, dynamic> _$PlotToJson(_Plot instance) => <String, dynamic>{
  'id': instance.id,
  'plot_no': instance.plotNo,
  'street_no': instance.streetNo,
  'block_name': instance.blockName,
};
