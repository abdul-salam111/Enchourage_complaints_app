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
    @JsonKey(name: "block_id") int? blockId,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "status") int? status,
  }) = _Street;

  factory Street.fromJson(Map<String, dynamic> json) => _$StreetFromJson(json);
}
