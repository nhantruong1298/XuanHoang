import 'package:json_annotation/json_annotation.dart';
part 'working_item.g.dart';

@JsonSerializable()
class WorkingItem {
  @JsonKey(name: 'IdWorkingTerm')
  final String? idWorkingTerm;
  @JsonKey(name: 'ItemName')
  final String? itemName;
  @JsonKey(name: 'IdWorkingItem')
  final String? idWorkingItem;
  @JsonKey(name: 'Description')
  final String? description;
  @JsonKey(name: 'IdWorkingItemStatus')
  final String? idWorkingItemStatus;
  @JsonKey(name: 'IsDeleted')
  final bool? isDeleted;

  WorkingItem(
      {this.description,
      this.idWorkingItem,
      this.idWorkingItemStatus,
      this.idWorkingTerm,
      this.isDeleted,
      this.itemName});

  factory WorkingItem.fromJson(Map<String, dynamic> json) {
    return _$WorkingItemFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WorkingItemToJson(this);
}
