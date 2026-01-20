import 'package:freezed_annotation/freezed_annotation.dart';
part 'complaints_list.freezed.dart';
part 'complaints_list.g.dart';

@freezed
abstract class ComplaintsList with _$ComplaintsList {
  const factory ComplaintsList({@JsonKey(name: "data") Data? data}) =
      _ComplaintsList;

  factory ComplaintsList.fromJson(Map<String, dynamic> json) =>
      _$ComplaintsListFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "data") List<Complaints>? data,
    @JsonKey(name: "from") int? from,
    @JsonKey(name: "last_page") int? lastPage,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "to") int? to,
    @JsonKey(name: "total") int? total,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Complaints with _$Complaints {
  const factory Complaints({
    @JsonKey(name: "complaint_no") int? complaintNo,
    @JsonKey(name: "member_name") String? memberName,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "complaint_type") String? complaintType,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "assign_by") String? assignBy,
    @JsonKey(name: "assign_to user") String? assignToUser,
    @JsonKey(name: "created_at") DateTime? createdAt,
  }) = _Complaints;

  factory Complaints.fromJson(Map<String, dynamic> json) =>
      _$ComplaintsFromJson(json);
}
