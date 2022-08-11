import 'package:json_annotation/json_annotation.dart';
part 'profile.g.dart';

@JsonSerializable()
class Profile {
  @JsonKey(name: 'FullName')
  final String? fullName;
  @JsonKey(name: 'IdLogin')
  final String? idLogin;
  @JsonKey(name: 'IdRole')
  final String? idRole;

  factory Profile.fromJson(Map<String, dynamic> json) {
    return _$ProfileFromJson(json);
  }

  Profile({this.fullName, this.idLogin, this.idRole});

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
