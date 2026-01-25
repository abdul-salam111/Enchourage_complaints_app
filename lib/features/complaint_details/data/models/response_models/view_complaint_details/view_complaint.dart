import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_complaint.freezed.dart';
part 'view_complaint.g.dart';

@freezed
abstract class ViewComplaint with _$ViewComplaint {
  const factory ViewComplaint({@JsonKey(name: "data") ComplaintDetails? data}) =
      _ViewComplaint;

  factory ViewComplaint.fromJson(Map<String, dynamic> json) =>
      _$ViewComplaintFromJson(json);
}

@freezed
abstract class ComplaintDetails with _$ComplaintDetails {
  const factory ComplaintDetails({
    @JsonKey(name: "complaint_no") int? complaintNo,
    @JsonKey(name: "member_name") String? memberName,
    @JsonKey(name: "phone") dynamic phone,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "time_duration") dynamic timeDuration,
    @JsonKey(name: "attachments") List<String>? attachments,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "assign_by") String? assignBy,
    @JsonKey(name: "assign_to") String? assignTo,
  }) = _ComplaintDetails;

  factory ComplaintDetails.fromJson(Map<String, dynamic> json) =>
      _$ComplaintDetailsFromJson(json);
}
