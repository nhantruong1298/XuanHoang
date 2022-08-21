import 'package:example_nav2/app/modules/authenticate/change_password/bindings/change_password_binding.dart';
import 'package:example_nav2/app/modules/authenticate/change_password/views/change_password_view.dart';
import 'package:example_nav2/app/modules/choose_category/bindings/choose_category_binding.dart';
import 'package:example_nav2/app/modules/choose_category/views/choose_category_view.dart';
import 'package:example_nav2/app/modules/add_image/bindings/add_image_binding.dart';
import 'package:example_nav2/app/modules/add_image/views/add_image_view.dart';
import 'package:example_nav2/app/modules/choose_job/bindings/choose_job_binding.dart';
import 'package:example_nav2/app/modules/choose_job/views/choose_job_view.dart';
import 'package:example_nav2/app/modules/choose_project/bindings/choose_project_binding.dart';
import 'package:example_nav2/app/modules/choose_project/views/choose_project_view.dart';
import 'package:example_nav2/app/modules/document/bindings/document_binding.dart';
import 'package:example_nav2/app/modules/document/views/document_view.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/images_history.dart/bindings/images_history_binding.dart';
import 'package:example_nav2/app/modules/images_history.dart/views/images_history_view.dart';
import 'package:example_nav2/app/modules/login/views/login_view.dart';
import 'package:example_nav2/app/modules/progress/check_progress/bindings/check_progress_binding.dart';
import 'package:example_nav2/app/modules/progress/check_progress/views/check_progress_view.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/bindings/choose_progress_binding.dart';
import 'package:example_nav2/app/modules/progress/choose_progress/views/choose_progress_view.dart';
import 'package:example_nav2/app/modules/report/create_report/bindings/create_report_binding.dart';
import 'package:example_nav2/app/modules/report/create_report/views/create_report_view.dart';
import 'package:example_nav2/app/modules/report/edit_report/bindings/edit_report_binding.dart';
import 'package:example_nav2/app/modules/report/edit_report/views/edit_report_view.dart';
import 'package:example_nav2/app/modules/report/report_detail/bindings/report_detail_binding.dart';
import 'package:example_nav2/app/modules/report/report_detail/views/report_detail_view.dart';
import 'package:example_nav2/app/modules/report/report_list/bindings/report_list_binding.dart';
import 'package:example_nav2/app/modules/report/report_list/views/report_list_view.dart';
import 'package:example_nav2/app/modules/warning/bindings/warning_binding.dart';
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
            name: HomeView.routeName,
            page: () => HomeView(),
            children: [
              GetPage(
                preventDuplicates: true,
                name: ChangePasswordView.path,
                page: () => ChangePasswordView(),
                bindings: [ChangePasswordBinding()],
              ),
              GetPage(
                preventDuplicates: true,
                name: WarningView.path,
                page: () => WarningView(),
                bindings: [WarningBinding()],
              ),
              GetPage(
                preventDuplicates: true,
                name: DocumentView.path,
                page: () => DocumentView(),
                bindings: [DocumentBinding()],
              ),
              GetPage(
                  preventDuplicates: true,
                  name: ChooseProjectView.path,
                  page: () => ChooseProjectView(),
                  bindings: [ChooseProjectBinding()],
                  children: []),
              GetPage(
                  preventDuplicates: true,
                  name: ChooseProgressView.path,
                  page: () => ChooseProgressView(),
                  bindings: [
                    ChooseProgressBinding()
                  ],
                  children: [
                    GetPage(
                      preventDuplicates: true,
                      name: CheckProgressView.path,
                      page: () => CheckProgressView(),
                      bindings: [CheckProgressBinding()],
                    ),
                    GetPage(
                        preventDuplicates: true,
                        name: ChooseTermView.path,
                        page: () => ChooseTermView(),
                        bindings: [
                          ChooseCategoryBinding()
                        ],
                        children: [
                          GetPage(
                              preventDuplicates: true,
                              name: ChooseJobView.path,
                              page: () => ChooseJobView(),
                              bindings: [
                                ChooseJobBinding()
                              ],
                              children: [
                                GetPage(
                                  preventDuplicates: true,
                                  name: AddImageView.path,
                                  page: () => AddImageView(),
                                  bindings: [AddImageBinding()],
                                ),
                                GetPage(
                                  preventDuplicates: true,
                                  name: ImagesHistoryView.path,
                                  page: () => ImagesHistoryView(),
                                  bindings: [ImagesHistoryBinding()],
                                ),
                              ]),
                        ]),
                  ]),
              GetPage(
                  preventDuplicates: true,
                  name: ReportListView.path,
                  page: () => ReportListView(),
                  bindings: [
                    ReportListBinding()
                  ],
                  children: [
                    GetPage(
                      preventDuplicates: true,
                      name: CreateReportView.path,
                      page: () => CreateReportView(),
                      bindings: [CreateReportBinding()],
                    ),
                    GetPage(
                        preventDuplicates: true,
                        name: ReportDetailView.path,
                        page: () => ReportDetailView(),
                        bindings: [
                          ReportDetailBinding()
                        ],
                        children: [
                          GetPage(
                            preventDuplicates: true,
                            name: EditReportView.path,
                            page: () => EditReportView(),
                            bindings: [EditReportBinding()],
                          ),
                        ]),
                  ]),
            ])
      ],
    ),
  ];
}
