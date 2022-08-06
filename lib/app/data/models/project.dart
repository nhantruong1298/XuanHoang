import 'package:json_annotation/json_annotation.dart';
part 'project.g.dart';

@JsonSerializable()
class Project {
  @JsonKey(name: 'ProjectName')
  final String? name;
  @JsonKey(name: 'Address')
  final String? address;
  @JsonKey(name: 'IdProject')
  final String? idProject;

  Project({
    this.name,
    this.address,
    this.idProject,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return _$ProjectFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
