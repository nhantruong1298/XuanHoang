import 'package:json_annotation/json_annotation.dart';
part 'change_password_request.g.dart';

@JsonSerializable()
class ChangePasswordRequest {
  @JsonKey(name: 'NewPassword')
  final String newPassword;

  @JsonKey(name: 'RetypePassword')
  final String retypePassword;

  ChangePasswordRequest(
      {required this.newPassword, required this.retypePassword});

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) {
    return _$ChangePasswordRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChangePasswordRequestToJson(this);
}
