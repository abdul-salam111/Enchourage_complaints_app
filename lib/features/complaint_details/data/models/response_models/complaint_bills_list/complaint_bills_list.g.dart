// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaint_bills_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ComplaintBillsList _$ComplaintBillsListFromJson(Map<String, dynamic> json) =>
    _ComplaintBillsList(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ComplaintBills.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ComplaintBillsListToJson(_ComplaintBillsList instance) =>
    <String, dynamic>{'data': instance.data};

_ComplaintBills _$ComplaintBillsFromJson(Map<String, dynamic> json) =>
    _ComplaintBills(
      id: (json['id'] as num?)?.toInt(),
      billingTypeId: (json['billing_type_id'] as num?)?.toInt(),
      billingType: json['billing_type'] as String?,
      propertyId: (json['property_id'] as num?)?.toInt(),
      propertyAddress: json['property_address'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      receipts: (json['receipts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ComplaintBillsToJson(_ComplaintBills instance) =>
    <String, dynamic>{
      'id': instance.id,
      'billing_type_id': instance.billingTypeId,
      'billing_type': instance.billingType,
      'property_id': instance.propertyId,
      'property_address': instance.propertyAddress,
      'amount': instance.amount,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'receipts': instance.receipts,
    };
