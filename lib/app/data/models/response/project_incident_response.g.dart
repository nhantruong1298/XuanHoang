// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_incident_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectIncidentResponse _$ProjectIncidentResponseFromJson(
        Map<String, dynamic> json) =>
    ProjectIncidentResponse(
      idProject: json['IdProject'] as String?,
      projectName: json['ProjectName'] as String?,
      address: json['Address'] as String?,
    );

Map<String, dynamic> _$ProjectIncidentResponseToJson(
        ProjectIncidentResponse instance) =>
    <String, dynamic>{
      'IdProject': instance.idProject,
      'ProjectName': instance.projectName,
      'Address': instance.address,
    };
