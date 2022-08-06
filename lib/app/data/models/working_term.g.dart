// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkingTerm _$WorkingTermFromJson(Map<String, dynamic> json) => WorkingTerm(
      idPhase: json['IdPhase'] as String?,
      idWorkingTerm: json['IdWorkingTerm'] as String?,
      termName: json['TermName'] as String?,
    );

Map<String, dynamic> _$WorkingTermToJson(WorkingTerm instance) =>
    <String, dynamic>{
      'IdWorkingTerm': instance.idWorkingTerm,
      'TermName': instance.termName,
      'IdPhase': instance.idPhase,
    };
