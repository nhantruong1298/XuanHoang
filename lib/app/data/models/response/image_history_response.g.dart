// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageHistoryResponse _$ImageHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    ImageHistoryResponse(
      description: json['Description'] as String?,
      idWorkingItem: json['IdWorkingItem'] as String?,
      idWorkingItemHistoryPicture:
          json['IdWorkingItemHistoryPicture'] as String?,
      picture: json['Picture'] as String?,
    );

Map<String, dynamic> _$ImageHistoryResponseToJson(
        ImageHistoryResponse instance) =>
    <String, dynamic>{
      'IdWorkingItem': instance.idWorkingItem,
      'Description': instance.description,
      'Picture': instance.picture,
      'IdWorkingItemHistoryPicture': instance.idWorkingItemHistoryPicture,
    };
