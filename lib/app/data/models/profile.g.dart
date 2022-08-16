// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      fullName: json['FullName'] as String?,
      idLogin: json['IdLogin'] as String?,
      idRole: json['Mode'] as String?,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'FullName': instance.fullName,
      'IdLogin': instance.idLogin,
      'Mode': instance.idRole,
    };
