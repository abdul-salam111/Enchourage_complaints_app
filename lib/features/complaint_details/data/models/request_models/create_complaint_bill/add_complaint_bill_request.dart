import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_complaint_bill_request.freezed.dart';
part 'add_complaint_bill_request.g.dart';

@freezed
abstract class AddComplaintBillRequest with _$AddComplaintBillRequest {
  const factory AddComplaintBillRequest({
    @JsonKey(name: 'complaint_no') required int complaintNo,
    @JsonKey(name: 'billing_type_id') required int billingTypeId,
    required double amount,
    String? description,
    @JsonKey(name: 'property_id') required int propertyId,
    @JsonKey(includeFromJson: false, includeToJson: false) List<File>? receipts,
  }) = _AddComplaintBillRequest;

  factory AddComplaintBillRequest.fromJson(Map<String, dynamic> json) =>
      _$AddComplaintBillRequestFromJson(json);
}
