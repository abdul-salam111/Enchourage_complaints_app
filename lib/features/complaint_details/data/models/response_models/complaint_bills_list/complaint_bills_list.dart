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
  const factory ComplaintBillsList({List<ComplaintBills>? data}) =
      _ComplaintBillsList;

  factory ComplaintBillsList.fromJson(Map<String, dynamic> json) =>
      _$ComplaintBillsListFromJson(json);
}

@freezed
abstract class ComplaintBills with _$ComplaintBills {
  const factory ComplaintBills({
    int? id,
    int? billing_type,
    int? amount,
    dynamic description,
    DateTime? created_at,
    List<dynamic>? receipts,
  }) = _ComplaintBills;

  factory ComplaintBills.fromJson(Map<String, dynamic> json) =>
      _$ComplaintBillsFromJson(json);
}
