import 'package:freezed_annotation/freezed_annotation.dart';
part 'complaint_property_list.freezed.dart';
part 'complaint_property_list.g.dart';

@freezed
abstract class ComplaintPropertyList with _$ComplaintPropertyList {
  const factory ComplaintPropertyList({ComplaintProperty? data}) =
      _ComplaintPropertyList;

  factory ComplaintPropertyList.fromJson(Map<String, dynamic> json) =>
      _$ComplaintPropertyListFromJson(json);
}

@freezed
abstract class ComplaintProperty with _$ComplaintProperty {
  const factory ComplaintProperty({
    int? complaintId,
    int? propertyId,
    String? address,
  }) = _ComplaintProperty;

  factory ComplaintProperty.fromJson(Map<String, dynamic> json) =>
      _$ComplaintPropertyFromJson(json);
}
