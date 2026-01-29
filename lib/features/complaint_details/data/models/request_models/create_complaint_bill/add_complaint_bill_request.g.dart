// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_complaint_bill_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddComplaintBillRequest _$AddComplaintBillRequestFromJson(
  Map<String, dynamic> json,
) => _AddComplaintBillRequest(
  complaintNo: (json['complaint_no'] as num).toInt(),
  billingTypeId: (json['billing_type_id'] as num).toInt(),
  amount: (json['amount'] as num).toDouble(),
  description: json['description'] as String?,
  propertyId: (json['property_id'] as num).toInt(),
);

Map<String, dynamic> _$AddComplaintBillRequestToJson(
  _AddComplaintBillRequest instance,
) => <String, dynamic>{
  'complaint_no': instance.complaintNo,
  'billing_type_id': instance.billingTypeId,
  'amount': instance.amount,
  'description': instance.description,
  'property_id': instance.propertyId,
};
