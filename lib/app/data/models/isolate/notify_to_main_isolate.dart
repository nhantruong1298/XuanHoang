import 'dart:isolate';

class NotifyToMainIsolateModel {
  final String message;
  final SendPort sendPort;
  // final SendPort sendPort;

  NotifyToMainIsolateModel({
    required this.message,
    required this.sendPort,
    // required this.sendPort
  });

  factory NotifyToMainIsolateModel.fromJson(Map<String, dynamic> json) {
    return NotifyToMainIsolateModel(
        message: json['message'] as String,
        sendPort: json['sendPort'] as SendPort);
    // sendPort: json['sendPort'] as SendPort);
  }

  Map<String, dynamic> toJson() {
    return {
      'message': this.message,
      'sendPort': this.sendPort
      // 'sendPort': this.sendPort,
    };
  }
}
