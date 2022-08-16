import 'package:example_nav2/app/data/models/response/report_detail_response.dart';
import 'package:example_nav2/app/data/models/response/update_report_response.dart';
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
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          leadingIcon: Assets.images.arrowBackIcon.path,
          title: S.current.EDIT_REPORT__TITLE,
          actions: _buildHeaderActions,
        ),
        body: Stack(
          children: [
            BlurBackGround(),
            SafeArea(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Obx(() {
                    final reportDetail = controller.reportDetail.value;
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.h),
                          _ReportTitle(
                            title: reportDetail.incidentName,
                          ),
                          SizedBox(height: 25.h),
                          _ReportContent(
                            replyContent: reportDetail.replyContent,
                            userName: reportDetail.fullName,
                          ),
                          const Spacer(),
                          _ReportImages(
                            images: [
                              Assets.images.bgLoginPng.path,
                              Assets.images.bgLoginPng.path,
                              Assets.images.bgLoginPng.path
                            ],
                          ),
                          _BottomButton(),
                        ]);
                  })),
            ),
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
  const _ReportTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: 17,
          height: 17,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xFF007D00)),
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
      height: 145,
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
                padding: EdgeInsets.all(1.5),
                child: Image.asset(images[index], fit: BoxFit.fill));
          }),
    );
  }
}

class _BottomButton extends StatelessWidget {
  const _BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 65.w,
            height: 65.h,
            padding: EdgeInsets.all(10),
            child: Assets.images.leftIcon.svg(width: 50, fit: BoxFit.scaleDown),
            // flex: 1,
          ),
        ),
      ),
      Expanded(
        child: AppButton(
          onTap: () {
            Get.toNamed(EditReportView.routeName,
                arguments: ReportDetailResponse());
          },
          text: "Trả lời",
        ),
        // flex: 4,
      ),
      Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
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
