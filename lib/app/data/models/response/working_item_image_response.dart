import 'package:json_annotation/json_annotation.dart';
part 'working_item_image_response.g.dart';

@JsonSerializable()
class WorkingItemImageResponse {
  @JsonKey(name: 'IdWorkingItem')
  final String? idWorkingItem;

  @JsonKey(name: 'Description')
  final String? description;

  @JsonKey(name: 'Picture')
  final String? picture;

  @JsonKey(name: 'IdWorkingItemHistoryPicture')
  final String? idWorkingItemHistoryPicture;

  WorkingItemImageResponse({
    this.description,
    this.idWorkingItem,
    this.idWorkingItemHistoryPicture,
    this.picture,
  });

  factory WorkingItemImageResponse.fromJson(Map<String, dynamic> json) {
    return _$WorkingItemImageResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WorkingItemImageResponseToJson(this);
}
