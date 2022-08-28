// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warning_project_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WarningProjectResponse _$WarningProjectResponseFromJson(
        Map<String, dynamic> json) =>
    WarningProjectResponse(
      idProject: json['IdProject'] as String?,
      projectName: json['ProjectName'] as String?,
      address: json['Address'] as String?,
      phoneNr: json['PhoneNr'] as String?,
      email: json['Email'] as String?,
      documentName: json['DocumentName'] as String?,
      detailName: json['DetailName'] as String?,
      documentPath: json['DocumentPath'] as String?,
      expireDate: json['ExpireDate'] == null
          ? null
          : DateTime.parse(json['ExpireDate'] as String),
    );

Map<String, dynamic> _$WarningProjectResponseToJson(
        WarningProjectResponse instance) =>
    <String, dynamic>{
      'IdProject': instance.idProject,
      'ProjectName': instance.projectName,
      'Address': instance.address,
      'PhoneNr': instance.phoneNr,
      'Email': instance.email,
      'DocumentName': instance.documentName,
      'DetailName': instance.detailName,
      'DocumentPath': instance.documentPath,
      'ExpireDate': instance.expireDate?.toIso8601String(),
    };
