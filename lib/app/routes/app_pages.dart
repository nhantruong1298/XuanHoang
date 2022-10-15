import 'package:example_nav2/app/modules/authenticate/change_password/bindings/change_password_binding.dart';
import 'package:example_nav2/app/modules/authenticate/change_password/views/change_password_view.dart';
import 'package:example_nav2/app/modules/project/views/project_view.dart';
import 'package:example_nav2/app/modules/term/bindings/term_binding.dart';
import 'package:example_nav2/app/modules/term/views/term_view.dart';
import 'package:example_nav2/app/modules/add_image/bindings/add_image_binding.dart';
import 'package:example_nav2/app/modules/add_image/views/add_image_view.dart';
import 'package:example_nav2/app/modules/project/bindings/project_binding.dart';
import 'package:example_nav2/app/modules/project/views/choose_project_view.dart';
import 'package:example_nav2/app/modules/document/bindings/document_binding.dart';
import 'package:example_nav2/app/modules/document/views/document_view.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/images_history.dart/bindings/images_history_binding.dart';
import 'package:example_nav2/app/modules/images_history.dart/views/images_history_view.dart';
import 'package:example_nav2/app/modules/job/bindings/job_binding.dart';
import 'package:example_nav2/app/modules/job/views/job_view.dart';
import 'package:example_nav2/app/modules/login/views/login_view.dart';
import 'package:example_nav2/app/modules/phase/check_phase/bindings/check_phase_binding.dart';
import 'package:example_nav2/app/modules/phase/check_phase/views/check_phase_view.dart';
import 'package:example_nav2/app/modules/phase/choose_phase/bindings/choose_phase_binding.dart';
import 'package:example_nav2/app/modules/phase/choose_phase/views/choose_phase_view.dart';
import 'package:example_nav2/app/modules/report/create_report/bindings/create_report_binding.dart';
import 'package:example_nav2/app/modules/report/create_report/views/create_report_view.dart';
import 'package:example_nav2/app/modules/report/edit_report/bindings/edit_report_binding.dart';
import 'package:example_nav2/app/modules/report/edit_report/views/edit_report_view.dart';
import 'package:example_nav2/app/modules/report/report_detail/bindings/report_detail_binding.dart';
import 'package:example_nav2/app/modules/report/report_detail/views/report_detail_view.dart';
import 'package:example_nav2/app/modules/report/report_list/bindings/report_list_binding.dart';
import 'package:example_nav2/app/modules/report/report_list/views/report_list_view.dart';
import 'package:example_nav2/app/modules/report/summary_report/bindings/summary_report_binding.dart';
import 'package:example_nav2/app/modules/report/summary_report/views/summary_report_view.dart';
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
                  name: ProjectView.path,
                  page: () => ProjectView(),
                  bindings: [ProjectBinding()],
                  children: []),
              GetPage(
                  preventDuplicates: true,
                  name: ChoosePhaseView.path,
                  page: () => ChoosePhaseView(),
                  bindings: [
                    ChoosePhaseBinding()
                  ],
                  children: [
                    GetPage(
                      preventDuplicates: true,
                      name: CheckPhaseView.path,
                      page: () => CheckPhaseView(),
                      bindings: [CheckPhaseBinding()],
                    ),
                    GetPage(
                        preventDuplicates: true,
                        name: TermView.path,
                        page: () => TermView(),
                        bindings: [
                          TermBinding()
                        ],
                        children: [
                          GetPage(
                              preventDuplicates: true,
                              name: JobView.path,
                              page: () => JobView(),
                              bindings: [
                                JobBinding()
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
                                GetPage(
                                  preventDuplicates: true,
                                  name: SummaryReportView.path,
                                  page: () => SummaryReportView(),
                                  bindings: [SummaryReportBinding()],
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
