import 'package:json_annotation/json_annotation.dart';
part 'image_history_response.g.dart';

@JsonSerializable()
class ImageHistoryResponse {
  @JsonKey(name: 'IdWorkingItem')
  final String? idWorkingItem;

  @JsonKey(name: 'Pictures')
  final List<PictureResponse>? pictures;

  @JsonKey(name: 'IdWorkingItemStatus')
  final String? idWorkingItemStatus;

  @JsonKey(name: 'Picture')
  final String? picture;

  @JsonKey(name: 'FullName')
  final String? fullName;

  @JsonKey(name: 'CreateDate')
  final DateTime? createDate;

  ImageHistoryResponse({
    this.idWorkingItem,
    this.picture,
    this.fullName,
    this.idWorkingItemStatus,
    this.pictures,
    this.createDate,
  });

  factory ImageHistoryResponse.fromJson(Map<String, dynamic> json) {
    return _$ImageHistoryResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ImageHistoryResponseToJson(this);
}

@JsonSerializable()
class PictureResponse {
  @JsonKey(name: "Picture")
  String? item;

  PictureResponse({this.item});

  factory PictureResponse.fromJson(Map<String, dynamic> json) {
    return _$PictureResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PictureResponseToJson(this);
}
