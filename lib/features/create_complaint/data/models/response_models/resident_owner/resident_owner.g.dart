// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resident_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResidentOwner _$ResidentOwnerFromJson(Map<String, dynamic> json) =>
    _ResidentOwner(
      data: json['data'] == null
          ? null
          : OwnerData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResidentOwnerToJson(_ResidentOwner instance) =>
    <String, dynamic>{'data': instance.data};

_OwnerData _$OwnerDataFromJson(Map<String, dynamic> json) =>
    _OwnerData(owner: json['owner'] as String?);

Map<String, dynamic> _$OwnerDataToJson(_OwnerData instance) =>
    <String, dynamic>{'owner': instance.owner};
