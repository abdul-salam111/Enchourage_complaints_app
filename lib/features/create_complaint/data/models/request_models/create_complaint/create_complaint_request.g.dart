// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_complaint_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateComplaintRequest _$CreateComplaintRequestFromJson(
  Map<String, dynamic> json,
) => _CreateComplaintRequest(
  complaintType: json['complaint_type'] as String,
  description: json['description'] as String,
  block: json['block'] as String,
  street: json['street'] as String,
  house: json['house'] as String,
  residents: json['residents'] as String,
  plotId: json['plot_id'] as String,
);

Map<String, dynamic> _$CreateComplaintRequestToJson(
  _CreateComplaintRequest instance,
) => <String, dynamic>{
  'complaint_type': instance.complaintType,
  'description': instance.description,
  'block': instance.block,
  'street': instance.street,
  'house': instance.house,
  'residents': instance.residents,
  'plot_id': instance.plotId,
};
