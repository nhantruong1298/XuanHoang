import 'package:json_annotation/json_annotation.dart';
part 'report_detail_response.g.dart';

@JsonSerializable()
class ReportDetailResponse {
  @JsonKey(name: 'IdIncident')
  final String? idIncident;

  @JsonKey(name: 'IncidentName')
  final String? incidentName;

  @JsonKey(name: 'IncidentDescription')
  final String? incidentDescription;

  @JsonKey(name: 'IdIncidentStatus')
  final String? idIncidentStatus;

  @JsonKey(name: 'StatusName')
  final String? statusName;

  @JsonKey(name: 'FullName')
  final String? fullName;

  @JsonKey(name: 'ReplyContent')
  final String? replyContent;

  @JsonKey(name: 'DiscussIdStatus')
  final String? discussIdStatus;

  @JsonKey(name: 'DiscussStatus')
  final String? discussStatus;

  @JsonKey(name: 'IdIncidentDiscussion')
  final String? idIncidentDiscussion;

  @JsonKey(name: 'Pictures')
  final List<ReportDetailPicture>? pictures;

  @JsonKey(name: 'CreateDate')
  final DateTime? createDate;

  factory ReportDetailResponse.fromJson(Map<String, dynamic> json) {
    return _$ReportDetailResponseFromJson(json);
  }

  ReportDetailResponse(
      {this.idIncident,
      this.incidentName,
      this.incidentDescription,
      this.idIncidentStatus,
      this.statusName,
      this.fullName,
      this.replyContent,
      this.discussIdStatus,
      this.discussStatus,
      this.idIncidentDiscussion,
      this.createDate,
      this.pictures});

  Map<String, dynamic> toJson() => _$ReportDetailResponseToJson(this);
}

@JsonSerializable()
class ReportDetailPicture {
  @JsonKey(name: 'IdIncidentPicture')
  final String? idIncidentPicture;

  @JsonKey(name: 'PicturePath')
  final String? path;

  factory ReportDetailPicture.fromJson(Map<String, dynamic> json) {
    return _$ReportDetailPictureFromJson(json);
  }

  ReportDetailPicture({
    this.idIncidentPicture,
    this.path,
  });

  Map<String, dynamic> toJson() => _$ReportDetailPictureToJson(this);
}
