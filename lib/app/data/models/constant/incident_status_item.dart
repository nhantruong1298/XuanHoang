import 'package:example_nav2/app/data/models/enum/incident_status.dart';

class IncidentStatusItem {
  final String key;
  final String label;
  const IncidentStatusItem._internal(this.key, this.label);

  static const IncidentStatusItem Waiting =
      IncidentStatusItem._internal(IncidentStatus.waiting, 'Đang chờ');
  static const IncidentStatusItem Processing =
      IncidentStatusItem._internal(IncidentStatus.processing, 'Đang thực hiện');
  static const IncidentStatusItem Done =
      IncidentStatusItem._internal(IncidentStatus.done, 'Hoàn thành');
  static const IncidentStatusItem Close =
      IncidentStatusItem._internal(IncidentStatus.close, 'Đóng');

  static const List<IncidentStatusItem> items = [Waiting, Processing, Done, Close];
}
