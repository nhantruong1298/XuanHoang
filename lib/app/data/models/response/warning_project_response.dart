import 'package:json_annotation/json_annotation.dart';
part 'warning_project_response.g.dart';

@JsonSerializable()
class WarningProjectResponse {
  @JsonKey(name: 'IdProject')
  final String? idProject;
  @JsonKey(name: 'ProjectName')
  final String? projectName;
  @JsonKey(name: 'Address')
  final String? address;
  @JsonKey(name: 'PhoneNr')
  final String? phoneNr;
  @JsonKey(name: 'Email')
  final String? email;
  @JsonKey(name: 'DocumentName')
  final String? documentName;
  @JsonKey(name: 'DetailName')
  final String? detailName;
  @JsonKey(name: 'DocumentPath')
  final String? documentPath;
  @JsonKey(name: 'ExpireDate')
  final String? expireDate;

  factory WarningProjectResponse.fromJson(Map<String, dynamic> json) {
    return _$WarningProjectResponseFromJson(json);
  }

  WarningProjectResponse(
      {this.idProject,
      this.projectName,
      this.address,
      this.phoneNr,
      this.email,
      this.documentName,
      this.detailName,
      this.documentPath,
      this.expireDate});

  Map<String, dynamic> toJson() => _$WarningProjectResponseToJson(this);
}
