import 'package:json_annotation/json_annotation.dart';
part 'delete_do_check_image_request.g.dart';

@JsonSerializable()
class DeleteDoCheckImageRequest {
  @JsonKey(name: 'IdWorkingItem')
  final String? idWorkingItem;

  @JsonKey(name: 'Picture')
  final String? picture;

  @JsonKey(name: 'Description')
  final String? description;

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

  DeleteDoCheckImageRequest({
    required this.description,
    required this.idWorkingItem,
    required this.idWorkingItemHistoryPicture,
    required this.isDeleted,
    required this.picture,
    required this.fullName,
    required this.idWorkingItemStatus,
    required this.isReported,
    required this.reason,
    required this.statusName,
  });

  factory DeleteDoCheckImageRequest.fromJson(Map<String, dynamic> json) {
    return _$DeleteDoCheckImageRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteDoCheckImageRequestToJson(this);
}
