import 'package:freezed_annotation/freezed_annotation.dart';
part 'plot_list.freezed.dart';
part 'plot_list.g.dart';

@freezed
abstract class PlotList with _$PlotList {
  const factory PlotList({@JsonKey(name: "data") List<Plot>? data}) = _PlotList;

  factory PlotList.fromJson(Map<String, dynamic> json) =>
      _$PlotListFromJson(json);
}

@freezed
abstract class Plot with _$Plot {
  const factory Plot({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "block_id") int? blockId,
    @JsonKey(name: "street_id") int? streetId,
    @JsonKey(name: "plot_no") String? plotNo,
    @JsonKey(name: "sq_yards") String? sqYards,
    @JsonKey(name: "status") int? status,
  }) = _Plot;

  factory Plot.fromJson(Map<String, dynamic> json) => _$PlotFromJson(json);
}
