import 'package:json_annotation/json_annotation.dart';
part 'do_check_image_response.g.dart';

@JsonSerializable()
class DoCheckImageResponse {
  // @JsonKey(name: 'ReturnId')
  // final String? returnId;

  @JsonKey(name: 'Message')
  final String? message;

  DoCheckImageResponse({
   // this.returnId,
    this.message,
  });

  factory DoCheckImageResponse.fromJson(Map<String, dynamic> json) {
    return _$DoCheckImageResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DoCheckImageResponseToJson(this);
}
