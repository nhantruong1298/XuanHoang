// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_project_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentProjectResponse _$DocumentProjectResponseFromJson(
        Map<String, dynamic> json) =>
    DocumentProjectResponse(
      idDocument: json['IdDocument'] as String?,
      idProject: json['IdProject'] as int?,
      documentName: json['DocumentName'] as String?,
      documentPath: json['DocumentPath'] as String?,
      expireDate: json['ExpireDate'] == null
          ? null
          : DateTime.parse(json['ExpireDate'] as String),
      isActive: json['IsActive'] as String?,
      createDate: json['CreateDate'] == null
          ? null
          : DateTime.parse(json['CreateDate'] as String),
      isDeleted: json['IsDeleted'] as bool?,
      isWarning: json['IsWarning'] as String?,
    );

Map<String, dynamic> _$DocumentProjectResponseToJson(
        DocumentProjectResponse instance) =>
    <String, dynamic>{
      'IdDocument': instance.idDocument,
      'IdProject': instance.idProject,
      'DocumentName': instance.documentName,
      'DocumentPath': instance.documentPath,
      'ExpireDate': instance.expireDate?.toIso8601String(),
      'IsWarning': instance.isWarning,
      'IsActive': instance.isActive,
      'CreateDate': instance.createDate?.toIso8601String(),
      'IsDeleted': instance.isDeleted,
    };
