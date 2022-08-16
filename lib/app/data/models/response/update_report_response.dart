import 'package:json_annotation/json_annotation.dart';
part 'update_report_response.g.dart';

@JsonSerializable()
class UpdateReportResponse {
  @JsonKey(name: 'ReturnId')
  final String? returnId;

  @JsonKey(name: 'Message')
  final String? message;

  UpdateReportResponse({
    this.returnId,
    this.message,
  });

  factory UpdateReportResponse.fromJson(Map<String, dynamic> json) {
    return _$UpdateReportResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateReportResponseToJson(this);
}
