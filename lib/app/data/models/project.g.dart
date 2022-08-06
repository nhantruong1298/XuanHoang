// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      name: json['ProjectName'] as String?,
      address: json['Address'] as String?,
      idProject: json['IdProject'] as String?,
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'ProjectName': instance.name,
      'Address': instance.address,
      'IdProject': instance.idProject,
    };
