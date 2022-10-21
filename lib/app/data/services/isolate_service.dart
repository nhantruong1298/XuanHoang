import 'dart:isolate';
import 'dart:ui';

import 'package:example_nav2/app/data/data_source/data_storage.dart';
import 'package:example_nav2/app/data/models/isolate/send_report_isolate.dart';
import 'package:example_nav2/app/data/models/isolate/upload_do_check_image_isolate.dart';
import 'package:example_nav2/app/data/models/response/do_check_image_response.dart';
import 'package:example_nav2/app/data/services/api_service.dart';
import 'package:example_nav2/app/modules/add_image/controllers/add_image_controller.dart';
import 'package:example_nav2/resources/app_formatter.dart';
import 'package:image/image.dart' as img;
import 'package:dio/dio.dart';

void sendReportIsolate(Map<String, dynamic> json) async {
  final data = SendReportIsolateModel.fromJson(json);
  try {
    //Load Token
    final dataStorage = DataStorage();

    final String? accessToken =
        await dataStorage.getString(DataStorage.TOKEN_KEY);

    //resize image
    final imageTemp = img.decodeImage(data.image);

    final resizedImg = img.copyResize(
      imageTemp!,
      height: 720,
      interpolation: img.Interpolation.average,
    );

    //Call API
    final dio =
        ApiService.createDio(headers: {"authorization": "Bearer $accessToken"});

    final queryParameters = <String, dynamic>{
      r'idWorkingTerm': data.idWorkingTerm,
      r'customerName': data.customerName,
    };
    final formData = FormData.fromMap(
      {
        'File': MultipartFile.fromBytes(
          img.encodePng(resizedImg),
          filename: data.imageName,
        ),
      },
    );
    await dio.fetch<Map<String, dynamic>>(_setStreamType<DoCheckImageResponse>(
        Options(method: 'POST', contentType: 'multipart/form-data')
            .compose(dio.options, '/api/working-terms/report',
                queryParameters: queryParameters, data: formData)
            .copyWith(baseUrl: dio.options.baseUrl)));
  } catch (error) {}
}

void resizedAndUploadDoCheckImageIsolate(Map<String, dynamic> json) async {
  final data = UploadDoCheckImageIsolateModel.fromJson(json);
  final SendPort? send =
      IsolateNameServer.lookupPortByName(ADD_IMAGE_SEND_PORT_KEY);

  try {
    //Load Token
    final dataStorage = DataStorage();
    final accessToken = await dataStorage.getString(DataStorage.TOKEN_KEY);

    //resize image
    final image = AppFormatter.resizeImageFromUint8List(data.image);

    //Call API
    final dio =
        ApiService.createDio(headers: {"authorization": "Bearer $accessToken"});

    final queryParameters = <String, dynamic>{
      r'idWorkingItem': data.idWorkingItem
    };
    final formData = FormData.fromMap(
      {
        'File': MultipartFile.fromBytes(
          img.encodePng(image),
          filename: data.imageName,
        ),
      },
    );
    final result = await dio.fetch<Map<String, dynamic>>(
        _setStreamType<DoCheckImageResponse>(
            Options(method: 'POST', contentType: 'multipart/form-data')
                .compose(dio.options, '/api/working-items/docheck/images',
                    queryParameters: queryParameters, data: formData)
                .copyWith(baseUrl: dio.options.baseUrl)));

    final value = DoCheckImageResponse.fromJson(result.data!);
    send?.send(value.message.toString());
  } catch (error) {
    send?.send(AppFormatter.parseErrorToString(error));
  }
}

RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
  if (T != dynamic &&
      !(requestOptions.responseType == ResponseType.bytes ||
          requestOptions.responseType == ResponseType.stream)) {
    if (T == String) {
      requestOptions.responseType = ResponseType.plain;
    } else {
      requestOptions.responseType = ResponseType.json;
    }
  }
  return requestOptions;
}


 //resize image
    // final imageTemp = img.decodeImage(data.image);

    // final resizedImg = img.copyResize(
    //   imageTemp!,
    //   height: 720,
    //   interpolation: img.Interpolation.average,
    // );

    // final notifyIsolate = await FlutterIsolate.spawn(
    //     notifyToMainIsolate,
    //     NotifyToMainIsolateModel(message: 'Success', sendPort: data.sendPort)
    //         .toJson());
    // notifyIsolate.kill();