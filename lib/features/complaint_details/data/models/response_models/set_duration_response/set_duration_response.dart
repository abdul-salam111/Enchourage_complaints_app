import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_duration_response.freezed.dart';
part 'set_duration_response.g.dart';

@freezed
abstract class SetDurationResponse with _$SetDurationResponse {
  const factory SetDurationResponse({
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") DurationData? durationData,
  }) = _SetDurationResponse;

  factory SetDurationResponse.fromJson(Map<String, dynamic> json) =>
      _$SetDurationResponseFromJson(json);
}

@freezed
abstract class DurationData with _$DurationData {
  const factory DurationData({
    @JsonKey(name: "complaint_no") int? complaintNo,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "duration") String? duration,
    @JsonKey(name: "deadline") DateTime? deadline,
  }) = _DurationData;

  factory DurationData.fromJson(Map<String, dynamic> json) =>
      _$DurationDataFromJson(json);
}
