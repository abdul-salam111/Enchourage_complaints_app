import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'bills_types_list.freezed.dart';
part 'bills_types_list.g.dart';

BillsTypesList billsTypesListFromJson(String str) =>
    BillsTypesList.fromJson(json.decode(str));

String billsTypesListToJson(BillsTypesList data) => json.encode(data.toJson());

@freezed
abstract class BillsTypesList with _$BillsTypesList {
  const factory BillsTypesList({List<BillType>? data}) = _BillsTypesList;

  factory BillsTypesList.fromJson(Map<String, dynamic> json) =>
      _$BillsTypesListFromJson(json);
}

@freezed
abstract class BillType with _$BillType {
  const factory BillType({int? id, String? title}) = _BillType;

  factory BillType.fromJson(Map<String, dynamic> json) =>
      _$BillTypeFromJson(json);
}
