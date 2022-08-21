// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_statistic_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectStatisticReportResponse _$ProjectStatisticReportResponseFromJson(
        Map<String, dynamic> json) =>
    ProjectStatisticReportResponse(
      projectStatistic: (json['projectStatistic'] as List<dynamic>?)
          ?.map((e) => ProjectStatistic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProjectStatisticReportResponseToJson(
        ProjectStatisticReportResponse instance) =>
    <String, dynamic>{
      'projectStatistic': instance.projectStatistic,
    };

ProjectStatistic _$ProjectStatisticFromJson(Map<String, dynamic> json) =>
    ProjectStatistic(
      idProject: json['IdProject'] as String?,
      projectName: json['ProjectName'] as String?,
      percentComplete: json['PercentComplete'] as String?,
      phaseStatistic: (json['PhaseStatistic'] as List<dynamic>?)
          ?.map((e) => PhaseStatistic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProjectStatisticToJson(ProjectStatistic instance) =>
    <String, dynamic>{
      'IdProject': instance.idProject,
      'ProjectName': instance.projectName,
      'PercentComplete': instance.percentComplete,
      'PhaseStatistic': instance.phaseStatistic,
    };

PhaseStatistic _$PhaseStatisticFromJson(Map<String, dynamic> json) =>
    PhaseStatistic(
      idProject: json['IdProject'] as String?,
      idPhase: json['IdPhase'] as String?,
      percentComplete: json['PercentComplete'] as String?,
      phaseName: json['PhaseName'] as String?,
      termStatistic: (json['TermStatistic'] as List<dynamic>?)
          ?.map((e) => TermStatistic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PhaseStatisticToJson(PhaseStatistic instance) =>
    <String, dynamic>{
      'IdProject': instance.idProject,
      'IdPhase': instance.idPhase,
      'PhaseName': instance.phaseName,
      'PercentComplete': instance.percentComplete,
      'TermStatistic': instance.termStatistic,
    };

TermStatistic _$TermStatisticFromJson(Map<String, dynamic> json) =>
    TermStatistic(
      idWorkingTerm: json['IdWorkingTerm'] as String?,
      idPhase: json['IdPhase'] as String?,
      percentComplete: json['PercentComplete'] as String?,
      percentGood: json['PercentGood'] as String?,
      percentNotGood: json['PercentNotGood'] as String?,
      termName: json['TermName'] as String?,
      workItemStatistic: (json['WorkItemStatistic'] as List<dynamic>?)
          ?.map((e) => WorkItemStatistic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TermStatisticToJson(TermStatistic instance) =>
    <String, dynamic>{
      'IdPhase': instance.idPhase,
      'IdWorkingTerm': instance.idWorkingTerm,
      'TermName': instance.termName,
      'PercentComplete': instance.percentComplete,
      'PercentGood': instance.percentGood,
      'PercentNotGood': instance.percentNotGood,
      'WorkItemStatistic': instance.workItemStatistic,
    };

WorkItemStatistic _$WorkItemStatisticFromJson(Map<String, dynamic> json) =>
    WorkItemStatistic(
      idWorkingTerm: json['IdWorkingTerm'] as String?,
      idWorkingItem: json['IdWorkingItem'] as String?,
      percentComplete: json['PercentComplete'] as String?,
      percentGood: json['PercentGood'] as String?,
      percentNotGood: json['PercentNotGood'] as String?,
      termName: json['TermName'] as String?,
      idWorkingItemStatus: json['IdWorkingItemStatus'] as String?,
      statusName: json['StatusName'] as String?,
    );

Map<String, dynamic> _$WorkItemStatisticToJson(WorkItemStatistic instance) =>
    <String, dynamic>{
      'IdWorkingItem': instance.idWorkingItem,
      'IdWorkingTerm': instance.idWorkingTerm,
      'TermName': instance.termName,
      'PercentComplete': instance.percentComplete,
      'PercentGood': instance.percentGood,
      'PercentNotGood': instance.percentNotGood,
      'IdWorkingItemStatus': instance.idWorkingItemStatus,
      'StatusName': instance.statusName,
    };
