import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_complaint_bill_response.freezed.dart';
part 'create_complaint_bill_response.g.dart';

@freezed
abstract class CreateComplaintBillResponse with _$CreateComplaintBillResponse {
  const factory CreateComplaintBillResponse({CreatedComplaintBill? data}) =
      _CreateComplaintBillResponse;

  factory CreateComplaintBillResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateComplaintBillResponseFromJson(json);
}

@freezed
abstract class CreatedComplaintBill with _$CreatedComplaintBill {
  const factory CreatedComplaintBill({
    int? id,
    int? complaintId,
    String? propertyId,
    String? billingType,
    String? amount,
    String? description,
    List<String>? receipts,
    DateTime? createdAt,
  }) = _CreatedComplaintBill;

  factory CreatedComplaintBill.fromJson(Map<String, dynamic> json) =>
      _$CreatedComplaintBillFromJson(json);
}
