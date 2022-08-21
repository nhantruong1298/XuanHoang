import 'package:example_nav2/app/data/models/enum/account_type.dart';
import 'package:example_nav2/app/data/models/enum/incident_status.dart';
import 'package:example_nav2/app/data/services/auth_service.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/report/create_report/views/create_report_view.dart';
import 'package:example_nav2/app/modules/report/report_detail/views/report_detail_view.dart';
import 'package:example_nav2/app/modules/report/report_list/controllers/report_list_controller.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/common/app_list_tile.dart';
import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class ReportListView extends GetView<ReportListController> {
  static const String routeName = '${HomeView.path}$path';
  static const String path = '/report-list';
  const ReportListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: ChooseProjectAppBar(
          leadingIcon: Assets.images.arrowBackIcon.path,
          title: S.current.CREATE_REPORT__REPORT_PROBLEM_,
          actions: [
            IconButton(
                onPressed: () {
                  Get.offNamedUntil(HomeView.routeName, (route) => false);
                },
                icon: Assets.images.homeIcon
                    .svg(height: 30, fit: BoxFit.scaleDown)),
            SizedBox(
              width: 10,
            )
          ],
        ),
        bottomNavigationBar:
            (AuthService.to.accountType != AccountType.customer)
                ? null
                : AppButton(
                    text: 'Thêm báo cáo',
                    onTap: () async {
                      final updated = await Get.toNamed(
                        CreateReportView.routeName,
                      );
                      if ((updated as bool?) == true) {
                        controller.refreshData();
                      }
                    }),
        body: Stack(
          children: [
            Positioned.fill(child: BlurBackGround()),
            SafeArea(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.h),
                        Obx(() {
                          final reportList = controller.reportList;
                          return Expanded(
                              child: ListView.separated(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  itemBuilder: (context, index) {
                                    final item = reportList[index];
                                    return _ReportItem(
                                      onTap: () {
                                        Get.toNamed(ReportDetailView.routeName,
                                            arguments: item.idIncident ?? '');
                                      },
                                      onClosePressed: (_) {
                                        controller
                                            .closeReport(item.idIncident ?? '');
                                      },
                                      incidentName: item.incidentName,
                                      idIncidentStatus: item.idIncidentStatus,
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                        height: 10,
                                      ),
                                  itemCount: reportList.length));
                        })
                      ])),
            ),
          ],
        ));
  }

  TextStyle textDescriptionStyle({required Color color}) {
    return TextStyle(
        fontSize: 17.sp, fontWeight: FontWeight.w400, color: color);
  }
}

class _ReportItem extends StatelessWidget {
  final String? incidentName;
  final String? idIncidentStatus;
  final VoidCallback onTap;
  final Function(BuildContext) onClosePressed;
  const _ReportItem({
    Key? key,
    this.idIncidentStatus,
    this.incidentName,
    required this.onTap,
    required this.onClosePressed,
  }) : super(key: key);

  String get incidentStatus {
    switch (idIncidentStatus) {
      case IncidentStatus.close:
        return 'Đóng';
      case IncidentStatus.done:
        return 'Hoàn thành';
      case IncidentStatus.processing:
        return 'Đang kiểm tra';
      case IncidentStatus.waiting:
        return 'Đang chờ';
    }
    return '';
  }

  Color get statusColor {
    switch (idIncidentStatus) {
      // case IncidentStatus.close:
      //   return 'Đóng';
      case IncidentStatus.done:
        return AppColors.green700;
      case IncidentStatus.processing:
        return AppColors.blueColor;
      case IncidentStatus.waiting:
        return AppColors.greyBorderColor;
    }
    return AppColors.textColor;
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      child: Container(
        child: AppListTile(
          onTap: onTap,
          title: Text(incidentName ?? '',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp)),
          subTitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 25.h),
              Text(
                'Trạng thái: ' + incidentStatus,
                style: TextStyle(fontSize: 17.sp, color: statusColor),
              ),
            ],
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      endActionPane: ActionPane(
        extentRatio: 0.2,
        motion: ScrollMotion(),
        children: [
          Expanded(
            child: Row(children: [
              SizedBox(
                width: 5,
                child: Container(),
              ),
              CustomSlidableAction(
                  padding: EdgeInsets.zero,
                  borderRadius:
                      BorderRadius.circular(AppDimensions.defaultRadius),
                  onPressed: onClosePressed,
                  backgroundColor: AppColors.errorColor,
                  child: Text(
                    'Đóng',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  )),
            ]),
          )
        ],
      ),
    );
  }
}
