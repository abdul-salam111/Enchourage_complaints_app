// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_complaint_bill_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateComplaintBillResponse _$CreateComplaintBillResponseFromJson(
  Map<String, dynamic> json,
) => _CreateComplaintBillResponse(
  data: json['data'] == null
      ? null
      : CreatedComplaintBill.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreateComplaintBillResponseToJson(
  _CreateComplaintBillResponse instance,
) => <String, dynamic>{'data': instance.data};

_CreatedComplaintBill _$CreatedComplaintBillFromJson(
  Map<String, dynamic> json,
) => _CreatedComplaintBill(
  id: (json['id'] as num?)?.toInt(),
  complaintId: (json['complaintId'] as num?)?.toInt(),
  propertyId: json['propertyId'] as String?,
  billingType: json['billingType'] as String?,
  amount: json['amount'] as String?,
  description: json['description'] as String?,
  receipts: (json['receipts'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$CreatedComplaintBillToJson(
  _CreatedComplaintBill instance,
) => <String, dynamic>{
  'id': instance.id,
  'complaintId': instance.complaintId,
  'propertyId': instance.propertyId,
  'billingType': instance.billingType,
  'amount': instance.amount,
  'description': instance.description,
  'receipts': instance.receipts,
  'createdAt': instance.createdAt?.toIso8601String(),
};
