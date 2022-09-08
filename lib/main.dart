import 'dart:io';

import 'package:example_nav2/app/injector/setup_injector.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ByteData data =
      await PlatformAssetBundle().load('assets/ce/lets-encrypt-r3.pem');
  SecurityContext.defaultContext
      .setTrustedCertificatesBytes(data.buffer.asUint8List());

  runApp(
    ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Xuân Hoàng",
          initialBinding: BindingsBuilder(
            () {
              // Get.put(SplashService());
              // Get.put(ApiService());
              // Get.put(AuthService());
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
          // builder: (context, child) {
          //   return FutureBuilder<void>(
          //     key: ValueKey('initFuture'),
          //     future: Get.find<SplashService>().init(),
          //     builder: (context, snapshot) {
          //       if (snapshot.connectionState == ConnectionState.done) {
          //         return child ?? SizedBox.shrink();
          //       }
          //       return SplashView();
          //     },
          //   );
          // },
          // routeInformationParser: GetInformationParser(
          //     // initialRoute: Routes.HOME,
          //     ),
          // routerDelegate: GetDelegate(
          //   backButtonPopMode: PopMode.History,
          //   preventDuplicateHandlingMode:
          //       PreventDuplicateHandlingMode.ReorderRoutes,
          // ),
        );
      },
    ),
  );
}
