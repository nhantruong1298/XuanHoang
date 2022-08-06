// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Progress _$ProgressFromJson(Map<String, dynamic> json) => Progress(
      name: json['PhaseName'] as String?,
      fromDate: json['FromDate'] == null
          ? null
          : DateTime.parse(json['FromDate'] as String),
      idPhase: json['IdPhase'] as String?,
      toDate: json['ToDate'] == null
          ? null
          : DateTime.parse(json['ToDate'] as String),
      isActive: json['IsActive'] as bool?,
    );

Map<String, dynamic> _$ProgressToJson(Progress instance) => <String, dynamic>{
      'PhaseName': instance.name,
      'FromDate': instance.fromDate?.toIso8601String(),
      'ToDate': instance.toDate?.toIso8601String(),
      'IdPhase': instance.idPhase,
      'IsActive': instance.isActive,
    };
