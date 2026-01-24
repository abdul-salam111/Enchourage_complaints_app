import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_complaint_request.freezed.dart';
part 'create_complaint_request.g.dart';

@freezed
abstract class CreateComplaintRequest with _$CreateComplaintRequest {
  const factory CreateComplaintRequest({
    @JsonKey(name: "complaint_type") required String complaintType,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "block") required String block,
    @JsonKey(name: "street") required String street,
    @JsonKey(name: "house") required String house,
    @JsonKey(name: "residents") required String residents,
    @JsonKey(name: "plot_id") required String plotId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<String>? attachmentPaths,
  }) = _CreateComplaintRequest;

  factory CreateComplaintRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateComplaintRequestFromJson(json);
}
