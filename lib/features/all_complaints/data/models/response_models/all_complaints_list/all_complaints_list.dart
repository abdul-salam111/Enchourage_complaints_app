import 'package:freezed_annotation/freezed_annotation.dart';
part 'all_complaints_list.freezed.dart';
part 'all_complaints_list.g.dart';

@freezed
abstract class AllComplaintsList with _$AllComplaintsList {
  const factory AllComplaintsList({
    @JsonKey(name: "success") bool? success,

    @JsonKey(name: "data") List<Complaints>? data,

    @JsonKey(name: "message") String? message,
  }) = _AllComplaintsList;

  factory AllComplaintsList.fromJson(Map<String, dynamic> json) =>
      _$AllComplaintsListFromJson(json);
}

@freezed
abstract class Complaints with _$Complaints {
  const factory Complaints({
    @JsonKey(name: "id") int? id,

    @JsonKey(name: "member_id") int? memberId,

    @JsonKey(name: "assign_to_user_id") int? assignToUserId,

    @JsonKey(name: "assign_by_user_id") int? assignByUserId,

    @JsonKey(name: "complaint_type_id") int? complaintTypeId,

    @JsonKey(name: "property_id") int? propertyId,

    @JsonKey(name: "created_by") int? createdBy,

    @JsonKey(name: "description") String? description,

    @JsonKey(name: "attachment") String? attachment,

    @JsonKey(name: "first_datetime") DateTime? firstDatetime,

    @JsonKey(name: "sec_datetime") DateTime? secDatetime,

    @JsonKey(name: "status") String? status,

    @JsonKey(name: "created_at") DateTime? createdAt,

    @JsonKey(name: "updated_at") DateTime? updatedAt,

    @JsonKey(name: "deleted_at") dynamic deletedAt,

    @JsonKey(name: "find_complaint_type") FindComplaintType? findComplaintType,

    @JsonKey(name: "find_property") FindProperty? findProperty,
  }) = _Complaints;

  factory Complaints.fromJson(Map<String, dynamic> json) =>
      _$ComplaintsFromJson(json);
}

@freezed
abstract class FindComplaintType with _$FindComplaintType {
  const factory FindComplaintType({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "dep_type_id") int? depTypeId,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "deleted_at") dynamic deletedAt,
  }) = _FindComplaintType;

  factory FindComplaintType.fromJson(Map<String, dynamic> json) =>
      _$FindComplaintTypeFromJson(json);
}

@freezed
abstract class FindProperty with _$FindProperty {
  const factory FindProperty({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "membership_id") String? membershipId,
    @JsonKey(name: "member_id") int? memberId,
    @JsonKey(name: "inst_code") String? instCode,
    @JsonKey(name: "proj_code") String? projCode,
    @JsonKey(name: "society_id") int? societyId,
    @JsonKey(name: "property_type_id") int? propertyTypeId,
    @JsonKey(name: "plot_category_id") int? plotCategoryId,
    @JsonKey(name: "flat_type_id") dynamic flatTypeId,
    @JsonKey(name: "story_type") String? storyType,
    @JsonKey(name: "plot_no") String? plotNo,
    @JsonKey(name: "flat_no") dynamic flatNo,
    @JsonKey(name: "shop_no") dynamic shopNo,
    @JsonKey(name: "no_of_rooms") dynamic noOfRooms,
    @JsonKey(name: "sq_feet") dynamic sqFeet,
    @JsonKey(name: "sq_yards") int? sqYards,
    @JsonKey(name: "street") String? street,
    @JsonKey(name: "block") String? block,
    @JsonKey(name: "amount") int? amount,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "deleted_at") dynamic deletedAt,
  }) = _FindProperty;

  factory FindProperty.fromJson(Map<String, dynamic> json) =>
      _$FindPropertyFromJson(json);
}
