// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_working_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditWorkingItemRequest _$EditWorkingItemRequestFromJson(
        Map<String, dynamic> json) =>
    EditWorkingItemRequest(
      idWorkingItem: json['IdWorkingItem'] as String?,
      idWorkingTerm: json['IdWorkingTerm'] as String?,
      itemName: json['ItemName'] as String?,
      description: json['Description'] as String?,
      idWorkingItemStatus: json['IdWorkingItemStatus'] as String?,
      isDeleted: json['IsDeleted'] as String?,
    );

Map<String, dynamic> _$EditWorkingItemRequestToJson(
        EditWorkingItemRequest instance) =>
    <String, dynamic>{
      'IdWorkingItem': instance.idWorkingItem,
      'IdWorkingTerm': instance.idWorkingTerm,
      'ItemName': instance.itemName,
      'Description': instance.description,
      'IdWorkingItemStatus': instance.idWorkingItemStatus,
      'IsDeleted': instance.isDeleted,
    };
