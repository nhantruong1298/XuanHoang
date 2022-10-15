import 'dart:io';

import 'package:flutter_downloader/flutter_downloader.dart';

class FileRepository {
  
  Future<void> downLoadPdf({
    required String fileName,
    required String savedDir,
    required String url,
    bool showNotification = false,
    bool openFileFromNotification = true,
    bool removeDuplicateFile = false,
    bool saveInPublicStorage = false,
  }) async {
    if (removeDuplicateFile) {
      await _removeDuplicateFile(
        fileName: fileName,
        savedDir: savedDir,
      );
    }

    await FlutterDownloader.enqueue(
        url: url,
        savedDir: savedDir,
        fileName: fileName,
        showNotification: showNotification,
        openFileFromNotification: openFileFromNotification,
        saveInPublicStorage: saveInPublicStorage);
  }

  Future<void> _removeDuplicateFile({
    required String fileName,
    required String savedDir,
  }) async {
    final file = File('$savedDir/$fileName');

    if (file.existsSync()) {
      await file.delete();
    }
  }
}
