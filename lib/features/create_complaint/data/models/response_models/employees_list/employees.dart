import 'package:freezed_annotation/freezed_annotation.dart';
part 'employees.freezed.dart';
part 'employees.g.dart';

@freezed
abstract class Employees with _$Employees {
  const factory Employees({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
  }) = _Employees;

  factory Employees.fromJson(Map<String, dynamic> json) =>
      _$EmployeesFromJson(json);
}
