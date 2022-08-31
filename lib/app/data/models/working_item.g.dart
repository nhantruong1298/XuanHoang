// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkingItem _$WorkingItemFromJson(Map<String, dynamic> json) => WorkingItem(
      description: json['Description'] as String?,
      idWorkingItem: json['IdWorkingItem'] as String?,
      idWorkingItemStatus: json['IdWorkingItemStatus'] as String?,
      idWorkingTerm: json['IdWorkingTerm'] as String?,
      isDeleted: json['IsDeleted'] as bool?,
      itemName: json['ItemName'] as String?,
      idWorkingItemHistory: json['IdWorkingItemHistory'] as String?,
    );

Map<String, dynamic> _$WorkingItemToJson(WorkingItem instance) =>
    <String, dynamic>{
      'IdWorkingTerm': instance.idWorkingTerm,
      'ItemName': instance.itemName,
      'IdWorkingItem': instance.idWorkingItem,
      'Description': instance.description,
      'IdWorkingItemStatus': instance.idWorkingItemStatus,
      'IsDeleted': instance.isDeleted,
      'IdWorkingItemHistory': instance.idWorkingItemHistory,
    };
