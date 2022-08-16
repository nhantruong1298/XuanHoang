import 'package:json_annotation/json_annotation.dart';
part 'image_history_response.g.dart';

@JsonSerializable()
class ImageHistoryResponse {
  @JsonKey(name: 'IdWorkingItem')
  final String? idWorkingItem;

  @JsonKey(name: 'Description')
  final String? description;

  @JsonKey(name: 'Picture')
  final String? picture;

  @JsonKey(name: 'IdWorkingItemHistoryPicture')
  final String? idWorkingItemHistoryPicture;

  ImageHistoryResponse({
    this.description,
    this.idWorkingItem,
    this.idWorkingItemHistoryPicture,
    this.picture,
  });

  factory ImageHistoryResponse.fromJson(Map<String, dynamic> json) {
    return _$ImageHistoryResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ImageHistoryResponseToJson(this);
}
