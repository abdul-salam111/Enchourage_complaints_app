import 'package:freezed_annotation/freezed_annotation.dart';
part 'change_complaint_status.freezed.dart';
part 'change_complaint_status.g.dart';

@freezed
abstract class ChangeComplaintStatus with _$ChangeComplaintStatus {
  const factory ChangeComplaintStatus({
    @JsonKey(name: "complaint_no") int? complaintNo,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "assign_to") String? assignTo,
  }) = _ChangeComplaintStatus;

  factory ChangeComplaintStatus.fromJson(Map<String, dynamic> json) =>
      _$ChangeComplaintStatusFromJson(json);
}
