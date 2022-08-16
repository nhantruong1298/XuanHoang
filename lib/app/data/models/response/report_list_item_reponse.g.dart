// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_list_item_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportListItemResponse _$ReportListItemResponseFromJson(
        Map<String, dynamic> json) =>
    ReportListItemResponse(
      idIncident: json['IdIncident'] as String?,
      incidentName: json['IncidentName'] as String?,
      incidentDescription: json['IncidentDescription'] as String?,
      idIncidentStatus: json['IdIncidentStatus'] as String?,
      statusName: json['StatusName'] as String?,
      createDate: json['CreateDate'] == null
          ? null
          : DateTime.parse(json['CreateDate'] as String),
      idProject: json['IdProject'] as String?,
    );

Map<String, dynamic> _$ReportListItemResponseToJson(
        ReportListItemResponse instance) =>
    <String, dynamic>{
      'IdProject': instance.idProject,
      'IdIncident': instance.idIncident,
      'IncidentName': instance.incidentName,
      'IncidentDescription': instance.incidentDescription,
      'IdIncidentStatus': instance.idIncidentStatus,
      'StatusName': instance.statusName,
      'CreateDate': instance.createDate?.toIso8601String(),
    };
