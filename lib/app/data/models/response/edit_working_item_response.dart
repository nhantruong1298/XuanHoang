import 'package:json_annotation/json_annotation.dart';
part 'edit_working_item_response.g.dart';

@JsonSerializable()
class EditWorkingItemResponse {
  @JsonKey(name: 'ReturnId')
  final String? returnId;

  @JsonKey(name: 'Message')
  final String? message;

  EditWorkingItemResponse({
    this.returnId,
    this.message,
  });

  factory EditWorkingItemResponse.fromJson(Map<String, dynamic> json) {
    return _$EditWorkingItemResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditWorkingItemResponseToJson(this);
}
