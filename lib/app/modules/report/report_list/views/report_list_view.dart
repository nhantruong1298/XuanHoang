import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/report/create_report/views/create_report_view.dart';
import 'package:example_nav2/app/modules/report/report_detail/views/report_detail_view.dart';
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

class ReportListView extends StatelessWidget {
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
        bottomNavigationBar: AppButton(
            text: 'Thêm báo cáo',
            onTap: () {
              Get.toNamed(CreateReportView.routeName);
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
                        _ReportItem(),
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
  const _ReportItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      child: Container(
        child: AppListTile(
          onTap: () {
            Get.toNamed(ReportDetailView.routeName);
          },
          title: Text('Vệ sinh tủ điện',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp)),
          subTitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 25.h),
              Text('Trạng thái hoàn thành'),
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
                  onPressed: (_) {},
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
