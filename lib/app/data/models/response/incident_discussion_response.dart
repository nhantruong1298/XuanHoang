import 'package:json_annotation/json_annotation.dart';
part 'incident_discussion_response.g.dart';

@JsonSerializable()
class IncidentDiscussionResponse {
  @JsonKey(name: 'ReturnId')
  final String? returnId;

  @JsonKey(name: 'Message')
  final String? message;

  IncidentDiscussionResponse({
    this.returnId,
    this.message,
  });

  factory IncidentDiscussionResponse.fromJson(Map<String, dynamic> json) {
    return _$IncidentDiscussionResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$IncidentDiscussionResponseToJson(this);
}
