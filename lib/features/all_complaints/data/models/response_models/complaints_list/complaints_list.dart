import 'package:freezed_annotation/freezed_annotation.dart';
part 'complaints_list.freezed.dart';
part 'complaints_list.g.dart';

@freezed
abstract class ComplaintsList with _$ComplaintsList {
  const factory ComplaintsList({@JsonKey(name: "data") List<Complaint>? data}) =
      _ComplaintsList;
  factory ComplaintsList.fromJson(Map<String, dynamic> json) =>
      _$ComplaintsListFromJson(json);
}

@freezed
abstract class Complaint with _$Complaint {
  const factory Complaint({
    @JsonKey(name: "complaint_no") int? complaintNo,
    @JsonKey(name: "member_name") String? memberName,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "complaint_type") String? complaintType,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "assign_by") String? assignBy,
    @JsonKey(name: "assign_to_user") String? assignToUser,
    @JsonKey(name: "created_at") DateTime? createdAt,
  }) = _Complaint;
  factory Complaint.fromJson(Map<String, dynamic> json) =>
      _$ComplaintFromJson(json);
}
