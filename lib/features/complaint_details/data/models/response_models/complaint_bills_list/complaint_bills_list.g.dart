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
      billing_type: (json['billing_type'] as num?)?.toInt(),
      amount: (json['amount'] as num?)?.toInt(),
      description: json['description'],
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      receipts: json['receipts'] as List<dynamic>?,
    );

Map<String, dynamic> _$ComplaintBillsToJson(_ComplaintBills instance) =>
    <String, dynamic>{
      'id': instance.id,
      'billing_type': instance.billing_type,
      'amount': instance.amount,
      'description': instance.description,
      'created_at': instance.created_at?.toIso8601String(),
      'receipts': instance.receipts,
    };
