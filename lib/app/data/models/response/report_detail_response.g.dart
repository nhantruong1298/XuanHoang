// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportDetailResponse _$ReportDetailResponseFromJson(
        Map<String, dynamic> json) =>
    ReportDetailResponse(
      idIncident: json['IdIncident'] as String?,
      incidentName: json['IncidentName'] as String?,
      incidentDescription: json['IncidentDescription'] as String?,
      idIncidentStatus: json['IdIncidentStatus'] as String?,
      statusName: json['StatusName'] as String?,
      fullName: json['FullName'] as String?,
      replyContent: json['ReplyContent'] as String?,
      discussIdStatus: json['DiscussIdStatus'] as String?,
      discussStatus: json['DiscussStatus'] as String?,
      idIncidentDiscussion: json['IdIncidentDiscussion'] as String?,
      createDate: json['CreateDate'] == null
          ? null
          : DateTime.parse(json['CreateDate'] as String),
      pictures: (json['Pictures'] as List<dynamic>?)
          ?.map((e) => ReportDetailPicture.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReportDetailResponseToJson(
        ReportDetailResponse instance) =>
    <String, dynamic>{
      'IdIncident': instance.idIncident,
      'IncidentName': instance.incidentName,
      'IncidentDescription': instance.incidentDescription,
      'IdIncidentStatus': instance.idIncidentStatus,
      'StatusName': instance.statusName,
      'FullName': instance.fullName,
      'ReplyContent': instance.replyContent,
      'DiscussIdStatus': instance.discussIdStatus,
      'DiscussStatus': instance.discussStatus,
      'IdIncidentDiscussion': instance.idIncidentDiscussion,
      'Pictures': instance.pictures,
      'CreateDate': instance.createDate?.toIso8601String(),
    };

ReportDetailPicture _$ReportDetailPictureFromJson(Map<String, dynamic> json) =>
    ReportDetailPicture(
      idIncidentPicture: json['IdIncidentPicture'] as String?,
      path: json['PicturePath'] as String?,
    );

Map<String, dynamic> _$ReportDetailPictureToJson(
        ReportDetailPicture instance) =>
    <String, dynamic>{
      'IdIncidentPicture': instance.idIncidentPicture,
      'PicturePath': instance.path,
    };
