import 'package:json_annotation/json_annotation.dart';
part 'send_report_response.g.dart';

@JsonSerializable()
class SendReportResponse {
  @JsonKey(name: 'url')
  final String? url;

  SendReportResponse({this.url});

  factory SendReportResponse.fromJson(Map<String, dynamic> json) {
    return _$SendReportResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SendReportResponseToJson(this);
}
