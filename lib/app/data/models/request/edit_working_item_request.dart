import 'package:json_annotation/json_annotation.dart';
part 'edit_working_item_request.g.dart';

@JsonSerializable()
class EditWorkingItemRequest {
  @JsonKey(name: 'IdWorkingItem')
  final String? idWorkingItem;

  @JsonKey(name: 'IdWorkingTerm')
  final String? idWorkingTerm;

  @JsonKey(name: 'ItemName')
  final String? itemName;

  @JsonKey(name: 'Description')
  final String? description;

  @JsonKey(name: 'IdWorkingItemStatus')
  final String? idWorkingItemStatus;

  @JsonKey(name: 'IsDeleted')
  final String? isDeleted;

  EditWorkingItemRequest({
    this.idWorkingItem,
    this.idWorkingTerm,
    this.itemName,
    this.description,
    this.idWorkingItemStatus,
    this.isDeleted,
  });

  factory EditWorkingItemRequest.fromJson(Map<String, dynamic> json) {
    return _$EditWorkingItemRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditWorkingItemRequestToJson(this);
}
