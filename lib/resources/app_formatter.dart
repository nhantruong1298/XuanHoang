import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:intl/intl.dart';

class AppFormatter {
  static String formatDate(DateTime? date) {
    try {
      return DateFormat('dd/MM/yyyy').format(date!);
    } catch (err) {
      return date.toString();
    }
  }

  static img.Image resizeImage(File file) {
    final imageTemp = img.decodeImage(file.readAsBytesSync());
    final resizedImg = img.copyResize(
      imageTemp!,
      height: 720,
      interpolation: img.Interpolation.average,
    );

    return resizedImg;
  }
}
