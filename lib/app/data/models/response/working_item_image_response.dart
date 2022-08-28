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

  @JsonKey(name: 'IsDeleted')
  final String? isDeleted;

  @JsonKey(name: 'IdWorkingItemStatus')
  final String? idWorkingItemStatus;
  @JsonKey(name: 'StatusName')
  final String? statusName;
  @JsonKey(name: 'Reason')
  final String? reason;
  @JsonKey(name: 'IsReported')
  final String? isReported;
  @JsonKey(name: 'FullName')
  final String? fullName;

  WorkingItemImageResponse({
    this.description,
    this.idWorkingItem,
    this.idWorkingItemHistoryPicture,
    this.picture,
    this.fullName,
    this.idWorkingItemStatus,
    this.isDeleted,
    this.isReported,
    this.reason,
    this.statusName,
  });

  factory WorkingItemImageResponse.fromJson(Map<String, dynamic> json) {
    return _$WorkingItemImageResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WorkingItemImageResponseToJson(this);
}
