import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app_exports.dart';
part 'outdoor_complaints_list.freezed.dart';
part 'outdoor_complaints_list.g.dart';

@freezed
abstract class OutdoorComplaintsList with _$OutdoorComplaintsList {
  const factory OutdoorComplaintsList({
    @JsonKey(name: "complaints") List<Complaint>? complaints,
    @JsonKey(name: "departments") List<Department>? departments,
  }) = _OutdoorComplaintsList;

  factory OutdoorComplaintsList.fromJson(Map<String, dynamic> json) =>
      _$OutdoorComplaintsListFromJson(json);
}

@freezed
abstract class Department with _$Department {
  const factory Department({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}
