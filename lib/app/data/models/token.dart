import 'package:json_annotation/json_annotation.dart';
part 'token.g.dart';

@JsonSerializable()
class Token {
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  @JsonKey(name: 'token_type')
  final String? tokenType;
  final String? result;

  Token({
    this.accessToken,
    this.refreshToken,
    this.tokenType,
    this.result,
  });

  factory Token.fromJson(Map<String, dynamic> json) {
    return _$TokenFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TokenToJson(this);
}
