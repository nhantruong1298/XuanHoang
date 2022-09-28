import 'dart:isolate';
import 'dart:typed_data';

class SendReportIsolateModel {
  final Uint8List image;
  final String imageName;
  final String idWorkingTerm;
  final String customerName;
  final SendPort sendPort;

  SendReportIsolateModel({
    required this.image,
    required this.idWorkingTerm,
    required this.sendPort,
    required this.imageName,
    required this.customerName,
  });

  factory SendReportIsolateModel.fromJson(Map<String, dynamic> json) {
    return SendReportIsolateModel(
      image: json['image'] as Uint8List,
      idWorkingTerm: json['idWorkingItem'] as String,
      sendPort: json['sendPort'] as SendPort,
      imageName: json['imageName'] as String,
      customerName: json['customerName'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': this.image,
      'idWorkingItem': this.idWorkingTerm,
      'sendPort': this.sendPort,
      'imageName': this.imageName,
      'customerName': this.customerName,
    };
  }
}
