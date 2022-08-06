import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/blur_background.dart';
import 'package:example_nav2/app/modules/choose_project/views/widgets/choose_project_app_bar.dart';
import 'package:example_nav2/app/modules/home/views/home_view.dart';
import 'package:example_nav2/app/modules/report/report_detail/views/report_detail_view.dart';
import 'package:example_nav2/app/modules/report/report_list/views/report_list_view.dart';
import 'package:example_nav2/generated/assets.gen.dart';
import 'package:example_nav2/generated/l10n.dart';
import 'package:example_nav2/resources/app_colors.dart';
import 'package:example_nav2/resources/app_dimensions.dart';
import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:example_nav2/widgets/input/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditReportView extends StatelessWidget {
  static const String routeName =
      '${HomeView.path}${ReportListView.path}${ReportDetailView.path}$path';
  static const String path = '/edit-report';
  const EditReportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: ChooseProjectAppBar(
          leadingIcon: Assets.images.arrowBackIcon.path,
          title: S.current.EDIT_REPORT__REPLY,
          actions: [
            IconButton(
                onPressed: () {
                  Get.offNamedUntil(HomeView.routeName, (route) => false);
                },
                icon: Assets.images.homeIcon
                    .svg(height: 25, fit: BoxFit.scaleDown)),
            SizedBox(
              width: 10,
            )
          ],
        ),
        bottomNavigationBar: AppButton(
          onTap: () {
            Get.back();
          },
          text: S.current.EDIT_REPORT__SEND,
        ),
        body: Stack(
          children: [
            Positioned.fill(
                child: BlurBackGround(
              sigma: 30,
            )),
            SafeArea(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.h),
                        _ReportTitle(),
                        SizedBox(height: 12.h),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextInputField(
                              borderRadius: AppDimensions.defaultXLRadius,
                              hintText: S.current
                                  .EDIT_REPORT__DESCRIPTION_OF_THE_PROBLEM,
                              maxLines: 10,
                            ),
                          ),
                        ),
                        SizedBox(height: 7.h),
                        _DropDownButton(),
                        SizedBox(height: 7.h),
                        _ChooseImages(),
                      ])),
            ),
          ],
        ));
  }
}

class _ChooseImages extends StatelessWidget {
  const _ChooseImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Expanded(
                  child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.5, color: AppColors.primaryLightColor)),
                    padding: EdgeInsets.all(45),
                    child: Assets.images.cameraIcon
                        .svg(height: 47, fit: BoxFit.scaleDown),
                  ),
                ),
              ))),
    );
  }
}

class _DropDownButton extends StatelessWidget {
  const _DropDownButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          items: [
            DropdownMenuItem<String>(child: Text('1'), value: '1'),
            DropdownMenuItem<String>(child: Text('2'), value: '2')
          ],
          onChanged: (value) {},
          dropdownDecoration: BoxDecoration(
              color: AppColors.primaryLightColor,
              borderRadius: BorderRadius.circular(AppDimensions.defaultRadius)),
          customButton: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppDimensions.defaultRadius),
                  color: AppColors.primaryLightColor),
              child: Row(
                children: [
                  Text('Đang kiểm tra',
                      style: TextStyle(
                          fontSize: 16.sp, color: AppColors.textColor)),
                  const Spacer(),
                  Assets.images.dropdownIcon
                      .svg(height: 25, fit: BoxFit.scaleDown)
                ],
              )),
        ),
      ),
    );
  }
}

class _ReportTitle extends StatelessWidget {
  const _ReportTitle({Key? key}) : super(key: key);

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
          Text('#001 - Đầu báo khói 01 không hoạt động không hoạt động',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700))
        ]))
      ]),
    );
  }
}
