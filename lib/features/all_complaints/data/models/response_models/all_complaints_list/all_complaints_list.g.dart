// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_complaints_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllComplaintsList _$AllComplaintsListFromJson(Map<String, dynamic> json) =>
    _AllComplaintsList(
      success: json['success'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Complaints.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AllComplaintsListToJson(_AllComplaintsList instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_Complaints _$ComplaintsFromJson(Map<String, dynamic> json) => _Complaints(
  id: (json['id'] as num?)?.toInt(),
  memberId: (json['member_id'] as num?)?.toInt(),
  assignToUserId: (json['assign_to_user_id'] as num?)?.toInt(),
  assignByUserId: (json['assign_by_user_id'] as num?)?.toInt(),
  complaintTypeId: (json['complaint_type_id'] as num?)?.toInt(),
  propertyId: (json['property_id'] as num?)?.toInt(),
  createdBy: (json['created_by'] as num?)?.toInt(),
  description: json['description'] as String?,
  attachment: json['attachment'] as String?,
  firstDatetime: json['first_datetime'] == null
      ? null
      : DateTime.parse(json['first_datetime'] as String),
  secDatetime: json['sec_datetime'] == null
      ? null
      : DateTime.parse(json['sec_datetime'] as String),
  status: json['status'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  deletedAt: json['deleted_at'],
  findComplaintType: json['find_complaint_type'] == null
      ? null
      : FindComplaintType.fromJson(
          json['find_complaint_type'] as Map<String, dynamic>,
        ),
  findProperty: json['find_property'] == null
      ? null
      : FindProperty.fromJson(json['find_property'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ComplaintsToJson(_Complaints instance) =>
    <String, dynamic>{
      'id': instance.id,
      'member_id': instance.memberId,
      'assign_to_user_id': instance.assignToUserId,
      'assign_by_user_id': instance.assignByUserId,
      'complaint_type_id': instance.complaintTypeId,
      'property_id': instance.propertyId,
      'created_by': instance.createdBy,
      'description': instance.description,
      'attachment': instance.attachment,
      'first_datetime': instance.firstDatetime?.toIso8601String(),
      'sec_datetime': instance.secDatetime?.toIso8601String(),
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt,
      'find_complaint_type': instance.findComplaintType,
      'find_property': instance.findProperty,
    };

_FindComplaintType _$FindComplaintTypeFromJson(Map<String, dynamic> json) =>
    _FindComplaintType(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      depTypeId: (json['dep_type_id'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'],
    );

Map<String, dynamic> _$FindComplaintTypeToJson(_FindComplaintType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'dep_type_id': instance.depTypeId,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt,
    };

_FindProperty _$FindPropertyFromJson(Map<String, dynamic> json) =>
    _FindProperty(
      id: (json['id'] as num?)?.toInt(),
      membershipId: json['membership_id'] as String?,
      memberId: (json['member_id'] as num?)?.toInt(),
      instCode: json['inst_code'] as String?,
      projCode: json['proj_code'] as String?,
      societyId: (json['society_id'] as num?)?.toInt(),
      propertyTypeId: (json['property_type_id'] as num?)?.toInt(),
      plotCategoryId: (json['plot_category_id'] as num?)?.toInt(),
      flatTypeId: json['flat_type_id'],
      storyType: json['story_type'] as String?,
      plotNo: json['plot_no'] as String?,
      flatNo: json['flat_no'],
      shopNo: json['shop_no'],
      noOfRooms: json['no_of_rooms'],
      sqFeet: json['sq_feet'],
      sqYards: (json['sq_yards'] as num?)?.toInt(),
      street: json['street'] as String?,
      block: json['block'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'],
    );

Map<String, dynamic> _$FindPropertyToJson(_FindProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'membership_id': instance.membershipId,
      'member_id': instance.memberId,
      'inst_code': instance.instCode,
      'proj_code': instance.projCode,
      'society_id': instance.societyId,
      'property_type_id': instance.propertyTypeId,
      'plot_category_id': instance.plotCategoryId,
      'flat_type_id': instance.flatTypeId,
      'story_type': instance.storyType,
      'plot_no': instance.plotNo,
      'flat_no': instance.flatNo,
      'shop_no': instance.shopNo,
      'no_of_rooms': instance.noOfRooms,
      'sq_feet': instance.sqFeet,
      'sq_yards': instance.sqYards,
      'street': instance.street,
      'block': instance.block,
      'amount': instance.amount,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt,
    };
