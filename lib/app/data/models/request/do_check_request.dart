import 'package:json_annotation/json_annotation.dart';
part 'do_check_request.g.dart';

@JsonSerializable()
class DoCheckRequest {
  @JsonKey(name: 'IdWorkingItem')
  final String? idWorkingItem;

  @JsonKey(name: 'SessionId')
  final String? sessionId;

  @JsonKey(name: 'Reason')
  final String? reason;

  @JsonKey(name: 'IdWorkingItemStatus')
  final String? idWorkingItemStatus;

  @JsonKey(name: 'IsDeleted')
  final String? isDeleted;

  DoCheckRequest({
    this.idWorkingItem,
    this.sessionId,
    this.reason,
    this.idWorkingItemStatus,
    this.isDeleted,
  });

  factory DoCheckRequest.fromJson(Map<String, dynamic> json) {
    return _$DoCheckRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DoCheckRequestToJson(this);
}
