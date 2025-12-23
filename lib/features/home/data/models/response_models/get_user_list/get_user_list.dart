import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_list.freezed.dart';
part 'get_user_list.g.dart';

@freezed
abstract class GetUserList with _$GetUserList {
  const factory GetUserList({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "address") Address? address,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "website") String? website,
    @JsonKey(name: "company") Company? company,
  }) = _GetUserList;

  factory GetUserList.fromJson(Map<String, dynamic> json) =>
      _$GetUserListFromJson(json);
}

@freezed
abstract class Address with _$Address {
  const factory Address({
    @JsonKey(name: "street") String? street,
    @JsonKey(name: "suite") String? suite,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "zipcode") String? zipcode,
    @JsonKey(name: "geo") Geo? geo,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
abstract class Geo with _$Geo {
  const factory Geo({
    @JsonKey(name: "lat") String? lat,
    @JsonKey(name: "lng") String? lng,
  }) = _Geo;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
}

@freezed
abstract class Company with _$Company {
  const factory Company({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "catchPhrase") String? catchPhrase,
    @JsonKey(name: "bs") String? bs,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
