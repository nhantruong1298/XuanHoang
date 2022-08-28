import 'package:example_nav2/app/data/models/enum/incident_status.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:flutter/material.dart';

class IncidentStatusItem {
  final String key;
  final String label;
  final Color color;

  const IncidentStatusItem._internal(this.key, this.label, this.color);

  static const IncidentStatusItem Waiting = IncidentStatusItem._internal(
      IncidentStatus.waiting, 'Đang chờ', AppColors.greyBorderColor);
  static const IncidentStatusItem Processing = IncidentStatusItem._internal(
      IncidentStatus.processing, 'Đang thực hiện', AppColors.blueColor);
  static const IncidentStatusItem Done = IncidentStatusItem._internal(
      IncidentStatus.done, 'Hoàn thành', AppColors.green700);
  static const IncidentStatusItem Close = IncidentStatusItem._internal(
      IncidentStatus.close, 'Đóng', AppColors.primaryDarkColor);

  static const List<IncidentStatusItem> items = [
    Waiting,
    Processing,
    Done,
    Close
  ];
}
