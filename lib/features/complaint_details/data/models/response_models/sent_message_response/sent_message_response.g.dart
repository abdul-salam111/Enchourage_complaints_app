// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sent_message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SentMessageResponse _$SentMessageResponseFromJson(Map<String, dynamic> json) =>
    _SentMessageResponse(
      message: json['message'] as String?,
      messageDetails: json['data'] == null
          ? null
          : MessageDetails.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SentMessageResponseToJson(
  _SentMessageResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.messageDetails,
};

_MessageDetails _$MessageDetailsFromJson(Map<String, dynamic> json) =>
    _MessageDetails(
      messageId: (json['message_id'] as num?)?.toInt(),
      complaintNo: (json['complaint_no'] as num?)?.toInt(),
      message: json['message'] as String?,
      sentBy: json['sent_by'] == null
          ? null
          : SentBy.fromJson(json['sent_by'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdAtHuman: json['created_at_human'] as String?,
    );

Map<String, dynamic> _$MessageDetailsToJson(_MessageDetails instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'complaint_no': instance.complaintNo,
      'message': instance.message,
      'sent_by': instance.sentBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_at_human': instance.createdAtHuman,
    };

_SentBy _$SentByFromJson(Map<String, dynamic> json) =>
    _SentBy(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$SentByToJson(_SentBy instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
