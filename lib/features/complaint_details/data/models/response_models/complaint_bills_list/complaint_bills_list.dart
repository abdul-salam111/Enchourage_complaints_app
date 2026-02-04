import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'complaint_bills_list.freezed.dart';
part 'complaint_bills_list.g.dart';

ComplaintBillsList complaintBillsListFromJson(String str) =>
    ComplaintBillsList.fromJson(json.decode(str));

String complaintBillsListToJson(ComplaintBillsList data) =>
    json.encode(data.toJson());

@freezed
abstract class ComplaintBillsList with _$ComplaintBillsList {
  const factory ComplaintBillsList({
    @JsonKey(name: 'data') List<ComplaintBills>? data,
  }) = _ComplaintBillsList;

  factory ComplaintBillsList.fromJson(Map<String, dynamic> json) =>
      _$ComplaintBillsListFromJson(json);
}

@freezed
abstract class ComplaintBills with _$ComplaintBills {
  const factory ComplaintBills({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'billing_type_id') int? billingTypeId,
    @JsonKey(name: 'billing_type') String? billingType,
    @JsonKey(name: 'property_id') int? propertyId,
    @JsonKey(name: 'property_address') String? propertyAddress,
    @JsonKey(name: 'amount') double? amount,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'receipts') List<String>? receipts,
  }) = _ComplaintBills;

  factory ComplaintBills.fromJson(Map<String, dynamic> json) =>
      _$ComplaintBillsFromJson(json);
}
