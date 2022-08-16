import 'package:json_annotation/json_annotation.dart';
part 'incident_discussion_request.g.dart';

@JsonSerializable()
class IncidentDiscussionRequest {
  @JsonKey(name: 'IdIncident')
  final int idIncident;

  @JsonKey(name: 'ReplyContent')
  final String replyContent;

  @JsonKey(name: 'IdIncidentStatus')
  final String idIncidentStatus;

  IncidentDiscussionRequest({
    required this.idIncident,
    required this.replyContent,
    required this.idIncidentStatus,
  });

  factory IncidentDiscussionRequest.fromJson(Map<String, dynamic> json) {
    return _$IncidentDiscussionRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$IncidentDiscussionRequestToJson(this);
}
