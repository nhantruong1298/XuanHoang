import 'package:json_annotation/json_annotation.dart';
part 'project_statistic_report_response.g.dart';

@JsonSerializable()
class ProjectStatisticReportResponse {
  final List<ProjectStatistic>? projectStatistic;

  factory ProjectStatisticReportResponse.fromJson(Map<String, dynamic> json) {
    return _$ProjectStatisticReportResponseFromJson(json);
  }

  ProjectStatisticReportResponse({this.projectStatistic});

  Map<String, dynamic> toJson() => _$ProjectStatisticReportResponseToJson(this);
}

@JsonSerializable()
class ProjectStatistic {
  @JsonKey(name: 'IdProject')
  final String? idProject;

  @JsonKey(name: 'ProjectName')
  final String? projectName;

  @JsonKey(name: 'PercentComplete')
  final String? percentComplete;

  @JsonKey(name: 'PhaseStatistic')
  final List<PhaseStatistic>? phaseStatistic;

  factory ProjectStatistic.fromJson(Map<String, dynamic> json) {
    return _$ProjectStatisticFromJson(json);
  }

  ProjectStatistic(
      {this.idProject,
      this.projectName,
      this.percentComplete,
      this.phaseStatistic});

  Map<String, dynamic> toJson() => _$ProjectStatisticToJson(this);
}

@JsonSerializable()
class PhaseStatistic {
  @JsonKey(name: 'IdProject')
  final String? idProject;

  @JsonKey(name: 'IdPhase')
  final String? idPhase;

  @JsonKey(name: 'PhaseName')
  final String? phaseName;

  @JsonKey(name: 'PercentComplete')
  final String? percentComplete;

  @JsonKey(name: 'TermStatistic')
  final List<TermStatistic>? termStatistic;

  factory PhaseStatistic.fromJson(Map<String, dynamic> json) {
    return _$PhaseStatisticFromJson(json);
  }

  PhaseStatistic({
    this.idProject,
    this.idPhase,
    this.percentComplete,
    this.phaseName,
    this.termStatistic,
  });

  Map<String, dynamic> toJson() => _$PhaseStatisticToJson(this);
}

@JsonSerializable()
class TermStatistic {
  @JsonKey(name: 'IdPhase')
  final String? idPhase;

  @JsonKey(name: 'IdWorkingTerm')
  final String? idWorkingTerm;

  @JsonKey(name: 'TermName')
  final String? termName;

  @JsonKey(name: 'PercentComplete')
  final String? percentComplete;

  @JsonKey(name: 'PercentGood')
  final String? percentGood;

  @JsonKey(name: 'PercentNotGood')
  final String? percentNotGood;

  @JsonKey(name: 'WorkItemStatistic')
  final List<WorkItemStatistic>? workItemStatistic;

  factory TermStatistic.fromJson(Map<String, dynamic> json) {
    return _$TermStatisticFromJson(json);
  }

  TermStatistic({
    this.idWorkingTerm,
    this.idPhase,
    this.percentComplete,
    this.percentGood,
    this.percentNotGood,
    this.termName,
    this.workItemStatistic,
  });

  Map<String, dynamic> toJson() => _$TermStatisticToJson(this);
}

@JsonSerializable()
class WorkItemStatistic {
  @JsonKey(name: 'IdWorkingItem')
  final String? idWorkingItem;

  @JsonKey(name: 'IdWorkingTerm')
  final String? idWorkingTerm;

  @JsonKey(name: 'TermName')
  final String? termName;

  @JsonKey(name: 'PercentComplete')
  final String? percentComplete;

  @JsonKey(name: 'PercentGood')
  final String? percentGood;

  @JsonKey(name: 'PercentNotGood')
  final String? percentNotGood;

  @JsonKey(name: 'IdWorkingItemStatus')
  final String? idWorkingItemStatus;

  @JsonKey(name: 'StatusName')
  final String? statusName;

  factory WorkItemStatistic.fromJson(Map<String, dynamic> json) {
    return _$WorkItemStatisticFromJson(json);
  }

  WorkItemStatistic({
    this.idWorkingTerm,
    this.idWorkingItem,
    this.percentComplete,
    this.percentGood,
    this.percentNotGood,
    this.termName,
    this.idWorkingItemStatus,
    this.statusName,
  });

  Map<String, dynamic> toJson() => _$WorkItemStatisticToJson(this);
}
