import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_complaint_response.freezed.dart';
part 'create_complaint_response.g.dart';

@freezed
abstract class CreateComplaintResponse with _$CreateComplaintResponse {
  const factory CreateComplaintResponse({
    @JsonKey(name: "data") ComplaintData? data,
  }) = _CreateComplaintResponse;

  factory CreateComplaintResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateComplaintResponseFromJson(json);
}

@freezed
abstract class ComplaintData with _$ComplaintData {
  const factory ComplaintData({
    @JsonKey(name: "complaint_no") int? complaintNo,
    @JsonKey(name: "complaint_type") String? complaintType,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "member_name") String? memberName,
    @JsonKey(name: "phone") dynamic phone,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "date") DateTime? date,
    @JsonKey(name: "attachments") List<dynamic>? attachments,
    @JsonKey(name: "assigned_by") String? assignedBy,
    @JsonKey(name: "assigned_to") dynamic assignedTo,
  }) = _ComplaintData;

  factory ComplaintData.fromJson(Map<String, dynamic> json) =>
      _$ComplaintDataFromJson(json);
}
