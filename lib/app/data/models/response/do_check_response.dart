import 'package:json_annotation/json_annotation.dart';
part 'do_check_response.g.dart';

@JsonSerializable()
class DoCheckResponse {
  @JsonKey(name: 'ReturnId')
  final String? returnId;

  @JsonKey(name: 'Message')
  final String? message;

  DoCheckResponse({
    this.returnId,
    this.message,
  });

  factory DoCheckResponse.fromJson(Map<String, dynamic> json) {
    
    return _$DoCheckResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DoCheckResponseToJson(this);
}
