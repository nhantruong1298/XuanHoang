import 'package:json_annotation/json_annotation.dart';
part 'profile.g.dart';

@JsonSerializable()
class Profile {
  @JsonKey(name: 'FullName')
  final String? fullName;
  @JsonKey(name: 'IdLogin')
  final String? idLogin;
  @JsonKey(name: 'Mode')
  final String? mode;

  @JsonKey(name: 'IdRole')
  final String? idRole;

  @JsonKey(name: 'IdProject')
  final String? idProject;

  factory Profile.fromJson(Map<String, dynamic> json) {
    return _$ProfileFromJson(json);
  }

  Profile({
    this.fullName,
    this.idLogin,
    this.mode,
    this.idProject,
    this.idRole
  });

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
