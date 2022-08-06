import 'package:json_annotation/json_annotation.dart';
part 'progress.g.dart';

@JsonSerializable()
class Progress {
  @JsonKey(name: 'PhaseName')
  final String? name;
  @JsonKey(name: 'FromDate')
  final DateTime? fromDate;
  @JsonKey(name: 'ToDate')
  final DateTime? toDate;
  @JsonKey(name: 'IdPhase')
  final String? idPhase;
  @JsonKey(name: 'IsActive')
  final bool? isActive;

  Progress(
      {this.name, this.fromDate, this.idPhase, this.toDate, this.isActive});

  factory Progress.fromJson(Map<String, dynamic> json) {
    return _$ProgressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProgressToJson(this);
}
