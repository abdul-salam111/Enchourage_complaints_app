import 'package:freezed_annotation/freezed_annotation.dart';

part 'complaint_types_list.freezed.dart';
part 'complaint_types_list.g.dart';

@freezed
abstract class ComplaintTypesList with _$ComplaintTypesList {
  const factory ComplaintTypesList({
    @JsonKey(name: "data") List<ComplaintType>? data,
  }) = _ComplaintTypesList;

  factory ComplaintTypesList.fromJson(Map<String, dynamic> json) =>
      _$ComplaintTypesListFromJson(json);
}

@freezed
abstract class ComplaintType with _$ComplaintType {
  const factory ComplaintType({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") dynamic updatedAt,
    @JsonKey(name: "find_departments") List<FindDepartment>? findDepartments,
  }) = _ComplaintType;

  factory ComplaintType.fromJson(Map<String, dynamic> json) =>
      _$ComplaintTypeFromJson(json);
}

@freezed
abstract class FindDepartment with _$FindDepartment {
  const factory FindDepartment({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "dep_type_id") int? depTypeId,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "deleted_at") dynamic deletedAt,
  }) = _FindDepartment;

  factory FindDepartment.fromJson(Map<String, dynamic> json) =>
      _$FindDepartmentFromJson(json);
}
