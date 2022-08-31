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
  @JsonKey(name: 'IdWorkingItemHistory')
  final String? idWorkingItemHistory;

  WorkingItem(
      {this.description,
      this.idWorkingItem,
      this.idWorkingItemStatus,
      this.idWorkingTerm,
      this.isDeleted,
      this.itemName,
      this.idWorkingItemHistory});

  factory WorkingItem.fromJson(Map<String, dynamic> json) {
    return _$WorkingItemFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WorkingItemToJson(this);

  WorkingItem copyWith({
    String? idWorkingTerm,
    String? itemName,
    String? idWorkingItem,
    String? description,
    String? idWorkingItemStatus,
    bool? isDeleted,
  }) {
    return WorkingItem(
        description: description ?? this.description,
        idWorkingItem: idWorkingItem ?? this.idWorkingItem,
        idWorkingItemStatus: idWorkingItemStatus ?? this.idWorkingItemStatus,
        idWorkingTerm: idWorkingTerm ?? this.idWorkingTerm,
        isDeleted: isDeleted ?? this.isDeleted,
        itemName: itemName ?? this.itemName);
  }
}
