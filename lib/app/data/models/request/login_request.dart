import 'package:json_annotation/json_annotation.dart';
part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {
  @JsonKey(name: 'Username')
  final String userName;

  @JsonKey(name: 'Password')
  final String password;

  LoginRequest({required this.userName, required this.password});

  factory LoginRequest.fromJson(Map<String, dynamic> json) {
    return _$LoginRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
