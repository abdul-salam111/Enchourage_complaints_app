// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_duration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetDurationResponse _$SetDurationResponseFromJson(Map<String, dynamic> json) =>
    _SetDurationResponse(
      message: json['message'] as String?,
      durationData: json['data'] == null
          ? null
          : DurationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetDurationResponseToJson(
  _SetDurationResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.durationData,
};

_DurationData _$DurationDataFromJson(Map<String, dynamic> json) =>
    _DurationData(
      complaintNo: (json['complaint_no'] as num?)?.toInt(),
      status: json['status'] as String?,
      duration: json['duration'] as String?,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$DurationDataToJson(_DurationData instance) =>
    <String, dynamic>{
      'complaint_no': instance.complaintNo,
      'status': instance.status,
      'duration': instance.duration,
      'deadline': instance.deadline?.toIso8601String(),
    };
