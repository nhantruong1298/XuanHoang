import 'package:example_nav2/app/modules/authenticate/reset_password/views/reset_password_view.dart';
import 'package:example_nav2/app/modules/choose_category/views/choose_category_view.dart';
import 'package:example_nav2/app/modules/choose_image/views/choose_image_view.dart';
import 'package:example_nav2/app/modules/choose_job/views/choose_job_view.dart';
import 'package:example_nav2/app/modules/choose_project/views/choose_project_view.dart';
import 'package:example_nav2/app/modules/document/check_document/views/check_document_view.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/login/views/login_view.dart';
import 'package:example_nav2/app/modules/progress/check_progress/views/check_progress_view.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/views/choose_progress_view.dart';
import 'package:example_nav2/app/modules/report/create_report/views/create_report_view.dart';
import 'package:example_nav2/app/modules/report/edit_report/views/edit_report_view.dart';
import 'package:example_nav2/app/modules/report/report_detail/views/report_detail_view.dart';
import 'package:example_nav2/app/modules/report/report_list/views/report_list_view.dart';
import 'package:example_nav2/app/modules/warning/views/warning_view.dart';
import 'package:get/get.dart';

import '../modules/login/bindings/login_binding.dart';
import '../modules/root/bindings/root_binding.dart';
import '../modules/root/views/root_view.dart';

// part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = LoginView.routeName;

  static final routes = [
    GetPage(
      name: '/',
      page: () => RootView(),
      bindings: [RootBinding()],
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          preventDuplicates: true,
          name: LoginView.routeName,
          page: () => LoginView(),
          bindings: [LoginBinding()],
        ),
        GetPage(
          preventDuplicates: true,
          name: ResetPasswordView.routeName,
          page: () => ResetPasswordView(),
          bindings: [],
        ),
        GetPage(
            preventDuplicates: true,
            name: HomeView.routeName,
            page: () => HomeView(),
            children: [
              GetPage(
                preventDuplicates: true,
                name: WarningView.path,
                page: () => WarningView(),
                bindings: [],
              ),
              GetPage(
                preventDuplicates: true,
                name: CheckDocumentView.path,
                page: () => CheckDocumentView(),
                bindings: [],
              ),
              GetPage(
                  preventDuplicates: true,
                  name: ChooseProjectView.path,
                  page: () => ChooseProjectView(),
                  bindings: [],
                  children: []),
              GetPage(
                  preventDuplicates: true,
                  name: ChooseProgressView.path,
                  page: () => ChooseProgressView(),
                  bindings: [],
                  children: [
                    GetPage(
                      preventDuplicates: true,
                      name: CheckProgressView.path,
                      page: () => CheckProgressView(),
                      bindings: [],
                      children: [],
                    ),
                    GetPage(
                        preventDuplicates: true,
                        name: ChooseCategoryView.path,
                        page: () => ChooseCategoryView(),
                        bindings: [],
                        children: [
                          GetPage(
                              preventDuplicates: true,
                              name: ChooseJobView.path,
                              page: () => ChooseJobView(),
                              bindings: [],
                              children: [
                                GetPage(
                                  preventDuplicates: true,
                                  name: ChooseImageView.routeName,
                                  page: () => ChooseImageView(),
                                  bindings: [],
                                ),
                              ]),
                        ]),
                  ]),
              GetPage(
                  preventDuplicates: true,
                  name: ReportListView.path,
                  page: () => ReportListView(),
                  bindings: [],
                  children: [
                    GetPage(
                      preventDuplicates: true,
                      name: CreateReportView.path,
                      page: () => CreateReportView(),
                      bindings: [],
                    ),
                    GetPage(
                        preventDuplicates: true,
                        name: ReportDetailView.path,
                        page: () => ReportDetailView(),
                        bindings: [],
                        children: [
                          GetPage(
                            preventDuplicates: true,
                            name: EditReportView.path,
                            page: () => EditReportView(),
                            bindings: [],
                          ),
                        ]),
                  ]),
            ])
      ],
    ),
  ];
}
