import 'dart:io';


class ImageData {
  final String? path;
  final File? file;
  ImageData({
    this.file,
    this.path,
  });

  bool get isLocalFile => file != null;
}
