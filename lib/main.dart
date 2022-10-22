import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:example_nav2/app/injector/setup_injector.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/widgets/common/snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'app/routes/app_pages.dart';

ReceivePort mainPort = ReceivePort();

@pragma('vm:entry-point')
void downloadCallback(String id, DownloadTaskStatus status, int progress) {
  final SendPort? send =
      IsolateNameServer.lookupPortByName(DOWNLOADER_SEND_PORT_KEY);

  final SendPort? send1 =
      IsolateNameServer.lookupPortByName(DOWNLOAD_FINAL_REPORT_SEND_PORT_KEY);

  send?.send([id, status, progress]);
  send1?.send([id, status, progress]);
}

const String DOWNLOADER_SEND_PORT_KEY = 'downloader_send_port';
const String DOWNLOAD_FINAL_REPORT_SEND_PORT_KEY =
    'download_final_report_send_port';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterDownloader.initialize(debug: true, ignoreSsl: true);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ByteData data =
      await PlatformAssetBundle().load('assets/ce/lets-encrypt-r3.pem');
  SecurityContext.defaultContext
      .setTrustedCertificatesBytes(data.buffer.asUint8List());

  mainPort.listen((message) {
    if (message == 'Success') {
      showSnackbar(
          message: 'Thêm ảnh thành công', backgroundColor: AppColors.green400);
    } else {
      showSnackbar(message: message, backgroundColor: AppColors.errorColor);
    }
  });

  runApp(
    ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Xuân Hoàng",
          initialBinding: BindingsBuilder(
            () {
              initDependencies();
            },
          ),
          getPages: AppPages.routes,
          initialRoute: AppPages.INITIAL,
          localizationsDelegates: [
            S.delegate,
            FormBuilderLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
        );
      },
    ),
  );
}
