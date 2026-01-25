import 'package:freezed_annotation/freezed_annotation.dart';

part 'sent_message_response.freezed.dart';
part 'sent_message_response.g.dart';

@freezed
abstract class SentMessageResponse with _$SentMessageResponse {
  const factory SentMessageResponse({
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") MessageDetails? messageDetails,
  }) = _SentMessageResponse;

  factory SentMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$SentMessageResponseFromJson(json);
}

@freezed
abstract class MessageDetails with _$MessageDetails {
  const factory MessageDetails({
    @JsonKey(name: "message_id") int? messageId,
    @JsonKey(name: "complaint_no") int? complaintNo,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "sent_by") SentBy? sentBy,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "created_at_human") String? createdAtHuman,
  }) = _MessageDetails;

  factory MessageDetails.fromJson(Map<String, dynamic> json) =>
      _$MessageDetailsFromJson(json);
}

@freezed
abstract class SentBy with _$SentBy {
  const factory SentBy({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
  }) = _SentBy;

  factory SentBy.fromJson(Map<String, dynamic> json) => _$SentByFromJson(json);
}
