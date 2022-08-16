import 'package:json_annotation/json_annotation.dart';
part 'project_incident_response.g.dart';

@JsonSerializable()
class ProjectIncidentResponse {
  @JsonKey(name: 'IdProject')
  final String? idProject;

  @JsonKey(name: 'ProjectName')
  final String? projectName;

  @JsonKey(name: 'Address')
  final String? address;

  ProjectIncidentResponse({
    this.idProject,
    this.projectName,
    this.address,
  });

  factory ProjectIncidentResponse.fromJson(Map<String, dynamic> json) {
    return _$ProjectIncidentResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProjectIncidentResponseToJson(this);
}
