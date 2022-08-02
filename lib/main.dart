import 'package:example_nav2/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/modules/splash/controllers/splash_service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'app/modules/splash/views/splash_view.dart';
import 'app/routes/app_pages.dart';
import 'services/auth_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Application",
          initialBinding: BindingsBuilder(
            () {
              Get.put(SplashService());
              Get.put(AuthService());
            },
          ),
          getPages: AppPages.routes,
          initialRoute: AppPages.INITIAL,
          localizationsDelegates: [
            S.delegate,
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
