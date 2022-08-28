import 'package:example_nav2/app/data/models/enum/working_item_status.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:flutter/material.dart';

class WorkingItemStatusType{
   final String status;
  final Color color;
  
  const WorkingItemStatusType._internal(this.status, this.color);

  static const WorkingItemStatusType Success =
      WorkingItemStatusType._internal(WorkingItemStatus.success, AppColors.green700);
  static const WorkingItemStatusType Failed =
      WorkingItemStatusType._internal(WorkingItemStatus.failed, AppColors.errorColor);

  static const List<WorkingItemStatusType> items = [Success,Failed];
}