import 'package:json_annotation/json_annotation.dart';
part 'report_list_item_reponse.g.dart';

@JsonSerializable()
class ReportListItemResponse {
  @JsonKey(name: 'IdProject')
  final String? idProject;

  @JsonKey(name: 'IdIncident')
  final String? idIncident;

  @JsonKey(name: 'IncidentName')
  final String? incidentName;

  @JsonKey(name: 'IncidentDescription')
  final String? incidentDescription;

  @JsonKey(name: 'IdIncidentStatus')
  final String? idIncidentStatus;

  @JsonKey(name: 'StatusName')
  final String? statusName;

  @JsonKey(name: 'CreateDate')
  final DateTime? createDate;

  factory ReportListItemResponse.fromJson(Map<String, dynamic> json) {
    return _$ReportListItemResponseFromJson(json);
  }

  ReportListItemResponse(
      {this.idIncident,
      this.incidentName,
      this.incidentDescription,
      this.idIncidentStatus,
      this.statusName,
      this.createDate,
      this.idProject});

  Map<String, dynamic> toJson() => _$ReportListItemResponseToJson(this);
}
