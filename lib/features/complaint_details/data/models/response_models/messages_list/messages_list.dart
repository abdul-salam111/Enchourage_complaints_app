import 'package:freezed_annotation/freezed_annotation.dart';

part 'messages_list.freezed.dart';
part 'messages_list.g.dart';

@freezed
abstract class MessagesList with _$MessagesList {
  const factory MessagesList({@JsonKey(name: "data") List<Message>? data}) =
      _MessagesList;

  factory MessagesList.fromJson(Map<String, dynamic> json) =>
      _$MessagesListFromJson(json);
}

@freezed
abstract class Message with _$Message {
  const factory Message({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "sender_type") dynamic senderType,
    @JsonKey(name: "sender_name") String? senderName,
    @JsonKey(name: "created_at") String? createdAt,
  }) = _Message;
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
