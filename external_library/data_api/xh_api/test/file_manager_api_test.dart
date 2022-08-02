import 'package:test/test.dart';
import 'package:xh_api/xh_api.dart';


/// tests for FileManagerApi
void main() {
  final instance = XhApi().getFileManagerApi();

  group(FileManagerApi, () {
    //Future<bool> apiFileManagerCheckFileExistedGet({ String fileName, UploadMode mode, String subFolder }) async
    test('test apiFileManagerCheckFileExistedGet', () async {
      // TODO
    });

    //Future apiFileManagerGetFileGet({ String name, String returnName, UploadMode mode, String subFolder, String contentType }) async
    test('test apiFileManagerGetFileGet', () async {
      // TODO
    });

  });
}
