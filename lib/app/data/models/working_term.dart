import 'package:json_annotation/json_annotation.dart';
part 'working_term.g.dart';

@JsonSerializable()
class WorkingTerm {
  @JsonKey(name: 'IdWorkingTerm')
  final String? idWorkingTerm;
  @JsonKey(name: 'TermName')
  final String? termName;
  @JsonKey(name: 'IdPhase')
  final String? idPhase;

  WorkingTerm({
    this.idPhase,
    this.idWorkingTerm,
    this.termName,
  });

  factory WorkingTerm.fromJson(Map<String, dynamic> json) {
    return _$WorkingTermFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WorkingTermToJson(this);
}
