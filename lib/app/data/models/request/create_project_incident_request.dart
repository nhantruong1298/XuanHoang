import 'package:json_annotation/json_annotation.dart';
part 'create_project_incident_request.g.dart';

@JsonSerializable()
class CreateProjectIncidentRequest {
  @JsonKey(name: 'IdProject')
  final int idProject;

  @JsonKey(name: 'IncidentName')
  final String incidentName;

  @JsonKey(name: 'IncidentDescription')
  final String incidentDescription;

  CreateProjectIncidentRequest({
    required this.idProject,
    required this.incidentDescription,
    required this.incidentName,
  });

  factory CreateProjectIncidentRequest.fromJson(Map<String, dynamic> json) {
    return _$CreateProjectIncidentRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreateProjectIncidentRequestToJson(this);
}
