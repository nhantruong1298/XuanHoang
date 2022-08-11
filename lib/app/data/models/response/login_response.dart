import 'package:example_nav2/app/data/models/profile.dart';
import 'package:example_nav2/app/data/models/token.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'Token')
  final Token? token;

  @JsonKey(name: 'Profile')
  final Profile? profile;

  LoginResponse({
    this.token,
    this.profile,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
