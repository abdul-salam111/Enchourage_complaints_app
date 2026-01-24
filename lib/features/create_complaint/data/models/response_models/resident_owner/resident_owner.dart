import 'package:freezed_annotation/freezed_annotation.dart';

part 'resident_owner.freezed.dart';
part 'resident_owner.g.dart';

@freezed
abstract class ResidentOwner with _$ResidentOwner {
  const factory ResidentOwner({@JsonKey(name: "data") OwnerData? data}) =
      _ResidentOwner;

  factory ResidentOwner.fromJson(Map<String, dynamic> json) =>
      _$ResidentOwnerFromJson(json);
}

@freezed
abstract class OwnerData with _$OwnerData {
  const factory OwnerData({@JsonKey(name: "owner") String? owner}) = _OwnerData;

  factory OwnerData.fromJson(Map<String, dynamic> json) =>
      _$OwnerDataFromJson(json);
}
