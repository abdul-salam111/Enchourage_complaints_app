import 'package:freezed_annotation/freezed_annotation.dart';
part 'block_list.freezed.dart';
part 'block_list.g.dart';

@freezed
abstract class BlockList with _$BlockList {
  const factory BlockList({@JsonKey(name: "data") List<Blocks>? data}) =
      _BlockList;

  factory BlockList.fromJson(Map<String, dynamic> json) =>
      _$BlockListFromJson(json);
}

@freezed
abstract class Blocks with _$Blocks {
  const factory Blocks({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "block_name") String? blockName,
  }) = _Blocks;

  factory Blocks.fromJson(Map<String, dynamic> json) => _$BlocksFromJson(json);
}
