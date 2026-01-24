import 'package:freezed_annotation/freezed_annotation.dart';
part 'street_list.freezed.dart';
part 'street_list.g.dart';

@freezed
abstract class StreetList with _$StreetList {
  const factory StreetList({@JsonKey(name: "data") List<Street>? data}) =
      _StreetList;

  factory StreetList.fromJson(Map<String, dynamic> json) =>
      _$StreetListFromJson(json);
}

@freezed
abstract class Street with _$Street {
  const factory Street({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "street_no") String? streetNo,
    @JsonKey(name: "block_name") String? blockName,
  }) = _Street;

  factory Street.fromJson(Map<String, dynamic> json) => _$StreetFromJson(json);
}
