import 'dart:io';

import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

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

  Future<void> requestStoragePermission() async {
    try {
      final status = await Permission.storage.status;

      if (status != PermissionStatus.granted) {
        await Permission.storage.request();
      }
    } catch (error) {}
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
