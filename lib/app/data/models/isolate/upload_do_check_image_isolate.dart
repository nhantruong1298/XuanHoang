import 'dart:isolate';
import 'dart:typed_data';

class UploadDoCheckImageIsolateModel {
  final Uint8List image;
  final String idWorkingItem;
  final String imageName;
  final SendPort sendPort;

  UploadDoCheckImageIsolateModel({
    required this.image,
    required this.idWorkingItem,
    required this.sendPort,
    required this.imageName,
  });

  factory UploadDoCheckImageIsolateModel.fromJson(Map<String, dynamic> json) {
    return UploadDoCheckImageIsolateModel(
      image: json['image'] as Uint8List,
      idWorkingItem: json['idWorkingItem'] as String,
      sendPort: json['sendPort'] as SendPort,
      imageName: json['imageName'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': this.image,
      'idWorkingItem': this.idWorkingItem,
      'sendPort': this.sendPort,
      'imageName': this.imageName,
    };
  }
}
