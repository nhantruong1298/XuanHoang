import 'package:json_annotation/json_annotation.dart';
part 'document_project_response.g.dart';

@JsonSerializable()
class DocumentProjectResponse {
  @JsonKey(name: "IdDocument")
  final String? idDocument;
  @JsonKey(name: "IdProject")
  final int? idProject;
  @JsonKey(name: "DocumentName")
  final String? documentName;
  @JsonKey(name: "DocumentPath")
  final String? documentPath;
  @JsonKey(name: "ExpireDate")
  final DateTime? expireDate;
  @JsonKey(name: "IsWarning")
  final String? isWarning;
  @JsonKey(name: "IsActive")
  final String? isActive;
  @JsonKey(name: "CreateDate")
  final DateTime? createDate;
  @JsonKey(name: "IsDeleted")
  final bool? isDeleted;

  factory DocumentProjectResponse.fromJson(Map<String, dynamic> json) {
    return _$DocumentProjectResponseFromJson(json);
  }

  DocumentProjectResponse({
    this.idDocument,
    this.idProject,
    this.documentName,
    this.documentPath,
    this.expireDate,
    this.isActive,
    this.createDate,
    this.isDeleted,
    this.isWarning,
  });

  Map<String, dynamic> toJson() => _$DocumentProjectResponseToJson(this);
}
