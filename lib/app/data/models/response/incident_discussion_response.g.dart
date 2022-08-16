// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_discussion_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IncidentDiscussionResponse _$IncidentDiscussionResponseFromJson(
        Map<String, dynamic> json) =>
    IncidentDiscussionResponse(
      returnId: json['ReturnId'] as String?,
      message: json['Message'] as String?,
    );

Map<String, dynamic> _$IncidentDiscussionResponseToJson(
        IncidentDiscussionResponse instance) =>
    <String, dynamic>{
      'ReturnId': instance.returnId,
      'Message': instance.message,
    };
