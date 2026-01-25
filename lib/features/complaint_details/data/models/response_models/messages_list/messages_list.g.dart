// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessagesList _$MessagesListFromJson(Map<String, dynamic> json) =>
    _MessagesList(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MessagesListToJson(_MessagesList instance) =>
    <String, dynamic>{'data': instance.data};

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
  id: (json['id'] as num?)?.toInt(),
  message: json['message'] as String?,
  senderType: json['sender_type'],
  senderName: json['sender_name'] as String?,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'id': instance.id,
  'message': instance.message,
  'sender_type': instance.senderType,
  'sender_name': instance.senderName,
  'created_at': instance.createdAt,
};
