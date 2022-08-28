import 'package:example_nav2/app/data/models/enum/incident_status.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/report/edit_report/views/edit_report_view.dart';
import 'package:example_nav2/app/modules/report/report_detail/controllers/report_detail_controller.dart';
import 'package:example_nav2/app/modules/report/report_list/views/report_list_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:example_nav2/widgets/layouts/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ReportDetailView extends GetView<ReportDetailController> {
  static const String routeName = '${HomeView.path}${ReportListView.path}$path';
  static const String path = '/report-detail';
  const ReportDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: ChooseProjectAppBar(
          title: S.current.EDIT_REPORT__TITLE,
          actions: _buildHeaderActions,
          leading: IconButton(
            onPressed: () {
              Get.back(result: controller.isUpdated);
            },
            icon: SvgPicture.asset(Assets.images.arrowBackIcon.path,
                height: 30, width: 30, fit: BoxFit.scaleDown),
          ),
        ),
        body: Stack(
          children: [
            BlurBackGround(),
            SafeArea(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      Expanded(
                        child: Obx(() {
                          final reportList = controller.reportList;

                          return PageView(
                            reverse: true,
                            physics: const NeverScrollableScrollPhysics(),
                            controller: controller.pageController,
                            children: List.generate(reportList.length, (index) {
                              final reportDetail = reportList[index];
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20.h),
                                    _ReportTitle(
                                        title: reportDetail.title,
                                        idIncidentStatus:
                                            reportDetail.idIncidentStatus),
                                    SizedBox(height: 25.h),
                                    _ReportContent(
                                      replyContent: reportDetail.replyContent,
                                      userName: reportDetail.userName,
                                    ),
                                    const Spacer(),
                                    _ReportImages(images: reportDetail.images),
                                  ]);
                            }),
                          );
                        }),
                      ),
                      _BottomButton(),
                    ],
                  )),
            ),
            Obx(() {
              final isLoading = controller.isLoading;
              return Visibility(visible: isLoading.value, child: LoadingView());
            })
          ],
        ));
  }

  List<Widget> get _buildHeaderActions {
    return [
      IconButton(
          onPressed: () {
            Get.offNamedUntil(HomeView.routeName, (route) => false);
          },
          icon: Assets.images.homeIcon.svg(height: 30, fit: BoxFit.scaleDown)),
      SizedBox(
        width: 10,
      )
    ];
  }
}

class _ReportTitle extends StatelessWidget {
  final String? title;
  final String? idIncidentStatus;
  const _ReportTitle({
    Key? key,
    required this.title,
    this.idIncidentStatus,
  }) : super(key: key);

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: 17,
          height: 17,
          decoration: BoxDecoration(shape: BoxShape.circle, color: statusColor),
          margin: EdgeInsets.only(right: 15, top: 5),
        ),
        Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title ?? '',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700))
        ]))
      ]),
    );
  }
}

class _ReportContent extends StatelessWidget {
  final String? userName;
  final String? replyContent;
  const _ReportContent({Key? key, this.userName, this.replyContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(userName ?? '',
            style: TextStyle(
                color: AppColors.errorColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700)),
        const SizedBox(height: 10),
        Text(replyContent ?? '')
      ]),
    );
  }
}

class _ReportImages extends StatelessWidget {
  final List<String> images;
  const _ReportImages({Key? key, this.images = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145.h,
      width: double.infinity,
      child: GridView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 1),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
                color: Colors.white,
                height: 145.h,
                padding: EdgeInsets.all(1.5),
                child: Image.network(
                  images[index],
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    return (loadingProgress != null)
                        ? Container(
                            width: double.infinity,
                            height: double.infinity,
                            color: AppColors.primaryLightColor,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: AppColors.errorColor,
                              ),
                            ),
                          )
                        : child;
                  },
                ));
          }),
    );
  }
}

class _BottomButton extends GetView<ReportDetailController> {
  const _BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: controller.onPreviousPage,
          child: Container(
            width: 65.w,
            height: 65.h,
            padding: EdgeInsets.all(10),
            child: Assets.images.leftIcon.svg(width: 50, fit: BoxFit.scaleDown),
          ),
        ),
      ),
      Expanded(
        child: AppButton(
          onTap: () async {
            final detail = controller.listResponse.first;
            final result =
                await Get.toNamed(EditReportView.routeName, arguments: detail);
            if ((result as bool?) == true) {
              controller.refreshData();
            }
          },
          text: "Trả lời",
        ),
      ),
      Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: controller.onNextPage,
          child: Container(
            padding: EdgeInsets.all(10),
            width: 65.w,
            height: 65.h,
            child:
                Assets.images.rightIcon.svg(width: 50, fit: BoxFit.scaleDown),
            //flex: 1,
          ),
        ),
      )
    ]);
  }
}
