import 'package:intl/intl.dart';

class AppFormatter {
 static String formatDate(DateTime? date) {
    try {
      return DateFormat('dd/MM/yyyy').format(date!);
    } catch (err) {
      return '';
    }
  }
}
