// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_project_incident_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProjectIncidentRequest _$CreateProjectIncidentRequestFromJson(
        Map<String, dynamic> json) =>
    CreateProjectIncidentRequest(
      idProject: json['IdProject'] as int,
      incidentDescription: json['IncidentDescription'] as String,
      incidentName: json['IncidentName'] as String,
    );

Map<String, dynamic> _$CreateProjectIncidentRequestToJson(
        CreateProjectIncidentRequest instance) =>
    <String, dynamic>{
      'IdProject': instance.idProject,
      'IncidentName': instance.incidentName,
      'IncidentDescription': instance.incidentDescription,
    };
