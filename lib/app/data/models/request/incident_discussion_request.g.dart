// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_discussion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IncidentDiscussionRequest _$IncidentDiscussionRequestFromJson(
        Map<String, dynamic> json) =>
    IncidentDiscussionRequest(
      idIncident: json['IdIncident'] as int,
      replyContent: json['ReplyContent'] as String,
      idIncidentStatus: json['IdIncidentStatus'] as String,
    );

Map<String, dynamic> _$IncidentDiscussionRequestToJson(
        IncidentDiscussionRequest instance) =>
    <String, dynamic>{
      'IdIncident': instance.idIncident,
      'ReplyContent': instance.replyContent,
      'IdIncidentStatus': instance.idIncidentStatus,
    };
